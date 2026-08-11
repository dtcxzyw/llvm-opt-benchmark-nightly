inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %.sroa.12216.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0179.0370.i.i, i64 16, !dbg !8229 ; 2 uses
  %i.asx = add nuw nsw i64 %.sroa.7181.0371.i.i, 1, !dbg !8227
  %i.asy = getelementptr inbounds nuw i8, ptr %.sroa.0179.0370.i.i, i64 32, !dbg !8293 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.asv, !dbg !8219 ; 2 uses
  %i.ata = load i8, ptr %i.asz, align 1, !dbg !8219, !alias.scope !8285, !noalias !8286, !noundef !14
  %i.atb = load <4 x float>, ptr %.sroa.0179.0370.i.i, align 4, !dbg !8229, !alias.scope !7923, !noalias !8230
  %i.atc = fsub <4 x float> %i.atb, %i.ass, !dbg !8243 ; 3 uses
  %i.atd = fcmp oge <4 x float> %i.atc, %i.asu, !dbg !8244
  %i.ate = bitcast <4 x i1> %i.atd to i4, !dbg !8239
  %i.atf = zext i4 %i.ate to i8, !dbg !8239
  %i.atg = fcmp olt <4 x float> %i.atc, %i.asu, !dbg !8295
  %i.ath = select <4 x i1> %i.atg, <4 x float> %i.atc, <4 x float> %i.asu, !dbg !8295
  store <4 x float> %i.ath, ptr %.sroa.0179.0370.i.i, align 4, !dbg !8288, !alias.scope !7923, !noalias !8230
  %i.ati = load <4 x float>, ptr %.sroa.12216.0..sroa_idx.i.i, align 4, !dbg !8229, !alias.scope !7923, !noalias !8230
  %i.atj = fsub <4 x float> %i.ati, %i.ass, !dbg !8265 ; 3 uses
  %i.atk = fcmp oge <4 x float> %i.atj, %i.asu, !dbg !8281 ; 4 uses
  %i.atl = extractelement <4 x i1> %i.atk, i64 0, !dbg !8267
  %i.atm = select i1 %i.atl, i8 16, i8 0, !dbg !8267
  %i.atn = extractelement <4 x i1> %i.atk, i64 1, !dbg !8272
  %i.ato = select i1 %i.atn, i8 32, i8 0, !dbg !8272
  %i.atp = extractelement <4 x i1> %i.atk, i64 2, !dbg !8277
  %i.atq = select i1 %i.atp, i8 64, i8 0, !dbg !8277
  %i.atr = extractelement <4 x i1> %i.atk, i64 3, !dbg !8282
  %i.ats = select i1 %i.atr, i8 -128, i8 0, !dbg !8282
  %i.att = fcmp olt <4 x float> %i.atj, %i.asu, !dbg !8300
  %i.atu = select <4 x i1> %i.att, <4 x float> %i.atj, <4 x float> %i.asu, !dbg !8300
  %op.rdx4797 = or disjoint i8 %i.atm, %i.atf, !dbg !8268
  %op.rdx4798 = or disjoint i8 %i.ato, %i.atq, !dbg !8278
  %op.rdx4799 = or disjoint i8 %op.rdx4797, %op.rdx4798, !dbg !8273
  %i.atv = or disjoint i8 %op.rdx4799, %i.ats, !dbg !8283
  %i.atw = or i8 %i.atv, %i.ata, !dbg !8219
  store i8 %i.atw, ptr %i.asz, align 1, !dbg !8219, !alias.scope !8285, !noalias !8286
  store <4 x float> %i.atu, ptr %.sroa.12216.0..sroa_idx.i.i, align 4, !dbg !8288, !alias.scope !7923, !noalias !8230
  %i.atx = icmp eq ptr %i.asy, %i.ahx, !dbg !8302
  br i1 %i.atx, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i, label %.lr.ph373.i.i, !dbg !8289, !llvm.loop !8305

bb.gv:                                            ; preds = %._crit_edge368.i.i
  %i.aty = uitofp nneg i64 %.sroa.7.0374.i.i to float, !dbg !8306
  %i.atz = fmul nnan float %i.aty, 7.000000e-02, !dbg !8307
  %i.aua = fdiv nnan float %i.atz, 2.000000e+03, !dbg !8307
  %i.aub = fadd nnan float %i.aua, f0x3F451EB8, !dbg !8308
  %i.auc = fmul nnan float %i.aub, 2.810000e+01, !dbg !8309
  br label %bb.gt, !dbg !8310

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i: ; preds = %.lr.ph362.i.i
  %i.aud = sub nuw nsw i64 %i.ald, %i.alg, !dbg !8311
  %.not.i150.i.i = icmp samesign ult i64 %i.aud, 8, !dbg !8313
  br i1 %.not.i150.i.i, label %.invoke1323.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit154.i.i, !dbg !8313, !prof !168

.invoke1323.i:                                    ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i, %._crit_edge363.i.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i, %.lr.ph362.i.i, %.split381.us.i.i, %bb.fu
  %i.aue = phi ptr [ @49, %.split381.us.i.i ], [ @50, %bb.fu ], [ @54, %.lr.ph362.i.i ], [ @55, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i ], [ @51, %._crit_edge363.i.i ], [ @52, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aue) #18
          to label %.cont1324.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !dbg !8316, !noalias !5931

.cont1324.i:                                      ; preds = %.invoke1323.i
  unreachable

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit154.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.alg, !dbg !8317
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implfECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.cu, i64 noundef 8, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.auf, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56)
          to label %.noexc191.i unwind label %.loopexit.i, !dbg !8319, !noalias !5931

.noexc191.i:                                      ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit154.i.i
  %i.aug = load float, ptr %i.cu, align 4, !dbg !8324, !noalias !8015, !noundef !14
  %i.auh = load float, ptr %.sroa.0160.0360.i.i, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024, !noundef !14
  %i.aui = fadd float %i.aug, %i.auh, !dbg !8327  ; 3 uses
  store float %i.aui, ptr %.sroa.0160.0360.i.i, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024
  %i.auj = fcmp olt float %i.aui, %.sroa.049.0361.i.i, !dbg !8328
  br i1 %i.auj, label %bb.gw, label %bb.gx, !dbg !8328

bb.gw:                                            ; preds = %.noexc191.i
  %i.auk = trunc i64 %i.alg to i8, !dbg !8330
  store i8 %i.auk, ptr %i.akx, align 1, !dbg !8330, !alias.scope !7927, !noalias !7955
  br label %bb.gx, !dbg !8331

bb.gx:                                            ; preds = %bb.gw, %.noexc191.i
  %.sroa.049.4.i.i = phi float [ %i.aui, %bb.gw ], [ %.sroa.049.0361.i.i, %.noexc191.i ], !dbg !8192 ; 2 uses
  %i.aul = load float, ptr %i.mz, align 4, !dbg !8324, !noalias !8015, !noundef !14
  %i.aum = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i, i64 4, !dbg !8332 ; 2 uses
  %i.aun = load float, ptr %i.aum, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024, !noundef !14
  %i.auo = fadd float %i.aul, %i.aun, !dbg !8327  ; 3 uses
  store float %i.auo, ptr %i.aum, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024
  %i.aup = fcmp olt float %i.auo, %.sroa.049.4.i.i, !dbg !8328
  br i1 %i.aup, label %bb.gy, label %bb.gz, !dbg !8328

bb.gy:                                            ; preds = %bb.gx
  %i.auq = trunc i64 %i.alg to i8, !dbg !8330
  %i.aur = or disjoint i8 %i.auq, 1, !dbg !8330
  store i8 %i.aur, ptr %i.akx, align 1, !dbg !8330, !alias.scope !7927, !noalias !7955
  br label %bb.gz, !dbg !8331

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %.sroa.049.4.1.i.i = phi float [ %i.auo, %bb.gy ], [ %.sroa.049.4.i.i, %bb.gx ], !dbg !8192 ; 2 uses
  %i.aus = load float, ptr %i.na, align 4, !dbg !8324, !noalias !8015, !noundef !14
  %i.aut = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i, i64 8, !dbg !8332 ; 2 uses
  %i.auu = load float, ptr %i.aut, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024, !noundef !14
  %i.auv = fadd float %i.aus, %i.auu, !dbg !8327  ; 3 uses
  store float %i.auv, ptr %i.aut, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024
  %i.auw = fcmp olt float %i.auv, %.sroa.049.4.1.i.i, !dbg !8328
  br i1 %i.auw, label %bb.ha, label %bb.hb, !dbg !8328

bb.ha:                                            ; preds = %bb.gz
  %i.aux = trunc i64 %i.alg to i8, !dbg !8330
  %i.auy = or disjoint i8 %i.aux, 2, !dbg !8330
  store i8 %i.auy, ptr %i.akx, align 1, !dbg !8330, !alias.scope !7927, !noalias !7955
  br label %bb.hb, !dbg !8331

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.sroa.049.4.2.i.i = phi float [ %i.auv, %bb.ha ], [ %.sroa.049.4.1.i.i, %bb.gz ], !dbg !8192 ; 2 uses
  %i.auz = load float, ptr %i.nb, align 4, !dbg !8324, !noalias !8015, !noundef !14
  %i.ava = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i, i64 12, !dbg !8332 ; 2 uses
  %i.avb = load float, ptr %i.ava, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024, !noundef !14
  %i.avc = fadd float %i.auz, %i.avb, !dbg !8327  ; 3 uses
  store float %i.avc, ptr %i.ava, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024
  %i.avd = fcmp olt float %i.avc, %.sroa.049.4.2.i.i, !dbg !8328
  br i1 %i.avd, label %bb.hc, label %bb.hd, !dbg !8328

bb.hc:                                            ; preds = %bb.hb
  %i.ave = trunc i64 %i.alg to i8, !dbg !8330
  %i.avf = or disjoint i8 %i.ave, 3, !dbg !8330
  store i8 %i.avf, ptr %i.akx, align 1, !dbg !8330, !alias.scope !7927, !noalias !7955
  br label %bb.hd, !dbg !8331

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.sroa.049.4.3.i.i = phi float [ %i.avc, %bb.hc ], [ %.sroa.049.4.2.i.i, %bb.hb ], !dbg !8192 ; 2 uses
  %i.avg = load float, ptr %i.nc, align 4, !dbg !8324, !noalias !8015, !noundef !14
  %i.avh = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i, i64 16, !dbg !8332 ; 2 uses
  %i.avi = load float, ptr %i.avh, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024, !noundef !14
  %i.avj = fadd float %i.avg, %i.avi, !dbg !8327  ; 3 uses
  store float %i.avj, ptr %i.avh, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024
  %i.avk = fcmp olt float %i.avj, %.sroa.049.4.3.i.i, !dbg !8328
  br i1 %i.avk, label %bb.he, label %bb.hf, !dbg !8328

bb.he:                                            ; preds = %bb.hd
  %i.avl = trunc i64 %i.alg to i8, !dbg !8330
  %i.avm = or disjoint i8 %i.avl, 4, !dbg !8330
  store i8 %i.avm, ptr %i.akx, align 1, !dbg !8330, !alias.scope !7927, !noalias !7955
  br label %bb.hf, !dbg !8331

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.sroa.049.4.4.i.i = phi float [ %i.avj, %bb.he ], [ %.sroa.049.4.3.i.i, %bb.hd ], !dbg !8192 ; 2 uses
  %i.avn = load float, ptr %i.nd, align 4, !dbg !8324, !noalias !8015, !noundef !14
  %i.avo = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i, i64 20, !dbg !8332 ; 2 uses
  %i.avp = load float, ptr %i.avo, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024, !noundef !14
  %i.avq = fadd float %i.avn, %i.avp, !dbg !8327  ; 3 uses
  store float %i.avq, ptr %i.avo, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024
  %i.avr = fcmp olt float %i.avq, %.sroa.049.4.4.i.i, !dbg !8328
  br i1 %i.avr, label %bb.hg, label %bb.hh, !dbg !8328

bb.hg:                                            ; preds = %bb.hf
  %i.avs = trunc i64 %i.alg to i8, !dbg !8330
  %i.avt = or disjoint i8 %i.avs, 5, !dbg !8330
  store i8 %i.avt, ptr %i.akx, align 1, !dbg !8330, !alias.scope !7927, !noalias !7955
  br label %bb.hh, !dbg !8331

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.sroa.049.4.5.i.i = phi float [ %i.avq, %bb.hg ], [ %.sroa.049.4.4.i.i, %bb.hf ], !dbg !8192 ; 2 uses
  %i.avu = load float, ptr %i.ne, align 4, !dbg !8324, !noalias !8015, !noundef !14
  %i.avv = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i, i64 24, !dbg !8332 ; 2 uses
  %i.avw = load float, ptr %i.avv, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024, !noundef !14
  %i.avx = fadd float %i.avu, %i.avw, !dbg !8327  ; 3 uses
  store float %i.avx, ptr %i.avv, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024
  %i.avy = fcmp olt float %i.avx, %.sroa.049.4.5.i.i, !dbg !8328
  br i1 %i.avy, label %bb.hi, label %bb.hj, !dbg !8328

bb.hi:                                            ; preds = %bb.hh
  %i.avz = trunc i64 %i.alg to i8, !dbg !8330
  %i.awa = or disjoint i8 %i.avz, 6, !dbg !8330
  store i8 %i.awa, ptr %i.akx, align 1, !dbg !8330, !alias.scope !7927, !noalias !7955
  br label %bb.hj, !dbg !8331

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %.sroa.049.4.6.i.i = phi float [ %i.avx, %bb.hi ], [ %.sroa.049.4.5.i.i, %bb.hh ], !dbg !8192 ; 2 uses
  %i.awb = load float, ptr %i.nf, align 4, !dbg !8324, !noalias !8015, !noundef !14
  %i.awc = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i, i64 28, !dbg !8332 ; 2 uses
  %i.awd = load float, ptr %i.awc, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024, !noundef !14
  %i.awe = fadd float %i.awb, %i.awd, !dbg !8327  ; 3 uses
  store float %i.awe, ptr %i.awc, align 4, !dbg !8327, !alias.scope !7923, !noalias !8024
  %i.awf = fcmp olt float %i.awe, %.sroa.049.4.6.i.i, !dbg !8328
  br i1 %i.awf, label %bb.hk, label %bb.hl, !dbg !8328

bb.hk:                                            ; preds = %bb.hj
  %i.awg = trunc i64 %i.alg to i8, !dbg !8330
  %i.awh = or disjoint i8 %i.awg, 7, !dbg !8330
  store i8 %i.awh, ptr %i.akx, align 1, !dbg !8330, !alias.scope !7927, !noalias !7955
  br label %bb.hl, !dbg !8331

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.sroa.049.4.7.i.i = phi float [ %i.awe, %bb.hk ], [ %.sroa.049.4.6.i.i, %bb.hj ], !dbg !8192 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !8347, !noalias !8015
  %i.awi = icmp eq ptr %i.ale, %i.aht, !dbg !8348
  br i1 %i.awi, label %._crit_edge363.i.i, label %.lr.ph362.i.i, !dbg !8142

bb.hm:                                            ; preds = %bb.hr, %.split.i.i
  %.sroa.069.0349.i.i = phi i64 [ 0, %.split.i.i ], [ %i.awj, %bb.hr ] ; 4 uses
  %i.awj = add nuw nsw i64 %.sroa.069.0349.i.i, 1, !dbg !8350 ; 2 uses
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.sroa.069.0349.i.i, !dbg !8356
  %i.awl = load float, ptr %i.awk, align 4, !dbg !8356, !alias.scope !7921, !noalias !7980, !noundef !14
  %gep.i.i = getelementptr [1040 x i8], ptr %invariant.gep.i.i, i64 %.sroa.069.0349.i.i, !dbg !8358
  %i.awm = load i32, ptr %gep.i.i, align 4, !dbg !8358, !alias.scope !7919, !noalias !8359, !noundef !14 ; 4 uses
  %i.awn = zext i32 %i.awm to i64, !dbg !8358
  %i.awo = icmp eq i32 %i.awm, 0, !dbg !8360
  br i1 %i.awo, label %bb.ho, label %bb.hn, !dbg !8360

bb.hn:                                            ; preds = %bb.hm
  %i.awp = icmp ult i32 %i.awm, 256, !dbg !8363
  br i1 %i.awp, label %bb.hq, label %bb.hp, !dbg !8363

bb.ho:                                            ; preds = %bb.hq, %bb.hp, %bb.hm
  %.sroa.017.0.i.i = phi float [ %i.awt, %bb.hp ], [ %i.awv, %bb.hq ], [ -2.000000e+00, %bb.hm ], !dbg !8368
  %i.awq = add nuw nsw i64 %.sroa.069.0349.i.i, %i.ahn, !dbg !8369 ; 3 uses
  %i.awr = icmp ult i64 %i.awq, %i.lp, !dbg !8371
  br i1 %i.awr, label %bb.hr, label %.invoke1319.i, !dbg !8371

bb.hp:                                            ; preds = %bb.hn
  %i.aws = uitofp i32 %i.awm to float, !dbg !8372
  %i.awt = call float @llvm.log2.f32(float %i.aws), !dbg !8373
  br label %bb.ho, !dbg !8380

bb.hq:                                            ; preds = %bb.hn
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11log_table_86logs_8, i64 %i.awn, !dbg !8381
  %i.awv = load float, ptr %i.awu, align 4, !dbg !8381, !noalias !8015, !noundef !14
  br label %bb.ho, !dbg !8380

bb.hr:                                            ; preds = %bb.ho
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.awq, !dbg !8371
  %i.awx = fsub float %i.awl, %.sroa.017.0.i.i, !dbg !8371
  store float %i.awx, ptr %i.aww, align 4, !dbg !8371, !alias.scope !7921, !noalias !7980
  %exitcond421.not.i.i = icmp eq i64 %i.awj, %.sroa.0.0461.i, !dbg !8382
  br i1 %exitcond421.not.i.i, label %.loopexit307.i.i, label %bb.hm, !dbg !8008

bb.hs:                                            ; preds = %bb.fr
  %i.awy = getelementptr inbounds nuw [1040 x i8], ptr %i.gl, i64 %.sroa.067.0348.i.i, !dbg !7993
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 1024, !dbg !8386
  %i.axa = load i64, ptr %i.awz, align 8, !dbg !8386, !alias.scope !8388, !noalias !8359, !noundef !14
  %i.axb = and i64 %i.axa, 4294967295, !dbg !7993 ; 3 uses
  %i.axc = icmp samesign ult i64 %i.axb, 256, !dbg !8391
  br i1 %i.axc, label %bb.hv, label %bb.ht, !dbg !8391

bb.ht:                                            ; preds = %bb.hs
  %i.axd = uitofp nneg i64 %i.axb to float, !dbg !8393
  %i.axe = call float @llvm.log2.f32(float %i.axd), !dbg !8394
  br label %bb.hu, !dbg !8396

bb.hu:                                            ; preds = %bb.hv, %bb.ht
  %.sroa.014.0.i.i = phi float [ %i.axh, %bb.hv ], [ %i.axe, %bb.ht ], !dbg !8397
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.sroa.067.0348.i.i, !dbg !8398
  store float %.sroa.014.0.i.i, ptr %i.axf, align 4, !dbg !8398, !alias.scope !7921, !noalias !7980
  %exitcond419.not.i.i = icmp eq i64 %i.ahk, %.sroa.0.0461.i, !dbg !8399
  br i1 %exitcond419.not.i.i, label %.split.i.i, label %bb.fr, !dbg !7981

bb.hv:                                            ; preds = %bb.hs
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11log_table_86logs_8, i64 %i.axb, !dbg !8402
  %i.axh = load float, ptr %i.axg, align 4, !dbg !8402, !noalias !8015, !noundef !14
  br label %bb.hu, !dbg !8396

.preheader.i173.i:                                ; preds = %.preheader.i173.i.preheader5463, %bb.hw
  %.sroa.065.0392.i.i = phi i64 [ %i.axi, %bb.hw ], [ %.sroa.065.0392.i.i.ph, %.preheader.i173.i.preheader5463 ] ; 3 uses
  %exitcond426.not.i.i = icmp eq i64 %.sroa.065.0392.i.i, %i.kz, !dbg !7941
  br i1 %exitcond426.not.i.i, label %.invoke1319.i, label %bb.hw, !dbg !7941

bb.hw:                                            ; preds = %.preheader.i173.i
  %i.axi = add nuw i64 %.sroa.065.0392.i.i, 1, !dbg !7944 ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.sroa.065.0392.i.i, !dbg !7941
  store i8 0, ptr %i.axj, align 1, !dbg !7941, !alias.scope !7927, !noalias !7955
  %exitcond427.not.i.i = icmp eq i64 %i.axi, %.sroa.0.0.lcssa, !dbg !8403
  br i1 %exitcond427.not.i.i, label %.loopexit86.i, label %.preheader.i173.i, !dbg !7956, !llvm.loop !8405

.loopexit86.i:                                    ; preds = %bb.fx, %bb.hw, %bb.fo
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.fo ], [ 1, %bb.hw ], [ %.sroa.0.2.i.i, %bb.fx ], !dbg !8406 ; 19 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mt) ]
  %i.axk = invoke fastcc noundef i64 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter13RemapBlockIds(ptr noalias noundef nonnull %i.ky, i64 noundef %i.kz, i64 noundef %.sroa.0.0.lcssa, ptr noalias noundef nonnull align 2 %i.mt, i64 noundef %i.mu, i64 noundef %.sroa.0.0461.i)
          to label %bb.hx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !8407, !noalias !5931 ; 5 uses

bb.hx:                                            ; preds = %.loopexit86.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8408), !dbg !8411
  call void @llvm.experimental.noalias.scope.decl(metadata !8412), !dbg !8411
  call void @llvm.experimental.noalias.scope.decl(metadata !8414), !dbg !8411
  %.not.i.i196.i = icmp samesign ugt i64 %i.axk, %i.gm
  br i1 %.not.i.i196.i, label %.invoke1321.i, label %bb.hy, !dbg !8416, !prof !751

bb.hy:                                            ; preds = %bb.hx
  %.idx.i.i197.i = mul nuw nsw i64 %i.axk, 1040, !dbg !8424 ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.idx.i.i197.i, !dbg !8424
  %i.axm = icmp eq i64 %i.axk, 0, !dbg !8428
  br i1 %i.axm, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, label %.lr.ph.i.i198.i.preheader, !dbg !8431

.lr.ph.i.i198.i.preheader:                        ; preds = %bb.hy
  %i.axn = add nsw i64 %.idx.i.i197.i, -1040, !dbg !8431 ; 2 uses
  %i.axo = udiv i64 %i.axn, 1040, !dbg !8431
  %i.axp = add nuw nsw i64 %i.axo, 1, !dbg !8431
  %xtraiter5534 = and i64 %i.axp, 7, !dbg !8431   ; 2 uses
  %lcmp.mod5535.not = icmp eq i64 %xtraiter5534, 0, !dbg !8431
  br i1 %lcmp.mod5535.not, label %.lr.ph.i.i198.i.prol.loopexit, label %.lr.ph.i.i198.i.prol, !dbg !8431

.lr.ph.i.i198.i.prol:                             ; preds = %.lr.ph.i.i198.i.preheader, %.lr.ph.i.i198.i.prol
  %.sroa.02.06.i.i199.i.prol = phi ptr [ %i.axq, %.lr.ph.i.i198.i.prol ], [ %i.gl, %.lr.ph.i.i198.i.preheader ] ; 3 uses
  %prol.iter5536 = phi i64 [ %prol.iter5536.next, %.lr.ph.i.i198.i.prol ], [ 0, %.lr.ph.i.i198.i.preheader ]
  %i.axq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i.prol, i64 1040, !dbg !8432 ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i.prol, i64 1032, !dbg !8434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.06.i.i199.i.prol, i8 0, i64 1032, i1 false), !dbg !8437, !alias.scope !8439, !noalias !8442
  store float 3.402000e+38, ptr %i.axr, align 8, !dbg !8434, !alias.scope !8443, !noalias !8442
  %prol.iter5536.next = add i64 %prol.iter5536, 1, !dbg !8431 ; 2 uses
  %prol.iter5536.cmp.not = icmp eq i64 %prol.iter5536.next, %xtraiter5534, !dbg !8431
  br i1 %prol.iter5536.cmp.not, label %.lr.ph.i.i198.i.prol.loopexit, label %.lr.ph.i.i198.i.prol, !dbg !8431, !llvm.loop !8446

.lr.ph.i.i198.i.prol.loopexit:                    ; preds = %.lr.ph.i.i198.i.prol, %.lr.ph.i.i198.i.preheader
  %.sroa.02.06.i.i199.i.unr = phi ptr [ %i.gl, %.lr.ph.i.i198.i.preheader ], [ %i.axq, %.lr.ph.i.i198.i.prol ]
  %i.axs = icmp ult i64 %i.axn, 7280, !dbg !8431
  br i1 %i.axs, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, label %.lr.ph.i.i198.i, !dbg !8431

.invoke1321.i:                                    ; preds = %bb.hx, %._crit_edge356.i.i, %._crit_edge.i170.i, %bb.fq, %bb.gt
  %i.axt = phi i64 [ %i.ahe, %bb.gt ], [ %i.ahj, %bb.fq ], [ %i.ahq, %._crit_edge.i170.i ], [ %.sroa.0.0.lcssa, %._crit_edge356.i.i ], [ %i.axk, %bb.hx ]
  %i.axu = phi i64 [ %i.lt, %bb.gt ], [ %i.lp, %bb.fq ], [ %i.mh, %._crit_edge.i170.i ], [ %i.fy, %._crit_edge356.i.i ], [ %i.gm, %bb.hx ]
  %i.axv = phi ptr [ @510, %bb.gt ], [ @61, %bb.fq ], [ @58, %._crit_edge.i170.i ], [ @57, %._crit_edge356.i.i ], [ @286, %bb.hx ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.axt, i64 noundef range(i64 0, -9223372036854775808) %i.axu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.axv) #18
          to label %.cont1322.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !dbg !8447, !noalias !5931

.cont1322.i:                                      ; preds = %.invoke1321.i
  unreachable

.lr.ph.i.i198.i:                                  ; preds = %.lr.ph.i.i198.i.prol.loopexit, %.lr.ph.i.i198.i
  %.sroa.02.06.i.i199.i = phi ptr [ %i.ayk, %.lr.ph.i.i198.i ], [ %.sroa.02.06.i.i199.i.unr, %.lr.ph.i.i198.i.prol.loopexit ] ; 17 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 1040, !dbg !8432
  %i.axx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 1032, !dbg !8434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.06.i.i199.i, i8 0, i64 1032, i1 false), !dbg !8437, !alias.scope !8439, !noalias !8442
  store float 3.402000e+38, ptr %i.axx, align 8, !dbg !8434, !alias.scope !8443, !noalias !8442
  %i.axy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 2080, !dbg !8432
  %i.axz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 2072, !dbg !8434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.axw, i8 0, i64 1032, i1 false), !dbg !8437, !alias.scope !8439, !noalias !8442
  store float 3.402000e+38, ptr %i.axz, align 8, !dbg !8434, !alias.scope !8443, !noalias !8442
  %i.aya = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 3120, !dbg !8432
  %i.ayb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 3112, !dbg !8434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.axy, i8 0, i64 1032, i1 false), !dbg !8437, !alias.scope !8439, !noalias !8442
  store float 3.402000e+38, ptr %i.ayb, align 8, !dbg !8434, !alias.scope !8443, !noalias !8442
  %i.ayc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 4160, !dbg !8432
  %i.ayd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 4152, !dbg !8434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.aya, i8 0, i64 1032, i1 false), !dbg !8437, !alias.scope !8439, !noalias !8442
  store float 3.402000e+38, ptr %i.ayd, align 8, !dbg !8434, !alias.scope !8443, !noalias !8442
  %i.aye = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 5200, !dbg !8432
  %i.ayf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 5192, !dbg !8434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ayc, i8 0, i64 1032, i1 false), !dbg !8437, !alias.scope !8439, !noalias !8442
  store float 3.402000e+38, ptr %i.ayf, align 8, !dbg !8434, !alias.scope !8443, !noalias !8442
  %i.ayg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 6240, !dbg !8432
  %i.ayh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 6232, !dbg !8434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.aye, i8 0, i64 1032, i1 false), !dbg !8437, !alias.scope !8439, !noalias !8442
  store float 3.402000e+38, ptr %i.ayh, align 8, !dbg !8434, !alias.scope !8443, !noalias !8442
  %i.ayi = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 7280, !dbg !8432
  %i.ayj = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 7272, !dbg !8434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ayg, i8 0, i64 1032, i1 false), !dbg !8437, !alias.scope !8439, !noalias !8442
  store float 3.402000e+38, ptr %i.ayj, align 8, !dbg !8434, !alias.scope !8443, !noalias !8442
  %i.ayk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 8320, !dbg !8432 ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i199.i, i64 8312, !dbg !8434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ayi, i8 0, i64 1032, i1 false), !dbg !8437, !alias.scope !8439, !noalias !8442
  store float 3.402000e+38, ptr %i.ayl, align 8, !dbg !8434, !alias.scope !8443, !noalias !8442
  %i.aym = icmp eq ptr %i.ayk, %i.axl, !dbg !8428
  br i1 %i.aym, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, label %.lr.ph.i.i198.i, !dbg !8431

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader: ; preds = %.lr.ph.i.i198.i.prol.loopexit, %.lr.ph.i.i198.i, %bb.hy
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !8448

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, %bb.ib
  %.sroa.01.010.i.i = phi i64 [ %i.ayn, %bb.ib ], [ 0, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader ] ; 5 uses
  %i.ayn = add nuw i64 %.sroa.01.010.i.i, 1, !dbg !8451 ; 2 uses
  %exitcond.not.i200.i = icmp eq i64 %.sroa.01.010.i.i, %i.kz, !dbg !8448
  br i1 %exitcond.not.i200.i, label %.invoke1319.i, label %bb.hz, !dbg !8448

bb.hz:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.sroa.01.010.i.i, !dbg !8448
  %i.ayp = load i8, ptr %i.ayo, align 1, !dbg !8448, !alias.scope !8412, !noalias !8462, !noundef !14
  %i.ayq = zext i8 %i.ayp to i64, !dbg !8463      ; 3 uses
  %i.ayr = icmp samesign ugt i64 %i.gm, %i.ayq, !dbg !8464
  br i1 %i.ayr, label %bb.ia, label %.invoke1319.i, !dbg !8464

bb.ia:                                            ; preds = %bb.hz
  %exitcond16.not.i.i = icmp eq i64 %.sroa.01.010.i.i, %i.fy, !dbg !8465
  br i1 %exitcond16.not.i.i, label %.invoke1319.i, label %bb.ib, !dbg !8465

.invoke1319.i:                                    ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i, %bb.fr, %.lr.ph377.split.i.i, %.lr.ph390.i.i, %.preheader.i173.i, %bb.ia, %bb.hz, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.ho, %.lr.ph367.i.i, %.lr.ph367.i.i.1, %.lr.ph367.i.i.2, %.lr.ph367.i.i.3, %.lr.ph367.i.i.4, %.lr.ph367.i.i.5, %.lr.ph367.i.i.6, %.lr.ph373.i.i, %.lr.ph377.split.us.i.i
  %i.ays = phi i64 [ %i.ajp, %.lr.ph367.i.i.6 ], [ %i.awq, %bb.ho ], [ %i.gm, %bb.fr ], [ 0, %.lr.ph377.split.us.i.i ], [ %i.kz, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.kz, %.lr.ph377.split.i.i ], [ %i.kz, %.preheader.i173.i ], [ %i.akl, %.lr.ph390.i.i ], [ %i.asv, %.lr.ph373.i.i ], [ %i.aib, %.lr.ph367.i.i ], [ %i.aig, %.lr.ph367.i.i.1 ], [ %i.ain, %.lr.ph367.i.i.2 ], [ %i.aiu, %.lr.ph367.i.i.3 ], [ %i.ajb, %.lr.ph367.i.i.4 ], [ %i.aji, %.lr.ph367.i.i.5 ], [ %i.fy, %bb.ia ], [ %i.ayq, %bb.hz ], [ %i.ng, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i ]
  %i.ayt = phi i64 [ %i.lt, %.lr.ph367.i.i ], [ %i.lp, %bb.ho ], [ %i.gm, %bb.fr ], [ 0, %.lr.ph377.split.us.i.i ], [ %i.kz, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.kz, %.lr.ph377.split.i.i ], [ %i.kz, %.preheader.i173.i ], [ %i.mh, %.lr.ph390.i.i ], [ %i.mh, %.lr.ph373.i.i ], [ %i.lt, %.lr.ph367.i.i.6 ], [ %i.lt, %.lr.ph367.i.i.5 ], [ %i.lt, %.lr.ph367.i.i.4 ], [ %i.lt, %.lr.ph367.i.i.3 ], [ %i.lt, %.lr.ph367.i.i.2 ], [ %i.lt, %.lr.ph367.i.i.1 ], [ %i.fy, %bb.ia ], [ %i.gm, %bb.hz ], [ %i.kz, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i ]
  %i.ayu = phi ptr [ @53, %.lr.ph367.i.i ], [ @59, %bb.ho ], [ @60, %bb.fr ], [ @48, %.lr.ph377.split.us.i.i ], [ @113, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ @48, %.lr.ph377.split.i.i ], [ @62, %.preheader.i173.i ], [ @47, %.lr.ph390.i.i ], [ @509, %.lr.ph373.i.i ], [ @53, %.lr.ph367.i.i.6 ], [ @53, %.lr.ph367.i.i.5 ], [ @53, %.lr.ph367.i.i.4 ], [ @53, %.lr.ph367.i.i.3 ], [ @53, %.lr.ph367.i.i.2 ], [ @53, %.lr.ph367.i.i.1 ], [ @115, %bb.ia ], [ @114, %bb.hz ], [ @46, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ays, i64 noundef range(i64 0, -9223372036854775808) %i.ayt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ayu) #18
          to label %.cont1320.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !dbg !8447, !noalias !5931

.cont1320.i:                                      ; preds = %.invoke1319.i
  unreachable

bb.ib:                                            ; preds = %bb.ia
  %i.ayv = getelementptr inbounds nuw [1040 x i8], ptr %i.gl, i64 %i.ayq, !dbg !8466 ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sroa.01.010.i.i, !dbg !8465
  %i.ayx = load i8, ptr %i.ayw, align 1, !dbg !8467, !alias.scope !8469, !noalias !8472, !noundef !14
  %i.ayy = zext i8 %i.ayx to i64, !dbg !8473
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.ayv, i64 %i.ayy, !dbg !8475 ; 2 uses
  %i.aza = load i32, ptr %i.ayz, align 4, !dbg !8477, !alias.scope !8478, !noalias !8442, !noundef !14
  %i.azb = add i32 %i.aza, 1, !dbg !8481
  store i32 %i.azb, ptr %i.ayz, align 4, !dbg !8483, !alias.scope !8478, !noalias !8442
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayv, i64 1024, !dbg !8484 ; 2 uses
  %i.azd = load i64, ptr %i.azc, align 8, !dbg !8484, !alias.scope !8486, !noalias !8442, !noundef !14
  %i.aze = add i64 %i.azd, 1, !dbg !8489
  store i64 %i.aze, ptr %i.azc, align 8, !dbg !8491, !alias.scope !8493, !noalias !8442
end_hunk_0
begin_hunk_1_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %.sroa.12216.0..sroa_idx.i.i171 = getelementptr inbounds nuw i8, ptr %.sroa.0179.0370.i.i162, i64 16, !dbg !11137 ; 2 uses
  %i.cqz = add nuw nsw i64 %.sroa.7181.0371.i.i161, 1, !dbg !11135
  %i.cra = getelementptr inbounds nuw i8, ptr %.sroa.0179.0370.i.i162, i64 32, !dbg !11189 ; 2 uses
  %i.crb = getelementptr inbounds nuw i8, ptr %i.bkf, i64 %i.cqx, !dbg !11134 ; 2 uses
  %i.crc = load i8, ptr %i.crb, align 1, !dbg !11134, !alias.scope !11181, !noalias !11182, !noundef !14
  %i.crd = load <4 x float>, ptr %.sroa.0179.0370.i.i162, align 4, !dbg !11137, !alias.scope !10863, !noalias !11138
  %i.cre = fsub <4 x float> %i.crd, %i.cqu, !dbg !11145 ; 3 uses
  %i.crf = fcmp oge <4 x float> %i.cre, %i.cqw, !dbg !11146
  %i.crg = bitcast <4 x i1> %i.crf to i4, !dbg !11143
  %i.crh = zext i4 %i.crg to i8, !dbg !11143
  %i.cri = fcmp olt <4 x float> %i.cre, %i.cqw, !dbg !11191
  %i.crj = select <4 x i1> %i.cri, <4 x float> %i.cre, <4 x float> %i.cqw, !dbg !11191
  store <4 x float> %i.crj, ptr %.sroa.0179.0370.i.i162, align 4, !dbg !11184, !alias.scope !10863, !noalias !11138
  %i.crk = load <4 x float>, ptr %.sroa.12216.0..sroa_idx.i.i171, align 4, !dbg !11137, !alias.scope !10863, !noalias !11138
  %i.crl = fsub <4 x float> %i.crk, %i.cqu, !dbg !11161 ; 3 uses
  %i.crm = fcmp oge <4 x float> %i.crl, %i.cqw, !dbg !11177 ; 4 uses
  %i.crn = extractelement <4 x i1> %i.crm, i64 0, !dbg !11163
  %i.cro = select i1 %i.crn, i8 16, i8 0, !dbg !11163
  %i.crp = extractelement <4 x i1> %i.crm, i64 1, !dbg !11168
  %i.crq = select i1 %i.crp, i8 32, i8 0, !dbg !11168
  %i.crr = extractelement <4 x i1> %i.crm, i64 2, !dbg !11173
  %i.crs = select i1 %i.crr, i8 64, i8 0, !dbg !11173
  %i.crt = extractelement <4 x i1> %i.crm, i64 3, !dbg !11178
  %i.cru = select i1 %i.crt, i8 -128, i8 0, !dbg !11178
  %i.crv = fcmp olt <4 x float> %i.crl, %i.cqw, !dbg !11194
  %i.crw = select <4 x i1> %i.crv, <4 x float> %i.crl, <4 x float> %i.cqw, !dbg !11194
  %op.rdx4794 = or disjoint i8 %i.cro, %i.crh, !dbg !11164
  %op.rdx4795 = or disjoint i8 %i.crq, %i.crs, !dbg !11174
  %op.rdx4796 = or disjoint i8 %op.rdx4794, %op.rdx4795, !dbg !11169
  %i.crx = or disjoint i8 %op.rdx4796, %i.cru, !dbg !11179
  %i.cry = or i8 %i.crx, %i.crc, !dbg !11134
  store i8 %i.cry, ptr %i.crb, align 1, !dbg !11134, !alias.scope !11181, !noalias !11182
  store <4 x float> %i.crw, ptr %.sroa.12216.0..sroa_idx.i.i171, align 4, !dbg !11184, !alias.scope !10863, !noalias !11138
  %i.crz = icmp eq ptr %i.cra, %i.cfz, !dbg !11196
  br i1 %i.crz, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i187, label %.lr.ph373.i.i160, !dbg !11185, !llvm.loop !11198

bb.rg:                                            ; preds = %._crit_edge368.i.i157
  %i.csa = uitofp nneg i64 %.sroa.7.0374.i.i125 to float, !dbg !11199
  %i.csb = fmul nnan float %i.csa, 7.000000e-02, !dbg !11200
  %i.csc = fdiv nnan float %i.csb, 2.000000e+03, !dbg !11200
  %i.csd = fadd nnan float %i.csc, f0x3F451EB8, !dbg !11201
  %i.cse = fmul nnan float %i.csd, 1.350000e+01, !dbg !11202
  br label %bb.re, !dbg !11203

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i133: ; preds = %.lr.ph362.i.i128
  %i.csf = sub nuw nsw i64 %i.cjf, %i.cji, !dbg !11204
  %.not.i150.i.i134 = icmp samesign ult i64 %i.csf, 8, !dbg !11206
  br i1 %.not.i150.i.i134, label %.invoke1416.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit154.i.i135, !dbg !11206, !prof !168

.invoke1416.i:                                    ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i149, %._crit_edge363.i.i146, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i133, %.lr.ph362.i.i128, %.split381.us.i.i332, %bb.qf
  %i.csg = phi ptr [ @49, %.split381.us.i.i332 ], [ @50, %bb.qf ], [ @54, %.lr.ph362.i.i128 ], [ @55, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i133 ], [ @51, %._crit_edge363.i.i146 ], [ @52, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i149 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.csg) #18
          to label %.cont1417.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i106, !dbg !11209, !noalias !8901

.cont1417.i:                                      ; preds = %.invoke1416.i
  unreachable

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit154.i.i135: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i133
  %i.csh = getelementptr inbounds nuw [4 x i8], ptr %i.cje, i64 %i.cji, !dbg !11210
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implfECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.az, i64 noundef 8, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.csh, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56)
          to label %.noexc194.i unwind label %.loopexit.i136, !dbg !11212, !noalias !8901

.noexc194.i:                                      ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit154.i.i135
  %i.csi = load float, ptr %i.az, align 4, !dbg !11217, !noalias !10955, !noundef !14
  %i.csj = load float, ptr %.sroa.0160.0360.i.i130, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964, !noundef !14
  %i.csk = fadd float %i.csi, %i.csj, !dbg !11220 ; 3 uses
  store float %i.csk, ptr %.sroa.0160.0360.i.i130, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964
  %i.csl = fcmp olt float %i.csk, %.sroa.049.0361.i.i129, !dbg !11221
  br i1 %i.csl, label %bb.rh, label %bb.ri, !dbg !11221

bb.rh:                                            ; preds = %.noexc194.i
  %i.csm = trunc i64 %i.cji to i8, !dbg !11223
  store i8 %i.csm, ptr %i.ciz, align 1, !dbg !11223, !alias.scope !10867, !noalias !10895
  br label %bb.ri, !dbg !11224

bb.ri:                                            ; preds = %bb.rh, %.noexc194.i
  %.sroa.049.4.i.i138 = phi float [ %i.csk, %bb.rh ], [ %.sroa.049.0361.i.i129, %.noexc194.i ], !dbg !11115 ; 2 uses
  %i.csn = load float, ptr %i.bky, align 4, !dbg !11217, !noalias !10955, !noundef !14
  %i.cso = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i130, i64 4, !dbg !11225 ; 2 uses
  %i.csp = load float, ptr %i.cso, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964, !noundef !14
  %i.csq = fadd float %i.csn, %i.csp, !dbg !11220 ; 3 uses
  store float %i.csq, ptr %i.cso, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964
  %i.csr = fcmp olt float %i.csq, %.sroa.049.4.i.i138, !dbg !11221
  br i1 %i.csr, label %bb.rj, label %bb.rk, !dbg !11221

bb.rj:                                            ; preds = %bb.ri
  %i.css = trunc i64 %i.cji to i8, !dbg !11223
  %i.cst = or disjoint i8 %i.css, 1, !dbg !11223
  store i8 %i.cst, ptr %i.ciz, align 1, !dbg !11223, !alias.scope !10867, !noalias !10895
  br label %bb.rk, !dbg !11224

bb.rk:                                            ; preds = %bb.rj, %bb.ri
  %.sroa.049.4.1.i.i139 = phi float [ %i.csq, %bb.rj ], [ %.sroa.049.4.i.i138, %bb.ri ], !dbg !11115 ; 2 uses
  %i.csu = load float, ptr %i.bkz, align 4, !dbg !11217, !noalias !10955, !noundef !14
  %i.csv = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i130, i64 8, !dbg !11225 ; 2 uses
  %i.csw = load float, ptr %i.csv, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964, !noundef !14
  %i.csx = fadd float %i.csu, %i.csw, !dbg !11220 ; 3 uses
  store float %i.csx, ptr %i.csv, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964
  %i.csy = fcmp olt float %i.csx, %.sroa.049.4.1.i.i139, !dbg !11221
  br i1 %i.csy, label %bb.rl, label %bb.rm, !dbg !11221

bb.rl:                                            ; preds = %bb.rk
  %i.csz = trunc i64 %i.cji to i8, !dbg !11223
  %i.cta = or disjoint i8 %i.csz, 2, !dbg !11223
  store i8 %i.cta, ptr %i.ciz, align 1, !dbg !11223, !alias.scope !10867, !noalias !10895
  br label %bb.rm, !dbg !11224

bb.rm:                                            ; preds = %bb.rl, %bb.rk
  %.sroa.049.4.2.i.i140 = phi float [ %i.csx, %bb.rl ], [ %.sroa.049.4.1.i.i139, %bb.rk ], !dbg !11115 ; 2 uses
  %i.ctb = load float, ptr %i.bla, align 4, !dbg !11217, !noalias !10955, !noundef !14
  %i.ctc = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i130, i64 12, !dbg !11225 ; 2 uses
  %i.ctd = load float, ptr %i.ctc, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964, !noundef !14
  %i.cte = fadd float %i.ctb, %i.ctd, !dbg !11220 ; 3 uses
  store float %i.cte, ptr %i.ctc, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964
  %i.ctf = fcmp olt float %i.cte, %.sroa.049.4.2.i.i140, !dbg !11221
  br i1 %i.ctf, label %bb.rn, label %bb.ro, !dbg !11221

bb.rn:                                            ; preds = %bb.rm
  %i.ctg = trunc i64 %i.cji to i8, !dbg !11223
  %i.cth = or disjoint i8 %i.ctg, 3, !dbg !11223
  store i8 %i.cth, ptr %i.ciz, align 1, !dbg !11223, !alias.scope !10867, !noalias !10895
  br label %bb.ro, !dbg !11224

bb.ro:                                            ; preds = %bb.rn, %bb.rm
  %.sroa.049.4.3.i.i141 = phi float [ %i.cte, %bb.rn ], [ %.sroa.049.4.2.i.i140, %bb.rm ], !dbg !11115 ; 2 uses
  %i.cti = load float, ptr %i.blb, align 4, !dbg !11217, !noalias !10955, !noundef !14
  %i.ctj = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i130, i64 16, !dbg !11225 ; 2 uses
  %i.ctk = load float, ptr %i.ctj, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964, !noundef !14
  %i.ctl = fadd float %i.cti, %i.ctk, !dbg !11220 ; 3 uses
  store float %i.ctl, ptr %i.ctj, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964
  %i.ctm = fcmp olt float %i.ctl, %.sroa.049.4.3.i.i141, !dbg !11221
  br i1 %i.ctm, label %bb.rp, label %bb.rq, !dbg !11221

bb.rp:                                            ; preds = %bb.ro
  %i.ctn = trunc i64 %i.cji to i8, !dbg !11223
  %i.cto = or disjoint i8 %i.ctn, 4, !dbg !11223
  store i8 %i.cto, ptr %i.ciz, align 1, !dbg !11223, !alias.scope !10867, !noalias !10895
  br label %bb.rq, !dbg !11224

bb.rq:                                            ; preds = %bb.rp, %bb.ro
  %.sroa.049.4.4.i.i142 = phi float [ %i.ctl, %bb.rp ], [ %.sroa.049.4.3.i.i141, %bb.ro ], !dbg !11115 ; 2 uses
  %i.ctp = load float, ptr %i.blc, align 4, !dbg !11217, !noalias !10955, !noundef !14
  %i.ctq = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i130, i64 20, !dbg !11225 ; 2 uses
  %i.ctr = load float, ptr %i.ctq, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964, !noundef !14
  %i.cts = fadd float %i.ctp, %i.ctr, !dbg !11220 ; 3 uses
  store float %i.cts, ptr %i.ctq, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964
  %i.ctt = fcmp olt float %i.cts, %.sroa.049.4.4.i.i142, !dbg !11221
  br i1 %i.ctt, label %bb.rr, label %bb.rs, !dbg !11221

bb.rr:                                            ; preds = %bb.rq
  %i.ctu = trunc i64 %i.cji to i8, !dbg !11223
  %i.ctv = or disjoint i8 %i.ctu, 5, !dbg !11223
  store i8 %i.ctv, ptr %i.ciz, align 1, !dbg !11223, !alias.scope !10867, !noalias !10895
  br label %bb.rs, !dbg !11224

bb.rs:                                            ; preds = %bb.rr, %bb.rq
  %.sroa.049.4.5.i.i143 = phi float [ %i.cts, %bb.rr ], [ %.sroa.049.4.4.i.i142, %bb.rq ], !dbg !11115 ; 2 uses
  %i.ctw = load float, ptr %i.bld, align 4, !dbg !11217, !noalias !10955, !noundef !14
  %i.ctx = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i130, i64 24, !dbg !11225 ; 2 uses
  %i.cty = load float, ptr %i.ctx, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964, !noundef !14
  %i.ctz = fadd float %i.ctw, %i.cty, !dbg !11220 ; 3 uses
  store float %i.ctz, ptr %i.ctx, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964
  %i.cua = fcmp olt float %i.ctz, %.sroa.049.4.5.i.i143, !dbg !11221
  br i1 %i.cua, label %bb.rt, label %bb.ru, !dbg !11221

bb.rt:                                            ; preds = %bb.rs
  %i.cub = trunc i64 %i.cji to i8, !dbg !11223
  %i.cuc = or disjoint i8 %i.cub, 6, !dbg !11223
  store i8 %i.cuc, ptr %i.ciz, align 1, !dbg !11223, !alias.scope !10867, !noalias !10895
  br label %bb.ru, !dbg !11224

bb.ru:                                            ; preds = %bb.rt, %bb.rs
  %.sroa.049.4.6.i.i144 = phi float [ %i.ctz, %bb.rt ], [ %.sroa.049.4.5.i.i143, %bb.rs ], !dbg !11115 ; 2 uses
  %i.cud = load float, ptr %i.ble, align 4, !dbg !11217, !noalias !10955, !noundef !14
  %i.cue = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i130, i64 28, !dbg !11225 ; 2 uses
  %i.cuf = load float, ptr %i.cue, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964, !noundef !14
  %i.cug = fadd float %i.cud, %i.cuf, !dbg !11220 ; 3 uses
  store float %i.cug, ptr %i.cue, align 4, !dbg !11220, !alias.scope !10863, !noalias !10964
  %i.cuh = fcmp olt float %i.cug, %.sroa.049.4.6.i.i144, !dbg !11221
  br i1 %i.cuh, label %bb.rv, label %bb.rw, !dbg !11221

bb.rv:                                            ; preds = %bb.ru
  %i.cui = trunc i64 %i.cji to i8, !dbg !11223
  %i.cuj = or disjoint i8 %i.cui, 7, !dbg !11223
  store i8 %i.cuj, ptr %i.ciz, align 1, !dbg !11223, !alias.scope !10867, !noalias !10895
  br label %bb.rw, !dbg !11224

bb.rw:                                            ; preds = %bb.rv, %bb.ru
  %.sroa.049.4.7.i.i145 = phi float [ %i.cug, %bb.rv ], [ %.sroa.049.4.6.i.i144, %bb.ru ], !dbg !11115 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !11235, !noalias !10955
  %i.cuk = icmp eq ptr %i.cjg, %i.cfv, !dbg !11236
  br i1 %i.cuk, label %._crit_edge363.i.i146, label %.lr.ph362.i.i128, !dbg !11072

bb.rx:                                            ; preds = %bb.sc, %.split.i.i100
  %.sroa.069.0349.i.i103 = phi i64 [ 0, %.split.i.i100 ], [ %i.cul, %bb.sc ] ; 4 uses
  %i.cul = add nuw nsw i64 %.sroa.069.0349.i.i103, 1, !dbg !11238 ; 2 uses
  %i.cum = getelementptr inbounds nuw [4 x i8], ptr %i.bjn, i64 %.sroa.069.0349.i.i103, !dbg !11244
  %i.cun = load float, ptr %i.cum, align 4, !dbg !11244, !alias.scope !10861, !noalias !10920, !noundef !14
  %gep.i.i104 = getelementptr [2832 x i8], ptr %invariant.gep.i.i102, i64 %.sroa.069.0349.i.i103, !dbg !11246
  %i.cuo = load i32, ptr %gep.i.i104, align 4, !dbg !11246, !alias.scope !10859, !noalias !11247, !noundef !14 ; 4 uses
  %i.cup = zext i32 %i.cuo to i64, !dbg !11246
  %i.cuq = icmp eq i32 %i.cuo, 0, !dbg !11248
  br i1 %i.cuq, label %bb.rz, label %bb.ry, !dbg !11248

bb.ry:                                            ; preds = %bb.rx
  %i.cur = icmp ult i32 %i.cuo, 256, !dbg !11251
  br i1 %i.cur, label %bb.sb, label %bb.sa, !dbg !11251

bb.rz:                                            ; preds = %bb.sb, %bb.sa, %bb.rx
  %.sroa.017.0.i.i105 = phi float [ %i.cuv, %bb.sa ], [ %i.cux, %bb.sb ], [ -2.000000e+00, %bb.rx ], !dbg !11254
  %i.cus = add nuw nsw i64 %.sroa.069.0349.i.i103, %i.cfp, !dbg !11255 ; 3 uses
  %i.cut = icmp ult i64 %i.cus, %i.bjo, !dbg !11257
  br i1 %i.cut, label %bb.sc, label %.invoke1412.i, !dbg !11257

bb.sa:                                            ; preds = %bb.ry
  %i.cuu = uitofp i32 %i.cuo to float, !dbg !11258
  %i.cuv = call float @llvm.log2.f32(float %i.cuu), !dbg !11259
  br label %bb.rz, !dbg !11263

bb.sb:                                            ; preds = %bb.ry
  %i.cuw = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11log_table_86logs_8, i64 %i.cup, !dbg !11264
  %i.cux = load float, ptr %i.cuw, align 4, !dbg !11264, !noalias !10955, !noundef !14
  br label %bb.rz, !dbg !11263

bb.sc:                                            ; preds = %bb.rz
  %i.cuy = getelementptr inbounds nuw [4 x i8], ptr %i.bjn, i64 %i.cus, !dbg !11257
  %i.cuz = fsub float %i.cun, %.sroa.017.0.i.i105, !dbg !11257
  store float %i.cuz, ptr %i.cuy, align 4, !dbg !11257, !alias.scope !10861, !noalias !10920
  %exitcond426.not.i.i110 = icmp eq i64 %i.cul, %.sroa.0.0493.i, !dbg !11265
  br i1 %exitcond426.not.i.i110, label %.loopexit307.i.i111, label %bb.rx, !dbg !10948

bb.sd:                                            ; preds = %bb.qc
  %i.cva = getelementptr inbounds nuw [2832 x i8], ptr %i.bee, i64 %.sroa.067.0348.i.i98, !dbg !10933
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.cva, i64 2816, !dbg !11269
  %i.cvc = load i64, ptr %i.cvb, align 8, !dbg !11269, !alias.scope !11271, !noalias !11247, !noundef !14
  %i.cvd = and i64 %i.cvc, 4294967295, !dbg !10933 ; 3 uses
  %i.cve = icmp samesign ult i64 %i.cvd, 256, !dbg !11274
  br i1 %i.cve, label %bb.sg, label %bb.se, !dbg !11274

bb.se:                                            ; preds = %bb.sd
  %i.cvf = uitofp nneg i64 %i.cvd to float, !dbg !11276
  %i.cvg = call float @llvm.log2.f32(float %i.cvf), !dbg !11277
  br label %bb.sf, !dbg !11279

bb.sf:                                            ; preds = %bb.sg, %bb.se
  %.sroa.014.0.i.i99 = phi float [ %i.cvj, %bb.sg ], [ %i.cvg, %bb.se ], !dbg !11280
  %i.cvh = getelementptr inbounds nuw [4 x i8], ptr %i.bjn, i64 %.sroa.067.0348.i.i98, !dbg !11281
  store float %.sroa.014.0.i.i99, ptr %i.cvh, align 4, !dbg !11281, !alias.scope !10861, !noalias !10920
  %exitcond423.not.i.i = icmp eq i64 %i.cfm, %.sroa.0.0493.i, !dbg !11282
  br i1 %exitcond423.not.i.i, label %.split.i.i100, label %bb.qc, !dbg !10921

bb.sg:                                            ; preds = %bb.sd
  %i.cvi = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11log_table_86logs_8, i64 %i.cvd, !dbg !11285
  %i.cvj = load float, ptr %i.cvi, align 4, !dbg !11285, !noalias !10955, !noundef !14
  br label %bb.sf, !dbg !11279

.preheader.i176.i:                                ; preds = %.preheader.i176.i.preheader5228, %bb.sh
  %.sroa.065.0392.i.i335 = phi i64 [ %i.cvk, %bb.sh ], [ %.sroa.065.0392.i.i335.ph, %.preheader.i176.i.preheader5228 ] ; 3 uses
  %exitcond431.not.i.i = icmp eq i64 %.sroa.065.0392.i.i335, %i.biy, !dbg !10881
  br i1 %exitcond431.not.i.i, label %.invoke1412.i, label %bb.sh, !dbg !10881

bb.sh:                                            ; preds = %.preheader.i176.i
  %i.cvk = add nuw i64 %.sroa.065.0392.i.i335, 1, !dbg !10884 ; 2 uses
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.bix, i64 %.sroa.065.0392.i.i335, !dbg !10881
  store i8 0, ptr %i.cvl, align 1, !dbg !10881, !alias.scope !10867, !noalias !10895
  %exitcond432.not.i.i = icmp eq i64 %i.cvk, %3, !dbg !11286
  br i1 %exitcond432.not.i.i, label %.loopexit87.i, label %.preheader.i176.i, !dbg !10896, !llvm.loop !11288

.loopexit87.i:                                    ; preds = %bb.qi, %bb.sh, %bb.pz
  %.sroa.0.0.i.i200 = phi i64 [ 0, %bb.pz ], [ 1, %bb.sh ], [ %.sroa.0.2.i.i198, %bb.qi ], !dbg !11289 ; 19 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bks) ]
  %i.cvm = invoke fastcc noundef i64 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter13RemapBlockIds(ptr noalias noundef nonnull %i.bix, i64 noundef %i.biy, i64 noundef %3, ptr noalias noundef nonnull align 2 %i.bks, i64 noundef %i.bkt, i64 noundef %.sroa.0.0493.i)
          to label %bb.si unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i201, !dbg !11290, !noalias !8901 ; 5 uses

bb.si:                                            ; preds = %.loopexit87.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11291), !dbg !11294
  call void @llvm.experimental.noalias.scope.decl(metadata !11295), !dbg !11294
  call void @llvm.experimental.noalias.scope.decl(metadata !11297), !dbg !11294
  %.not.i.i201.i = icmp samesign ugt i64 %i.cvm, %i.bef
  br i1 %.not.i.i201.i, label %.invoke1414.i, label %bb.sj, !dbg !11299, !prof !751

bb.sj:                                            ; preds = %bb.si
  %.idx.i.i202.i = mul nuw nsw i64 %i.cvm, 2832, !dbg !11307 ; 2 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.bee, i64 %.idx.i.i202.i, !dbg !11307
  %i.cvo = icmp eq i64 %i.cvm, 0, !dbg !11311
  br i1 %i.cvo, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, label %.lr.ph.i.i203.i.preheader, !dbg !11314

.lr.ph.i.i203.i.preheader:                        ; preds = %bb.sj
  %i.cvp = add nsw i64 %.idx.i.i202.i, -2832, !dbg !11314 ; 2 uses
  %i.cvq = udiv i64 %i.cvp, 2832, !dbg !11314
  %i.cvr = add nuw nsw i64 %i.cvq, 1, !dbg !11314
  %xtraiter5541 = and i64 %i.cvr, 7, !dbg !11314  ; 2 uses
  %lcmp.mod5542.not = icmp eq i64 %xtraiter5541, 0, !dbg !11314
  br i1 %lcmp.mod5542.not, label %.lr.ph.i.i203.i.prol.loopexit, label %.lr.ph.i.i203.i.prol, !dbg !11314

.lr.ph.i.i203.i.prol:                             ; preds = %.lr.ph.i.i203.i.preheader, %.lr.ph.i.i203.i.prol
  %.sroa.02.06.i.i204.i.prol = phi ptr [ %i.cvs, %.lr.ph.i.i203.i.prol ], [ %i.bee, %.lr.ph.i.i203.i.preheader ] ; 3 uses
  %prol.iter5543 = phi i64 [ %prol.iter5543.next, %.lr.ph.i.i203.i.prol ], [ 0, %.lr.ph.i.i203.i.preheader ]
  %i.cvs = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i.prol, i64 2832, !dbg !11315 ; 2 uses
  %i.cvt = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i.prol, i64 2824, !dbg !11317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.06.i.i204.i.prol, i8 0, i64 2824, i1 false), !dbg !11320, !alias.scope !11322, !noalias !11325
  store float 3.402000e+38, ptr %i.cvt, align 8, !dbg !11317, !alias.scope !11326, !noalias !11325
  %prol.iter5543.next = add i64 %prol.iter5543, 1, !dbg !11314 ; 2 uses
  %prol.iter5543.cmp.not = icmp eq i64 %prol.iter5543.next, %xtraiter5541, !dbg !11314
  br i1 %prol.iter5543.cmp.not, label %.lr.ph.i.i203.i.prol.loopexit, label %.lr.ph.i.i203.i.prol, !dbg !11314, !llvm.loop !11329

.lr.ph.i.i203.i.prol.loopexit:                    ; preds = %.lr.ph.i.i203.i.prol, %.lr.ph.i.i203.i.preheader
  %.sroa.02.06.i.i204.i.unr = phi ptr [ %i.bee, %.lr.ph.i.i203.i.preheader ], [ %i.cvs, %.lr.ph.i.i203.i.prol ]
  %i.cvu = icmp ult i64 %i.cvp, 19824, !dbg !11314
  br i1 %i.cvu, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, label %.lr.ph.i.i203.i, !dbg !11314

.invoke1414.i:                                    ; preds = %bb.si, %._crit_edge356.i.i117, %._crit_edge.i173.i, %bb.qb, %bb.re
  %i.cvv = phi i64 [ %i.cfg, %bb.re ], [ %i.cfl, %bb.qb ], [ %i.cfs, %._crit_edge.i173.i ], [ %3, %._crit_edge356.i.i117 ], [ %i.cvm, %bb.si ]
  %i.cvw = phi i64 [ %i.bjs, %bb.re ], [ %i.bjo, %bb.qb ], [ %i.bkg, %._crit_edge.i173.i ], [ %i.bby, %._crit_edge356.i.i117 ], [ %i.bef, %bb.si ]
  %i.cvx = phi ptr [ @510, %bb.re ], [ @61, %bb.qb ], [ @58, %._crit_edge.i173.i ], [ @57, %._crit_edge356.i.i117 ], [ @286, %bb.si ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cvv, i64 noundef range(i64 0, -9223372036854775808) %i.cvw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cvx) #18
          to label %.cont1415.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i106, !dbg !11330, !noalias !8901

.cont1415.i:                                      ; preds = %.invoke1414.i
  unreachable

.lr.ph.i.i203.i:                                  ; preds = %.lr.ph.i.i203.i.prol.loopexit, %.lr.ph.i.i203.i
  %.sroa.02.06.i.i204.i = phi ptr [ %i.cwm, %.lr.ph.i.i203.i ], [ %.sroa.02.06.i.i204.i.unr, %.lr.ph.i.i203.i.prol.loopexit ] ; 17 uses
  %i.cvy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 2832, !dbg !11315
  %i.cvz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 2824, !dbg !11317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.06.i.i204.i, i8 0, i64 2824, i1 false), !dbg !11320, !alias.scope !11322, !noalias !11325
  store float 3.402000e+38, ptr %i.cvz, align 8, !dbg !11317, !alias.scope !11326, !noalias !11325
  %i.cwa = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 5664, !dbg !11315
  %i.cwb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 5656, !dbg !11317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cvy, i8 0, i64 2824, i1 false), !dbg !11320, !alias.scope !11322, !noalias !11325
  store float 3.402000e+38, ptr %i.cwb, align 8, !dbg !11317, !alias.scope !11326, !noalias !11325
  %i.cwc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 8496, !dbg !11315
  %i.cwd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 8488, !dbg !11317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cwa, i8 0, i64 2824, i1 false), !dbg !11320, !alias.scope !11322, !noalias !11325
  store float 3.402000e+38, ptr %i.cwd, align 8, !dbg !11317, !alias.scope !11326, !noalias !11325
  %i.cwe = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 11328, !dbg !11315
  %i.cwf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 11320, !dbg !11317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cwc, i8 0, i64 2824, i1 false), !dbg !11320, !alias.scope !11322, !noalias !11325
  store float 3.402000e+38, ptr %i.cwf, align 8, !dbg !11317, !alias.scope !11326, !noalias !11325
  %i.cwg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 14160, !dbg !11315
  %i.cwh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 14152, !dbg !11317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cwe, i8 0, i64 2824, i1 false), !dbg !11320, !alias.scope !11322, !noalias !11325
  store float 3.402000e+38, ptr %i.cwh, align 8, !dbg !11317, !alias.scope !11326, !noalias !11325
  %i.cwi = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 16992, !dbg !11315
  %i.cwj = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 16984, !dbg !11317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cwg, i8 0, i64 2824, i1 false), !dbg !11320, !alias.scope !11322, !noalias !11325
  store float 3.402000e+38, ptr %i.cwj, align 8, !dbg !11317, !alias.scope !11326, !noalias !11325
  %i.cwk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 19824, !dbg !11315
  %i.cwl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 19816, !dbg !11317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cwi, i8 0, i64 2824, i1 false), !dbg !11320, !alias.scope !11322, !noalias !11325
  store float 3.402000e+38, ptr %i.cwl, align 8, !dbg !11317, !alias.scope !11326, !noalias !11325
  %i.cwm = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 22656, !dbg !11315 ; 2 uses
  %i.cwn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i, i64 22648, !dbg !11317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cwk, i8 0, i64 2824, i1 false), !dbg !11320, !alias.scope !11322, !noalias !11325
  store float 3.402000e+38, ptr %i.cwn, align 8, !dbg !11317, !alias.scope !11326, !noalias !11325
  %i.cwo = icmp eq ptr %i.cwm, %i.cvn, !dbg !11311
  br i1 %i.cwo, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, label %.lr.ph.i.i203.i, !dbg !11314

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader: ; preds = %.lr.ph.i.i203.i.prol.loopexit, %.lr.ph.i.i203.i, %bb.sj
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !11331

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.sroa.01.013.i.i = phi i64 [ %i.cwp, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ 0, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader ] ; 5 uses
  %i.cwp = add nuw nsw i64 %.sroa.01.013.i.i, 1, !dbg !11334 ; 2 uses
  %exitcond.not.i205.i = icmp eq i64 %.sroa.01.013.i.i, %i.biy, !dbg !11331
  br i1 %exitcond.not.i205.i, label %.invoke1412.i, label %bb.sk, !dbg !11331

bb.sk:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.bix, i64 %.sroa.01.013.i.i, !dbg !11331
  %i.cwr = load i8, ptr %i.cwq, align 1, !dbg !11331, !alias.scope !11295, !noalias !11345, !noundef !14
  %i.cws = zext i8 %i.cwr to i64, !dbg !11346     ; 3 uses
  %i.cwt = icmp samesign ugt i64 %i.bef, %i.cws, !dbg !11347
  br i1 %i.cwt, label %bb.sl, label %.invoke1412.i, !dbg !11347

bb.sl:                                            ; preds = %bb.sk
  %exitcond23.not.i.i = icmp eq i64 %.sroa.01.013.i.i, %i.bby, !dbg !11348
  br i1 %exitcond23.not.i.i, label %.invoke1412.i, label %bb.sm, !dbg !11348

bb.sm:                                            ; preds = %bb.sl
  %i.cwu = getelementptr inbounds nuw [2 x i8], ptr %i.bbx, i64 %.sroa.01.013.i.i, !dbg !11348
  %i.cwv = load i16, ptr %i.cwu, align 2, !dbg !11349, !alias.scope !11351, !noalias !11354, !noundef !14 ; 2 uses
  %i.cww = zext i16 %i.cwv to i64, !dbg !11355    ; 2 uses
  %i.cwx = icmp ult i16 %i.cwv, 704, !dbg !11357
  br i1 %i.cwx, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %.invoke1412.i, !dbg !11357

.invoke1412.i:                                    ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i188, %bb.qc, %.lr.ph377.split.i.i123, %.lr.ph390.i.i190, %.preheader.i176.i, %bb.sm, %bb.sl, %bb.sk, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.rz, %.lr.ph367.i.i152, %.lr.ph367.i.i152.1, %.lr.ph367.i.i152.2, %.lr.ph367.i.i152.3, %.lr.ph367.i.i152.4, %.lr.ph367.i.i152.5, %.lr.ph367.i.i152.6, %.lr.ph373.i.i160, %.lr.ph377.split.us.i.i333
  %i.cwy = phi i64 [ %i.cin, %.lr.ph390.i.i190 ], [ %i.biy, %.preheader.i176.i ], [ %i.cus, %bb.rz ], [ %i.cqx, %.lr.ph373.i.i160 ], [ %i.bef, %bb.qc ], [ 0, %.lr.ph377.split.us.i.i333 ], [ %i.cws, %bb.sk ], [ %i.biy, %.lr.ph377.split.i.i123 ], [ %i.chr, %.lr.ph367.i.i152.6 ], [ %i.cgd, %.lr.ph367.i.i152 ], [ %i.cgi, %.lr.ph367.i.i152.1 ], [ %i.cgp, %.lr.ph367.i.i152.2 ], [ %i.cgw, %.lr.ph367.i.i152.3 ], [ %i.chd, %.lr.ph367.i.i152.4 ], [ %i.chk, %.lr.ph367.i.i152.5 ], [ %i.cww, %bb.sm ], [ %i.bby, %bb.sl ], [ %i.biy, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.blf, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i188 ]
  %i.cwz = phi i64 [ %i.bkg, %.lr.ph390.i.i190 ], [ %i.biy, %.preheader.i176.i ], [ %i.bjo, %bb.rz ], [ %i.bkg, %.lr.ph373.i.i160 ], [ %i.bef, %bb.qc ], [ 0, %.lr.ph377.split.us.i.i333 ], [ %i.bef, %bb.sk ], [ %i.biy, %.lr.ph377.split.i.i123 ], [ %i.bjs, %.lr.ph367.i.i152 ], [ %i.bjs, %.lr.ph367.i.i152.6 ], [ %i.bjs, %.lr.ph367.i.i152.5 ], [ %i.bjs, %.lr.ph367.i.i152.4 ], [ %i.bjs, %.lr.ph367.i.i152.3 ], [ %i.bjs, %.lr.ph367.i.i152.2 ], [ %i.bjs, %.lr.ph367.i.i152.1 ], [ 704, %bb.sm ], [ %i.bby, %bb.sl ], [ %i.biy, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.biy, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i188 ]
  %i.cxa = phi ptr [ @47, %.lr.ph390.i.i190 ], [ @62, %.preheader.i176.i ], [ @59, %bb.rz ], [ @509, %.lr.ph373.i.i160 ], [ @60, %bb.qc ], [ @48, %.lr.ph377.split.us.i.i333 ], [ @114, %bb.sk ], [ @48, %.lr.ph377.split.i.i123 ], [ @53, %.lr.ph367.i.i152 ], [ @53, %.lr.ph367.i.i152.6 ], [ @53, %.lr.ph367.i.i152.5 ], [ @53, %.lr.ph367.i.i152.4 ], [ @53, %.lr.ph367.i.i152.3 ], [ @53, %.lr.ph367.i.i152.2 ], [ @53, %.lr.ph367.i.i152.1 ], [ @287, %bb.sm ], [ @115, %bb.sl ], [ @113, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ @46, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i188 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cwy, i64 noundef %i.cwz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cxa) #18
          to label %.cont1413.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i106, !dbg !11330, !noalias !8901

.cont1413.i:                                      ; preds = %.invoke1412.i
  unreachable

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.sm
  %i.cxb = getelementptr inbounds nuw [2832 x i8], ptr %i.bee, i64 %i.cws, !dbg !11359 ; 2 uses
  %i.cxc = getelementptr inbounds nuw [4 x i8], ptr %i.cxb, i64 %i.cww, !dbg !11360 ; 2 uses
  %i.cxd = load i32, ptr %i.cxc, align 4, !dbg !11361, !alias.scope !11362, !noalias !11325, !noundef !14
  %i.cxe = add i32 %i.cxd, 1, !dbg !11365
  store i32 %i.cxe, ptr %i.cxc, align 4, !dbg !11367, !alias.scope !11362, !noalias !11325
end_hunk_1
begin_hunk_2_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %.sroa.12216.0..sroa_idx.i.i519 = getelementptr inbounds nuw i8, ptr %.sroa.0179.0370.i.i510, i64 16, !dbg !13998 ; 2 uses
  %i.enl = add nuw nsw i64 %.sroa.7181.0371.i.i509, 1, !dbg !13996
  %i.enm = getelementptr inbounds nuw i8, ptr %.sroa.0179.0370.i.i510, i64 32, !dbg !14050 ; 2 uses
  %i.enn = getelementptr inbounds nuw i8, ptr %i.dgs, i64 %i.enj, !dbg !13995 ; 2 uses
  %i.eno = load i8, ptr %i.enn, align 1, !dbg !13995, !alias.scope !14042, !noalias !14043, !noundef !14
  %i.enp = load <4 x float>, ptr %.sroa.0179.0370.i.i510, align 4, !dbg !13998, !alias.scope !13732, !noalias !13999
  %i.enq = fsub <4 x float> %i.enp, %i.eng, !dbg !14006 ; 3 uses
  %i.enr = fcmp oge <4 x float> %i.enq, %i.eni, !dbg !14007
  %i.ens = bitcast <4 x i1> %i.enr to i4, !dbg !14004
  %i.ent = zext i4 %i.ens to i8, !dbg !14004
  %i.enu = fcmp olt <4 x float> %i.enq, %i.eni, !dbg !14052
  %i.env = select <4 x i1> %i.enu, <4 x float> %i.enq, <4 x float> %i.eni, !dbg !14052
  store <4 x float> %i.env, ptr %.sroa.0179.0370.i.i510, align 4, !dbg !14045, !alias.scope !13732, !noalias !13999
  %i.enw = load <4 x float>, ptr %.sroa.12216.0..sroa_idx.i.i519, align 4, !dbg !13998, !alias.scope !13732, !noalias !13999
  %i.enx = fsub <4 x float> %i.enw, %i.eng, !dbg !14022 ; 3 uses
  %i.eny = fcmp oge <4 x float> %i.enx, %i.eni, !dbg !14038 ; 4 uses
  %i.enz = extractelement <4 x i1> %i.eny, i64 0, !dbg !14024
  %i.eoa = select i1 %i.enz, i8 16, i8 0, !dbg !14024
  %i.eob = extractelement <4 x i1> %i.eny, i64 1, !dbg !14029
  %i.eoc = select i1 %i.eob, i8 32, i8 0, !dbg !14029
  %i.eod = extractelement <4 x i1> %i.eny, i64 2, !dbg !14034
  %i.eoe = select i1 %i.eod, i8 64, i8 0, !dbg !14034
  %i.eof = extractelement <4 x i1> %i.eny, i64 3, !dbg !14039
  %i.eog = select i1 %i.eof, i8 -128, i8 0, !dbg !14039
  %i.eoh = fcmp olt <4 x float> %i.enx, %i.eni, !dbg !14055
  %i.eoi = select <4 x i1> %i.eoh, <4 x float> %i.enx, <4 x float> %i.eni, !dbg !14055
  %op.rdx = or disjoint i8 %i.eoa, %i.ent, !dbg !14025
  %op.rdx4792 = or disjoint i8 %i.eoc, %i.eoe, !dbg !14035
  %op.rdx4793 = or disjoint i8 %op.rdx, %op.rdx4792, !dbg !14030
  %i.eoj = or disjoint i8 %op.rdx4793, %i.eog, !dbg !14040
  %i.eok = or i8 %i.eoj, %i.eno, !dbg !13995
  store i8 %i.eok, ptr %i.enn, align 1, !dbg !13995, !alias.scope !14042, !noalias !14043
  store <4 x float> %i.eoi, ptr %.sroa.12216.0..sroa_idx.i.i519, align 4, !dbg !14045, !alias.scope !13732, !noalias !13999
  %i.eol = icmp eq ptr %i.enm, %i.ecl, !dbg !14057
  br i1 %i.eol, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i535, label %.lr.ph373.i.i508, !dbg !14046, !llvm.loop !14059

bb.abr:                                           ; preds = %._crit_edge368.i.i505
  %i.eom = uitofp nneg i64 %.sroa.7.0374.i.i471 to float, !dbg !14060
  %i.eon = fmul nnan float %i.eom, 7.000000e-02, !dbg !14061
  %i.eoo = fdiv nnan float %i.eon, 2.000000e+03, !dbg !14061
  %i.eop = fadd nnan float %i.eoo, f0x3F451EB8, !dbg !14062
  %i.eoq = fmul nnan float %i.eop, 1.460000e+01, !dbg !14063
  br label %bb.abp, !dbg !14064

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i480: ; preds = %.lr.ph362.i.i475
  %i.eor = sub nuw nsw i64 %i.efr, %i.efu, !dbg !14065
  %.not.i150.i.i481 = icmp samesign ult i64 %i.eor, 8, !dbg !14067
  br i1 %.not.i150.i.i481, label %.invoke1416.i866, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit154.i.i482, !dbg !14067, !prof !168

.invoke1416.i866:                                 ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i497, %._crit_edge363.i.i494, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i480, %.lr.ph362.i.i475, %.split381.us.i.i868, %bb.aaq
  %i.eos = phi ptr [ @49, %.split381.us.i.i868 ], [ @50, %bb.aaq ], [ @54, %.lr.ph362.i.i475 ], [ @55, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i480 ], [ @51, %._crit_edge363.i.i494 ], [ @52, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i497 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eos) #18
          to label %.cont1417.i867 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i446, !dbg !14070, !noalias !11774

.cont1417.i867:                                   ; preds = %.invoke1416.i866
  unreachable

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit154.i.i482: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i480
  %i.eot = getelementptr inbounds nuw [4 x i8], ptr %i.efq, i64 %i.efu, !dbg !14071
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implfECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.e, i64 noundef 8, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.eot, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56)
          to label %.noexc194.i485 unwind label %.loopexit.i483, !dbg !14073, !noalias !11774

.noexc194.i485:                                   ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit154.i.i482
  %i.eou = load float, ptr %i.e, align 4, !dbg !14078, !noalias !13824, !noundef !14
  %i.eov = load float, ptr %.sroa.0160.0360.i.i477, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833, !noundef !14
  %i.eow = fadd float %i.eou, %i.eov, !dbg !14081 ; 3 uses
  store float %i.eow, ptr %.sroa.0160.0360.i.i477, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833
  %i.eox = fcmp olt float %i.eow, %.sroa.049.0361.i.i476, !dbg !14082
  br i1 %i.eox, label %bb.abs, label %bb.abt, !dbg !14082

bb.abs:                                           ; preds = %.noexc194.i485
  %i.eoy = trunc i64 %i.efu to i8, !dbg !14084
  store i8 %i.eoy, ptr %i.efl, align 1, !dbg !14084, !alias.scope !13736, !noalias !13764
  br label %bb.abt, !dbg !14085

bb.abt:                                           ; preds = %bb.abs, %.noexc194.i485
  %.sroa.049.4.i.i486 = phi float [ %i.eow, %bb.abs ], [ %.sroa.049.0361.i.i476, %.noexc194.i485 ], !dbg !13976 ; 2 uses
  %i.eoz = load float, ptr %i.dhl, align 4, !dbg !14078, !noalias !13824, !noundef !14
  %i.epa = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i477, i64 4, !dbg !14086 ; 2 uses
  %i.epb = load float, ptr %i.epa, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833, !noundef !14
  %i.epc = fadd float %i.eoz, %i.epb, !dbg !14081 ; 3 uses
  store float %i.epc, ptr %i.epa, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833
  %i.epd = fcmp olt float %i.epc, %.sroa.049.4.i.i486, !dbg !14082
  br i1 %i.epd, label %bb.abu, label %bb.abv, !dbg !14082

bb.abu:                                           ; preds = %bb.abt
  %i.epe = trunc i64 %i.efu to i8, !dbg !14084
  %i.epf = or disjoint i8 %i.epe, 1, !dbg !14084
  store i8 %i.epf, ptr %i.efl, align 1, !dbg !14084, !alias.scope !13736, !noalias !13764
  br label %bb.abv, !dbg !14085

bb.abv:                                           ; preds = %bb.abu, %bb.abt
  %.sroa.049.4.1.i.i487 = phi float [ %i.epc, %bb.abu ], [ %.sroa.049.4.i.i486, %bb.abt ], !dbg !13976 ; 2 uses
  %i.epg = load float, ptr %i.dhm, align 4, !dbg !14078, !noalias !13824, !noundef !14
  %i.eph = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i477, i64 8, !dbg !14086 ; 2 uses
  %i.epi = load float, ptr %i.eph, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833, !noundef !14
  %i.epj = fadd float %i.epg, %i.epi, !dbg !14081 ; 3 uses
  store float %i.epj, ptr %i.eph, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833
  %i.epk = fcmp olt float %i.epj, %.sroa.049.4.1.i.i487, !dbg !14082
  br i1 %i.epk, label %bb.abw, label %bb.abx, !dbg !14082

bb.abw:                                           ; preds = %bb.abv
  %i.epl = trunc i64 %i.efu to i8, !dbg !14084
  %i.epm = or disjoint i8 %i.epl, 2, !dbg !14084
  store i8 %i.epm, ptr %i.efl, align 1, !dbg !14084, !alias.scope !13736, !noalias !13764
  br label %bb.abx, !dbg !14085

bb.abx:                                           ; preds = %bb.abw, %bb.abv
  %.sroa.049.4.2.i.i488 = phi float [ %i.epj, %bb.abw ], [ %.sroa.049.4.1.i.i487, %bb.abv ], !dbg !13976 ; 2 uses
  %i.epn = load float, ptr %i.dhn, align 4, !dbg !14078, !noalias !13824, !noundef !14
  %i.epo = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i477, i64 12, !dbg !14086 ; 2 uses
  %i.epp = load float, ptr %i.epo, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833, !noundef !14
  %i.epq = fadd float %i.epn, %i.epp, !dbg !14081 ; 3 uses
  store float %i.epq, ptr %i.epo, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833
  %i.epr = fcmp olt float %i.epq, %.sroa.049.4.2.i.i488, !dbg !14082
  br i1 %i.epr, label %bb.aby, label %bb.abz, !dbg !14082

bb.aby:                                           ; preds = %bb.abx
  %i.eps = trunc i64 %i.efu to i8, !dbg !14084
  %i.ept = or disjoint i8 %i.eps, 3, !dbg !14084
  store i8 %i.ept, ptr %i.efl, align 1, !dbg !14084, !alias.scope !13736, !noalias !13764
  br label %bb.abz, !dbg !14085

bb.abz:                                           ; preds = %bb.aby, %bb.abx
  %.sroa.049.4.3.i.i489 = phi float [ %i.epq, %bb.aby ], [ %.sroa.049.4.2.i.i488, %bb.abx ], !dbg !13976 ; 2 uses
  %i.epu = load float, ptr %i.dho, align 4, !dbg !14078, !noalias !13824, !noundef !14
  %i.epv = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i477, i64 16, !dbg !14086 ; 2 uses
  %i.epw = load float, ptr %i.epv, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833, !noundef !14
  %i.epx = fadd float %i.epu, %i.epw, !dbg !14081 ; 3 uses
  store float %i.epx, ptr %i.epv, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833
  %i.epy = fcmp olt float %i.epx, %.sroa.049.4.3.i.i489, !dbg !14082
  br i1 %i.epy, label %bb.aca, label %bb.acb, !dbg !14082

bb.aca:                                           ; preds = %bb.abz
  %i.epz = trunc i64 %i.efu to i8, !dbg !14084
  %i.eqa = or disjoint i8 %i.epz, 4, !dbg !14084
  store i8 %i.eqa, ptr %i.efl, align 1, !dbg !14084, !alias.scope !13736, !noalias !13764
  br label %bb.acb, !dbg !14085

bb.acb:                                           ; preds = %bb.aca, %bb.abz
  %.sroa.049.4.4.i.i490 = phi float [ %i.epx, %bb.aca ], [ %.sroa.049.4.3.i.i489, %bb.abz ], !dbg !13976 ; 2 uses
  %i.eqb = load float, ptr %i.dhp, align 4, !dbg !14078, !noalias !13824, !noundef !14
  %i.eqc = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i477, i64 20, !dbg !14086 ; 2 uses
  %i.eqd = load float, ptr %i.eqc, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833, !noundef !14
  %i.eqe = fadd float %i.eqb, %i.eqd, !dbg !14081 ; 3 uses
  store float %i.eqe, ptr %i.eqc, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833
  %i.eqf = fcmp olt float %i.eqe, %.sroa.049.4.4.i.i490, !dbg !14082
  br i1 %i.eqf, label %bb.acc, label %bb.acd, !dbg !14082

bb.acc:                                           ; preds = %bb.acb
  %i.eqg = trunc i64 %i.efu to i8, !dbg !14084
  %i.eqh = or disjoint i8 %i.eqg, 5, !dbg !14084
  store i8 %i.eqh, ptr %i.efl, align 1, !dbg !14084, !alias.scope !13736, !noalias !13764
  br label %bb.acd, !dbg !14085

bb.acd:                                           ; preds = %bb.acc, %bb.acb
  %.sroa.049.4.5.i.i491 = phi float [ %i.eqe, %bb.acc ], [ %.sroa.049.4.4.i.i490, %bb.acb ], !dbg !13976 ; 2 uses
  %i.eqi = load float, ptr %i.dhq, align 4, !dbg !14078, !noalias !13824, !noundef !14
  %i.eqj = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i477, i64 24, !dbg !14086 ; 2 uses
  %i.eqk = load float, ptr %i.eqj, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833, !noundef !14
  %i.eql = fadd float %i.eqi, %i.eqk, !dbg !14081 ; 3 uses
  store float %i.eql, ptr %i.eqj, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833
  %i.eqm = fcmp olt float %i.eql, %.sroa.049.4.5.i.i491, !dbg !14082
  br i1 %i.eqm, label %bb.ace, label %bb.acf, !dbg !14082

bb.ace:                                           ; preds = %bb.acd
  %i.eqn = trunc i64 %i.efu to i8, !dbg !14084
  %i.eqo = or disjoint i8 %i.eqn, 6, !dbg !14084
  store i8 %i.eqo, ptr %i.efl, align 1, !dbg !14084, !alias.scope !13736, !noalias !13764
  br label %bb.acf, !dbg !14085

bb.acf:                                           ; preds = %bb.ace, %bb.acd
  %.sroa.049.4.6.i.i492 = phi float [ %i.eql, %bb.ace ], [ %.sroa.049.4.5.i.i491, %bb.acd ], !dbg !13976 ; 2 uses
  %i.eqp = load float, ptr %i.dhr, align 4, !dbg !14078, !noalias !13824, !noundef !14
  %i.eqq = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i477, i64 28, !dbg !14086 ; 2 uses
  %i.eqr = load float, ptr %i.eqq, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833, !noundef !14
  %i.eqs = fadd float %i.eqp, %i.eqr, !dbg !14081 ; 3 uses
  store float %i.eqs, ptr %i.eqq, align 4, !dbg !14081, !alias.scope !13732, !noalias !13833
  %i.eqt = fcmp olt float %i.eqs, %.sroa.049.4.6.i.i492, !dbg !14082
  br i1 %i.eqt, label %bb.acg, label %bb.ach, !dbg !14082

bb.acg:                                           ; preds = %bb.acf
  %i.equ = trunc i64 %i.efu to i8, !dbg !14084
  %i.eqv = or disjoint i8 %i.equ, 7, !dbg !14084
  store i8 %i.eqv, ptr %i.efl, align 1, !dbg !14084, !alias.scope !13736, !noalias !13764
  br label %bb.ach, !dbg !14085

bb.ach:                                           ; preds = %bb.acg, %bb.acf
  %.sroa.049.4.7.i.i493 = phi float [ %i.eqs, %bb.acg ], [ %.sroa.049.4.6.i.i492, %bb.acf ], !dbg !13976 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14096, !noalias !13824
  %i.eqw = icmp eq ptr %i.efs, %i.ech, !dbg !14097
  br i1 %i.eqw, label %._crit_edge363.i.i494, label %.lr.ph362.i.i475, !dbg !13933

bb.aci:                                           ; preds = %bb.acn, %.split.i.i438
  %.sroa.069.0349.i.i441 = phi i64 [ 0, %.split.i.i438 ], [ %i.eqx, %bb.acn ] ; 4 uses
  %i.eqx = add nuw nsw i64 %.sroa.069.0349.i.i441, 1, !dbg !14099 ; 2 uses
  %i.eqy = getelementptr inbounds nuw [4 x i8], ptr %i.dga, i64 %.sroa.069.0349.i.i441, !dbg !14105
  %i.eqz = load float, ptr %i.eqy, align 4, !dbg !14105, !alias.scope !13730, !noalias !13789, !noundef !14
  %gep.i.i443 = getelementptr [2192 x i8], ptr %invariant.gep.i.i440, i64 %.sroa.069.0349.i.i441, !dbg !14107
  %i.era = load i32, ptr %gep.i.i443, align 4, !dbg !14107, !alias.scope !13728, !noalias !14108, !noundef !14 ; 4 uses
  %i.erb = zext i32 %i.era to i64, !dbg !14107
  %i.erc = icmp eq i32 %i.era, 0, !dbg !14109
  br i1 %i.erc, label %bb.ack, label %bb.acj, !dbg !14109

bb.acj:                                           ; preds = %bb.aci
  %i.erd = icmp ult i32 %i.era, 256, !dbg !14112
  br i1 %i.erd, label %bb.acm, label %bb.acl, !dbg !14112

bb.ack:                                           ; preds = %bb.acm, %bb.acl, %bb.aci
  %.sroa.017.0.i.i444 = phi float [ %i.erh, %bb.acl ], [ %i.erj, %bb.acm ], [ -2.000000e+00, %bb.aci ], !dbg !14115
  %i.ere = add nuw nsw i64 %.sroa.069.0349.i.i441, %i.ecb, !dbg !14116 ; 3 uses
  %i.erf = icmp ult i64 %i.ere, %i.dgb, !dbg !14118
  br i1 %i.erf, label %bb.acn, label %.invoke1412.i445, !dbg !14118

bb.acl:                                           ; preds = %bb.acj
  %i.erg = uitofp i32 %i.era to float, !dbg !14119
  %i.erh = call float @llvm.log2.f32(float %i.erg), !dbg !14120
  br label %bb.ack, !dbg !14124

bb.acm:                                           ; preds = %bb.acj
  %i.eri = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11log_table_86logs_8, i64 %i.erb, !dbg !14125
  %i.erj = load float, ptr %i.eri, align 4, !dbg !14125, !noalias !13824, !noundef !14
  br label %bb.ack, !dbg !14124

bb.acn:                                           ; preds = %bb.ack
  %i.erk = getelementptr inbounds nuw [4 x i8], ptr %i.dga, i64 %i.ere, !dbg !14118
  %i.erl = fsub float %i.eqz, %.sroa.017.0.i.i444, !dbg !14118
  store float %i.erl, ptr %i.erk, align 4, !dbg !14118, !alias.scope !13730, !noalias !13789
  %exitcond426.not.i.i451 = icmp eq i64 %i.eqx, %.sroa.0.0493.i428, !dbg !14126
  br i1 %exitcond426.not.i.i451, label %.loopexit307.i.i452, label %bb.aci, !dbg !13817

bb.aco:                                           ; preds = %bb.aan
  %i.erm = getelementptr inbounds nuw [2192 x i8], ptr %i.dar, i64 %.sroa.067.0348.i.i433, !dbg !13802
  %i.ern = getelementptr inbounds nuw i8, ptr %i.erm, i64 2176, !dbg !14130
  %i.ero = load i64, ptr %i.ern, align 8, !dbg !14130, !alias.scope !14132, !noalias !14108, !noundef !14
  %i.erp = and i64 %i.ero, 4294967295, !dbg !13802 ; 3 uses
  %i.erq = icmp samesign ult i64 %i.erp, 256, !dbg !14135
  br i1 %i.erq, label %bb.acr, label %bb.acp, !dbg !14135

bb.acp:                                           ; preds = %bb.aco
  %i.err = uitofp nneg i64 %i.erp to float, !dbg !14137
  %i.ers = call float @llvm.log2.f32(float %i.err), !dbg !14138
  br label %bb.acq, !dbg !14140

bb.acq:                                           ; preds = %bb.acr, %bb.acp
  %.sroa.014.0.i.i435 = phi float [ %i.erv, %bb.acr ], [ %i.ers, %bb.acp ], !dbg !14141
  %i.ert = getelementptr inbounds nuw [4 x i8], ptr %i.dga, i64 %.sroa.067.0348.i.i433, !dbg !14142
  store float %.sroa.014.0.i.i435, ptr %i.ert, align 4, !dbg !14142, !alias.scope !13730, !noalias !13789
  %exitcond423.not.i.i437 = icmp eq i64 %i.eby, %.sroa.0.0493.i428, !dbg !14143
  br i1 %exitcond423.not.i.i437, label %.split.i.i438, label %bb.aan, !dbg !13790

bb.acr:                                           ; preds = %bb.aco
  %i.eru = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc11log_table_86logs_8, i64 %i.erp, !dbg !14146
  %i.erv = load float, ptr %i.eru, align 4, !dbg !14146, !noalias !13824, !noundef !14
  br label %bb.acq, !dbg !14140

.preheader.i176.i872:                             ; preds = %.preheader.i176.i872.preheader4978, %bb.acs
  %.sroa.065.0392.i.i873 = phi i64 [ %i.erw, %bb.acs ], [ %.sroa.065.0392.i.i873.ph, %.preheader.i176.i872.preheader4978 ] ; 3 uses
  %exitcond431.not.i.i874 = icmp eq i64 %.sroa.065.0392.i.i873, %i.dfl, !dbg !13750
  br i1 %exitcond431.not.i.i874, label %.invoke1412.i445, label %bb.acs, !dbg !13750

bb.acs:                                           ; preds = %.preheader.i176.i872
  %i.erw = add nuw i64 %.sroa.065.0392.i.i873, 1, !dbg !13753 ; 2 uses
  %i.erx = getelementptr inbounds nuw i8, ptr %i.dfk, i64 %.sroa.065.0392.i.i873, !dbg !13750
  store i8 0, ptr %i.erx, align 1, !dbg !13750, !alias.scope !13736, !noalias !13764
  %exitcond432.not.i.i875 = icmp eq i64 %i.erw, %.sroa.04.1, !dbg !14147
  br i1 %exitcond432.not.i.i875, label %.loopexit87.i548, label %.preheader.i176.i872, !dbg !13765, !llvm.loop !14149

.loopexit87.i548:                                 ; preds = %bb.aat, %bb.acs, %bb.aak
  %.sroa.0.0.i.i549 = phi i64 [ 0, %bb.aak ], [ 1, %bb.acs ], [ %.sroa.0.2.i.i546, %bb.aat ], !dbg !14150 ; 19 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dhf) ]
  %i.ery = invoke fastcc noundef i64 @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter13RemapBlockIds(ptr noalias noundef nonnull %i.dfk, i64 noundef %i.dfl, i64 noundef %.sroa.04.1, ptr noalias noundef nonnull align 2 %i.dhf, i64 noundef %i.dhg, i64 noundef %.sroa.0.0493.i428)
          to label %bb.act unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i550, !dbg !14151, !noalias !11774 ; 5 uses

bb.act:                                           ; preds = %.loopexit87.i548
  call void @llvm.experimental.noalias.scope.decl(metadata !14152), !dbg !14155
  call void @llvm.experimental.noalias.scope.decl(metadata !14156), !dbg !14155
  call void @llvm.experimental.noalias.scope.decl(metadata !14158), !dbg !14155
  %.not.i.i201.i552 = icmp samesign ugt i64 %i.ery, %i.das
  br i1 %.not.i.i201.i552, label %.invoke1414.i864, label %bb.acu, !dbg !14160, !prof !751

bb.acu:                                           ; preds = %bb.act
  %.idx.i.i202.i553 = mul nuw nsw i64 %i.ery, 2192, !dbg !14168 ; 2 uses
  %i.erz = getelementptr inbounds nuw i8, ptr %i.dar, i64 %.idx.i.i202.i553, !dbg !14168
  %i.esa = icmp eq i64 %i.ery, 0, !dbg !14172
  br i1 %i.esa, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, label %.lr.ph.i.i203.i554.preheader, !dbg !14175

.lr.ph.i.i203.i554.preheader:                     ; preds = %bb.acu
  %i.esb = add nsw i64 %.idx.i.i202.i553, -2192, !dbg !14175 ; 2 uses
  %i.esc = udiv i64 %i.esb, 2192, !dbg !14175
  %i.esd = add nuw nsw i64 %i.esc, 1, !dbg !14175
  %xtraiter5548 = and i64 %i.esd, 7, !dbg !14175  ; 2 uses
  %lcmp.mod5549.not = icmp eq i64 %xtraiter5548, 0, !dbg !14175
  br i1 %lcmp.mod5549.not, label %.lr.ph.i.i203.i554.prol.loopexit, label %.lr.ph.i.i203.i554.prol, !dbg !14175

.lr.ph.i.i203.i554.prol:                          ; preds = %.lr.ph.i.i203.i554.preheader, %.lr.ph.i.i203.i554.prol
  %.sroa.02.06.i.i204.i555.prol = phi ptr [ %i.ese, %.lr.ph.i.i203.i554.prol ], [ %i.dar, %.lr.ph.i.i203.i554.preheader ] ; 3 uses
  %prol.iter5550 = phi i64 [ %prol.iter5550.next, %.lr.ph.i.i203.i554.prol ], [ 0, %.lr.ph.i.i203.i554.preheader ]
  %i.ese = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555.prol, i64 2192, !dbg !14176 ; 2 uses
  %i.esf = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555.prol, i64 2184, !dbg !14178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.06.i.i204.i555.prol, i8 0, i64 2184, i1 false), !dbg !14181, !alias.scope !14183, !noalias !14186
  store float 3.402000e+38, ptr %i.esf, align 8, !dbg !14178, !alias.scope !14187, !noalias !14186
  %prol.iter5550.next = add i64 %prol.iter5550, 1, !dbg !14175 ; 2 uses
  %prol.iter5550.cmp.not = icmp eq i64 %prol.iter5550.next, %xtraiter5548, !dbg !14175
  br i1 %prol.iter5550.cmp.not, label %.lr.ph.i.i203.i554.prol.loopexit, label %.lr.ph.i.i203.i554.prol, !dbg !14175, !llvm.loop !14190

.lr.ph.i.i203.i554.prol.loopexit:                 ; preds = %.lr.ph.i.i203.i554.prol, %.lr.ph.i.i203.i554.preheader
  %.sroa.02.06.i.i204.i555.unr = phi ptr [ %i.dar, %.lr.ph.i.i203.i554.preheader ], [ %i.ese, %.lr.ph.i.i203.i554.prol ]
  %i.esg = icmp ult i64 %i.esb, 15344, !dbg !14175
  br i1 %i.esg, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, label %.lr.ph.i.i203.i554, !dbg !14175

.invoke1414.i864:                                 ; preds = %bb.act, %._crit_edge356.i.i461, %._crit_edge.i173.i458, %bb.aam, %bb.abp
  %i.esh = phi i64 [ %i.ebs, %bb.abp ], [ %i.ebx, %bb.aam ], [ %i.ece, %._crit_edge.i173.i458 ], [ %.sroa.04.1, %._crit_edge356.i.i461 ], [ %i.ery, %bb.act ]
  %i.esi = phi i64 [ %i.dgf, %bb.abp ], [ %i.dgb, %bb.aam ], [ %i.dgt, %._crit_edge.i173.i458 ], [ %i.dac, %._crit_edge356.i.i461 ], [ %i.das, %bb.act ]
  %i.esj = phi ptr [ @510, %bb.abp ], [ @61, %bb.aam ], [ @58, %._crit_edge.i173.i458 ], [ @57, %._crit_edge356.i.i461 ], [ @286, %bb.act ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.esh, i64 noundef range(i64 0, -9223372036854775808) %i.esi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.esj) #18
          to label %.cont1415.i865 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i446, !dbg !14191, !noalias !11774

.cont1415.i865:                                   ; preds = %.invoke1414.i864
  unreachable

.lr.ph.i.i203.i554:                               ; preds = %.lr.ph.i.i203.i554.prol.loopexit, %.lr.ph.i.i203.i554
  %.sroa.02.06.i.i204.i555 = phi ptr [ %i.esy, %.lr.ph.i.i203.i554 ], [ %.sroa.02.06.i.i204.i555.unr, %.lr.ph.i.i203.i554.prol.loopexit ] ; 17 uses
  %i.esk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 2192, !dbg !14176
  %i.esl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 2184, !dbg !14178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.06.i.i204.i555, i8 0, i64 2184, i1 false), !dbg !14181, !alias.scope !14183, !noalias !14186
  store float 3.402000e+38, ptr %i.esl, align 8, !dbg !14178, !alias.scope !14187, !noalias !14186
  %i.esm = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 4384, !dbg !14176
  %i.esn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 4376, !dbg !14178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.esk, i8 0, i64 2184, i1 false), !dbg !14181, !alias.scope !14183, !noalias !14186
  store float 3.402000e+38, ptr %i.esn, align 8, !dbg !14178, !alias.scope !14187, !noalias !14186
  %i.eso = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 6576, !dbg !14176
  %i.esp = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 6568, !dbg !14178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.esm, i8 0, i64 2184, i1 false), !dbg !14181, !alias.scope !14183, !noalias !14186
  store float 3.402000e+38, ptr %i.esp, align 8, !dbg !14178, !alias.scope !14187, !noalias !14186
  %i.esq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 8768, !dbg !14176
  %i.esr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 8760, !dbg !14178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.eso, i8 0, i64 2184, i1 false), !dbg !14181, !alias.scope !14183, !noalias !14186
  store float 3.402000e+38, ptr %i.esr, align 8, !dbg !14178, !alias.scope !14187, !noalias !14186
  %i.ess = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 10960, !dbg !14176
  %i.est = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 10952, !dbg !14178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.esq, i8 0, i64 2184, i1 false), !dbg !14181, !alias.scope !14183, !noalias !14186
  store float 3.402000e+38, ptr %i.est, align 8, !dbg !14178, !alias.scope !14187, !noalias !14186
  %i.esu = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 13152, !dbg !14176
  %i.esv = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 13144, !dbg !14178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.ess, i8 0, i64 2184, i1 false), !dbg !14181, !alias.scope !14183, !noalias !14186
  store float 3.402000e+38, ptr %i.esv, align 8, !dbg !14178, !alias.scope !14187, !noalias !14186
  %i.esw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 15344, !dbg !14176
  %i.esx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 15336, !dbg !14178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.esu, i8 0, i64 2184, i1 false), !dbg !14181, !alias.scope !14183, !noalias !14186
  store float 3.402000e+38, ptr %i.esx, align 8, !dbg !14178, !alias.scope !14187, !noalias !14186
  %i.esy = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 17536, !dbg !14176 ; 2 uses
  %i.esz = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i204.i555, i64 17528, !dbg !14178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.esw, i8 0, i64 2184, i1 false), !dbg !14181, !alias.scope !14183, !noalias !14186
  store float 3.402000e+38, ptr %i.esz, align 8, !dbg !14178, !alias.scope !14187, !noalias !14186
  %i.eta = icmp eq ptr %i.esy, %i.erz, !dbg !14172
  br i1 %i.eta, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, label %.lr.ph.i.i203.i554, !dbg !14175

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader: ; preds = %.lr.ph.i.i203.i554.prol.loopexit, %.lr.ph.i.i203.i554, %bb.acu
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !14192

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.sroa.01.013.i.i556 = phi i64 [ %i.etb, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ 0, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i.preheader ] ; 5 uses
  %i.etb = add nuw nsw i64 %.sroa.01.013.i.i556, 1, !dbg !14195 ; 2 uses
  %exitcond.not.i205.i557 = icmp eq i64 %.sroa.01.013.i.i556, %i.dfl, !dbg !14192
  br i1 %exitcond.not.i205.i557, label %.invoke1412.i445, label %bb.acv, !dbg !14192

bb.acv:                                           ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %i.etc = getelementptr inbounds nuw i8, ptr %i.dfk, i64 %.sroa.01.013.i.i556, !dbg !14192
  %i.etd = load i8, ptr %i.etc, align 1, !dbg !14192, !alias.scope !14156, !noalias !14206, !noundef !14
  %i.ete = zext i8 %i.etd to i64, !dbg !14207     ; 3 uses
  %i.etf = icmp samesign ugt i64 %i.das, %i.ete, !dbg !14208
  br i1 %i.etf, label %bb.acw, label %.invoke1412.i445, !dbg !14208

bb.acw:                                           ; preds = %bb.acv
  %exitcond23.not.i.i558 = icmp eq i64 %.sroa.01.013.i.i556, %i.dac, !dbg !14209
  br i1 %exitcond23.not.i.i558, label %.invoke1412.i445, label %bb.acx, !dbg !14209

bb.acx:                                           ; preds = %bb.acw
  %i.etg = getelementptr inbounds nuw [2 x i8], ptr %i.dab, i64 %.sroa.01.013.i.i556, !dbg !14209
  %i.eth = load i16, ptr %i.etg, align 2, !dbg !14210, !alias.scope !14212, !noalias !14215, !noundef !14 ; 2 uses
  %i.eti = zext i16 %i.eth to i64, !dbg !14216    ; 2 uses
  %i.etj = icmp ult i16 %i.eth, 544, !dbg !14218
  br i1 %i.etj, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %.invoke1412.i445, !dbg !14218

.invoke1412.i445:                                 ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i536, %bb.aan, %.lr.ph377.split.i.i469, %.lr.ph390.i.i538, %.preheader.i176.i872, %bb.acx, %bb.acw, %bb.acv, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.ack, %.lr.ph367.i.i500, %.lr.ph367.i.i500.1, %.lr.ph367.i.i500.2, %.lr.ph367.i.i500.3, %.lr.ph367.i.i500.4, %.lr.ph367.i.i500.5, %.lr.ph367.i.i500.6, %.lr.ph373.i.i508, %.lr.ph377.split.us.i.i869
  %i.etk = phi i64 [ %i.eez, %.lr.ph390.i.i538 ], [ %i.dfl, %.preheader.i176.i872 ], [ %i.ere, %bb.ack ], [ %i.enj, %.lr.ph373.i.i508 ], [ %i.das, %bb.aan ], [ 0, %.lr.ph377.split.us.i.i869 ], [ %i.ete, %bb.acv ], [ %i.dfl, %.lr.ph377.split.i.i469 ], [ %i.eed, %.lr.ph367.i.i500.6 ], [ %i.ecp, %.lr.ph367.i.i500 ], [ %i.ecu, %.lr.ph367.i.i500.1 ], [ %i.edb, %.lr.ph367.i.i500.2 ], [ %i.edi, %.lr.ph367.i.i500.3 ], [ %i.edp, %.lr.ph367.i.i500.4 ], [ %i.edw, %.lr.ph367.i.i500.5 ], [ %i.eti, %bb.acx ], [ %i.dac, %bb.acw ], [ %i.dfl, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.dhs, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i536 ]
  %i.etl = phi i64 [ %i.dgt, %.lr.ph390.i.i538 ], [ %i.dfl, %.preheader.i176.i872 ], [ %i.dgb, %bb.ack ], [ %i.dgt, %.lr.ph373.i.i508 ], [ %i.das, %bb.aan ], [ 0, %.lr.ph377.split.us.i.i869 ], [ %i.das, %bb.acv ], [ %i.dfl, %.lr.ph377.split.i.i469 ], [ %i.dgf, %.lr.ph367.i.i500 ], [ %i.dgf, %.lr.ph367.i.i500.6 ], [ %i.dgf, %.lr.ph367.i.i500.5 ], [ %i.dgf, %.lr.ph367.i.i500.4 ], [ %i.dgf, %.lr.ph367.i.i500.3 ], [ %i.dgf, %.lr.ph367.i.i500.2 ], [ %i.dgf, %.lr.ph367.i.i500.1 ], [ 544, %bb.acx ], [ %i.dac, %bb.acw ], [ %i.dfl, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.dfl, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i536 ]
  %i.etm = phi ptr [ @47, %.lr.ph390.i.i538 ], [ @62, %.preheader.i176.i872 ], [ @59, %bb.ack ], [ @509, %.lr.ph373.i.i508 ], [ @60, %bb.aan ], [ @48, %.lr.ph377.split.us.i.i869 ], [ @114, %bb.acv ], [ @48, %.lr.ph377.split.i.i469 ], [ @53, %.lr.ph367.i.i500 ], [ @53, %.lr.ph367.i.i500.6 ], [ @53, %.lr.ph367.i.i500.5 ], [ @53, %.lr.ph367.i.i500.4 ], [ @53, %.lr.ph367.i.i500.3 ], [ @53, %.lr.ph367.i.i500.2 ], [ @53, %.lr.ph367.i.i500.1 ], [ @287, %bb.acx ], [ @115, %bb.acw ], [ @113, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ @46, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i536 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.etk, i64 noundef %i.etl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.etm) #18
          to label %.cont1413.i450 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i446, !dbg !14191, !noalias !11774

.cont1413.i450:                                   ; preds = %.invoke1412.i445
  unreachable

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.acx
  %i.etn = getelementptr inbounds nuw [2192 x i8], ptr %i.dar, i64 %i.ete, !dbg !14220 ; 2 uses
  %i.eto = getelementptr inbounds nuw [4 x i8], ptr %i.etn, i64 %i.eti, !dbg !14221 ; 2 uses
  %i.etp = load i32, ptr %i.eto, align 4, !dbg !14222, !alias.scope !14223, !noalias !14186, !noundef !14
  %i.etq = add i32 %i.etp, 1, !dbg !14226
  store i32 %i.etq, ptr %i.eto, align 4, !dbg !14228, !alias.scope !14223, !noalias !14186
end_hunk_2
