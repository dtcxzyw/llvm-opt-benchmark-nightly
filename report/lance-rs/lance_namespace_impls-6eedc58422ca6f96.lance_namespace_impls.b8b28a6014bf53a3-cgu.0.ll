Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB4_17TransactionRebase6finish0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetyEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val.i.i.i117, i64 %.val7.i.i.i) #73, !noalias !143636
  br label %.body.i75

bb.mw:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.asb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i75

bb.mx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aqw, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !143637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !143630
  %i.asc = getelementptr i8, ptr %1, i64 2040     ; 3 uses
  %.val118.i118 = load i64, ptr %i.asc, align 8, !noalias !143627, !noundef !409
  %i.asd = icmp eq i64 %.val118.i118, 0
  br i1 %i.asd, label %bb.og, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.ase = getelementptr inbounds nuw i8, ptr %1, i64 1560 ; 2 uses
  %i.asf = load i64, ptr %i.ase, align 8, !range !458, !noalias !143627, !noundef !409 ; 2 uses
  %i.asg = icmp ne i64 %i.asf, -9223372036854775798
  call void @llvm.assume(i1 %i.asg)
  %i.ash = icmp eq i64 %i.asf, -9223372036854775802
  br i1 %i.ash, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  %i.asi = getelementptr inbounds nuw i8, ptr %1, i64 2064 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143638)
  %i.asj = load i8, ptr %i.aqy, align 8, !range !421, !noalias !143639, !noundef !409
  %i.ask = trunc nuw i8 %i.asj to i1
  br i1 %i.ask, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, !prof !432

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i: ; preds = %bb.mz
  %.pre.i.i.i.i = load i64, ptr %i.aqx, align 8, !noalias !143640
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !143640
  br label %bb.nd

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.mz
  %i.asl = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc129.i unwind label %bb.nc, !noalias !143633 ; 2 uses

.noexc129.i:                                      ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.asm = extractvalue { i64, i64 } %i.asl, 0
  %i.asn = extractvalue { i64, i64 } %i.asl, 1    ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  store i64 %i.asn, ptr %i.aso, align 8, !noalias !143641
  store i8 1, ptr %i.aqy, align 8, !noalias !143641
  br label %bb.nd

bb.na:                                            ; preds = %bb.my
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !143627
  invoke void @_RNvNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolver19wrong_operation_err(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.ase)
          to label %bb.oc unwind label %bb.ob, !noalias !143633

bb.nb:                                            ; preds = %bb.sw, %bb.oa, %bb.nc
  %i.asp = phi ptr [ %i.ayd, %bb.sw ], [ %i.ayd, %bb.oa ], [ %i.aqg, %bb.nc ]
  %i.asq = phi ptr [ %i.aye, %bb.sw ], [ %i.aye, %bb.oa ], [ %i.aqh, %bb.nc ]
  %.pn72.pn.pn.i = phi { ptr, i32 } [ %.pn72.pn.i, %bb.sw ], [ %.pn72.pn.i, %bb.oa ], [ %i.ass, %bb.nc ]
  %i.asr = getelementptr inbounds nuw i8, ptr %1, i64 2245
  store i8 0, ptr %i.asr, align 1, !noalias !143627
  br label %bb.of

bb.nc:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.ass = landingpad { ptr, i32 }
          cleanup
  br label %bb.nb

bb.nd:                                            ; preds = %.noexc129.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i ], [ %i.asn, %.noexc129.i ]
  %i.ast = phi i64 [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i ], [ %i.asm, %.noexc129.i ] ; 2 uses
  %i.asu = add i64 %i.ast, 1
  store i64 %i.asu, ptr %i.aqx, align 8, !noalias !143640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.asi, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false), !noalias !143627
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 3 uses
  store i64 %i.ast, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !143638, !noalias !143627
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2104 ; 2 uses
  store i64 %.pre-phi2.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !143638, !noalias !143627
  store i8 1, ptr %i.aqi, align 1, !noalias !143627
  %i.asv = getelementptr i8, ptr %1, i64 1576
  %.val122.i119 = load ptr, ptr %i.asv, align 8, !noalias !143627, !nonnull !409, !noundef !409 ; 2 uses
  %i.asw = getelementptr i8, ptr %1, i64 1584
  %.val123.i120 = load i64, ptr %i.asw, align 8, !noalias !143627, !noundef !409 ; 2 uses
  %.idx.i121 = shl nuw nsw i64 %.val123.i120, 5
  %i.asx = getelementptr inbounds nuw i8, ptr %.val122.i119, i64 %.idx.i121
  %i.asy = icmp eq i64 %.val123.i120, 0
  br i1 %i.asy, label %._crit_edge.thread.i, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.nd
  %i.asz = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.ata = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %i.atb = getelementptr inbounds nuw i8, ptr %1, i64 2024
  %i.atc = getelementptr inbounds nuw i8, ptr %1, i64 2072 ; 3 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %1, i64 2080 ; 3 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %1, i64 2088
  %i.atf = load i64, ptr %i.asc, align 8, !alias.scope !143642, !noalias !143627, !noundef !409
  %i.atg = icmp eq i64 %i.atf, 0
  br i1 %i.atg, label %._crit_edge.thread.i, label %.lr.ph.split.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %.backedge.i
  %.pr.i125 = load i64, ptr %i.asc, align 8, !alias.scope !143642, !noalias !143627
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i122, %.lr.ph.splitthread-pre-split.i
  %i.ath = phi i64 [ %.pr.i125, %.lr.ph.splitthread-pre-split.i ], [ 1, %.lr.ph.i122 ]
  %.sroa.0303.0443.i = phi ptr [ %i.ati, %.lr.ph.splitthread-pre-split.i ], [ %.val122.i119, %.lr.ph.i122 ] ; 3 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %.sroa.0303.0443.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143643)
  call void @llvm.experimental.noalias.scope.decl(metadata !143644)
  call void @llvm.experimental.noalias.scope.decl(metadata !143645)
  call void @llvm.experimental.noalias.scope.decl(metadata !143646)
  %i.atj = icmp eq i64 %i.ath, 0
  br i1 %i.atj, label %.backedge.i, label %bb.ne

bb.ne:                                            ; preds = %.lr.ph.split.i
  %i.atk = getelementptr inbounds nuw i8, ptr %.sroa.0303.0443.i, i64 24 ; 2 uses
  %.val.i.i130.i = load i64, ptr %i.asz, align 8, !alias.scope !143642, !noalias !143627, !noundef !409
  %.val5.i.i.i = load i64, ptr %i.ata, align 8, !alias.scope !143642, !noalias !143627, !noundef !409
  %i.atl = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRyECsfR8GmIBoxTX_21lance_namespace_impls(i64 %.val.i.i130.i, i64 %.val5.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.atk), !noalias !143647 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143648)
  call void @llvm.experimental.noalias.scope.decl(metadata !143649)
  call void @llvm.experimental.noalias.scope.decl(metadata !143650)
  %i.atm = lshr i64 %i.atl, 57
  %i.atn = trunc nuw nsw i64 %i.atm to i8
  %i.ato = load i64, ptr %i.atb, align 8, !alias.scope !143651, !noalias !143627, !noundef !409 ; 2 uses
  %i.atp = load ptr, ptr %i.aqw, align 8, !alias.scope !143651, !noalias !143627, !nonnull !409, !noundef !409 ; 2 uses
  %i.atq = insertelement <16 x i8> poison, i8 %i.atn, i64 0
  %i.atr = shufflevector <16 x i8> %i.atq, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i123 = load i64, ptr %i.atk, align 8, !alias.scope !143652, !noalias !143633 ; 4 uses
  br label %bb.nf

bb.nf:                                            ; preds = %bb.nh, %bb.ne
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.ne ], [ %i.aui, %bb.nh ]
  %.pn.i.i.i.i.i = phi i64 [ %i.atl, %bb.ne ], [ %i.auj, %bb.nh ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.ato ; 3 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atp, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.ats, align 1, !noalias !143653 ; 2 uses
  %i.att = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %i.atr
  %i.atu = bitcast <16 x i1> %i.att to i16        ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.atu, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i124

.lr.ph.i.i.i.i124:                                ; preds = %bb.nf, %bb.ng
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.auh, %bb.ng ], [ %i.atu, %bb.nf ] ; 3 uses
  %i.atv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.atw = zext nneg i16 %i.atv to i64
  %i.atx = add i64 %.sroa.01.0.i.i.i.i.i, %i.atw
  %i.aty = and i64 %i.atx, %i.ato
  %i.atz = sub nsw i64 0, %i.aty
  %i.aua = getelementptr inbounds [8 x i8], ptr %i.atp, i64 %i.atz
  %i.aub = getelementptr inbounds i8, ptr %i.aua, i64 -8
  %.val2.i.i.i.i.i = load i64, ptr %i.aub, align 8, !noalias !143654, !noundef !409
  %i.auc = icmp eq i64 %.val.i.i.i.i.i.i123, %.val2.i.i.i.i.i
  br i1 %i.auc, label %bb.nm, label %bb.ng, !prof !432

._crit_edge.i.i.i.i:                              ; preds = %bb.ng, %bb.nf
  %i.aud = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.aue = bitcast <16 x i1> %i.aud to i16
  %i.auf = icmp eq i16 %i.aue, 0
  br i1 %i.auf, label %bb.nh, label %.backedge.i, !prof !419

bb.ng:                                            ; preds = %.lr.ph.i.i.i.i124
  %i.aug = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.auh = and i16 %i.aug, %.sroa.06.0.i33.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.auh, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i124

bb.nh:                                            ; preds = %._crit_edge.i.i.i.i
  %i.aui = add i64 %.sroa.9.0.i.i.i.i.i, 16       ; 2 uses
  %i.auj = add i64 %.sroa.01.0.i.i.i.i.i, %i.aui
  br label %bb.nf

._crit_edge.thread.i:                             ; preds = %.lr.ph.i122, %bb.nd
  store i8 0, ptr %i.aqi, align 1, !noalias !143627
  br label %bb.ni

._crit_edge.i126:                                 ; preds = %.backedge.i
  %.sroa.0312.0.copyload.pre.i = load ptr, ptr %i.asi, align 8, !noalias !143627 ; 4 uses
  %.sroa.5313.0.copyload.pre.i = load i64, ptr %i.atc, align 8, !noalias !143627 ; 5 uses
  %.sroa.6315.0.copyload.pre.i = load i64, ptr %i.ate, align 8, !noalias !143627 ; 2 uses
  store i8 0, ptr %i.aqi, align 1, !noalias !143627
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0312.0.copyload.pre.i, align 16, !noalias !143655 ; 2 uses
  %i.auk = icmp eq i64 %.sroa.5313.0.copyload.pre.i, 0
  br i1 %i.auk, label %bb.ni, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %._crit_edge.i126
  %i.aul = icmp slt i64 %.sroa.5313.0.copyload.pre.i, 576460752303423487
  call void @llvm.assume(i1 %i.aul)
  %i.aum = shl i64 %.sroa.5313.0.copyload.pre.i, 5 ; 2 uses
  %i.aun = add i64 %i.aum, 32                     ; 2 uses
  %i.auo = add nsw i64 %.sroa.5313.0.copyload.pre.i, 17
  %i.aup = add i64 %i.auo, %i.aun                 ; 3 uses
  %i.auq = icmp uge i64 %i.aup, %i.aun
  call void @llvm.assume(i1 %i.auq)
  %i.aur = icmp ult i64 %i.aup, 9223372036854775793
  call void @llvm.assume(i1 %i.aur)
  %i.aus = sub nuw nsw i64 -32, %i.aum
  %i.aut = getelementptr inbounds i8, ptr %.sroa.0312.0.copyload.pre.i, i64 %i.aus
  br label %bb.ni

bb.ni:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %._crit_edge.i126, %._crit_edge.thread.i
  %.val3.i.i.i.i537.i = phi <16 x i8> [ %.val3.i.i.i.i.i, %._crit_edge.i126 ], [ %.val3.i.i.i.i.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ splat (i8 -128), %._crit_edge.thread.i ]
  %.sroa.0312.0.copyload536.i = phi ptr [ %.sroa.0312.0.copyload.pre.i, %._crit_edge.i126 ], [ %.sroa.0312.0.copyload.pre.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ @98, %._crit_edge.thread.i ] ; 3 uses
  %.sroa.5313.0.copyload535.i = phi i64 [ 0, %._crit_edge.i126 ], [ %.sroa.5313.0.copyload.pre.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ 0, %._crit_edge.thread.i ]
  %.sroa.6315.0.copyload534.i = phi i64 [ %.sroa.6315.0.copyload.pre.i, %._crit_edge.i126 ], [ %.sroa.6315.0.copyload.pre.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ 0, %._crit_edge.thread.i ] ; 2 uses
  %.sroa.511.0.i.i.i.i = phi ptr [ undef, %._crit_edge.i126 ], [ %i.aut, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ undef, %._crit_edge.thread.i ]
  %.sroa.410.0.i.i.i.i = phi i64 [ undef, %._crit_edge.i126 ], [ %i.aup, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ undef, %._crit_edge.thread.i ]
  %.sink.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i126 ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ 0, %._crit_edge.thread.i ]
  %i.auu = getelementptr inbounds nuw i8, ptr %.sroa.0312.0.copyload536.i, i64 16
  %i.auv = icmp sgt <16 x i8> %.val3.i.i.i.i537.i, splat (i8 -1)
  %i.auw = getelementptr i8, ptr %.sroa.0312.0.copyload536.i, i64 %.sroa.5313.0.copyload535.i
  %i.aux = getelementptr i8, ptr %i.auw, i64 1
  %i.auy = getelementptr inbounds nuw i8, ptr %1, i64 2112
  store i64 %.sink.i.i.i.i.i, ptr %i.auy, align 8, !noalias !143627
  %.sroa.10308.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2120
  store i64 %.sroa.410.0.i.i.i.i, ptr %.sroa.10308.0..sroa_idx.i, align 8, !noalias !143627
  %.sroa.11309.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2128
  store ptr %.sroa.511.0.i.i.i.i, ptr %.sroa.11309.0..sroa_idx.i, align 8, !noalias !143627
  %.sroa.12310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2136
  store ptr %.sroa.0312.0.copyload536.i, ptr %.sroa.12310.0..sroa_idx.i, align 8, !noalias !143627
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2144
  store ptr %i.auu, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !143627
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2152
  store ptr %i.aux, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !143627
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2160
  store <16 x i1> %i.auv, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !143627
  %.sroa.16311.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2168
  store i64 %.sroa.6315.0.copyload534.i, ptr %.sroa.16311.0..sroa_idx.i, align 8, !noalias !143627
  br label %bb.nj

bb.nj:                                            ; preds = %bb.qa, %bb.ni
  %i.auz = phi ptr [ %i.bae, %bb.qa ], [ %i.aqg, %bb.ni ] ; 7 uses
  %i.ava = phi ptr [ %i.baf, %bb.qa ], [ %i.aqh, %bb.ni ] ; 7 uses
  %i.avb = phi i64 [ %.pre.i90, %bb.qa ], [ %.sroa.6315.0.copyload534.i, %bb.ni ] ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %1, i64 2112
  %i.avd = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143656)
  call void @llvm.experimental.noalias.scope.decl(metadata !143657)
  call void @llvm.experimental.noalias.scope.decl(metadata !143658)
  call void @llvm.experimental.noalias.scope.decl(metadata !143659)
  %i.ave = getelementptr inbounds nuw i8, ptr %1, i64 2168 ; 2 uses
  %i.avf = icmp eq i64 %i.avb, 0
  br i1 %i.avf, label %.thread.i115, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.avg = getelementptr inbounds nuw i8, ptr %1, i64 2136 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143660)
  %i.avh = getelementptr inbounds nuw i8, ptr %1, i64 2160 ; 3 uses
  %i.avi = load i16, ptr %i.avh, align 8, !alias.scope !143661, !noalias !143627, !noundef !409 ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %i.avi, 0
  %.promoted.i.i.i.i = load ptr, ptr %i.avg, align 8, !alias.scope !143661, !noalias !143627 ; 2 uses
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i134.i, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIteryNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

.lr.ph.i.i.i134.i:                                ; preds = %bb.nk
  %i.avj = getelementptr inbounds nuw i8, ptr %1, i64 2144 ; 2 uses
  %.promoted14.i.i.i.i = load ptr, ptr %i.avj, align 8, !alias.scope !143661, !noalias !143627
  br label %bb.nl

._crit_edge.i.i.i135.i:                           ; preds = %bb.nl
  store ptr %i.avo, ptr %i.avj, align 8, !alias.scope !143661, !noalias !143627
  store ptr %i.avn, ptr %i.avg, align 8, !alias.scope !143661, !noalias !143627
  br label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIteryNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.nl:                                            ; preds = %bb.nl, %.lr.ph.i.i.i134.i
  %i.avk = phi ptr [ %.promoted14.i.i.i.i, %.lr.ph.i.i.i134.i ], [ %i.avo, %bb.nl ] ; 2 uses
  %i.avl = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i134.i ], [ %i.avn, %bb.nl ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.avk, align 16, !noalias !143662
  %i.avm = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.avn = getelementptr inbounds i8, ptr %i.avl, i64 -512 ; 3 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avk, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.avm to i16 ; 2 uses
  %.not.i.i.i.i114 = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i114, label %bb.nl, label %._crit_edge.i.i.i135.i

.thread.i115:                                     ; preds = %bb.nj
  %i.avp = getelementptr inbounds nuw i8, ptr %1, i64 2184
  store i64 -1, ptr %i.avp, align 8, !alias.scope !143663, !noalias !143627
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

bb.nm:                                            ; preds = %.lr.ph.i.i.i.i124
  call void @llvm.experimental.noalias.scope.decl(metadata !143664)
  call void @llvm.experimental.noalias.scope.decl(metadata !143665)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !143666
  store i64 %.val.i.i.i.i.i.i123, ptr %i.f, align 8, !noalias !143667
  %.val.i.i136.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !143668, !noalias !143627, !noundef !409
  %.val5.i.i137.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !143668, !noalias !143627, !noundef !409
  %i.avq = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRyECsfR8GmIBoxTX_21lance_namespace_impls(i64 %.val.i.i136.i, i64 %.val5.i.i137.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f), !noalias !143669 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143670)
  call void @llvm.experimental.noalias.scope.decl(metadata !143671)
  %i.avr = lshr i64 %i.avq, 57
  %i.avs = trunc nuw nsw i64 %i.avr to i8         ; 3 uses
  %i.avt = load i64, ptr %i.atc, align 8, !alias.scope !143672, !noalias !143627, !noundef !409 ; 3 uses
  %i.avu = load ptr, ptr %i.asi, align 8, !alias.scope !143672, !noalias !143627, !nonnull !409, !noundef !409 ; 3 uses
  %i.avv = insertelement <16 x i8> poison, i8 %i.avs, i64 0
  %i.avw = shufflevector <16 x i8> %i.avv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.nn

bb.nn:                                            ; preds = %bb.np, %bb.nm
  %.sroa.9.0.i.i.i.i138.i = phi i64 [ 0, %bb.nm ], [ %i.awn, %bb.np ]
  %.pn.i.i.i.i139.i = phi i64 [ %i.avq, %bb.nm ], [ %i.awo, %bb.np ]
  %.sroa.01.0.i.i.i.i140.i = and i64 %.pn.i.i.i.i139.i, %i.avt ; 3 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avu, i64 %.sroa.01.0.i.i.i.i140.i
  %.sroa.0.0.copyload.i26.i.i.i141.i = load <16 x i8>, ptr %i.avx, align 1, !noalias !143673 ; 2 uses
  %i.avy = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i141.i, %i.avw
  %i.avz = bitcast <16 x i1> %i.avy to i16        ; 2 uses
  %.not.i.not32.i.i.i142.i = icmp eq i16 %i.avz, 0
  br i1 %.not.i.not32.i.i.i142.i, label %._crit_edge.i.i.i147.i, label %.lr.ph.i.i.i143.i

.lr.ph.i.i.i143.i:                                ; preds = %bb.nn, %bb.no
  %.sroa.06.0.i33.i.i.i144.i = phi i16 [ %i.awm, %bb.no ], [ %i.avz, %bb.nn ] ; 3 uses
  %i.awa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i144.i, i1 true)
  %i.awb = zext nneg i16 %i.awa to i64
  %i.awc = add i64 %.sroa.01.0.i.i.i.i140.i, %i.awb
  %i.awd = and i64 %i.awc, %i.avt
  %i.awe = sub nsw i64 0, %i.awd
  %i.awf = getelementptr inbounds [32 x i8], ptr %i.avu, i64 %i.awe ; 2 uses
  %i.awg = getelementptr inbounds i8, ptr %i.awf, i64 -32
  %.val2.i.i.i.i145.i = load i64, ptr %i.awg, align 8, !noalias !143674, !noundef !409
  %i.awh = icmp eq i64 %.val2.i.i.i.i145.i, %.val.i.i.i.i.i.i123
  br i1 %i.awh, label %bb.nu, label %bb.no, !prof !432

._crit_edge.i.i.i147.i:                           ; preds = %bb.no, %bb.nn
  %i.awi = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i141.i, splat (i8 -1)
  %i.awj = bitcast <16 x i1> %i.awi to i16
  %i.awk = icmp eq i16 %i.awj, 0
  br i1 %i.awk, label %bb.np, label %bb.nq, !prof !419

bb.no:                                            ; preds = %.lr.ph.i.i.i143.i
  %i.awl = add i16 %.sroa.06.0.i33.i.i.i144.i, -1
  %i.awm = and i16 %i.awl, %.sroa.06.0.i33.i.i.i144.i ; 2 uses
  %.not.i.not.i.i.i146.i = icmp eq i16 %i.awm, 0
  br i1 %.not.i.not.i.i.i146.i, label %._crit_edge.i.i.i147.i, label %.lr.ph.i.i.i143.i

bb.np:                                            ; preds = %._crit_edge.i.i.i147.i
  %i.awn = add i64 %.sroa.9.0.i.i.i.i138.i, 16    ; 2 uses
  %i.awo = add i64 %.sroa.01.0.i.i.i.i140.i, %i.awn
  br label %bb.nn

bb.nq:                                            ; preds = %._crit_edge.i.i.i147.i
  %i.awp = load i64, ptr %i.atd, align 8, !alias.scope !143675, !noalias !143627, !noundef !409
  %i.awq = icmp eq i64 %i.awp, 0
  br i1 %i.awq, label %bb.nr, label %bb.ns, !prof !419

bb.nr:                                            ; preds = %bb.nq
  %i.awr = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.asi, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i1 noundef zeroext true)
          to label %.noexc149.i unwind label %bb.nv, !noalias !143633 ; 0 uses

.noexc149.i:                                      ; preds = %bb.nr
  %.val.i.i152.pre.i = load ptr, ptr %i.asi, align 8, !alias.scope !143676, !noalias !143677
  %.val3.i.i153.pre.i = load i64, ptr %i.atc, align 8, !alias.scope !143676, !noalias !143677
  br label %bb.ns

bb.ns:                                            ; preds = %.noexc149.i, %bb.nq
  %.val3.i.i153.i = phi i64 [ %.val3.i.i153.pre.i, %.noexc149.i ], [ %i.avt, %bb.nq ] ; 4 uses
  %.val.i.i152.i = phi ptr [ %.val.i.i152.pre.i, %.noexc149.i ], [ %i.avu, %bb.nq ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !143666
  call void @llvm.experimental.noalias.scope.decl(metadata !143676)
  %.sroa.0.07.i.i.i.i = and i64 %.val3.i.i153.i, %i.avq ; 3 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %.val.i.i152.i, i64 %.sroa.0.07.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i = load <16 x i8>, ptr %i.aws, align 1, !noalias !143678
  %i.awt = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i, zeroinitializer
  %i.awu = bitcast <16 x i1> %i.awt to i16        ; 2 uses
  %.not.i9.i.i.i.i = icmp eq i16 %i.awu, 0
  br i1 %.not.i9.i.i.i.i, label %.lr.ph.i.i.i159.i, label %._crit_edge.i.i.i154.i, !prof !438

._crit_edge.i.i.i154.i:                           ; preds = %.lr.ph.i.i.i159.i, %bb.ns
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i, %bb.ns ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i159.i ]
  %.lcssa.i.i.i155.i = phi i16 [ %i.awu, %bb.ns ], [ %i.axl, %.lr.ph.i.i.i159.i ]
  %i.awv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i155.i, i1 true)
  %i.aww = zext nneg i16 %i.awv to i64
  %i.awx = add i64 %.sroa.0.0.lcssa.i.i.i.i, %i.aww
  %i.awy = and i64 %i.awx, %.val3.i.i153.i        ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %.val.i.i152.i, i64 %i.awy
  %i.axa = load i8, ptr %i.awz, align 1, !noalias !143679, !noundef !409 ; 2 uses
  %i.axb = icmp sgt i8 %i.axa, -1
  br i1 %i.axb, label %bb.nt, label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEE14insert_no_growCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !419

bb.nt:                                            ; preds = %._crit_edge.i.i.i154.i
  %.val2.i.i.i.i158.i = load <16 x i8>, ptr %.val.i.i152.i, align 16, !noalias !143679
  %i.axc = icmp slt <16 x i8> %.val2.i.i.i.i158.i, zeroinitializer
  %i.axd = bitcast <16 x i1> %i.axc to i16        ; 2 uses
  %.not.i6.i.i.i.i = icmp ne i16 %i.axd, 0
  %i.axe = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.axd, i1 true)
  %i.axf = zext nneg i16 %i.axe to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i152.i, i64 %i.axf
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !143679
  br label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEE14insert_no_growCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

.lr.ph.i.i.i159.i:                                ; preds = %bb.ns, %.lr.ph.i.i.i159.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i159.i ], [ %.sroa.0.07.i.i.i.i, %bb.ns ]
  %i.axg = phi i64 [ %i.axh, %.lr.ph.i.i.i159.i ], [ 0, %bb.ns ]
  %i.axh = add i64 %i.axg, 16                     ; 2 uses
  %i.axi = add i64 %i.axh, %.sroa.0.010.i.i.i.i
  %.sroa.0.0.i.i.i.i = and i64 %i.axi, %.val3.i.i153.i ; 3 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %.val.i.i152.i, i64 %.sroa.0.0.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i = load <16 x i8>, ptr %i.axj, align 1, !noalias !143678
  %i.axk = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i, zeroinitializer
  %i.axl = bitcast <16 x i1> %i.axk to i16        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.axl, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i159.i, label %._crit_edge.i.i.i154.i, !prof !439

end_hunk_0
