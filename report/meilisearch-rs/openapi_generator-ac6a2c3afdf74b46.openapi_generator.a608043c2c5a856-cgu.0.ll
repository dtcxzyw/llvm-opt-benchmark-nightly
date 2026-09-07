Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/openapi_generator-ac6a2c3afdf74b46.openapi_generator.a608043c2c5a856-cgu.0?download=true
inline.NumInlined: 4415
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
  %i.bro = load i64, ptr %i.brn, align 8, !noundef !16
  %i.brp = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h6197f76d203b4248E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.brm, i64 noundef %i.bro)
  %i.brq = extractvalue { ptr, i64 } %i.brp, 1
  %i.brr = icmp eq i64 %i.brq, 0
  br i1 %i.brr, label %.thread58.i.i.i, label %bb.vj

.thread58.i.i.i:                                  ; preds = %bb.vf, %bb.ve, %.noexc35.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !7883
  store ptr %i.cx, ptr %i.ct, align 8, !noalias !7883
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd334052992ce74deE", ptr %.sroa.427.0..sroa_idx.i.i.i, align 8, !noalias !7883
  store ptr %i.cw, ptr %i.bjc, align 8, !noalias !7883
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd334052992ce74deE", ptr %.sroa.431.0..sroa_idx.i.i.i, align 8, !noalias !7883
  store ptr %i.cv, ptr %i.bjd, align 8, !noalias !7883
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd334052992ce74deE", ptr %.sroa.435.0..sroa_idx.i.i.i, align 8, !noalias !7883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !7884
  store ptr @188, ptr %i.cs, align 8, !noalias !7885
  store i64 4, ptr %.sroa.4.0..sroa_idx.i24.i.i, align 8, !noalias !7885
  store ptr %i.ct, ptr %.sroa.5.0..sroa_idx.i25.i.i, align 8, !noalias !7885
  store i64 3, ptr %.sroa.6.0..sroa_idx.i26.i.i, align 8, !noalias !7885
  store ptr null, ptr %.sroa.7.0..sroa_idx.i27.i.i, align 8, !noalias !7885
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cu, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.cs)
          to label %.noexc36.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc36.i.i:                                     ; preds = %.thread58.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !7884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !7883
  call void @llvm.experimental.noalias.scope.decl(metadata !7886)
  call void @llvm.experimental.noalias.scope.decl(metadata !7887)
  %i.brs = load i64, ptr %i.bii, align 8, !alias.scope !7888, !noalias !7889, !noundef !16 ; 3 uses
  %i.brt = load i64, ptr %i.ee, align 8, !range !17, !alias.scope !7888, !noalias !7889, !noundef !16
  %i.bru = icmp eq i64 %i.brs, %i.brt
  br i1 %i.bru, label %bb.vg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i28.i.i"

bb.vg:                                            ; preds = %.noexc36.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17habcca6f8b95852b3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @189)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i28.i.i" unwind label %bb.vh, !noalias !7887

bb.vh:                                            ; preds = %bb.vg
  %i.brv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i29.i.i = load i64, ptr %i.cu, align 8, !alias.scope !7887, !noalias !7890 ; 2 uses
  %i.brw = icmp eq i64 %.val.i.i29.i.i, 0
  br i1 %i.brw, label %.body21.i.i, label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  %i.brx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.val2.i.i30.i.i = load ptr, ptr %i.brx, align 8, !alias.scope !7887, !noalias !7890, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i30.i.i, i64 noundef %.val.i.i29.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7887
  br label %.body21.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i28.i.i": ; preds = %bb.vg, %.noexc36.i.i
  %i.bry = load ptr, ptr %i.bih, align 8, !alias.scope !7888, !noalias !7889, !nonnull !16, !noundef !16
  %i.brz = getelementptr inbounds nuw [24 x i8], ptr %i.bry, i64 %i.brs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.brz, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cu, i64 24, i1 false)
  %i.bsa = add i64 %i.brs, 1
  store i64 %i.bsa, ptr %i.bii, align 8, !alias.scope !7888, !noalias !7889
  br label %bb.vj

bb.vj:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i28.i.i", %bb.vf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !7883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !7883
  %i.bsb = icmp eq ptr %i.bqt, %i.bqr
  br i1 %i.bsb, label %.loopexit212.i.i, label %.lr.ph.i.i.i309

.loopexit212.i.i:                                 ; preds = %bb.vj, %.thread.i.i.i308, %bb.ux, %.noexc32.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !7844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !7844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !7844
  store ptr %i.bpm, ptr %i.cr, align 8, !noalias !7891
  store i64 %i.bpn, ptr %i.bje, align 8, !noalias !7891
  %i.bsc = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @131, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bmy)
          to label %.noexc45.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ; 2 uses

.noexc45.i.i:                                     ; preds = %.loopexit212.i.i
  %.not.i39.i.i = icmp eq ptr %i.bsc, null
  br i1 %.not.i39.i.i, label %bb.vs, label %bb.vk

bb.vk:                                            ; preds = %.noexc45.i.i
  %i.bsd = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @110, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bsc)
          to label %.noexc46.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ; 2 uses

.noexc46.i.i:                                     ; preds = %bb.vk
  %.not13.i.i.i = icmp eq ptr %i.bsd, null
  br i1 %.not13.i.i.i, label %bb.vs, label %bb.vl

bb.vl:                                            ; preds = %.noexc46.i.i
  %i.bse = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bsd)
          to label %.noexc47.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ; 2 uses

.noexc47.i.i:                                     ; preds = %bb.vl
  %.not14.i.i.i = icmp eq ptr %i.bse, null
  br i1 %.not14.i.i.i, label %bb.vs, label %bb.vm

bb.vm:                                            ; preds = %.noexc47.i.i
  %i.bsf = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @145, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bse)
          to label %.noexc48.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ; 2 uses

.noexc48.i.i:                                     ; preds = %bb.vm
  %.not15.i.i.i = icmp eq ptr %i.bsf, null
  br i1 %.not15.i.i.i, label %bb.vs, label %bb.vn

bb.vn:                                            ; preds = %.noexc48.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !7891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !7891
  store ptr %i.cr, ptr %i.cp, align 8, !noalias !7891
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd334052992ce74deE", ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !7891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !7892
  store ptr @169, ptr %i.co, align 8, !noalias !7893
  store i64 2, ptr %.sroa.4.0..sroa_idx.i40.i.i, align 8, !noalias !7893
  store ptr %i.cp, ptr %.sroa.521.0..sroa_idx.i.i.i, align 8, !noalias !7893
  store i64 1, ptr %.sroa.6.0..sroa_idx.i41.i.i, align 8, !noalias !7893
  store ptr null, ptr %.sroa.7.0..sroa_idx.i42.i.i, align 8, !noalias !7893
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.co)
          to label %.noexc49.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

.noexc49.i.i:                                     ; preds = %bb.vn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !7892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !7891
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cq, align 8, !noalias !7891 ; 4 uses
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i43.i.i, align 8, !noalias !7891, !nonnull !16, !noundef !16 ; 3 uses
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !7891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !7891
  invoke fastcc void @_ZN17openapi_generator40check_schema_properties_have_description17h5912de5e614fa570E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.kg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bsf, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.5.0.copyload.i.i.i, i64 noundef %.sroa.8.0.copyload.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %bb.vq unwind label %bb.vo

bb.vo:                                            ; preds = %.noexc49.i.i
  %i.bsg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bsh = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.bsh, label %.body21.i.i, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %.body21.i.i

bb.vq:                                            ; preds = %.noexc49.i.i
  %i.bsi = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.bsi, label %bb.vs, label %bb.vr

bb.vr:                                            ; preds = %bb.vq
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %bb.vs

bb.vs:                                            ; preds = %bb.vr, %bb.vq, %.noexc48.i.i, %.noexc47.i.i, %.noexc46.i.i, %.noexc45.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !7844
  call void @llvm.experimental.noalias.scope.decl(metadata !7894)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !7844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !7844
  store ptr %i.bpm, ptr %i.cn, align 8, !noalias !7895
  store i64 %i.bpn, ptr %i.bjf, align 8, !noalias !7895
  br i1 %.not.i13183.i.i, label %.thread186.i.i, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %.idx.i.i.i.i = mul nuw nsw i64 %.sink.i.i.i287, 24
  %i.bsj = getelementptr inbounds nuw i8, ptr %.sink52.i.i.i, i64 %.idx.i.i.i.i ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.sink.i.i.i287, 0
  br i1 %.not11.i.i.i.i.i, label %.thread184.i.i, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.vt
  %i.bsk = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 16 ; 2 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 8 ; 4 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 56 ; 2 uses
  %i.bsn = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 64 ; 2 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 24 ; 2 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 32 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.backedge.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %i.bsq = phi ptr [ %i.bsr, %.backedge.i.i.i.i.i ], [ %.sink52.i.i.i, %.lr.ph.i.i.i.i.preheader.i ] ; 5 uses
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7896)
  call void @llvm.experimental.noalias.scope.decl(metadata !7897)
  call void @llvm.experimental.noalias.scope.decl(metadata !7898)
  call void @llvm.experimental.noalias.scope.decl(metadata !7899)
  %i.bss = load i64, ptr %i.bsk, align 8, !alias.scope !7900, !noalias !7901, !noundef !16 ; 4 uses
  switch i64 %i.bss, label %bb.vv [
    i64 0, label %.backedge.i.i.i.i.i
    i64 1, label %bb.vu
  ]

bb.vu:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.bst = load ptr, ptr %i.bsl, align 8, !alias.scope !7900, !noalias !7901, !nonnull !16, !noundef !16 ; 3 uses
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bsq, i64 16
  %.val4.i.i97.i = load i64, ptr %i.bsu, align 8, !alias.scope !7901, !noalias !7900, !noundef !16 ; 2 uses
  %i.bsv = getelementptr i8, ptr %i.bst, i64 16
  %.val6.i.i98.i = load i64, ptr %i.bsv, align 8, !noalias !7902, !noundef !16
  %.not.i.i.i.i.i.i99.i = icmp eq i64 %.val4.i.i97.i, %.val6.i.i98.i
  br i1 %.not.i.i.i.i.i.i99.i, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i101.i", label %.backedge.i.i.i.i.i

bb.vv:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.val.i.i108.i = load i64, ptr %i.bsm, align 8, !alias.scope !7900, !noalias !7901, !noundef !16 ; 2 uses
  %.val2.i.i109.i = load i64, ptr %i.bsn, align 8, !alias.scope !7900, !noalias !7901, !noundef !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7903)
  %i.bsw = xor i64 %.val.i.i108.i, 8317987319222330741 ; 2 uses
  %i.bsx = xor i64 %.val2.i.i109.i, 7237128888997146477 ; 2 uses
  %i.bsy = xor i64 %.val.i.i108.i, 7816392313619706465 ; 2 uses
  %i.bsz = xor i64 %.val2.i.i109.i, 8387220255154660723 ; 2 uses
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsq, i64 8
  %.val.i.i152.i = load ptr, ptr %i.bta, align 8, !alias.scope !7903, !noalias !7904, !nonnull !16, !noundef !16 ; 5 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bsq, i64 16
  %.val1.i.i153.i = load i64, ptr %i.btb, align 8, !alias.scope !7903, !noalias !7904, !noundef !16 ; 7 uses
  %i.btc = and i64 %.val1.i.i153.i, 7             ; 6 uses
  %i.btd = and i64 %.val1.i.i153.i, -8            ; 5 uses
  %.not.i = icmp eq i64 %i.btd, 0
  br i1 %.not.i, label %._crit_edge.i298.i, label %.lr.ph.i291.i

._crit_edge.i298.i:                               ; preds = %.lr.ph.i291.i, %bb.vv
  %.sroa.32380.4.i = phi i64 [ %i.bsz, %bb.vv ], [ %i.buj, %.lr.ph.i291.i ] ; 3 uses
  %.sroa.22375.4.i = phi i64 [ %i.bsx, %bb.vv ], [ %i.buh, %.lr.ph.i291.i ] ; 5 uses
  %.sroa.12370.4.i = phi i64 [ %i.bsy, %bb.vv ], [ %i.buk, %.lr.ph.i291.i ] ; 3 uses
  %.sroa.0365.4.i = phi i64 [ %i.bsw, %bb.vv ], [ %i.bul, %.lr.ph.i291.i ] ; 3 uses
  %i.bte = icmp samesign ugt i64 %i.btc, 3
  br i1 %i.bte, label %bb.vw, label %bb.vx

bb.vw:                                            ; preds = %._crit_edge.i298.i
  %i.btf = getelementptr inbounds nuw i8, ptr %.val.i.i152.i, i64 %i.btd
  %.sroa.014.0.copyload.i18.i290.i = load i32, ptr %i.btf, align 1, !alias.scope !7905, !noalias !7906
  %i.btg = zext i32 %.sroa.014.0.copyload.i18.i290.i to i64
  br label %bb.vx

bb.vx:                                            ; preds = %bb.vw, %._crit_edge.i298.i
  %.sroa.011.0.i12.i282.i = phi i64 [ %i.btg, %bb.vw ], [ 0, %._crit_edge.i298.i ] ; 2 uses
  %.sroa.0.0.i13.i283.i = phi i64 [ 4, %bb.vw ], [ 0, %._crit_edge.i298.i ] ; 5 uses
  %i.bth = or disjoint i64 %.sroa.0.0.i13.i283.i, 1
  %i.bti = icmp samesign ult i64 %i.bth, %i.btc
  br i1 %i.bti, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %bb.vx
  %i.btj = getelementptr i8, ptr %.val.i.i152.i, i64 %i.btd
  %i.btk = getelementptr i8, ptr %i.btj, i64 %.sroa.0.0.i13.i283.i
  %.sroa.015.0.copyload.i17.i289.i = load i16, ptr %i.btk, align 1, !alias.scope !7905, !noalias !7906
  %i.btl = zext i16 %.sroa.015.0.copyload.i17.i289.i to i64
  %i.btm = shl nuw nsw i64 %.sroa.0.0.i13.i283.i, 3
  %i.btn = shl nuw nsw i64 %i.btl, %i.btm
  %i.bto = or i64 %i.btn, %.sroa.011.0.i12.i282.i
  %i.btp = or disjoint i64 %.sroa.0.0.i13.i283.i, 2
  br label %bb.vz

bb.vz:                                            ; preds = %bb.vy, %bb.vx
  %.sroa.011.1.i14.i284.i = phi i64 [ %i.bto, %bb.vy ], [ %.sroa.011.0.i12.i282.i, %bb.vx ] ; 2 uses
  %.sroa.0.1.i15.i285.i = phi i64 [ %i.btp, %bb.vy ], [ %.sroa.0.0.i13.i283.i, %bb.vx ] ; 3 uses
  %i.btq = icmp samesign ult i64 %.sroa.0.1.i15.i285.i, %i.btc
  br i1 %i.btq, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.thread.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.thread.i": ; preds = %bb.vz
  %0 = add nuw i64 %.sroa.0.1.i15.i285.i, %i.btd  ; 2 uses
  %1 = icmp ult i64 %0, %.val1.i.i153.i
  call void @llvm.assume(i1 %1), !noalias !7907
  %2 = getelementptr inbounds nuw i8, ptr %.val.i.i152.i, i64 %0
  %3 = load i8, ptr %2, align 1, !alias.scope !7905, !noalias !7906, !noundef !16
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %.sroa.0.1.i15.i285.i, 3
  %6 = shl nuw nsw i64 %4, %5
  %7 = or i64 %6, %.sroa.011.1.i14.i284.i
  %8 = add i64 %.val1.i.i153.i, 1
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i249.i

.lr.ph.i291.i:                                    ; preds = %bb.vv, %.lr.ph.i291.i
  %i.btr = phi i64 [ %i.buk, %.lr.ph.i291.i ], [ %i.bsy, %bb.vv ]
  %i.bts = phi i64 [ %i.buh, %.lr.ph.i291.i ], [ %i.bsx, %bb.vv ] ; 3 uses
  %i.btt = phi i64 [ %i.buj, %.lr.ph.i291.i ], [ %i.bsz, %bb.vv ]
  %.sroa.04.020.i296.i = phi i64 [ %i.bum, %.lr.ph.i291.i ], [ 0, %bb.vv ] ; 2 uses
  %i.btu = phi i64 [ %i.bul, %.lr.ph.i291.i ], [ %i.bsw, %bb.vv ]
  %i.btv = getelementptr inbounds nuw i8, ptr %.val.i.i152.i, i64 %.sroa.04.020.i296.i
  %.sroa.08.0.copyload.i297.i = load i64, ptr %i.btv, align 1, !alias.scope !7908, !noalias !7906 ; 2 uses
  %i.btw = xor i64 %.sroa.08.0.copyload.i297.i, %i.btt ; 3 uses
  %i.btx = add i64 %i.btu, %i.bts                 ; 3 uses
  %i.bty = add i64 %i.btw, %i.btr                 ; 2 uses
  %i.btz = call i64 @llvm.fshl.i64(i64 %i.bts, i64 %i.bts, i64 13)
  %i.bua = xor i64 %i.btx, %i.btz                 ; 3 uses
  %i.bub = call i64 @llvm.fshl.i64(i64 %i.btw, i64 %i.btw, i64 16)
  %i.buc = xor i64 %i.bty, %i.bub                 ; 3 uses
  %i.bud = call i64 @llvm.fshl.i64(i64 %i.btx, i64 %i.btx, i64 32)
  %i.bue = add i64 %i.bty, %i.bua                 ; 3 uses
  %i.buf = add i64 %i.buc, %i.bud                 ; 2 uses
  %i.bug = call i64 @llvm.fshl.i64(i64 %i.bua, i64 %i.bua, i64 17)
  %i.buh = xor i64 %i.bue, %i.bug                 ; 2 uses
  %i.bui = call i64 @llvm.fshl.i64(i64 %i.buc, i64 %i.buc, i64 21)
  %i.buj = xor i64 %i.bui, %i.buf                 ; 2 uses
  %i.buk = call i64 @llvm.fshl.i64(i64 %i.bue, i64 %i.bue, i64 32) ; 2 uses
  %i.bul = xor i64 %i.buf, %.sroa.08.0.copyload.i297.i ; 2 uses
  %i.bum = add nuw i64 %.sroa.04.020.i296.i, 8    ; 2 uses
  %i.bun = icmp ult i64 %i.bum, %i.btd
  br i1 %i.bun, label %.lr.ph.i291.i, label %._crit_edge.i298.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a": ; preds = %bb.vz
  %9 = add i64 %.val1.i.i153.i, 1                 ; 2 uses
  %10 = icmp eq i64 %i.btc, 0
  br i1 %10, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit272.i", label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i249.i

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i249.i: ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.thread.i"
  %11 = phi i64 [ %8, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.thread.i" ], [ %9, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a" ] ; 2 uses
  %.sroa.011.2.i16.i287410.i = phi i64 [ %7, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.thread.i" ], [ %.sroa.011.1.i14.i284.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a" ]
  %i.buo = shl nuw nsw i64 %i.btc, 3
  %i.bup = shl nuw i64 255, %i.buo
  %i.buq = or i64 %.sroa.011.2.i16.i287410.i, %i.bup ; 3 uses
  %.not421.i = icmp eq i64 %i.btc, 7
  br i1 %.not421.i, label %.thread.i307, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit272.i"

.thread.i307:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i249.i
  %i.bur = xor i64 %i.buq, %.sroa.32380.4.i       ; 3 uses
  %i.bus = add i64 %.sroa.0365.4.i, %.sroa.22375.4.i ; 3 uses
  %i.but = add i64 %i.bur, %.sroa.12370.4.i       ; 2 uses
  %i.buu = call i64 @llvm.fshl.i64(i64 %.sroa.22375.4.i, i64 %.sroa.22375.4.i, i64 13)
  %i.buv = xor i64 %i.bus, %i.buu                 ; 3 uses
  %i.buw = call i64 @llvm.fshl.i64(i64 %i.bur, i64 %i.bur, i64 16)
  %i.bux = xor i64 %i.but, %i.buw                 ; 3 uses
  %i.buy = call i64 @llvm.fshl.i64(i64 %i.bus, i64 %i.bus, i64 32)
  %i.buz = add i64 %i.but, %i.buv                 ; 3 uses
  %i.bva = add i64 %i.bux, %i.buy                 ; 2 uses
  %i.bvb = call i64 @llvm.fshl.i64(i64 %i.buv, i64 %i.buv, i64 17)
  %i.bvc = xor i64 %i.buz, %i.bvb
  %i.bvd = call i64 @llvm.fshl.i64(i64 %i.bux, i64 %i.bux, i64 21)
  %i.bve = xor i64 %i.bvd, %i.bva
  %i.bvf = call i64 @llvm.fshl.i64(i64 %i.buz, i64 %i.buz, i64 32)
  %i.bvg = xor i64 %i.bva, %i.buq
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit272.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit272.i": ; preds = %.thread.i307, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i249.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a"
  %12 = phi i64 [ %11, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i249.i ], [ %11, %.thread.i307 ], [ %9, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a" ]
  %.sroa.50390.0.i = phi i64 [ %i.buq, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i249.i ], [ 0, %.thread.i307 ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a" ]
  %.sroa.32380.2.i = phi i64 [ %.sroa.32380.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i249.i ], [ %i.bve, %.thread.i307 ], [ %.sroa.32380.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a" ]
  %.sroa.22375.2.i = phi i64 [ %.sroa.22375.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i249.i ], [ %i.bvc, %.thread.i307 ], [ %.sroa.22375.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a" ] ; 3 uses
  %.sroa.12370.2.i = phi i64 [ %.sroa.12370.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i249.i ], [ %i.bvf, %.thread.i307 ], [ %.sroa.12370.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a" ]
  %.sroa.0365.2.i = phi i64 [ %.sroa.0365.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i249.i ], [ %i.bvg, %.thread.i307 ], [ %.sroa.0365.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit301.i.a" ]
  %13 = shl i64 %12, 56
  %i.bvh = or i64 %13, %.sroa.50390.0.i           ; 2 uses
  %i.bvi = xor i64 %i.bvh, %.sroa.32380.2.i       ; 3 uses
  %i.bvj = add i64 %.sroa.0365.2.i, %.sroa.22375.2.i ; 3 uses
  %i.bvk = add i64 %.sroa.12370.2.i, %i.bvi       ; 2 uses
  %i.bvl = call i64 @llvm.fshl.i64(i64 %.sroa.22375.2.i, i64 %.sroa.22375.2.i, i64 13)
  %i.bvm = xor i64 %i.bvj, %i.bvl                 ; 3 uses
  %i.bvn = call i64 @llvm.fshl.i64(i64 %i.bvi, i64 %i.bvi, i64 16)
  %i.bvo = xor i64 %i.bvk, %i.bvn                 ; 3 uses
  %i.bvp = call i64 @llvm.fshl.i64(i64 %i.bvj, i64 %i.bvj, i64 32)
  %i.bvq = add i64 %i.bvm, %i.bvk                 ; 3 uses
  %i.bvr = add i64 %i.bvp, %i.bvo                 ; 2 uses
  %i.bvs = call i64 @llvm.fshl.i64(i64 %i.bvm, i64 %i.bvm, i64 17)
  %i.bvt = xor i64 %i.bvq, %i.bvs                 ; 3 uses
  %i.bvu = call i64 @llvm.fshl.i64(i64 %i.bvo, i64 %i.bvo, i64 21)
  %i.bvv = xor i64 %i.bvr, %i.bvu                 ; 3 uses
  %i.bvw = call i64 @llvm.fshl.i64(i64 %i.bvq, i64 %i.bvq, i64 32)
  %i.bvx = xor i64 %i.bvr, %i.bvh
  %i.bvy = xor i64 %i.bvw, 255
  %i.bvz = add i64 %i.bvx, %i.bvt                 ; 3 uses
  %i.bwa = add i64 %i.bvy, %i.bvv                 ; 2 uses
  %i.bwb = call i64 @llvm.fshl.i64(i64 %i.bvt, i64 %i.bvt, i64 13)
  %i.bwc = xor i64 %i.bvz, %i.bwb                 ; 3 uses
  %i.bwd = call i64 @llvm.fshl.i64(i64 %i.bvv, i64 %i.bvv, i64 16)
  %i.bwe = xor i64 %i.bwa, %i.bwd                 ; 3 uses
  %i.bwf = call i64 @llvm.fshl.i64(i64 %i.bvz, i64 %i.bvz, i64 32)
  %i.bwg = add i64 %i.bwc, %i.bwa                 ; 3 uses
  %i.bwh = add i64 %i.bwe, %i.bwf                 ; 2 uses
  %i.bwi = call i64 @llvm.fshl.i64(i64 %i.bwc, i64 %i.bwc, i64 17)
  %i.bwj = xor i64 %i.bwg, %i.bwi                 ; 3 uses
  %i.bwk = call i64 @llvm.fshl.i64(i64 %i.bwe, i64 %i.bwe, i64 21)
  %i.bwl = xor i64 %i.bwk, %i.bwh                 ; 3 uses
  %i.bwm = call i64 @llvm.fshl.i64(i64 %i.bwg, i64 %i.bwg, i64 32)
  %i.bwn = add i64 %i.bwj, %i.bwh                 ; 3 uses
  %i.bwo = add i64 %i.bwl, %i.bwm                 ; 2 uses
  %i.bwp = call i64 @llvm.fshl.i64(i64 %i.bwj, i64 %i.bwj, i64 13)
  %i.bwq = xor i64 %i.bwp, %i.bwn                 ; 3 uses
  %i.bwr = call i64 @llvm.fshl.i64(i64 %i.bwl, i64 %i.bwl, i64 16)
  %i.bws = xor i64 %i.bwr, %i.bwo                 ; 3 uses
  %i.bwt = call i64 @llvm.fshl.i64(i64 %i.bwn, i64 %i.bwn, i64 32)
  %i.bwu = add i64 %i.bwq, %i.bwo                 ; 3 uses
  %i.bwv = add i64 %i.bws, %i.bwt                 ; 2 uses
  %i.bww = call i64 @llvm.fshl.i64(i64 %i.bwq, i64 %i.bwq, i64 17)
  %i.bwx = xor i64 %i.bww, %i.bwu                 ; 3 uses
  %i.bwy = call i64 @llvm.fshl.i64(i64 %i.bws, i64 %i.bws, i64 21)
  %i.bwz = xor i64 %i.bwy, %i.bwv                 ; 3 uses
  %i.bxa = call i64 @llvm.fshl.i64(i64 %i.bwu, i64 %i.bwu, i64 32)
  %i.bxb = add i64 %i.bwx, %i.bwv
  %i.bxc = add i64 %i.bwz, %i.bxa                 ; 2 uses
  %i.bxd = call i64 @llvm.fshl.i64(i64 %i.bwx, i64 %i.bwx, i64 13)
  %i.bxe = xor i64 %i.bxd, %i.bxb                 ; 3 uses
  %i.bxf = call i64 @llvm.fshl.i64(i64 %i.bwz, i64 %i.bwz, i64 16)
  %i.bxg = xor i64 %i.bxf, %i.bxc                 ; 2 uses
  %i.bxh = add i64 %i.bxe, %i.bxc                 ; 3 uses
  %i.bxi = call i64 @llvm.fshl.i64(i64 %i.bxe, i64 %i.bxe, i64 17)
  %i.bxj = call i64 @llvm.fshl.i64(i64 %i.bxg, i64 %i.bxg, i64 21)
  %i.bxk = call i64 @llvm.fshl.i64(i64 %i.bxh, i64 %i.bxh, i64 32)
  %i.bxl = xor i64 %i.bxi, %i.bxj
  %i.bxm = xor i64 %i.bxl, %i.bxk
  %i.bxn = xor i64 %i.bxm, %i.bxh                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7909)
  %i.bxo = load ptr, ptr %i.bsl, align 8, !alias.scope !7910, !noalias !7911, !nonnull !16, !noundef !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7912)
  call void @llvm.experimental.noalias.scope.decl(metadata !7913)
  %i.bxp = lshr i64 %i.bxn, 57
  %i.bxq = trunc nuw nsw i64 %i.bxp to i8
  %i.bxr = load i64, ptr %i.bsp, align 8, !alias.scope !7914, !noalias !7915, !noundef !16 ; 2 uses
  %i.bxs = load ptr, ptr %i.bso, align 8, !alias.scope !7914, !noalias !7915, !nonnull !16, !noundef !16 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i110.i = insertelement <16 x i8> poison, i8 %i.bxq, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i111.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i110.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.wa

bb.wa:                                            ; preds = %bb.wc, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit272.i"
  %.sroa.08.0.i.i.i.i.i114.i = phi i64 [ 0, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit272.i" ], [ %i.byp, %bb.wc ]
  %.pn.i.i.i.i115.i = phi i64 [ %i.bxn, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit272.i" ], [ %i.byq, %bb.wc ]
  %.sroa.04.0.i.i.i.i.i116.i = and i64 %.pn.i.i.i.i115.i, %i.bxr ; 3 uses
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxs, i64 %.sroa.04.0.i.i.i.i.i116.i
  %.sroa.0.0.copyload.i27.i.i.i.i117.i = load <16 x i8>, ptr %i.bxt, align 1, !noalias !7916 ; 2 uses
  %i.bxu = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i117.i, %.sroa.0.15.vec.insert.i.i.i.i.i111.i
  %i.bxv = bitcast <16 x i1> %i.bxu to i16        ; 2 uses
  %.not.i.not39.i.i.i.i118.i = icmp eq i16 %i.bxv, 0
  br i1 %.not.i.not39.i.i.i.i118.i, label %._crit_edge.i.i.i.i126.i, label %.lr.ph.i.i.i.i119.i

.lr.ph.i.i.i.i119.i:                              ; preds = %bb.wa, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i124.i"
  %.sroa.010.0.i40.i.i.i.i120.i = phi i16 [ %i.byo, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i124.i" ], [ %i.bxv, %bb.wa ] ; 3 uses
  %i.bxw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.010.0.i40.i.i.i.i120.i, i1 true)
  %i.bxx = zext nneg i16 %i.bxw to i64
  %i.bxy = add i64 %.sroa.04.0.i.i.i.i.i116.i, %i.bxx
  %i.bxz = and i64 %i.bxy, %i.bxr
  %i.bya = sub nsw i64 0, %i.bxz
  %i.byb = getelementptr inbounds [8 x i8], ptr %i.bxs, i64 %i.bya
  %i.byc = getelementptr inbounds i8, ptr %i.byb, i64 -8
  %.val.i.i.i.i.i121.i = load i64, ptr %i.byc, align 8, !noalias !7917, !noundef !16 ; 4 uses
  %i.byd = icmp ult i64 %.val.i.i.i.i.i121.i, %i.bss
  br i1 %i.byd, label %bb.wb, label %.invoke1020.i

bb.wb:                                            ; preds = %.lr.ph.i.i.i.i119.i
  %i.bye = getelementptr inbounds nuw [104 x i8], ptr %i.bxo, i64 %.val.i.i.i.i.i121.i ; 2 uses
  %i.byf = getelementptr i8, ptr %i.bye, i64 16
  %.val4.i.i.i.i.i.i122.i = load i64, ptr %i.byf, align 8, !noalias !7918, !noundef !16
  %.not.i.i.i.i.i.i.i.i.i.i123.i = icmp eq i64 %.val1.i.i153.i, %.val4.i.i.i.i.i.i122.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i123.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i127.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i124.i", !prof !45

.invoke1020.i:                                    ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i106.i", %.lr.ph.i.i.i.i119.i
  %i.byg = phi i64 [ %.val.i.i.i.i.i121.i, %.lr.ph.i.i.i.i119.i ], [ %.sroa.5.0.i9.i107.i, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i106.i" ]
  %i.byh = phi ptr [ @497, %.lr.ph.i.i.i.i119.i ], [ @495, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i106.i" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.byg, i64 noundef %i.bss, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.byh) #38
          to label %.cont1021.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.i

.cont1021.i:                                      ; preds = %.invoke1020.i
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i127.i": ; preds = %bb.wb
  %i.byi = getelementptr i8, ptr %i.bye, i64 8
  %.val3.i.i.i.i.i.i128.i = load ptr, ptr %i.byi, align 8, !noalias !7918, !nonnull !16, !noundef !16
  %bcmp.i.i.i.i.i.i.i.i.i.i129.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i152.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i128.i, i64 %.val1.i.i153.i), !alias.scope !7919, !noalias !7918
  %i.byj = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i129.i, 0
  br i1 %i.byj, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i106.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i124.i", !prof !44

._crit_edge.i.i.i.i126.i:                         ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i124.i", %bb.wa
  %i.byk = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i117.i, splat (i8 -1)
  %i.byl = bitcast <16 x i1> %i.byk to i16
  %i.bym = icmp eq i16 %i.byl, 0
  br i1 %i.bym, label %bb.wc, label %.backedge.i.i.i.i.i, !prof !18

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i124.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i127.i", %bb.wb
  %i.byn = add i16 %.sroa.010.0.i40.i.i.i.i120.i, -1
  %i.byo = and i16 %i.byn, %.sroa.010.0.i40.i.i.i.i120.i ; 2 uses
  %.not.i.not.i.i.i.i125.i = icmp eq i16 %i.byo, 0
  br i1 %.not.i.not.i.i.i.i125.i, label %._crit_edge.i.i.i.i126.i, label %.lr.ph.i.i.i.i119.i

bb.wc:                                            ; preds = %._crit_edge.i.i.i.i126.i
  %i.byp = add i64 %.sroa.08.0.i.i.i.i.i114.i, 16 ; 2 uses
  %i.byq = add i64 %.sroa.04.0.i.i.i.i.i116.i, %i.byp
  br label %bb.wa

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i101.i": ; preds = %bb.vu
  %i.byr = getelementptr i8, ptr %i.bst, i64 8
  %.val5.i.i102.i = load ptr, ptr %i.byr, align 8, !noalias !7902, !nonnull !16, !noundef !16
  %i.bys = getelementptr inbounds nuw i8, ptr %i.bsq, i64 8
  %.val3.i.i103.i = load ptr, ptr %i.bys, align 8, !alias.scope !7901, !noalias !7900, !nonnull !16, !noundef !16
  %bcmp.i.i.i.i.i.i104.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val3.i.i103.i, ptr nonnull readonly align 1 %.val5.i.i102.i, i64 %.val4.i.i97.i), !alias.scope !7920, !noalias !7902
  %bcmp.i.i.i.i.fr.i.i105.i = freeze i32 %bcmp.i.i.i.i.i.i104.i
  %i.byt = icmp eq i32 %bcmp.i.i.i.i.fr.i.i105.i, 0
  br i1 %i.byt, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i106.i", label %.backedge.i.i.i.i.i

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i106.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i127.i", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i101.i"
  %i.byu = phi ptr [ %i.bst, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i101.i" ], [ %i.bxo, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i127.i" ]
  %.sroa.5.0.i9.i107.i = phi i64 [ 0, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i101.i" ], [ %.val.i.i.i.i.i121.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i127.i" ] ; 3 uses
  %i.byv = icmp ult i64 %.sroa.5.0.i9.i107.i, %i.bss
  br i1 %i.byv, label %bb.wd, label %.invoke1020.i

bb.wd:                                            ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i106.i"
  %i.byw = getelementptr inbounds nuw [104 x i8], ptr %i.byu, i64 %.sroa.5.0.i9.i107.i
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byw, i64 24
  %i.byy = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @110, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.byx)
          to label %.noexc63.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i ; 2 uses

.noexc63.i.i:                                     ; preds = %bb.wd
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.byy, null
  br i1 %.not5.i.i.i.i.i.i, label %.backedge.i.i.i.i.i, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.noexc63.i.i
  %i.byz = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.byy)
          to label %.noexc64.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i

.noexc64.i.i:                                     ; preds = %.split.i.i.i.i.i
  %.not.i.i.i.i.i306 = icmp eq ptr %i.byz, null
  br i1 %.not.i.i.i.i.i306, label %.backedge.i.i.i.i.i, label %_ZN17openapi_generator27success_responses_have_body17ha19790ad24259a06E.exit.thread.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i126.i, %.noexc64.i.i, %.noexc63.i.i, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i101.i", %bb.vu, %.lr.ph.i.i.i.i.i
  %.not12.i.i.i.i.i = icmp eq ptr %i.bsr, %i.bsj
  br i1 %.not12.i.i.i.i.i, label %_ZN17openapi_generator27success_responses_have_body17ha19790ad24259a06E.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i

_ZN17openapi_generator27success_responses_have_body17ha19790ad24259a06E.exit.thread.i.i.i: ; preds = %.backedge.i.i.i.i.i, %.noexc64.i.i
  %.sroa.02.0.i12.i.i.i = phi i1 [ true, %.backedge.i.i.i.i.i ], [ false, %.noexc64.i.i ]
  br label %.lr.ph.i.i5.i.i.i

.lr.ph.i.i5.i.i.i:                                ; preds = %.backedge.i.i8.i.i.i, %_ZN17openapi_generator27success_responses_have_body17ha19790ad24259a06E.exit.thread.i.i.i
  %i.bza = phi ptr [ %i.bzb, %.backedge.i.i8.i.i.i ], [ %.sink52.i.i.i, %_ZN17openapi_generator27success_responses_have_body17ha19790ad24259a06E.exit.thread.i.i.i ] ; 5 uses
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.bza, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7921)
  call void @llvm.experimental.noalias.scope.decl(metadata !7922)
  call void @llvm.experimental.noalias.scope.decl(metadata !7923)
  call void @llvm.experimental.noalias.scope.decl(metadata !7924)
  %i.bzc = load i64, ptr %i.bsk, align 8, !alias.scope !7925, !noalias !7926, !noundef !16 ; 4 uses
  switch i64 %i.bzc, label %bb.wf [
    i64 0, label %.backedge.i.i8.i.i.i
    i64 1, label %bb.we
  ]

bb.we:                                            ; preds = %.lr.ph.i.i5.i.i.i
  %i.bzd = load ptr, ptr %i.bsl, align 8, !alias.scope !7925, !noalias !7926, !nonnull !16, !noundef !16 ; 3 uses
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bza, i64 16
  %.val4.i.i61.i = load i64, ptr %i.bze, align 8, !alias.scope !7926, !noalias !7925, !noundef !16 ; 2 uses
  %i.bzf = getelementptr i8, ptr %i.bzd, i64 16
  %.val6.i.i62.i = load i64, ptr %i.bzf, align 8, !noalias !7927, !noundef !16
  %.not.i.i.i.i.i.i63.i = icmp eq i64 %.val4.i.i61.i, %.val6.i.i62.i
  br i1 %.not.i.i.i.i.i.i63.i, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i65.i", label %.backedge.i.i8.i.i.i

bb.wf:                                            ; preds = %.lr.ph.i.i5.i.i.i
  %.val.i.i72.i = load i64, ptr %i.bsm, align 8, !alias.scope !7925, !noalias !7926, !noundef !16 ; 2 uses
  %.val2.i.i73.i = load i64, ptr %i.bsn, align 8, !alias.scope !7925, !noalias !7926, !noundef !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7928)
  %i.bzg = xor i64 %.val.i.i72.i, 8317987319222330741 ; 2 uses
  %i.bzh = xor i64 %.val2.i.i73.i, 7237128888997146477 ; 2 uses
  %i.bzi = xor i64 %.val.i.i72.i, 7816392313619706465 ; 2 uses
  %i.bzj = xor i64 %.val2.i.i73.i, 8387220255154660723 ; 2 uses
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bza, i64 8
  %.val.i.i140.i = load ptr, ptr %i.bzk, align 8, !alias.scope !7928, !noalias !7929, !nonnull !16, !noundef !16 ; 5 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bza, i64 16
  %.val1.i.i141.i = load i64, ptr %i.bzl, align 8, !alias.scope !7928, !noalias !7929, !noundef !16 ; 7 uses
  %i.bzm = and i64 %.val1.i.i141.i, 7             ; 6 uses
  %i.bzn = and i64 %.val1.i.i141.i, -8            ; 5 uses
  %.not423.i = icmp eq i64 %i.bzn, 0
  br i1 %.not423.i, label %._crit_edge.i240.i, label %.lr.ph.i233.i

._crit_edge.i240.i:                               ; preds = %.lr.ph.i233.i, %bb.wf
  %.sroa.32346.4.i = phi i64 [ %i.bzj, %bb.wf ], [ %i.cat, %.lr.ph.i233.i ] ; 3 uses
  %.sroa.22341.4.i = phi i64 [ %i.bzh, %bb.wf ], [ %i.car, %.lr.ph.i233.i ] ; 5 uses
  %.sroa.12336.4.i = phi i64 [ %i.bzi, %bb.wf ], [ %i.cau, %.lr.ph.i233.i ] ; 3 uses
  %.sroa.0331.4.i = phi i64 [ %i.bzg, %bb.wf ], [ %i.cav, %.lr.ph.i233.i ] ; 3 uses
  %i.bzo = icmp samesign ugt i64 %i.bzm, 3
  br i1 %i.bzo, label %bb.wg, label %bb.wh

bb.wg:                                            ; preds = %._crit_edge.i240.i
  %i.bzp = getelementptr inbounds nuw i8, ptr %.val.i.i140.i, i64 %i.bzn
  %.sroa.014.0.copyload.i18.i232.i = load i32, ptr %i.bzp, align 1, !alias.scope !7930, !noalias !7931
  %i.bzq = zext i32 %.sroa.014.0.copyload.i18.i232.i to i64
  br label %bb.wh

bb.wh:                                            ; preds = %bb.wg, %._crit_edge.i240.i
  %.sroa.011.0.i12.i224.i = phi i64 [ %i.bzq, %bb.wg ], [ 0, %._crit_edge.i240.i ] ; 2 uses
  %.sroa.0.0.i13.i225.i = phi i64 [ 4, %bb.wg ], [ 0, %._crit_edge.i240.i ] ; 5 uses
  %i.bzr = or disjoint i64 %.sroa.0.0.i13.i225.i, 1
  %i.bzs = icmp samesign ult i64 %i.bzr, %i.bzm
  br i1 %i.bzs, label %bb.wi, label %bb.wj

bb.wi:                                            ; preds = %bb.wh
  %i.bzt = getelementptr i8, ptr %.val.i.i140.i, i64 %i.bzn
  %i.bzu = getelementptr i8, ptr %i.bzt, i64 %.sroa.0.0.i13.i225.i
  %.sroa.015.0.copyload.i17.i231.i = load i16, ptr %i.bzu, align 1, !alias.scope !7930, !noalias !7931
  %i.bzv = zext i16 %.sroa.015.0.copyload.i17.i231.i to i64
  %i.bzw = shl nuw nsw i64 %.sroa.0.0.i13.i225.i, 3
  %i.bzx = shl nuw nsw i64 %i.bzv, %i.bzw
  %i.bzy = or i64 %i.bzx, %.sroa.011.0.i12.i224.i
  %i.bzz = or disjoint i64 %.sroa.0.0.i13.i225.i, 2
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wh
  %.sroa.011.1.i14.i226.i = phi i64 [ %i.bzy, %bb.wi ], [ %.sroa.011.0.i12.i224.i, %bb.wh ] ; 2 uses
  %.sroa.0.1.i15.i227.i = phi i64 [ %i.bzz, %bb.wi ], [ %.sroa.0.0.i13.i225.i, %bb.wh ] ; 3 uses
  %i.caa = icmp samesign ult i64 %.sroa.0.1.i15.i227.i, %i.bzm
  br i1 %i.caa, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.thread.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.thread.i": ; preds = %bb.wj
  %14 = add nuw i64 %.sroa.0.1.i15.i227.i, %i.bzn ; 2 uses
  %15 = icmp ult i64 %14, %.val1.i.i141.i
  call void @llvm.assume(i1 %15), !noalias !7932
  %16 = getelementptr inbounds nuw i8, ptr %.val.i.i140.i, i64 %14
  %17 = load i8, ptr %16, align 1, !alias.scope !7930, !noalias !7931, !noundef !16
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %.sroa.0.1.i15.i227.i, 3
  %20 = shl nuw nsw i64 %18, %19
  %21 = or i64 %20, %.sroa.011.1.i14.i226.i
  %22 = add i64 %.val1.i.i141.i, 1
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i191.i

.lr.ph.i233.i:                                    ; preds = %bb.wf, %.lr.ph.i233.i
  %i.cab = phi i64 [ %i.cau, %.lr.ph.i233.i ], [ %i.bzi, %bb.wf ]
  %i.cac = phi i64 [ %i.car, %.lr.ph.i233.i ], [ %i.bzh, %bb.wf ] ; 3 uses
  %i.cad = phi i64 [ %i.cat, %.lr.ph.i233.i ], [ %i.bzj, %bb.wf ]
  %.sroa.04.020.i238.i = phi i64 [ %i.caw, %.lr.ph.i233.i ], [ 0, %bb.wf ] ; 2 uses
  %i.cae = phi i64 [ %i.cav, %.lr.ph.i233.i ], [ %i.bzg, %bb.wf ]
  %i.caf = getelementptr inbounds nuw i8, ptr %.val.i.i140.i, i64 %.sroa.04.020.i238.i
  %.sroa.08.0.copyload.i239.i = load i64, ptr %i.caf, align 1, !alias.scope !7933, !noalias !7931 ; 2 uses
  %i.cag = xor i64 %.sroa.08.0.copyload.i239.i, %i.cad ; 3 uses
  %i.cah = add i64 %i.cae, %i.cac                 ; 3 uses
  %i.cai = add i64 %i.cag, %i.cab                 ; 2 uses
  %i.caj = call i64 @llvm.fshl.i64(i64 %i.cac, i64 %i.cac, i64 13)
  %i.cak = xor i64 %i.cah, %i.caj                 ; 3 uses
  %i.cal = call i64 @llvm.fshl.i64(i64 %i.cag, i64 %i.cag, i64 16)
  %i.cam = xor i64 %i.cai, %i.cal                 ; 3 uses
  %i.can = call i64 @llvm.fshl.i64(i64 %i.cah, i64 %i.cah, i64 32)
  %i.cao = add i64 %i.cai, %i.cak                 ; 3 uses
  %i.cap = add i64 %i.cam, %i.can                 ; 2 uses
  %i.caq = call i64 @llvm.fshl.i64(i64 %i.cak, i64 %i.cak, i64 17)
  %i.car = xor i64 %i.cao, %i.caq                 ; 2 uses
  %i.cas = call i64 @llvm.fshl.i64(i64 %i.cam, i64 %i.cam, i64 21)
  %i.cat = xor i64 %i.cas, %i.cap                 ; 2 uses
  %i.cau = call i64 @llvm.fshl.i64(i64 %i.cao, i64 %i.cao, i64 32) ; 2 uses
  %i.cav = xor i64 %i.cap, %.sroa.08.0.copyload.i239.i ; 2 uses
  %i.caw = add nuw i64 %.sroa.04.020.i238.i, 8    ; 2 uses
  %i.cax = icmp ult i64 %i.caw, %i.bzn
  br i1 %i.cax, label %.lr.ph.i233.i, label %._crit_edge.i240.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a": ; preds = %bb.wj
  %23 = add i64 %.val1.i.i141.i, 1                ; 2 uses
  %24 = icmp eq i64 %i.bzm, 0
  br i1 %24, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit214.i", label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i191.i

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i191.i: ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.thread.i"
  %25 = phi i64 [ %22, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.thread.i" ], [ %23, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a" ] ; 2 uses
  %.sroa.011.2.i16.i229414.i = phi i64 [ %21, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.thread.i" ], [ %.sroa.011.1.i14.i226.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a" ]
  %i.cay = shl nuw nsw i64 %i.bzm, 3
  %i.caz = shl nuw i64 255, %i.cay
  %i.cba = or i64 %.sroa.011.2.i16.i229414.i, %i.caz ; 3 uses
  %.not424.i = icmp eq i64 %i.bzm, 7
  br i1 %.not424.i, label %.thread878.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit214.i"

.thread878.i:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i191.i
  %i.cbb = xor i64 %i.cba, %.sroa.32346.4.i       ; 3 uses
  %i.cbc = add i64 %.sroa.0331.4.i, %.sroa.22341.4.i ; 3 uses
  %i.cbd = add i64 %i.cbb, %.sroa.12336.4.i       ; 2 uses
  %i.cbe = call i64 @llvm.fshl.i64(i64 %.sroa.22341.4.i, i64 %.sroa.22341.4.i, i64 13)
  %i.cbf = xor i64 %i.cbc, %i.cbe                 ; 3 uses
  %i.cbg = call i64 @llvm.fshl.i64(i64 %i.cbb, i64 %i.cbb, i64 16)
  %i.cbh = xor i64 %i.cbd, %i.cbg                 ; 3 uses
  %i.cbi = call i64 @llvm.fshl.i64(i64 %i.cbc, i64 %i.cbc, i64 32)
  %i.cbj = add i64 %i.cbd, %i.cbf                 ; 3 uses
  %i.cbk = add i64 %i.cbh, %i.cbi                 ; 2 uses
  %i.cbl = call i64 @llvm.fshl.i64(i64 %i.cbf, i64 %i.cbf, i64 17)
  %i.cbm = xor i64 %i.cbj, %i.cbl
  %i.cbn = call i64 @llvm.fshl.i64(i64 %i.cbh, i64 %i.cbh, i64 21)
  %i.cbo = xor i64 %i.cbn, %i.cbk
  %i.cbp = call i64 @llvm.fshl.i64(i64 %i.cbj, i64 %i.cbj, i64 32)
  %i.cbq = xor i64 %i.cbk, %i.cba
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit214.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit214.i": ; preds = %.thread878.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i191.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a"
  %26 = phi i64 [ %25, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i191.i ], [ %25, %.thread878.i ], [ %23, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a" ]
  %.sroa.50356.0.i = phi i64 [ %i.cba, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i191.i ], [ 0, %.thread878.i ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a" ]
  %.sroa.32346.2.i = phi i64 [ %.sroa.32346.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i191.i ], [ %i.cbo, %.thread878.i ], [ %.sroa.32346.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a" ]
  %.sroa.22341.2.i = phi i64 [ %.sroa.22341.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i191.i ], [ %i.cbm, %.thread878.i ], [ %.sroa.22341.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a" ] ; 3 uses
  %.sroa.12336.2.i = phi i64 [ %.sroa.12336.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i191.i ], [ %i.cbp, %.thread878.i ], [ %.sroa.12336.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a" ]
  %.sroa.0331.2.i = phi i64 [ %.sroa.0331.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i191.i ], [ %i.cbq, %.thread878.i ], [ %.sroa.0331.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit243.i.a" ]
  %27 = shl i64 %26, 56
  %i.cbr = or i64 %27, %.sroa.50356.0.i           ; 2 uses
  %i.cbs = xor i64 %i.cbr, %.sroa.32346.2.i       ; 3 uses
  %i.cbt = add i64 %.sroa.0331.2.i, %.sroa.22341.2.i ; 3 uses
  %i.cbu = add i64 %.sroa.12336.2.i, %i.cbs       ; 2 uses
  %i.cbv = call i64 @llvm.fshl.i64(i64 %.sroa.22341.2.i, i64 %.sroa.22341.2.i, i64 13)
  %i.cbw = xor i64 %i.cbt, %i.cbv                 ; 3 uses
  %i.cbx = call i64 @llvm.fshl.i64(i64 %i.cbs, i64 %i.cbs, i64 16)
  %i.cby = xor i64 %i.cbu, %i.cbx                 ; 3 uses
  %i.cbz = call i64 @llvm.fshl.i64(i64 %i.cbt, i64 %i.cbt, i64 32)
  %i.cca = add i64 %i.cbw, %i.cbu                 ; 3 uses
  %i.ccb = add i64 %i.cbz, %i.cby                 ; 2 uses
  %i.ccc = call i64 @llvm.fshl.i64(i64 %i.cbw, i64 %i.cbw, i64 17)
  %i.ccd = xor i64 %i.cca, %i.ccc                 ; 3 uses
  %i.cce = call i64 @llvm.fshl.i64(i64 %i.cby, i64 %i.cby, i64 21)
  %i.ccf = xor i64 %i.ccb, %i.cce                 ; 3 uses
  %i.ccg = call i64 @llvm.fshl.i64(i64 %i.cca, i64 %i.cca, i64 32)
  %i.cch = xor i64 %i.ccb, %i.cbr
  %i.cci = xor i64 %i.ccg, 255
  %i.ccj = add i64 %i.cch, %i.ccd                 ; 3 uses
  %i.cck = add i64 %i.cci, %i.ccf                 ; 2 uses
  %i.ccl = call i64 @llvm.fshl.i64(i64 %i.ccd, i64 %i.ccd, i64 13)
  %i.ccm = xor i64 %i.ccj, %i.ccl                 ; 3 uses
  %i.ccn = call i64 @llvm.fshl.i64(i64 %i.ccf, i64 %i.ccf, i64 16)
  %i.cco = xor i64 %i.cck, %i.ccn                 ; 3 uses
  %i.ccp = call i64 @llvm.fshl.i64(i64 %i.ccj, i64 %i.ccj, i64 32)
  %i.ccq = add i64 %i.ccm, %i.cck                 ; 3 uses
  %i.ccr = add i64 %i.cco, %i.ccp                 ; 2 uses
  %i.ccs = call i64 @llvm.fshl.i64(i64 %i.ccm, i64 %i.ccm, i64 17)
  %i.cct = xor i64 %i.ccq, %i.ccs                 ; 3 uses
  %i.ccu = call i64 @llvm.fshl.i64(i64 %i.cco, i64 %i.cco, i64 21)
  %i.ccv = xor i64 %i.ccu, %i.ccr                 ; 3 uses
  %i.ccw = call i64 @llvm.fshl.i64(i64 %i.ccq, i64 %i.ccq, i64 32)
  %i.ccx = add i64 %i.cct, %i.ccr                 ; 3 uses
  %i.ccy = add i64 %i.ccv, %i.ccw                 ; 2 uses
  %i.ccz = call i64 @llvm.fshl.i64(i64 %i.cct, i64 %i.cct, i64 13)
  %i.cda = xor i64 %i.ccz, %i.ccx                 ; 3 uses
  %i.cdb = call i64 @llvm.fshl.i64(i64 %i.ccv, i64 %i.ccv, i64 16)
  %i.cdc = xor i64 %i.cdb, %i.ccy                 ; 3 uses
  %i.cdd = call i64 @llvm.fshl.i64(i64 %i.ccx, i64 %i.ccx, i64 32)
  %i.cde = add i64 %i.cda, %i.ccy                 ; 3 uses
  %i.cdf = add i64 %i.cdc, %i.cdd                 ; 2 uses
  %i.cdg = call i64 @llvm.fshl.i64(i64 %i.cda, i64 %i.cda, i64 17)
  %i.cdh = xor i64 %i.cdg, %i.cde                 ; 3 uses
  %i.cdi = call i64 @llvm.fshl.i64(i64 %i.cdc, i64 %i.cdc, i64 21)
  %i.cdj = xor i64 %i.cdi, %i.cdf                 ; 3 uses
  %i.cdk = call i64 @llvm.fshl.i64(i64 %i.cde, i64 %i.cde, i64 32)
  %i.cdl = add i64 %i.cdh, %i.cdf
  %i.cdm = add i64 %i.cdj, %i.cdk                 ; 2 uses
  %i.cdn = call i64 @llvm.fshl.i64(i64 %i.cdh, i64 %i.cdh, i64 13)
  %i.cdo = xor i64 %i.cdn, %i.cdl                 ; 3 uses
  %i.cdp = call i64 @llvm.fshl.i64(i64 %i.cdj, i64 %i.cdj, i64 16)
  %i.cdq = xor i64 %i.cdp, %i.cdm                 ; 2 uses
  %i.cdr = add i64 %i.cdo, %i.cdm                 ; 3 uses
  %i.cds = call i64 @llvm.fshl.i64(i64 %i.cdo, i64 %i.cdo, i64 17)
  %i.cdt = call i64 @llvm.fshl.i64(i64 %i.cdq, i64 %i.cdq, i64 21)
  %i.cdu = call i64 @llvm.fshl.i64(i64 %i.cdr, i64 %i.cdr, i64 32)
  %i.cdv = xor i64 %i.cds, %i.cdt
  %i.cdw = xor i64 %i.cdv, %i.cdu
  %i.cdx = xor i64 %i.cdw, %i.cdr                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7934)
  %i.cdy = load ptr, ptr %i.bsl, align 8, !alias.scope !7935, !noalias !7936, !nonnull !16, !noundef !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7937)
  call void @llvm.experimental.noalias.scope.decl(metadata !7938)
  %i.cdz = lshr i64 %i.cdx, 57
  %i.cea = trunc nuw nsw i64 %i.cdz to i8
  %i.ceb = load i64, ptr %i.bsp, align 8, !alias.scope !7939, !noalias !7940, !noundef !16 ; 2 uses
  %i.cec = load ptr, ptr %i.bso, align 8, !alias.scope !7939, !noalias !7940, !nonnull !16, !noundef !16 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i74.i = insertelement <16 x i8> poison, i8 %i.cea, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i75.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i74.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.wk

bb.wk:                                            ; preds = %bb.wm, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit214.i"
  %.sroa.08.0.i.i.i.i.i78.i = phi i64 [ 0, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit214.i" ], [ %i.cez, %bb.wm ]
  %.pn.i.i.i.i79.i = phi i64 [ %i.cdx, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit214.i" ], [ %i.cfa, %bb.wm ]
  %.sroa.04.0.i.i.i.i.i80.i = and i64 %.pn.i.i.i.i79.i, %i.ceb ; 3 uses
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cec, i64 %.sroa.04.0.i.i.i.i.i80.i
  %.sroa.0.0.copyload.i27.i.i.i.i81.i = load <16 x i8>, ptr %i.ced, align 1, !noalias !7941 ; 2 uses
  %i.cee = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i81.i, %.sroa.0.15.vec.insert.i.i.i.i.i75.i
  %i.cef = bitcast <16 x i1> %i.cee to i16        ; 2 uses
  %.not.i.not39.i.i.i.i82.i = icmp eq i16 %i.cef, 0
  br i1 %.not.i.not39.i.i.i.i82.i, label %._crit_edge.i.i.i.i90.i, label %.lr.ph.i.i.i.i83.i

.lr.ph.i.i.i.i83.i:                               ; preds = %bb.wk, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i88.i"
  %.sroa.010.0.i40.i.i.i.i84.i = phi i16 [ %i.cey, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i88.i" ], [ %i.cef, %bb.wk ] ; 3 uses
  %i.ceg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.010.0.i40.i.i.i.i84.i, i1 true)
  %i.ceh = zext nneg i16 %i.ceg to i64
  %i.cei = add i64 %.sroa.04.0.i.i.i.i.i80.i, %i.ceh
  %i.cej = and i64 %i.cei, %i.ceb
  %i.cek = sub nsw i64 0, %i.cej
  %i.cel = getelementptr inbounds [8 x i8], ptr %i.cec, i64 %i.cek
  %i.cem = getelementptr inbounds i8, ptr %i.cel, i64 -8
  %.val.i.i.i.i.i85.i = load i64, ptr %i.cem, align 8, !noalias !7942, !noundef !16 ; 4 uses
  %i.cen = icmp ult i64 %.val.i.i.i.i.i85.i, %i.bzc
  br i1 %i.cen, label %bb.wl, label %.invoke1018.i

bb.wl:                                            ; preds = %.lr.ph.i.i.i.i83.i
  %i.ceo = getelementptr inbounds nuw [104 x i8], ptr %i.cdy, i64 %.val.i.i.i.i.i85.i ; 2 uses
  %i.cep = getelementptr i8, ptr %i.ceo, i64 16
  %.val4.i.i.i.i.i.i86.i = load i64, ptr %i.cep, align 8, !noalias !7943, !noundef !16
  %.not.i.i.i.i.i.i.i.i.i.i87.i = icmp eq i64 %.val1.i.i141.i, %.val4.i.i.i.i.i.i86.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i87.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i91.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i88.i", !prof !45

.invoke1018.i:                                    ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i70.i", %.lr.ph.i.i.i.i83.i
  %i.ceq = phi i64 [ %.val.i.i.i.i.i85.i, %.lr.ph.i.i.i.i83.i ], [ %.sroa.5.0.i9.i71.i, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i70.i" ]
  %i.cer = phi ptr [ @497, %.lr.ph.i.i.i.i83.i ], [ @495, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i70.i" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ceq, i64 noundef %i.bzc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cer) #38
          to label %.cont1019.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.i

.cont1019.i:                                      ; preds = %.invoke1018.i
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i91.i": ; preds = %bb.wl
  %i.ces = getelementptr i8, ptr %i.ceo, i64 8
  %.val3.i.i.i.i.i.i92.i = load ptr, ptr %i.ces, align 8, !noalias !7943, !nonnull !16, !noundef !16
  %bcmp.i.i.i.i.i.i.i.i.i.i93.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i140.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i92.i, i64 %.val1.i.i141.i), !alias.scope !7944, !noalias !7943
  %i.cet = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i93.i, 0
  br i1 %i.cet, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i70.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i88.i", !prof !44

._crit_edge.i.i.i.i90.i:                          ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i88.i", %bb.wk
  %i.ceu = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i81.i, splat (i8 -1)
  %i.cev = bitcast <16 x i1> %i.ceu to i16
  %i.cew = icmp eq i16 %i.cev, 0
  br i1 %i.cew, label %bb.wm, label %.backedge.i.i8.i.i.i, !prof !18

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i88.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i91.i", %bb.wl
  %i.cex = add i16 %.sroa.010.0.i40.i.i.i.i84.i, -1
  %i.cey = and i16 %i.cex, %.sroa.010.0.i40.i.i.i.i84.i ; 2 uses
  %.not.i.not.i.i.i.i89.i = icmp eq i16 %i.cey, 0
  br i1 %.not.i.not.i.i.i.i89.i, label %._crit_edge.i.i.i.i90.i, label %.lr.ph.i.i.i.i83.i

bb.wm:                                            ; preds = %._crit_edge.i.i.i.i90.i
  %i.cez = add i64 %.sroa.08.0.i.i.i.i.i78.i, 16  ; 2 uses
  %i.cfa = add i64 %.sroa.04.0.i.i.i.i.i80.i, %i.cez
  br label %bb.wk

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i65.i": ; preds = %bb.we
  %i.cfb = getelementptr i8, ptr %i.bzd, i64 8
  %.val5.i.i66.i = load ptr, ptr %i.cfb, align 8, !noalias !7927, !nonnull !16, !noundef !16
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.bza, i64 8
  %.val3.i.i67.i = load ptr, ptr %i.cfc, align 8, !alias.scope !7926, !noalias !7925, !nonnull !16, !noundef !16
  %bcmp.i.i.i.i.i.i68.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val3.i.i67.i, ptr nonnull readonly align 1 %.val5.i.i66.i, i64 %.val4.i.i61.i), !alias.scope !7945, !noalias !7927
  %bcmp.i.i.i.i.fr.i.i69.i = freeze i32 %bcmp.i.i.i.i.i.i68.i
  %i.cfd = icmp eq i32 %bcmp.i.i.i.i.fr.i.i69.i, 0
  br i1 %i.cfd, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i70.i", label %.backedge.i.i8.i.i.i

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i70.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i91.i", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i65.i"
  %i.cfe = phi ptr [ %i.bzd, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i65.i" ], [ %i.cdy, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i91.i" ]
  %.sroa.5.0.i9.i71.i = phi i64 [ 0, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i65.i" ], [ %.val.i.i.i.i.i85.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i91.i" ] ; 3 uses
  %i.cff = icmp ult i64 %.sroa.5.0.i9.i71.i, %i.bzc
  br i1 %i.cff, label %bb.wn, label %.invoke1018.i

bb.wn:                                            ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i70.i"
  %i.cfg = getelementptr inbounds nuw [104 x i8], ptr %i.cfe, i64 %.sroa.5.0.i9.i71.i
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfg, i64 24
  %i.cfi = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @110, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cfh)
          to label %.noexc66.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i ; 2 uses

.noexc66.i.i:                                     ; preds = %bb.wn
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.cfi, null
  br i1 %.not7.i.i.i.i.i.i, label %.backedge.i.i8.i.i.i, label %bb.wo

bb.wo:                                            ; preds = %.noexc66.i.i
  %i.cfj = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cfi)
          to label %.noexc67.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i ; 3 uses

.noexc67.i.i:                                     ; preds = %bb.wo
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.cfj, null
  br i1 %.not8.i.i.i.i.i.i, label %.backedge.i.i8.i.i.i, label %bb.wp

bb.wp:                                            ; preds = %.noexc67.i.i
  %i.cfk = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @136, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cfj)
          to label %.noexc68.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i

.noexc68.i.i:                                     ; preds = %bb.wp
  %.not.i.i.i.i.i52.i.i = icmp eq ptr %i.cfk, null
  br i1 %.not.i.i.i.i.i52.i.i, label %bb.wq, label %.loopexit206.i.i

bb.wq:                                            ; preds = %.noexc68.i.i
  %i.cfl = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @137, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cfj)
          to label %.noexc69.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i ; 3 uses

.noexc69.i.i:                                     ; preds = %bb.wq
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.cfl, null
  br i1 %.not4.i.i.i.i.i.i.i, label %.backedge.i.i8.i.i.i, label %bb.wr

bb.wr:                                            ; preds = %.noexc69.i.i
  %i.cfm = load i64, ptr %i.cfl, align 8, !range !38, !noalias !7946, !noundef !16
  %i.cfn = icmp sgt i64 %i.cfm, -1
  br i1 %i.cfn, label %.split.i.i9.i.i.i, label %.backedge.i.i8.i.i.i

.split.i.i9.i.i.i:                                ; preds = %bb.wr
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfl, i64 48
  %i.cfp = load i64, ptr %i.cfo, align 8, !noalias !7946, !noundef !16
  %.not.i.i10.i.i.i = icmp eq i64 %i.cfp, 0
  br i1 %.not.i.i10.i.i.i, label %.backedge.i.i8.i.i.i, label %.loopexit206.i.i

.backedge.i.i8.i.i.i:                             ; preds = %._crit_edge.i.i.i.i90.i, %.split.i.i9.i.i.i, %bb.wr, %.noexc69.i.i, %.noexc67.i.i, %.noexc66.i.i, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i65.i", %bb.we, %.lr.ph.i.i5.i.i.i
  %.not15.i.i.i.i.i = icmp eq ptr %i.bzb, %i.bsj
  br i1 %.not15.i.i.i.i.i, label %_ZN17openapi_generator24has_2xx_response_example17he5a211fbbd5b87ffE.exit.i.i.i, label %.lr.ph.i.i5.i.i.i

_ZN17openapi_generator24has_2xx_response_example17he5a211fbbd5b87ffE.exit.i.i.i: ; preds = %.backedge.i.i8.i.i.i
end_hunk_0
begin_hunk_1_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a

.noexc144.i.i:                                    ; preds = %bb.yf
  %i.ckk = extractvalue { i64, i64 } %i.ckj, 0
  %i.ckl = extractvalue { i64, i64 } %i.ckj, 1    ; 3 uses
  %i.ckm = trunc nuw i64 %i.ckk to i1
  br i1 %i.ckm, label %bb.yg, label %bb.yr

bb.yg:                                            ; preds = %.noexc144.i.i
  %i.ckn = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 16
  %i.cko = load i64, ptr %i.ckn, align 8, !alias.scope !8018, !noalias !8019, !noundef !16 ; 2 uses
  %i.ckp = icmp ult i64 %i.ckl, %i.cko
  br i1 %i.ckp, label %bb.yh, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.yg, %bb.xr, %bb.wx
  %i.ckq = phi i64 [ %i.cja, %bb.xr ], [ %i.cgm, %bb.wx ], [ %i.ckl, %bb.yg ]
  %i.ckr = phi i64 [ %i.cjd, %bb.xr ], [ %i.cgp, %bb.wx ], [ %i.cko, %bb.yg ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ckq, i64 noundef %i.ckr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @495) #38
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.yh:                                            ; preds = %bb.yg
  %i.cks = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 8
  %i.ckt = load ptr, ptr %i.cks, align 8, !alias.scope !8018, !noalias !8019, !nonnull !16, !noundef !16
  %i.cku = getelementptr inbounds nuw [104 x i8], ptr %i.ckt, i64 %i.ckl
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cku, i64 24 ; 2 uses
  %i.ckw = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @110, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ckv)
          to label %.noexc146.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ; 2 uses

.noexc146.i.i:                                    ; preds = %bb.yh
  %.not.i.i129.i.i = icmp eq ptr %i.ckw, null
  br i1 %.not.i.i129.i.i, label %bb.yr, label %_ZN17openapi_generator17response_has_body17h42525267767198caE.exit.i.i.i

_ZN17openapi_generator17response_has_body17h42525267767198caE.exit.i.i.i: ; preds = %.noexc146.i.i
  %i.ckx = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ckw)
          to label %.noexc147.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

.noexc147.i.i:                                    ; preds = %_ZN17openapi_generator17response_has_body17h42525267767198caE.exit.i.i.i
  %.not17.i.i.i = icmp eq ptr %i.ckx, null
  br i1 %.not17.i.i.i, label %bb.yr, label %bb.yi

bb.yi:                                            ; preds = %.noexc147.i.i
  %i.cky = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @110, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ckv)
          to label %.noexc148.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ; 2 uses

.noexc148.i.i:                                    ; preds = %bb.yi
  %.not.i9.i.i.i = icmp eq ptr %i.cky, null
  br i1 %.not.i9.i.i.i, label %_ZN17openapi_generator20response_has_example17hf4ee63a92dca56dbE.exit.thread.i133.i.i, label %bb.yj

bb.yj:                                            ; preds = %.noexc148.i.i
  %i.ckz = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cky)
          to label %.noexc149.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ; 3 uses

.noexc149.i.i:                                    ; preds = %bb.yj
  %.not6.i.i130.i.i = icmp eq ptr %i.ckz, null
  br i1 %.not6.i.i130.i.i, label %_ZN17openapi_generator20response_has_example17hf4ee63a92dca56dbE.exit.thread.i133.i.i, label %bb.yk

bb.yk:                                            ; preds = %.noexc149.i.i
  %i.cla = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @136, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ckz)
          to label %.noexc150.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

.noexc150.i.i:                                    ; preds = %bb.yk
  %.not.i.i.i131.i.i = icmp eq ptr %i.cla, null
  br i1 %.not.i.i.i131.i.i, label %bb.yl, label %bb.yr

bb.yl:                                            ; preds = %.noexc150.i.i
  %i.clb = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @137, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ckz)
          to label %.noexc151.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ; 3 uses

.noexc151.i.i:                                    ; preds = %bb.yl
  %.not4.i.i.i132.i.i = icmp eq ptr %i.clb, null
  br i1 %.not4.i.i.i132.i.i, label %_ZN17openapi_generator20response_has_example17hf4ee63a92dca56dbE.exit.thread.i133.i.i, label %bb.ym

bb.ym:                                            ; preds = %.noexc151.i.i
  %i.clc = load i64, ptr %i.clb, align 8, !range !38, !noalias !8020, !noundef !16
  %i.cld = icmp sgt i64 %i.clc, -1
  br i1 %i.cld, label %_ZN17openapi_generator20response_has_example17hf4ee63a92dca56dbE.exit.i143.i.i, label %_ZN17openapi_generator20response_has_example17hf4ee63a92dca56dbE.exit.thread.i133.i.i

_ZN17openapi_generator20response_has_example17hf4ee63a92dca56dbE.exit.i143.i.i: ; preds = %bb.ym
  %i.cle = getelementptr inbounds nuw i8, ptr %i.clb, i64 48
  %i.clf = load i64, ptr %i.cle, align 8, !noalias !8020, !noundef !16
  %.not18.i.i.i = icmp eq i64 %i.clf, 0
  br i1 %.not18.i.i.i, label %_ZN17openapi_generator20response_has_example17hf4ee63a92dca56dbE.exit.thread.i133.i.i, label %bb.yr

_ZN17openapi_generator20response_has_example17hf4ee63a92dca56dbE.exit.thread.i133.i.i: ; preds = %_ZN17openapi_generator20response_has_example17hf4ee63a92dca56dbE.exit.i143.i.i, %bb.ym, %.noexc151.i.i, %.noexc149.i.i, %.noexc148.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !8017
  store ptr %i.bu, ptr %i.bs, align 8, !noalias !8017
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd334052992ce74deE", ptr %.sroa.46.0..sroa_idx.i134.i.i, align 8, !noalias !8017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !8021
  store ptr @114, ptr %i.br, align 8, !noalias !8022
  store i64 2, ptr %.sroa.4.0..sroa_idx.i135.i.i, align 8, !noalias !8022
  store ptr %i.bs, ptr %.sroa.5.0..sroa_idx.i136.i.i, align 8, !noalias !8022
  store i64 1, ptr %.sroa.6.0..sroa_idx.i137.i.i, align 8, !noalias !8022
  store ptr null, ptr %.sroa.7.0..sroa_idx.i138.i.i, align 8, !noalias !8022
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.br)
          to label %.noexc152.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

.noexc152.i.i:                                    ; preds = %_ZN17openapi_generator20response_has_example17hf4ee63a92dca56dbE.exit.thread.i133.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !8021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !8017
  call void @llvm.experimental.noalias.scope.decl(metadata !8023)
  call void @llvm.experimental.noalias.scope.decl(metadata !8024)
  %i.clg = load i64, ptr %i.bii, align 8, !alias.scope !8025, !noalias !8026, !noundef !16 ; 3 uses
  %i.clh = load i64, ptr %i.ee, align 8, !range !17, !alias.scope !8025, !noalias !8026, !noundef !16
  %i.cli = icmp eq i64 %i.clg, %i.clh
  br i1 %i.cli, label %bb.yn, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i139.i.i"

bb.yn:                                            ; preds = %.noexc152.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17habcca6f8b95852b3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @115)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i139.i.i" unwind label %bb.yo, !noalias !8027

bb.yo:                                            ; preds = %bb.yn
  %i.clj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i140.i.i = load i64, ptr %i.bt, align 8, !alias.scope !8024, !noalias !8028 ; 2 uses
  %i.clk = icmp eq i64 %.val.i.i140.i.i, 0
  br i1 %i.clk, label %.body21.i.i, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %i.cll = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.val2.i.i141.i.i = load ptr, ptr %i.cll, align 8, !alias.scope !8024, !noalias !8028, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i141.i.i, i64 noundef %.val.i.i140.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8027
  br label %.body21.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i139.i.i": ; preds = %bb.yn, %.noexc152.i.i
  %i.clm = load ptr, ptr %i.bih, align 8, !alias.scope !8025, !noalias !8026, !nonnull !16, !noundef !16
  %i.cln = getelementptr inbounds nuw [24 x i8], ptr %i.clm, i64 %i.clg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cln, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !8015
  %i.clo = add i64 %i.clg, 1
  store i64 %i.clo, ptr %i.bii, align 8, !alias.scope !8025, !noalias !8026
  br label %bb.yr

bb.yq:                                            ; preds = %.loopexit202.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !7844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !7844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !7844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !7844
  br label %.loopexit194.i.i

bb.yr:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbb5c6b01b7e22125E.exit.i139.i.i", %_ZN17openapi_generator20response_has_example17hf4ee63a92dca56dbE.exit.i143.i.i, %.noexc150.i.i, %.noexc147.i.i, %.noexc146.i.i, %.noexc144.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !7844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !7844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !7844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !7844
  store ptr %i.bpm, ptr %i.bq, align 8, !noalias !8029
  store i64 %i.bpn, ptr %i.bjl, align 8, !noalias !8029
  %.idx.i156.i.i = mul nuw nsw i64 %.sink.i.i.i287, 24
  %i.clp = getelementptr inbounds nuw i8, ptr %.sink52.i.i.i, i64 %.idx.i156.i.i
  %i.clq = icmp eq i64 %.sink.i.i.i287, 0
  br i1 %i.clq, label %.thread190.i.i, label %.lr.ph.i157.i.i

.thread190.i.i:                                   ; preds = %bb.yr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !7844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !7844
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7e1a239bed9d576E.exit.i.i.i"

.lr.ph.i157.i.i:                                  ; preds = %bb.yr
  %i.clr = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 16
  %i.cls = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 8 ; 2 uses
  %i.clt = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 56
  %i.clu = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 64
  %i.clv = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 24
  %i.clw = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i.i, i64 32
  br label %bb.ys

bb.ys:                                            ; preds = %.backedge.i.i.i289, %.lr.ph.i157.i.i
  %.sroa.018.032.i.i.i = phi ptr [ %.sink52.i.i.i, %.lr.ph.i157.i.i ], [ %i.clx, %.backedge.i.i.i289 ] ; 6 uses
  %i.clx = getelementptr inbounds nuw i8, ptr %.sroa.018.032.i.i.i, i64 24 ; 2 uses
  store ptr %.sroa.018.032.i.i.i, ptr %i.bp, align 8, !noalias !8030
  call void @llvm.experimental.noalias.scope.decl(metadata !8031)
  call void @llvm.experimental.noalias.scope.decl(metadata !8032)
  call void @llvm.experimental.noalias.scope.decl(metadata !8033)
  call void @llvm.experimental.noalias.scope.decl(metadata !8034)
  %i.cly = load i64, ptr %i.clr, align 8, !alias.scope !8035, !noalias !8036, !noundef !16 ; 4 uses
  switch i64 %i.cly, label %bb.yu [
    i64 0, label %.backedge.i.i.i289
    i64 1, label %bb.yt
  ]

bb.yt:                                            ; preds = %bb.ys
  %i.clz = load ptr, ptr %i.cls, align 8, !alias.scope !8035, !noalias !8036, !nonnull !16, !noundef !16 ; 3 uses
  %i.cma = getelementptr inbounds nuw i8, ptr %.sroa.018.032.i.i.i, i64 16
  %.val4.i.i.i = load i64, ptr %i.cma, align 8, !alias.scope !8036, !noalias !8035, !noundef !16 ; 2 uses
  %i.cmb = getelementptr i8, ptr %i.clz, i64 16
  %.val6.i.i.i = load i64, ptr %i.cmb, align 8, !noalias !8037, !noundef !16
  %.not.i.i.i.i.i.i54.i = icmp eq i64 %.val4.i.i.i, %.val6.i.i.i
  br i1 %.not.i.i.i.i.i.i54.i, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i.i", label %.backedge.i.i.i289

bb.yu:                                            ; preds = %bb.ys
  %.val.i.i56.i = load i64, ptr %i.clt, align 8, !alias.scope !8035, !noalias !8036, !noundef !16 ; 2 uses
  %.val2.i.i.i296 = load i64, ptr %i.clu, align 8, !alias.scope !8035, !noalias !8036, !noundef !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8038)
  %i.cmc = xor i64 %.val.i.i56.i, 8317987319222330741 ; 2 uses
  %i.cmd = xor i64 %.val2.i.i.i296, 7237128888997146477 ; 2 uses
  %i.cme = xor i64 %.val.i.i56.i, 7816392313619706465 ; 2 uses
  %i.cmf = xor i64 %.val2.i.i.i296, 8387220255154660723 ; 2 uses
  %i.cmg = getelementptr inbounds nuw i8, ptr %.sroa.018.032.i.i.i, i64 8
  %.val.i.i133.i = load ptr, ptr %i.cmg, align 8, !alias.scope !8038, !noalias !8039, !nonnull !16, !noundef !16 ; 5 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %.sroa.018.032.i.i.i, i64 16
  %.val1.i.i.i297 = load i64, ptr %i.cmh, align 8, !alias.scope !8038, !noalias !8039, !noundef !16 ; 7 uses
  %i.cmi = and i64 %.val1.i.i.i297, 7             ; 6 uses
  %i.cmj = and i64 %.val1.i.i.i297, -8            ; 5 uses
  %.not426.i = icmp eq i64 %i.cmj, 0
  br i1 %.not426.i, label %._crit_edge.i183.i, label %.lr.ph.i176.i

._crit_edge.i183.i:                               ; preds = %.lr.ph.i176.i, %bb.yu
  %.sroa.32.4.i = phi i64 [ %i.cmf, %bb.yu ], [ %i.cnp, %.lr.ph.i176.i ] ; 3 uses
  %.sroa.22.4.i = phi i64 [ %i.cmd, %bb.yu ], [ %i.cnn, %.lr.ph.i176.i ] ; 5 uses
  %.sroa.12.4.i = phi i64 [ %i.cme, %bb.yu ], [ %i.cnq, %.lr.ph.i176.i ] ; 3 uses
  %.sroa.0305.4.i = phi i64 [ %i.cmc, %bb.yu ], [ %i.cnr, %.lr.ph.i176.i ] ; 3 uses
  %i.cmk = icmp samesign ugt i64 %i.cmi, 3
  br i1 %i.cmk, label %bb.yv, label %bb.yw

bb.yv:                                            ; preds = %._crit_edge.i183.i
  %i.cml = getelementptr inbounds nuw i8, ptr %.val.i.i133.i, i64 %i.cmj
  %.sroa.014.0.copyload.i18.i175.i = load i32, ptr %i.cml, align 1, !alias.scope !8040, !noalias !8041
  %i.cmm = zext i32 %.sroa.014.0.copyload.i18.i175.i to i64
  br label %bb.yw

bb.yw:                                            ; preds = %bb.yv, %._crit_edge.i183.i
  %.sroa.011.0.i12.i167.i = phi i64 [ %i.cmm, %bb.yv ], [ 0, %._crit_edge.i183.i ] ; 2 uses
  %.sroa.0.0.i13.i168.i = phi i64 [ 4, %bb.yv ], [ 0, %._crit_edge.i183.i ] ; 5 uses
  %i.cmn = or disjoint i64 %.sroa.0.0.i13.i168.i, 1
  %i.cmo = icmp samesign ult i64 %i.cmn, %i.cmi
  br i1 %i.cmo, label %bb.yx, label %bb.yy

bb.yx:                                            ; preds = %bb.yw
  %i.cmp = getelementptr i8, ptr %.val.i.i133.i, i64 %i.cmj
  %i.cmq = getelementptr i8, ptr %i.cmp, i64 %.sroa.0.0.i13.i168.i
  %.sroa.015.0.copyload.i17.i174.i = load i16, ptr %i.cmq, align 1, !alias.scope !8040, !noalias !8041
  %i.cmr = zext i16 %.sroa.015.0.copyload.i17.i174.i to i64
  %i.cms = shl nuw nsw i64 %.sroa.0.0.i13.i168.i, 3
  %i.cmt = shl nuw nsw i64 %i.cmr, %i.cms
  %i.cmu = or i64 %i.cmt, %.sroa.011.0.i12.i167.i
  %i.cmv = or disjoint i64 %.sroa.0.0.i13.i168.i, 2
  br label %bb.yy

bb.yy:                                            ; preds = %bb.yx, %bb.yw
  %.sroa.011.1.i14.i169.i = phi i64 [ %i.cmu, %bb.yx ], [ %.sroa.011.0.i12.i167.i, %bb.yw ] ; 2 uses
  %.sroa.0.1.i15.i170.i = phi i64 [ %i.cmv, %bb.yx ], [ %.sroa.0.0.i13.i168.i, %bb.yw ] ; 3 uses
  %i.cmw = icmp samesign ult i64 %.sroa.0.1.i15.i170.i, %i.cmi
  br i1 %i.cmw, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.thread.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.thread.i": ; preds = %bb.yy
  %28 = add nuw i64 %.sroa.0.1.i15.i170.i, %i.cmj ; 2 uses
  %29 = icmp ult i64 %28, %.val1.i.i.i297
  call void @llvm.assume(i1 %29), !noalias !8042
  %30 = getelementptr inbounds nuw i8, ptr %.val.i.i133.i, i64 %28
  %31 = load i8, ptr %30, align 1, !alias.scope !8040, !noalias !8041, !noundef !16
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %.sroa.0.1.i15.i170.i, 3
  %34 = shl nuw nsw i64 %32, %33
  %35 = or i64 %34, %.sroa.011.1.i14.i169.i
  %36 = add i64 %.val1.i.i.i297, 1
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i

.lr.ph.i176.i:                                    ; preds = %bb.yu, %.lr.ph.i176.i
  %i.cmx = phi i64 [ %i.cnq, %.lr.ph.i176.i ], [ %i.cme, %bb.yu ]
  %i.cmy = phi i64 [ %i.cnn, %.lr.ph.i176.i ], [ %i.cmd, %bb.yu ] ; 3 uses
  %i.cmz = phi i64 [ %i.cnp, %.lr.ph.i176.i ], [ %i.cmf, %bb.yu ]
  %.sroa.04.020.i181.i = phi i64 [ %i.cns, %.lr.ph.i176.i ], [ 0, %bb.yu ] ; 2 uses
  %i.cna = phi i64 [ %i.cnr, %.lr.ph.i176.i ], [ %i.cmc, %bb.yu ]
  %i.cnb = getelementptr inbounds nuw i8, ptr %.val.i.i133.i, i64 %.sroa.04.020.i181.i
  %.sroa.08.0.copyload.i182.i = load i64, ptr %i.cnb, align 1, !alias.scope !8043, !noalias !8041 ; 2 uses
  %i.cnc = xor i64 %.sroa.08.0.copyload.i182.i, %i.cmz ; 3 uses
  %i.cnd = add i64 %i.cna, %i.cmy                 ; 3 uses
  %i.cne = add i64 %i.cnc, %i.cmx                 ; 2 uses
  %i.cnf = call i64 @llvm.fshl.i64(i64 %i.cmy, i64 %i.cmy, i64 13)
  %i.cng = xor i64 %i.cnd, %i.cnf                 ; 3 uses
  %i.cnh = call i64 @llvm.fshl.i64(i64 %i.cnc, i64 %i.cnc, i64 16)
  %i.cni = xor i64 %i.cne, %i.cnh                 ; 3 uses
  %i.cnj = call i64 @llvm.fshl.i64(i64 %i.cnd, i64 %i.cnd, i64 32)
  %i.cnk = add i64 %i.cne, %i.cng                 ; 3 uses
  %i.cnl = add i64 %i.cni, %i.cnj                 ; 2 uses
  %i.cnm = call i64 @llvm.fshl.i64(i64 %i.cng, i64 %i.cng, i64 17)
  %i.cnn = xor i64 %i.cnk, %i.cnm                 ; 2 uses
  %i.cno = call i64 @llvm.fshl.i64(i64 %i.cni, i64 %i.cni, i64 21)
  %i.cnp = xor i64 %i.cno, %i.cnl                 ; 2 uses
  %i.cnq = call i64 @llvm.fshl.i64(i64 %i.cnk, i64 %i.cnk, i64 32) ; 2 uses
  %i.cnr = xor i64 %i.cnl, %.sroa.08.0.copyload.i182.i ; 2 uses
  %i.cns = add nuw i64 %.sroa.04.020.i181.i, 8    ; 2 uses
  %i.cnt = icmp ult i64 %i.cns, %i.cmj
  br i1 %i.cnt, label %.lr.ph.i176.i, label %._crit_edge.i183.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a": ; preds = %bb.yy
  %37 = add i64 %.val1.i.i.i297, 1                ; 2 uses
  %38 = icmp eq i64 %i.cmi, 0
  br i1 %38, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit.i", label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i: ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.thread.i"
  %39 = phi i64 [ %36, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.thread.i" ], [ %37, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a" ] ; 2 uses
  %.sroa.011.2.i16.i172418.i = phi i64 [ %35, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.thread.i" ], [ %.sroa.011.1.i14.i169.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a" ]
  %i.cnu = shl nuw nsw i64 %i.cmi, 3
  %i.cnv = shl nuw i64 255, %i.cnu
  %i.cnw = or i64 %.sroa.011.2.i16.i172418.i, %i.cnv ; 3 uses
  %.not427.i = icmp eq i64 %i.cmi, 7
  br i1 %.not427.i, label %.thread884.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit.i"

.thread884.i:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i
  %i.cnx = xor i64 %i.cnw, %.sroa.32.4.i          ; 3 uses
  %i.cny = add i64 %.sroa.0305.4.i, %.sroa.22.4.i ; 3 uses
  %i.cnz = add i64 %i.cnx, %.sroa.12.4.i          ; 2 uses
  %i.coa = call i64 @llvm.fshl.i64(i64 %.sroa.22.4.i, i64 %.sroa.22.4.i, i64 13)
  %i.cob = xor i64 %i.cny, %i.coa                 ; 3 uses
  %i.coc = call i64 @llvm.fshl.i64(i64 %i.cnx, i64 %i.cnx, i64 16)
  %i.cod = xor i64 %i.cnz, %i.coc                 ; 3 uses
  %i.coe = call i64 @llvm.fshl.i64(i64 %i.cny, i64 %i.cny, i64 32)
  %i.cof = add i64 %i.cnz, %i.cob                 ; 3 uses
  %i.cog = add i64 %i.cod, %i.coe                 ; 2 uses
  %i.coh = call i64 @llvm.fshl.i64(i64 %i.cob, i64 %i.cob, i64 17)
  %i.coi = xor i64 %i.cof, %i.coh
  %i.coj = call i64 @llvm.fshl.i64(i64 %i.cod, i64 %i.cod, i64 21)
  %i.cok = xor i64 %i.coj, %i.cog
  %i.col = call i64 @llvm.fshl.i64(i64 %i.cof, i64 %i.cof, i64 32)
  %i.com = xor i64 %i.cog, %i.cnw
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit.i": ; preds = %.thread884.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a"
  %40 = phi i64 [ %39, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %39, %.thread884.i ], [ %37, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a" ]
  %.sroa.50.0.i = phi i64 [ %i.cnw, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ 0, %.thread884.i ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a" ]
  %.sroa.32.2.i = phi i64 [ %.sroa.32.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %i.cok, %.thread884.i ], [ %.sroa.32.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a" ]
  %.sroa.22.2.i = phi i64 [ %.sroa.22.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %i.coi, %.thread884.i ], [ %.sroa.22.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a" ] ; 3 uses
  %.sroa.12.2.i = phi i64 [ %.sroa.12.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %i.col, %.thread884.i ], [ %.sroa.12.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a" ]
  %.sroa.0305.2.i = phi i64 [ %.sroa.0305.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %i.com, %.thread884.i ], [ %.sroa.0305.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit185.i.a" ]
  %41 = shl i64 %40, 56
  %i.con = or i64 %41, %.sroa.50.0.i              ; 2 uses
  %i.coo = xor i64 %i.con, %.sroa.32.2.i          ; 3 uses
  %i.cop = add i64 %.sroa.0305.2.i, %.sroa.22.2.i ; 3 uses
  %i.coq = add i64 %.sroa.12.2.i, %i.coo          ; 2 uses
  %i.cor = call i64 @llvm.fshl.i64(i64 %.sroa.22.2.i, i64 %.sroa.22.2.i, i64 13)
  %i.cos = xor i64 %i.cop, %i.cor                 ; 3 uses
  %i.cot = call i64 @llvm.fshl.i64(i64 %i.coo, i64 %i.coo, i64 16)
  %i.cou = xor i64 %i.coq, %i.cot                 ; 3 uses
  %i.cov = call i64 @llvm.fshl.i64(i64 %i.cop, i64 %i.cop, i64 32)
  %i.cow = add i64 %i.cos, %i.coq                 ; 3 uses
  %i.cox = add i64 %i.cov, %i.cou                 ; 2 uses
  %i.coy = call i64 @llvm.fshl.i64(i64 %i.cos, i64 %i.cos, i64 17)
  %i.coz = xor i64 %i.cow, %i.coy                 ; 3 uses
  %i.cpa = call i64 @llvm.fshl.i64(i64 %i.cou, i64 %i.cou, i64 21)
  %i.cpb = xor i64 %i.cox, %i.cpa                 ; 3 uses
  %i.cpc = call i64 @llvm.fshl.i64(i64 %i.cow, i64 %i.cow, i64 32)
  %i.cpd = xor i64 %i.cox, %i.con
  %i.cpe = xor i64 %i.cpc, 255
  %i.cpf = add i64 %i.cpd, %i.coz                 ; 3 uses
  %i.cpg = add i64 %i.cpe, %i.cpb                 ; 2 uses
  %i.cph = call i64 @llvm.fshl.i64(i64 %i.coz, i64 %i.coz, i64 13)
  %i.cpi = xor i64 %i.cpf, %i.cph                 ; 3 uses
  %i.cpj = call i64 @llvm.fshl.i64(i64 %i.cpb, i64 %i.cpb, i64 16)
  %i.cpk = xor i64 %i.cpg, %i.cpj                 ; 3 uses
  %i.cpl = call i64 @llvm.fshl.i64(i64 %i.cpf, i64 %i.cpf, i64 32)
  %i.cpm = add i64 %i.cpi, %i.cpg                 ; 3 uses
  %i.cpn = add i64 %i.cpk, %i.cpl                 ; 2 uses
  %i.cpo = call i64 @llvm.fshl.i64(i64 %i.cpi, i64 %i.cpi, i64 17)
  %i.cpp = xor i64 %i.cpm, %i.cpo                 ; 3 uses
  %i.cpq = call i64 @llvm.fshl.i64(i64 %i.cpk, i64 %i.cpk, i64 21)
  %i.cpr = xor i64 %i.cpq, %i.cpn                 ; 3 uses
  %i.cps = call i64 @llvm.fshl.i64(i64 %i.cpm, i64 %i.cpm, i64 32)
  %i.cpt = add i64 %i.cpp, %i.cpn                 ; 3 uses
  %i.cpu = add i64 %i.cpr, %i.cps                 ; 2 uses
  %i.cpv = call i64 @llvm.fshl.i64(i64 %i.cpp, i64 %i.cpp, i64 13)
  %i.cpw = xor i64 %i.cpv, %i.cpt                 ; 3 uses
  %i.cpx = call i64 @llvm.fshl.i64(i64 %i.cpr, i64 %i.cpr, i64 16)
  %i.cpy = xor i64 %i.cpx, %i.cpu                 ; 3 uses
  %i.cpz = call i64 @llvm.fshl.i64(i64 %i.cpt, i64 %i.cpt, i64 32)
  %i.cqa = add i64 %i.cpw, %i.cpu                 ; 3 uses
  %i.cqb = add i64 %i.cpy, %i.cpz                 ; 2 uses
  %i.cqc = call i64 @llvm.fshl.i64(i64 %i.cpw, i64 %i.cpw, i64 17)
  %i.cqd = xor i64 %i.cqc, %i.cqa                 ; 3 uses
  %i.cqe = call i64 @llvm.fshl.i64(i64 %i.cpy, i64 %i.cpy, i64 21)
  %i.cqf = xor i64 %i.cqe, %i.cqb                 ; 3 uses
  %i.cqg = call i64 @llvm.fshl.i64(i64 %i.cqa, i64 %i.cqa, i64 32)
  %i.cqh = add i64 %i.cqd, %i.cqb
  %i.cqi = add i64 %i.cqf, %i.cqg                 ; 2 uses
  %i.cqj = call i64 @llvm.fshl.i64(i64 %i.cqd, i64 %i.cqd, i64 13)
  %i.cqk = xor i64 %i.cqj, %i.cqh                 ; 3 uses
  %i.cql = call i64 @llvm.fshl.i64(i64 %i.cqf, i64 %i.cqf, i64 16)
  %i.cqm = xor i64 %i.cql, %i.cqi                 ; 2 uses
  %i.cqn = add i64 %i.cqk, %i.cqi                 ; 3 uses
  %i.cqo = call i64 @llvm.fshl.i64(i64 %i.cqk, i64 %i.cqk, i64 17)
  %i.cqp = call i64 @llvm.fshl.i64(i64 %i.cqm, i64 %i.cqm, i64 21)
  %i.cqq = call i64 @llvm.fshl.i64(i64 %i.cqn, i64 %i.cqn, i64 32)
  %i.cqr = xor i64 %i.cqo, %i.cqp
  %i.cqs = xor i64 %i.cqr, %i.cqq
  %i.cqt = xor i64 %i.cqs, %i.cqn                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8044)
  %i.cqu = load ptr, ptr %i.cls, align 8, !alias.scope !8045, !noalias !8046, !nonnull !16, !noundef !16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8047)
  call void @llvm.experimental.noalias.scope.decl(metadata !8048)
  %i.cqv = lshr i64 %i.cqt, 57
  %i.cqw = trunc nuw nsw i64 %i.cqv to i8
  %i.cqx = load i64, ptr %i.clw, align 8, !alias.scope !8049, !noalias !8050, !noundef !16 ; 2 uses
  %i.cqy = load ptr, ptr %i.clv, align 8, !alias.scope !8049, !noalias !8050, !nonnull !16, !noundef !16 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.cqw, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.yz

bb.yz:                                            ; preds = %bb.zb, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit.i"
  %.sroa.08.0.i.i.i.i.i.i = phi i64 [ 0, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit.i" ], [ %i.crv, %bb.zb ]
  %.pn.i.i.i.i57.i = phi i64 [ %i.cqt, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hce18c0b16ad05d31E.exit.i" ], [ %i.crw, %bb.zb ]
  %.sroa.04.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i57.i, %i.cqx ; 3 uses
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cqy, i64 %.sroa.04.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i = load <16 x i8>, ptr %i.cqz, align 1, !noalias !8051 ; 2 uses
  %i.cra = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.crb = bitcast <16 x i1> %i.cra to i16        ; 2 uses
  %.not.i.not39.i.i.i.i.i = icmp eq i16 %i.crb, 0
  br i1 %.not.i.not39.i.i.i.i.i, label %._crit_edge.i.i.i.i.i299, label %.lr.ph.i.i.i.i58.i

.lr.ph.i.i.i.i58.i:                               ; preds = %bb.yz, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i.i"
  %.sroa.010.0.i40.i.i.i.i.i = phi i16 [ %i.cru, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i.i" ], [ %i.crb, %bb.yz ] ; 3 uses
  %i.crc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.010.0.i40.i.i.i.i.i, i1 true)
  %i.crd = zext nneg i16 %i.crc to i64
  %i.cre = add i64 %.sroa.04.0.i.i.i.i.i.i, %i.crd
  %i.crf = and i64 %i.cre, %i.cqx
  %i.crg = sub nsw i64 0, %i.crf
  %i.crh = getelementptr inbounds [8 x i8], ptr %i.cqy, i64 %i.crg
  %i.cri = getelementptr inbounds i8, ptr %i.crh, i64 -8
  %.val.i.i.i.i.i.i298 = load i64, ptr %i.cri, align 8, !noalias !8052, !noundef !16 ; 4 uses
  %i.crj = icmp ult i64 %.val.i.i.i.i.i.i298, %i.cly
  br i1 %i.crj, label %bb.za, label %.invoke.i294

bb.za:                                            ; preds = %.lr.ph.i.i.i.i58.i
  %i.crk = getelementptr inbounds nuw [104 x i8], ptr %i.cqu, i64 %.val.i.i.i.i.i.i298 ; 2 uses
  %i.crl = getelementptr i8, ptr %i.crk, i64 16
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.crl, align 8, !noalias !8053, !noundef !16
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i297, %.val4.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i.i", !prof !45

.invoke.i294:                                     ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i.i", %.lr.ph.i.i.i.i58.i
  %i.crm = phi i64 [ %.val.i.i.i.i.i.i298, %.lr.ph.i.i.i.i58.i ], [ %.sroa.5.0.i9.i.i, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i.i" ]
  %i.crn = phi ptr [ @497, %.lr.ph.i.i.i.i58.i ], [ @495, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i.i" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.crm, i64 noundef %i.cly, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.crn) #38
          to label %.cont.i295 unwind label %.loopexit.i.loopexit.split-lp.i

.cont.i295:                                       ; preds = %.invoke.i294
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i.i": ; preds = %bb.za
  %i.cro = getelementptr i8, ptr %i.crk, i64 8
  %.val3.i.i.i.i.i.i.i300 = load ptr, ptr %i.cro, align 8, !noalias !8053, !nonnull !16, !noundef !16
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i133.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i.i300, i64 %.val1.i.i.i297), !alias.scope !8054, !noalias !8053
  %i.crp = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.crp, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i.i", !prof !44

._crit_edge.i.i.i.i.i299:                         ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i.i", %bb.yz
  %i.crq = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, splat (i8 -1)
  %i.crr = bitcast <16 x i1> %i.crq to i16
  %i.crs = icmp eq i16 %i.crr, 0
  br i1 %i.crs, label %bb.zb, label %.backedge.i.i.i289, !prof !18

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.thread.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i.i", %bb.za
  %i.crt = add i16 %.sroa.010.0.i40.i.i.i.i.i, -1
  %i.cru = and i16 %i.crt, %.sroa.010.0.i40.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.cru, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i299, label %.lr.ph.i.i.i.i58.i

bb.zb:                                            ; preds = %._crit_edge.i.i.i.i.i299
  %i.crv = add i64 %.sroa.08.0.i.i.i.i.i.i, 16    ; 2 uses
  %i.crw = add i64 %.sroa.04.0.i.i.i.i.i.i, %i.crv
  br label %bb.yz

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i.i": ; preds = %bb.yt
  %i.crx = getelementptr i8, ptr %i.clz, i64 8
  %.val5.i.i.i = load ptr, ptr %i.crx, align 8, !noalias !8037, !nonnull !16, !noundef !16
  %i.cry = getelementptr inbounds nuw i8, ptr %.sroa.018.032.i.i.i, i64 8
  %.val3.i.i.i292 = load ptr, ptr %i.cry, align 8, !alias.scope !8036, !noalias !8035, !nonnull !16, !noundef !16
  %bcmp.i.i.i.i.i.i.i293 = call i32 @bcmp(ptr nonnull readonly align 1 %.val3.i.i.i292, ptr nonnull readonly align 1 %.val5.i.i.i, i64 %.val4.i.i.i), !alias.scope !8055, !noalias !8037
  %bcmp.i.i.i.i.fr.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i293
  %i.crz = icmp eq i32 %bcmp.i.i.i.i.fr.i.i.i, 0
  br i1 %i.crz, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i.i", label %.backedge.i.i.i289

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i.i", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i.i"
  %i.csa = phi ptr [ %i.clz, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i.i" ], [ %i.cqu, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i.i" ]
  %.sroa.5.0.i9.i.i = phi i64 [ 0, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i.i" ], [ %.val.i.i.i.i.i.i298, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h9ed535333c7f8e75E.exit.i.i.i.i.i" ] ; 3 uses
  %i.csb = icmp ult i64 %.sroa.5.0.i9.i.i, %i.cly
  br i1 %i.csb, label %bb.zc, label %.invoke.i294

bb.zc:                                            ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.thread6.i.i"
  %i.csc = getelementptr inbounds nuw [104 x i8], ptr %i.csa, i64 %.sroa.5.0.i9.i.i
  %i.csd = getelementptr inbounds nuw i8, ptr %i.csc, i64 24
  %i.cse = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @110, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.csd)
          to label %.noexc170.i.i unwind label %.loopexit.i.loopexit.i ; 2 uses

.noexc170.i.i:                                    ; preds = %bb.zc
  %.not22.i.i.i = icmp eq ptr %i.cse, null
  br i1 %.not22.i.i.i, label %.backedge.i.i.i289, label %bb.zd

bb.zd:                                            ; preds = %.noexc170.i.i
  %i.csf = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cse)
          to label %.noexc171.i.i unwind label %.loopexit.i.loopexit.i ; 2 uses

.noexc171.i.i:                                    ; preds = %bb.zd
  %.not23.i.i.i = icmp eq ptr %i.csf, null
  br i1 %.not23.i.i.i, label %.backedge.i.i.i289, label %bb.ze

bb.ze:                                            ; preds = %.noexc171.i.i
  %i.csg = invoke noundef align 8 dereferenceable_or_null(72) ptr @"_ZN55_$LT$str$u20$as$u20$serde_json..value..index..Index$GT$10index_into17hc4d599c23b3f23caE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @145, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.csf)
          to label %.noexc172.i.i unwind label %.loopexit.i.loopexit.i ; 2 uses

.noexc172.i.i:                                    ; preds = %bb.ze
  %.not24.i.i.i = icmp eq ptr %i.csg, null
  br i1 %.not24.i.i.i, label %.backedge.i.i.i289, label %bb.zf

.backedge.i.i.i289:                               ; preds = %._crit_edge.i.i.i.i.i299, %bb.zj, %bb.zi, %.noexc172.i.i, %.noexc171.i.i, %.noexc170.i.i, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17heefbd41669c54156E.exit.i.i", %bb.yt, %bb.ys
  %i.csh = icmp eq ptr %i.clx, %i.clp
  br i1 %i.csh, label %.loopexit194.i.i, label %bb.ys

bb.zf:                                            ; preds = %.noexc172.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !8030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !8030
  store ptr %i.bq, ptr %i.bn, align 8, !noalias !8030
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd334052992ce74deE", ptr %.sroa.413.0..sroa_idx.i158.i.i, align 8, !noalias !8030
  store ptr %i.bp, ptr %i.bjm, align 8, !noalias !8030
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h93cc405137946d5aE", ptr %.sroa.417.0..sroa_idx.i159.i.i, align 8, !noalias !8030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !8056
  store ptr @147, ptr %i.bm, align 8, !noalias !8057
  store i64 2, ptr %.sroa.4.0..sroa_idx.i160.i.i, align 8, !noalias !8057
  store ptr %i.bn, ptr %.sroa.530.0..sroa_idx.i.i.i, align 8, !noalias !8057
  store i64 2, ptr %.sroa.6.0..sroa_idx.i161.i.i, align 8, !noalias !8057
  store ptr null, ptr %.sroa.7.0..sroa_idx.i162.i.i, align 8, !noalias !8057
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bm)
          to label %.noexc173.i.i unwind label %.loopexit.i.loopexit.i

.noexc173.i.i:                                    ; preds = %bb.zf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !8056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !8030
  %.sroa.0.0.copyload.i165.i.i = load i64, ptr %i.bo, align 8, !noalias !8030 ; 4 uses
end_hunk_1
begin_hunk_2_@llvm.abs.i64
!7707 = !{!6511, !6373, !6369, !6372, !6370, !6367, !6364, !6365, !6345, !6346, !6117, !6118, !6115, !6112, !6113}
!7708 = !{!6515}
!7709 = !{!6517, !6515}
!7710 = !{!6372, !6370, !6367, !6364, !6365, !6345, !6346, !6117, !6118, !6115, !6112, !6113}
!7711 = !{!6515, !6373, !6369, !6372, !6370, !6367, !6364, !6365, !6345, !6346, !6117, !6118, !6115, !6112, !6113}
!7712 = !{!6519}
!7713 = !{!6521, !6519}
!7714 = !{!6519, !6117, !6118, !6115, !6112, !6113}
!7715 = !{!6527, !6525, !6523, !6118, !6113}
!7716 = !{!6530, !6529, !6528, !6117, !6115, !6112}
!7717 = !{!6532}
!7718 = !{!6534, !6532}
!7719 = !{!6115, !6112, !6113}
!7720 = !{!6532, !6117, !6118, !6115, !6112, !6113}
!7721 = !{!6540, !6538, !6536}
!7722 = !{!6536}
!7723 = !{!6542}
!7724 = !{!6543}
!7725 = !{!6545}
!7726 = !{!6545, !6543}
!7727 = !{!6551, !6550, !6548, !6547, !6536}
!7728 = !{!6551, !6548, !6536}
!7729 = !{!6557, !6555, !6553}
!7730 = !{!6553}
!7731 = !{!6559}
!7732 = !{!6560}
!7733 = !{!6562}
!7734 = !{!6562, !6560}
!7735 = !{!6568, !6567, !6565, !6564, !6553}
!7736 = !{!6568, !6565, !6553}
!7737 = !{!6574, !6572, !6570}
!7738 = !{!6570}
!7739 = !{!6582, !6580, !6578, !6576, !6570}
!7740 = !{!6576, !6570}
!7741 = !{!6584, !6576, !6570}
!7742 = !{!6586}
!7743 = !{!6588}
!7744 = !{!6588, !6586}
!7745 = !{!6590}
!7746 = !{!6592}
!7747 = !{!6592, !6590}
!7748 = !{!6598, !6597, !6595, !6594, !6570}
!7749 = !{!6598, !6595, !6570}
!7750 = !{!6600}
!7751 = !{!6602}
!7752 = !{!6602, !6600}
!7753 = !{!6608, !6607, !6605, !6604, !6570}
!7754 = !{!6608, !6605, !6570}
!7755 = !{!6610}
!7756 = !{!6611}
!7757 = !{!6611, !6612, !6570}
!7758 = !{!6610, !6612, !6570}
!7759 = !{!6621, !6620, !6618, !6617, !6615, !6614, !6570}
!7760 = !{!6624, !6623}
!7761 = !{!6621, !6618, !6615, !6614, !6570}
!7762 = !{!6634, !6632, !6630, !6629, !6627, !6626, !6621, !6620, !6618, !6617, !6615}
!7763 = !{!6630, !6629, !6627, !6626, !6621, !6620, !6618, !6617, !6615}
!7764 = !{!6630, !6629, !6627, !6626, !6621, !6620, !6618, !6617, !6615, !6614, !6570}
!7765 = !{!6630, !6627, !6621, !6620, !6618, !6617, !6615, !6614, !6570}
!7766 = !{!6638, !6636, !6630, !6629, !6627, !6626, !6621, !6620, !6618, !6617, !6615, !6570}
!7767 = !{!6640}
!7768 = !{!6638, !6636, !6630, !6629, !6627, !6626, !6621, !6620, !6618, !6617, !6615}
!7769 = !{!6646, !6645, !6643, !6642, !6630, !6629, !6627, !6626, !6621, !6620, !6618, !6617, !6615}
!7770 = !{!6648}
!7771 = !{!6650}
!7772 = !{!6652}
!7773 = !{!6656, !6654, !6652, !6650, !6648}
!7774 = !{!6630, !6629, !6627, !6626, !6621, !6620, !6618, !6617, !6615, !6570}
!7775 = !{!6652, !6650, !6648}
!7776 = !{!6654}
!7777 = !{!6656}
!7778 = !{!6658}
!7779 = !{!6658, !6656, !6654, !6652, !6650, !6648}
!7780 = !{!6659, !6630, !6629, !6627, !6626, !6621, !6620, !6618, !6617, !6615, !6570}
!7781 = !{!6661}
!7782 = !{!6659, !6658, !6656, !6654, !6652, !6650, !6648, !6630, !6629, !6627, !6626, !6621, !6620, !6618, !6617, !6615}
!7783 = !{!6659, !6630, !6629, !6627, !6626, !6621, !6620, !6618, !6617, !6615}
!7784 = !{!6663, !6656, !6654, !6652, !6650, !6648}
!7785 = !{!6615, !6614, !6570}
!7786 = !{!6615}
!7787 = !{!6614, !6570}
!7788 = !{!6669, !6668, !6666, !6665, !6570}
!7789 = !{!6669, !6666, !6570}
!7790 = !{!6671}
!7791 = !{!6672}
!7792 = !{!6672, !6673, !6570}
!7793 = !{!6671, !6673, !6570}
!7794 = !{!6675}
!7795 = !{!6676}
!7796 = !{!6677}
!7797 = !{!6675, !6677, !6570}
!7798 = !{!6675, !6676}
!7799 = !{!6679}
!7800 = !{!6680}
!7801 = !{!6682}
!7802 = !{!6682, !6679, !6676}
!7803 = !{!6680, !6675, !6677, !6570}
!7804 = !{!6680, !6677}
!7805 = !{!6679, !6675, !6676, !6570}
!7806 = !{!6675, !6676, !6570}
!7807 = !{!6675, !6677}
!7808 = !{!6684, !6682, !6679, !6680, !6675, !6676, !6677}
!7809 = !{!6686, !6682, !6679, !6680, !6675, !6676, !6677}
!7810 = !{!6689, !6688}
!7811 = !{!6691, !6676}
!7812 = !{!6692, !6675, !6677, !6570}
!7813 = !{!6676, !6570}
!7814 = !{!6695, !6694}
!7815 = !{!6701, !6700, !6698, !6697, !6570}
!7816 = !{!6701, !6698, !6570}
!7817 = !{!6703}
!7818 = !{!6704}
!7819 = !{!6704, !6705, !6570}
!7820 = !{!6703, !6705, !6570}
!7821 = !{!6707}
!7822 = !{!6708, !6570}
!7823 = !{!6710, !6707, !6708}
!7824 = !{!"branch_weights", i32 1, i32 1999}
!7825 = !{!"branch_weights", i32 0, i32 1}
!7826 = !{!6707, !6708}
!7827 = !{!6716, !6714, !6712}
!7828 = !{!6712}
!7829 = !{!6718}
!7830 = !{!6720}
!7831 = !{!6720, !6718}
!7832 = !{!6722}
!7833 = !{!6724}
!7834 = !{!6724, !6722}
!7835 = !{!6730, !6729, !6727, !6726, !6712}
!7836 = !{!6730, !6727, !6712}
!7837 = !{!6732}
!7838 = !{!6734}
!7839 = !{!6734, !6732}
!7840 = !{!6736}
!7841 = !{!6737}
!7842 = !{!6739}
!7843 = !{!6740}
!7844 = !{!6743, !6739, !6742, !6741, !6740, !6712}
!7845 = !{!6748, !6747, !6746, !6745, !6743, !6739, !6742, !6741, !6740, !6712}
!7846 = !{!6748}
!7847 = !{!6754, !6753, !6751, !6750, !6748, !6747, !6746, !6745, !6743, !6739, !6742, !6741, !6740, !6712}
!7848 = !{!6754, !6751, !6748, !6747, !6746, !6745, !6743, !6739, !6742, !6741, !6740, !6712}
!7849 = !{!6761, !6759, !6757, !6756, !6748}
!7850 = !{!6757, !6748}
!7851 = !{!6767, !6766, !6764, !6763, !6748, !6747, !6746, !6745, !6743, !6739, !6742, !6741, !6740, !6712}
!7852 = !{!6767, !6764, !6748, !6747, !6746, !6745, !6743, !6739, !6742, !6741, !6740, !6712}
!7853 = !{!6769}
!7854 = !{!6770}
!7855 = !{!6778, !6776, !6774, !6772, !6769, !6770, !6743, !6739, !6742, !6741, !6740, !6712}
!7856 = !{!6780}
!7857 = !{!6789, !6787, !6785, !6783, !6782, !6778, !6776, !6774, !6772, !6769, !6770}
!7858 = !{!6780, !6789, !6787, !6785, !6783, !6782, !6778, !6776, !6774, !6772, !6769, !6770}
!7859 = !{!6778, !6776, !6774, !6772, !6769, !6770}
!7860 = !{!6793, !6791, !6778, !6776, !6774, !6772, !6769, !6770}
!7861 = !{!6795}
!7862 = !{!6797}
!7863 = !{!6797, !6795, !6778, !6776, !6774, !6772, !6769, !6770, !6743, !6739, !6742, !6741, !6740, !6712}
!7864 = !{!6799}
!7865 = !{!6808, !6806, !6804, !6802, !6801, !6797, !6795, !6778, !6776, !6774, !6772, !6769, !6770}
!7866 = !{!6799, !6808, !6806, !6804, !6802, !6801, !6797, !6795, !6778, !6776, !6774, !6772, !6769, !6770}
!7867 = !{!6797, !6795}
!7868 = !{!6797, !6795, !6778, !6776, !6774, !6772, !6769, !6770}
!7869 = !{!6769, !6770, !6743, !6739, !6742, !6741, !6740, !6712}
!7870 = !{!6770, !6743, !6739, !6742, !6741, !6740, !6712}
!7871 = !{!6810}
!7872 = !{!6813, !6812, !6811, !6810, !6743, !6739, !6742, !6741, !6740, !6712}
!7873 = !{!6819, !6818, !6816, !6815, !6813, !6812, !6811, !6810, !6743, !6739, !6742, !6741, !6740, !6712}
!7874 = !{!6819, !6816, !6813, !6812, !6811, !6810, !6743, !6739, !6742, !6741, !6740, !6712}
!7875 = !{!6821}
!7876 = !{!6822}
!7877 = !{!6821, !6810, !6740}
!7878 = !{!6822, !6823, !6813, !6812, !6811, !6743, !6739, !6742, !6741, !6712}
!7879 = !{!6822, !6813}
!7880 = !{!6821, !6823, !6813, !6812, !6811, !6810, !6743, !6739, !6742, !6741, !6740, !6712}
!7881 = !{!6813}
!7882 = !{!6825}
!7883 = !{!6827, !6826, !6825, !6743, !6739, !6742, !6741, !6740, !6712}
!7884 = !{!6833, !6832, !6830, !6829, !6827, !6826, !6825, !6743, !6739, !6742, !6741, !6740, !6712}
!7885 = !{!6833, !6830, !6827, !6826, !6825, !6743, !6739, !6742, !6741, !6740, !6712}
!7886 = !{!6835}
!7887 = !{!6836}
!7888 = !{!6835, !6825, !6740}
!7889 = !{!6836, !6837, !6827, !6826, !6743, !6739, !6742, !6741, !6712}
!7890 = !{!6835, !6837, !6827, !6826, !6825, !6743, !6739, !6742, !6741, !6740, !6712}
!7891 = !{!6842, !6841, !6840, !6839, !6743, !6739, !6742, !6741, !6740, !6712}
!7892 = !{!6848, !6847, !6845, !6844, !6842, !6841, !6840, !6839, !6743, !6739, !6742, !6741, !6740, !6712}
!7893 = !{!6848, !6845, !6842, !6841, !6840, !6839, !6743, !6739, !6742, !6741, !6740, !6712}
!7894 = !{!6850}
!7895 = !{!6853, !6852, !6851, !6850, !6743, !6739, !6742, !6741, !6740, !6712}
!7896 = !{!6855}
!7897 = !{!6856}
!7898 = !{!6858}
!7899 = !{!6859}
!7900 = !{!6858, !6855}
!7901 = !{!6859, !6856}
!7902 = !{!6858, !6859, !6855, !6856}
!7903 = !{!6861}
!7904 = !{!6863, !6858, !6855}
!7905 = !{!6867, !6865}
!7906 = !{!6868, !6861, !6858, !6855}
!7907 = !{!6861, !6858, !6855}
!7908 = !{!6865}
!7909 = !{!6870}
!7910 = !{!6870, !6858, !6855}
!7911 = !{!6871, !6859, !6856}
!7912 = !{!6873}
!7913 = !{!6875}
!7914 = !{!6875, !6873, !6870, !6858, !6855}
!7915 = !{!6877, !6876, !6871, !6859, !6856}
!7916 = !{!6879, !6875, !6877, !6873, !6876, !6870, !6871, !6858, !6859, !6855, !6856}
!7917 = !{!6881, !6875, !6877, !6873, !6876, !6870, !6871, !6858, !6859, !6855, !6856}
!7918 = !{!6883, !6881, !6875, !6877, !6873, !6876, !6870, !6871, !6858, !6859, !6855, !6856}
!7919 = !{!6886, !6885}
!7920 = !{!6889, !6888}
!7921 = !{!6891}
!7922 = !{!6892}
!7923 = !{!6894}
!7924 = !{!6895}
!7925 = !{!6894, !6891}
!7926 = !{!6895, !6892}
!7927 = !{!6894, !6895, !6891, !6892}
!7928 = !{!6897}
!7929 = !{!6899, !6894, !6891}
!7930 = !{!6903, !6901}
!7931 = !{!6904, !6897, !6894, !6891}
!7932 = !{!6897, !6894, !6891}
!7933 = !{!6901}
!7934 = !{!6906}
!7935 = !{!6906, !6894, !6891}
!7936 = !{!6907, !6895, !6892}
!7937 = !{!6909}
!7938 = !{!6911}
!7939 = !{!6911, !6909, !6906, !6894, !6891}
!7940 = !{!6913, !6912, !6907, !6895, !6892}
!7941 = !{!6915, !6911, !6913, !6909, !6912, !6906, !6907, !6894, !6895, !6891, !6892}
!7942 = !{!6917, !6911, !6913, !6909, !6912, !6906, !6907, !6894, !6895, !6891, !6892}
!7943 = !{!6919, !6917, !6911, !6913, !6909, !6912, !6906, !6907, !6894, !6895, !6891, !6892}
!7944 = !{!6922, !6921}
!7945 = !{!6925, !6924}
!7946 = !{!6933, !6931, !6930, !6928, !6927, !6853, !6852, !6850}
!7947 = !{!6939, !6938, !6936, !6935, !6853, !6852, !6851, !6850, !6743, !6739, !6742, !6741, !6740, !6712}
!7948 = !{!6939, !6936, !6853, !6852, !6851, !6850, !6743, !6739, !6742, !6741, !6740, !6712}
!7949 = !{!6941}
!7950 = !{!6942}
!7951 = !{!6941, !6850, !6740}
!7952 = !{!6942, !6943, !6853, !6852, !6851, !6743, !6739, !6742, !6741, !6712}
!7953 = !{!6942, !6853, !6852}
!7954 = !{!6941, !6943, !6853, !6852, !6851, !6850, !6743, !6739, !6742, !6741, !6740, !6712}
!7955 = !{!6853, !6852}
!7956 = !{!6945}
!7957 = !{!6946}
!7958 = !{!6948, !6945, !6947, !6946, !6743, !6739, !6742, !6741, !6740, !6712}
!7959 = !{!6952, !6951, !6950, !6949, !6743, !6739, !6742, !6741, !6740, !6712}
!7960 = !{!6954, !6945}
!7961 = !{!6955, !6948, !6947, !6946}
!7962 = !{!6948, !6945, !6946}
!7963 = !{!6961, !6960, !6958, !6957, !6948, !6945, !6947, !6946, !6743, !6739, !6742, !6741, !6740, !6712}
!7964 = !{!6961, !6958, !6948, !6945, !6947, !6946, !6743, !6739, !6742, !6741, !6740, !6712}
!7965 = !{!6963}
!7966 = !{!6964}
!7967 = !{!6963, !6946, !6740}
!7968 = !{!6964, !6965, !6948, !6945, !6947, !6743, !6739, !6742, !6741, !6712}
!7969 = !{!6964, !6948, !6945}
!7970 = !{!6963, !6965, !6948, !6945, !6947, !6946, !6743, !6739, !6742, !6741, !6740, !6712}
!7971 = !{!6948, !6945}
!7972 = !{!6971, !6970, !6968, !6967, !6948, !6945, !6947, !6946, !6743, !6739, !6742, !6741, !6740, !6712}
!7973 = !{!6971, !6968, !6948, !6945, !6947, !6946, !6743, !6739, !6742, !6741, !6740, !6712}
!7974 = !{!6973}
!7975 = !{!6974}
!7976 = !{!6973, !6946, !6740}
!7977 = !{!6974, !6975, !6948, !6945, !6947, !6743, !6739, !6742, !6741, !6712}
!7978 = !{!6974, !6948, !6945}
!7979 = !{!6973, !6975, !6948, !6945, !6947, !6946, !6743, !6739, !6742, !6741, !6740, !6712}
!7980 = !{!6977}
!7981 = !{!6978}
!7982 = !{!6979}
!7983 = !{!6977, !6978, !6980, !6979, !6743, !6739, !6742, !6741, !6740, !6712}
!7984 = !{!6982}
!7985 = !{!6984, !6982, !6977, !6739}
!7986 = !{!6993, !6992, !6990, !6988, !6986, !6978, !6980, !6979, !6743, !6742, !6741, !6740}
!7987 = !{!6982, !6977, !6739}
!7988 = !{!6978, !6980, !6979, !6743, !6742, !6741, !6740}
!7989 = !{!6995}
!7990 = !{!6997, !6995, !6982, !6977, !6739}
!7991 = !{!6986, !6978, !6980, !6979, !6743, !6742, !6741, !6740}
!7992 = !{!7001, !6999, !6995, !6986, !6982, !6977, !6978, !6980, !6979, !6743, !6739, !6742, !6741, !6740, !6712}
!7993 = !{!6986, !6978, !6979}
!7994 = !{!7003, !6978}
!7995 = !{!7004, !6977, !6980, !6979}
!7996 = !{!6978, !6979}
!7997 = !{!7010, !7009, !7007, !7006, !6977, !6978, !6980, !6979, !6743, !6739, !6742, !6741, !6740, !6712}
!7998 = !{!7010, !7007, !6977, !6978, !6980, !6979, !6743, !6739, !6742, !6741, !6740, !6712}
!7999 = !{!7012}
!8000 = !{!7013}
!8001 = !{!7012, !6979, !6740}
!8002 = !{!7013, !7014, !6977, !6978, !6980, !6743, !6739, !6742, !6741, !6712}
!8003 = !{!7013, !6978}
!8004 = !{!7012, !7014, !6977, !6978, !6980, !6979, !6743, !6739, !6742, !6741, !6740, !6712}
!8005 = !{!7020, !7019, !7017, !7016, !6977, !6978, !6980, !6979, !6743, !6739, !6742, !6741, !6740, !6712}
!8006 = !{!7020, !7017, !6977, !6978, !6980, !6979, !6743, !6739, !6742, !6741, !6740, !6712}
!8007 = !{!7022}
!8008 = !{!7023}
!8009 = !{!7022, !6979, !6740}
!8010 = !{!7023, !7024, !6977, !6978, !6980, !6743, !6739, !6742, !6741, !6712}
!8011 = !{!7023, !6978}
!8012 = !{!7022, !7024, !6977, !6978, !6980, !6979, !6743, !6739, !6742, !6741, !6740, !6712}
!8013 = !{!6979, !6740}
!8014 = !{!6977, !6978, !6980, !6743, !6739, !6742, !6741, !6712}
!8015 = !{!7026}
!8016 = !{!7027}
!8017 = !{!7026, !7028, !7027, !6743, !6739, !6742, !6741, !6740, !6712}
!8018 = !{!7030, !7026}
!8019 = !{!7031, !7028, !7027}
!8020 = !{!7026, !7027}
!8021 = !{!7037, !7036, !7034, !7033, !7026, !7028, !7027, !6743, !6739, !6742, !6741, !6740, !6712}
!8022 = !{!7037, !7034, !7026, !7028, !7027, !6743, !6739, !6742, !6741, !6740, !6712}
!8023 = !{!7039}
!8024 = !{!7040}
!8025 = !{!7039, !7027, !6740}
!8026 = !{!7040, !7041, !7026, !7028, !6743, !6739, !6742, !6741, !6712}
!8027 = !{!7040, !7026}
!8028 = !{!7039, !7041, !7026, !7028, !7027, !6743, !6739, !6742, !6741, !6740, !6712}
!8029 = !{!7047, !7046, !7045, !7044, !7043, !6743, !6739, !6742, !6741, !6740, !6712}
!8030 = !{!7052, !7051, !7050, !7049, !7048, !6743, !6739, !6742, !6741, !6740, !6712}
!8031 = !{!7054}
!8032 = !{!7055}
!8033 = !{!7057}
!8034 = !{!7058}
!8035 = !{!7057, !7054}
!8036 = !{!7058, !7055}
!8037 = !{!7057, !7058, !7054, !7055}
!8038 = !{!7060}
!8039 = !{!7062, !7057, !7054}
!8040 = !{!7066, !7064}
!8041 = !{!7067, !7060, !7057, !7054}
!8042 = !{!7060, !7057, !7054}
!8043 = !{!7064}
!8044 = !{!7069}
!8045 = !{!7069, !7057, !7054}
!8046 = !{!7070, !7058, !7055}
!8047 = !{!7072}
!8048 = !{!7074}
!8049 = !{!7074, !7072, !7069, !7057, !7054}
!8050 = !{!7076, !7075, !7070, !7058, !7055}
!8051 = !{!7078, !7074, !7076, !7072, !7075, !7069, !7070, !7057, !7058, !7054, !7055}
!8052 = !{!7080, !7074, !7076, !7072, !7075, !7069, !7070, !7057, !7058, !7054, !7055}
!8053 = !{!7082, !7080, !7074, !7076, !7072, !7075, !7069, !7070, !7057, !7058, !7054, !7055}
!8054 = !{!7085, !7084}
!8055 = !{!7088, !7087}
!8056 = !{!7094, !7093, !7091, !7090, !7052, !7051, !7050, !7049, !7048, !6743, !6739, !6742, !6741, !6740, !6712}
!8057 = !{!7094, !7091, !7052, !7051, !7050, !7049, !7048, !6743, !6739, !6742, !6741, !6740, !6712}
!8058 = !{!7051}
!8059 = !{!7096}
!8060 = !{!7098}
!8061 = !{!7096, !7098}
!8062 = !{!7100}
!8063 = !{!7101}
!8064 = !{!7101, !7100}
!8065 = !{!7100, !7101}
!8066 = !{!7103, !7100, !7101}
!8067 = !{!7106, !7105, !7103, !7100, !7101}
!8068 = !{!7105, !7100, !7101}
!8069 = !{!7108}
!8070 = !{!7109}
!8071 = !{!7109, !7108}
!8072 = !{!7108, !7109}
!8073 = !{!7111}
!8074 = !{!7112}
!8075 = !{!7116, !7114}
!8076 = !{!7118}
!8077 = !{!7120}
!8078 = !{!7120, !7118}
!8079 = !{!7126, !7125, !7123, !7122}
!8080 = !{!7126, !7123}
!8081 = !{!7128}
!8082 = !{!7130}
!8083 = !{!7130, !7128}
!8084 = !{!7132}
!8085 = !{!7133}
!8086 = !{!7135}
!8087 = !{!7136}
!8088 = !{!7136, !7135}
!8089 = !{!7135, !7136}
!8090 = !{!7138, !7135, !7136}
!8091 = !{!7144, !7143, !7141, !7140, !7138, !7135, !7136}
!8092 = !{!7144, !7141, !7138, !7135, !7136}
!8093 = !{!7146}
!8094 = !{!7146, !7135, !7136}
!8095 = !{!7148, !7135, !7136}
!8096 = !{!7149, !7148, !7146, !7135, !7136}
!8097 = !{!7151}
!8098 = !{!7152}
!8099 = !{!7154, !7151}
!8100 = !{!7155, !7152}
!8101 = !{!7158, !7157, !7151, !7155, !7152}
!8102 = !{!7162, !7160, !7151}
!8103 = !{!7166, !7164, !7160, !7151}
!8104 = !{!7169, !7168, !7155, !7152}
!8105 = !{!7164, !7160, !7151}
!8106 = !{!7171, !7160, !7151}
!8107 = !{!7160, !7151}
!8108 = !{!7173, !7151}
!8109 = !{!7176, !7175, !7151, !7155, !7152}
!8110 = !{!7179, !7178, !7151, !7155, !7152}
!8111 = !{!7181, !7151}
!8112 = !{!7183, !7151}
!8113 = !{!7196, !7194, !7192, !7191, !7189, !7188, !7186, !7185, !7155, !7152}
!8114 = !{!7198, !7151}
!8115 = !{!7200, !7151}
!8116 = !{!7204, !7202, !7151}
!8117 = !{!7207, !7206, !7155, !7152}
!8118 = !{!7202, !7151}
!8119 = !{!7211, !7209, !7151}
!8120 = !{!7209, !7151}
!8121 = !{!7213, !7209, !7151}
!8122 = !{!7215}
!8123 = !{!7151, !7155, !7152}
!8124 = !{!7218, !7217, !7216, !7215, !7151, !7155, !7152}
!8125 = !{!7224, !7223, !7221, !7220, !7218, !7217, !7216, !7215, !7151, !7155, !7152}
!8126 = !{!7227, !7226}
!8127 = !{!7224, !7221, !7218, !7217, !7216, !7215, !7151, !7155, !7152}
!8128 = !{!7233, !7232, !7230, !7229, !7224, !7223, !7221, !7220, !7218, !7217, !7216, !7215, !7151, !7155, !7152}
!8129 = !{!7237, !7235, !7233, !7232, !7230, !7229, !7224, !7223, !7221, !7220}
!8130 = !{!7233, !7232, !7230, !7229, !7224, !7223, !7221, !7220}
!8131 = !{!7233, !7230, !7224, !7223, !7221, !7220, !7218, !7217, !7216, !7215, !7151, !7155, !7152}
!8132 = !{!7239}
!8133 = !{!7241}
!8134 = !{!7241, !7239}
!8135 = !{!7243, !7242, !7233, !7232, !7230, !7229, !7224, !7223, !7221, !7220, !7218, !7217, !7216, !7215, !7151, !7155, !7152}
!8136 = !{!7241, !7243, !7239, !7242, !7233, !7232, !7230, !7229, !7224, !7223, !7221, !7220}
!8137 = !{!7232, !7229, !7223, !7220, !7218, !7217, !7216, !7215, !7151, !7155, !7152}
!8138 = !{!7247, !7245}
!8139 = !{!7250, !7249}
!8140 = !{!7245}
!8141 = !{!7252}
!8142 = !{!7265, !7263, !7261, !7260, !7258, !7257, !7255, !7254}
!8143 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!8144 = !{!7267}
!8145 = !{!7273, !7271, !7269}
!8146 = !{!7275}
!8147 = !{!7276, !7218, !7217, !7216, !7215, !7151, !7155, !7152}
!8148 = !{!7276}
!8149 = !{!7282, !7281, !7279, !7278, !7218, !7217, !7216, !7215, !7151, !7155, !7152}
!8150 = !{!7282, !7279, !7218, !7217, !7216, !7215, !7151, !7155, !7152}
!8151 = !{!7284}
!8152 = !{!7285}
!8153 = !{!7284, !7215, !7152}
!8154 = !{!7285, !7286, !7218, !7217, !7216, !7151, !7155}
!8155 = !{!7284, !7286, !7218, !7217, !7216, !7215, !7151, !7155, !7152}
!8156 = !{!7288}
!8157 = !{!7290}
!8158 = !{!7292}
!8159 = !{!7294}
!8160 = !{!7294, !7292, !7290, !7288}
!8161 = !{!7290, !7288}
!8162 = !{!7296}
!8163 = !{!7298}
!8164 = !{!7300}
!8165 = !{!7302}
!8166 = !{!7302, !7300, !7298, !7296}
!8167 = !{!7298, !7296}
!8168 = !{!7306, !7304}
!8169 = !{!7313, !7311, !7309, !7308}
!8170 = !{!7309}
!8171 = !{!7316, !7315}
!8172 = !{!7320, !7318, !7316, !7315}
!8173 = !{!7323, !7322, !7316, !7315}
!8174 = !{!7316}
!8175 = !{!7315}
!8176 = !{!7326, !7325}
!8177 = !{!7330, !7328, !7326, !7325}
!8178 = !{!7333, !7332, !7326, !7325}
!8179 = !{!7326}
!8180 = !{!7325}
!8181 = !{!7335}
!8182 = !{!7341, !7340, !7338, !7337, !7335}
!8183 = !{!7341, !7338, !7335}
!8184 = !{!7343}
!8185 = !{!7345}
!8186 = !{!7346, !7345, !7343}
!8187 = distinct !{null}
!8188 = !{i64 9841741467416288}
!8189 = distinct !{!8189, !"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd334052992ce74deE"}
!8190 = distinct !{!8190, !8189, !"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd334052992ce74deE: argument 0"}
!8191 = distinct !{!8191, !8189, !"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd334052992ce74deE: argument 1"}
!8192 = !{!8190}
!8193 = !{!8191}
!8194 = distinct !{!8194, !"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE"}
!8195 = distinct !{!8195, !8194, !"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE: argument 0"}
!8196 = distinct !{!8196, !8194, !"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE: argument 1"}
!8197 = !{!8195}
!8198 = !{!8196}
!8199 = distinct !{!8199, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!8200 = distinct !{!8200, !8199, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!8201 = !{!8200}
!8202 = distinct !{!8202, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h0b719e5c744a87efE"}
!8203 = distinct !{!8203, !8202, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h0b719e5c744a87efE: argument 1"}
!8204 = distinct !{!8204, !8202, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h0b719e5c744a87efE: argument 0"}
!8205 = !{!8204, !8203}
!8206 = !{!8204}
!8207 = !{!8203}
!8208 = distinct !{!8208, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hca647a8d2762b986E"}
!8209 = distinct !{!8209, !8208, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hca647a8d2762b986E: argument 0"}
!8210 = !{!8209}
!8211 = distinct !{!8211, !"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..arg_matches..SubCommand$GT$17h52f9acaa2665da16E"}
!8212 = distinct !{!8212, !8211, !"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..arg_matches..SubCommand$GT$17h52f9acaa2665da16E: argument 0"}
!8213 = distinct !{null}
!8214 = !{!8212}
!8215 = distinct !{!8215, !"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h900ee67db92f5ea1E"}
!8216 = distinct !{!8216, !8215, !"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h900ee67db92f5ea1E: argument 0"}
!8217 = !{!8216}
!8218 = !{ptr @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h900ee67db92f5ea1E"}
!8219 = distinct !{!8219, !"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h660a9b7d978375b5E"}
!8220 = distinct !{!8220, !8219, !"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h660a9b7d978375b5E: argument 0"}
!8221 = distinct !{!8221, !"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE"}
!8222 = distinct !{!8222, !8221, !"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h50592c2d2064937aE: argument 0"}
!8223 = !{!8220}
!8224 = !{ptr @"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h660a9b7d978375b5E"}
!8225 = !{!8222}
!8226 = !{!8222, !8220}
!8227 = distinct !{!8227, !"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..server..Server$GT$$GT$17h2d2b0f67d018b46bE"}
!8228 = distinct !{!8228, !8227, !"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..server..Server$GT$$GT$17h2d2b0f67d018b46bE: argument 0"}
!8229 = distinct !{!8229, !"_ZN4core3ptr62drop_in_place$LT$$u5b$utoipa..openapi..server..Server$u5d$$GT$17hdfa27678750bd06dE"}
!8230 = distinct !{!8230, !8229, !"_ZN4core3ptr62drop_in_place$LT$$u5b$utoipa..openapi..server..Server$u5d$$GT$17hdfa27678750bd06dE: argument 0"}
!8231 = distinct !{!8231, !"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..server..Server$GT$17h7dd6935d12a3b9a1E"}
!8232 = distinct !{!8232, !8231, !"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..server..Server$GT$17h7dd6935d12a3b9a1E: argument 0"}
!8233 = !{!8228}
!8234 = !{!8230}
!8235 = !{!8232}
!8236 = !{!8232, !8230}
!8237 = !{!8232, !8230, !8228}
!8238 = !{!8230, !8228}
!8239 = distinct !{!8239, !"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..path..Parameter$GT$$GT$17hf840c0a8f4625da8E"}
!8240 = distinct !{!8240, !8239, !"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..path..Parameter$GT$$GT$17hf840c0a8f4625da8E: argument 0"}
!8241 = !{!8240}
!8242 = distinct !{!8242, !"_ZN4core3ptr93drop_in_place$LT$$u5b$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$u5d$$GT$17h12ddb45a9b4cffb7E"}
!8243 = distinct !{!8243, !8242, !"_ZN4core3ptr93drop_in_place$LT$$u5b$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$u5d$$GT$17h12ddb45a9b4cffb7E: argument 0"}
end_hunk_2
