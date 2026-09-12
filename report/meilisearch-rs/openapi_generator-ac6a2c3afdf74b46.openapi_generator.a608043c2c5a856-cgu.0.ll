Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/openapi_generator-ac6a2c3afdf74b46.openapi_generator.a608043c2c5a856-cgu.0?download=true
inline.NumInlined: 4415
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
bb.abk:                                           ; preds = %bb.abd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %.val93.i = load i64, ptr %i.be, align 8        ; 2 uses
  %i.czf = icmp eq i64 %.val93.i, 0
  br i1 %i.czf, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit134.i", label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i337, i64 noundef %.val93.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit134.i"

bb.abm:                                           ; preds = %_ZN3std2fs14read_to_string17h99799222c976c3b0E.exit.i
  %.sroa.8213.0.copyload.i = load i64, ptr %.sroa.8213.0..sroa_idx.i, align 8, !alias.scope !8089 ; 32 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.czg = invoke { ptr, i64 } @_ZN3std4path4Path13_strip_prefix17h70fd9b124dcff30fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i337, i64 noundef %.val1.i.i.i338, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cvf, i64 noundef %.sroa.8199.0.copyload.i)
          to label %_ZN3std4path4Path12strip_prefix17h7642565aeead8c8fE.exit.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.loopexit304.i:                                   ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i
  %lpad.loopexit306.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.i:                 ; preds = %"_ZN4core4char7methods22_$LT$impl$u20$char$GT$15is_alphanumeric17haf667bb31da7888aE.exit.i.i.i.i.i.i.i.i", %bb.acr
  %lpad.loopexit310.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.i: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i
  %lpad.loopexit313.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.adp, %.noexc151.i, %bb.ack, %.noexc149.i, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i", %bb.acf, %bb.ace, %.noexc143.i, %bb.abr
  %lpad.loopexit317.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.abm
  %lpad.loopexit325.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke2962, %bb.adq
  %lpad.loopexit.split-lp326.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.body161.i:                                       ; preds = %bb.adw, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h82ac48aa10bd5623E.exit86.i.i.i", %bb.adt, %bb.ads, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.i, %.loopexit.split-lp305.loopexit.i, %.loopexit304.i
  %eh.lpad-body162.i = phi { ptr, i32 } [ %.pn.i.i.i372, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h82ac48aa10bd5623E.exit86.i.i.i" ], [ %lpad.loopexit.i.i.i.i.i.i.i, %bb.ads ], [ %lpad.phi9.i.i.i.i.i.i.i, %bb.adt ], [ %.pn.i.i.i372, %bb.adw ], [ %lpad.loopexit306.i, %.loopexit304.i ], [ %lpad.loopexit310.i, %.loopexit.split-lp305.loopexit.i ], [ %lpad.loopexit313.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit317.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit325.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp326.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %i.czh = icmp eq i64 %i.cyt, 0
  br i1 %i.czh, label %.body132.i, label %bb.abn

bb.abn:                                           ; preds = %.body161.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cyv) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cyv, i64 noundef %i.cyt, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %.body132.i

_ZN3std4path4Path12strip_prefix17h7642565aeead8c8fE.exit.i: ; preds = %bb.abm
  %i.czi = extractvalue { ptr, i64 } %i.czg, 0    ; 2 uses
  %i.czj = icmp eq ptr %i.czi, null               ; 2 uses
  %i.czk = extractvalue { ptr, i64 } %i.czg, 1
  %.sroa.539.0.i = select i1 %i.czj, i64 %.val1.i.i.i338, i64 %i.czk
  %.sroa.038.0.i = select i1 %i.czj, ptr %.val.i.i.i337, ptr %i.czi
  call void @llvm.experimental.noalias.scope.decl(metadata !8097)
  call void @llvm.experimental.noalias.scope.decl(metadata !8098)
  %i.czl = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.8213.0.copyload.i ; 4 uses
  br label %bb.abo

bb.abo:                                           ; preds = %.backedge.i.i, %_ZN3std4path4Path12strip_prefix17h7642565aeead8c8fE.exit.i
  %.sroa.0.0.i.i340 = phi i64 [ 0, %_ZN3std4path4Path12strip_prefix17h7642565aeead8c8fE.exit.i ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 9 uses
  %i.czm = icmp eq i64 %.sroa.0.0.i.i340, 0
  br i1 %i.czm, label %bb.abr, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %.not.i.i.i341 = icmp ult i64 %.sroa.0.0.i.i340, %.sroa.8213.0.copyload.i
  br i1 %.not.i.i.i341, label %bb.abq, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.abp
  %i.czn = icmp eq i64 %.sroa.0.0.i.i340, %.sroa.8213.0.copyload.i
  br i1 %i.czn, label %bb.abr, label %.invoke2962

bb.abq:                                           ; preds = %bb.abp
  %i.czo = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.0.0.i.i340
  %i.czp = load i8, ptr %i.czo, align 1, !alias.scope !8099, !noalias !8100, !noundef !16
  %i.czq = icmp sgt i8 %i.czp, -65
  br i1 %i.czq, label %bb.abr, label %.invoke2962

bb.abr:                                           ; preds = %bb.abq, %.split.i.i.i, %bb.abo
  %i.czr = sub nuw i64 %.sroa.8213.0.copyload.i, %.sroa.0.0.i.i340
  %i.czs = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.0.0.i.i340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !8101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !8101
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.ae, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.czs, i64 noundef %i.czr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @171, i64 noundef range(i64 7, 15) 14)
          to label %.noexc143.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc143.i:                                      ; preds = %bb.abr
  invoke fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef align 8 dereferenceable(104) %i.ae)
          to label %.noexc144.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc144.i:                                      ; preds = %.noexc143.i
  %i.czt = load i64, ptr %i.af, align 8, !range !37, !noalias !8101, !noundef !16
  %i.czu = trunc nuw i64 %i.czt to i1
  %i.czv = load i64, ptr %i.cvv, align 8, !noalias !8101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !8101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !8101
  br i1 %i.czu, label %bb.abs, label %_ZN17openapi_generator26check_query_params_in_file17h5f39b7d75028c088E.exit.i

bb.abs:                                           ; preds = %.noexc144.i
  %i.czw = add i64 %i.czv, %.sroa.0.0.i.i340      ; 21 uses
  %i.czx = add i64 %i.czw, 2                      ; 6 uses
  %i.czy = icmp eq i64 %i.czx, 0
  br i1 %i.czy, label %bb.abv, label %bb.abt

bb.abt:                                           ; preds = %bb.abs
  %.not.i.i.i.i358 = icmp ult i64 %i.czx, %.sroa.8213.0.copyload.i
  br i1 %.not.i.i.i.i358, label %bb.abu, label %.split.i.i.i.i359

.split.i.i.i.i359:                                ; preds = %bb.abt
  %i.czz = icmp eq i64 %i.czx, %.sroa.8213.0.copyload.i
  br i1 %i.czz, label %bb.abv, label %.backedge.i.i

bb.abu:                                           ; preds = %bb.abt
  %i.daa = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.czx
  %i.dab = load i8, ptr %i.daa, align 1, !alias.scope !8102, !noalias !8100, !noundef !16
  %i.dac = icmp sgt i8 %i.dab, -65
  br i1 %i.dac, label %bb.abv, label %.backedge.i.i

bb.abv:                                           ; preds = %bb.abu, %.split.i.i.i.i359, %bb.abs
  %i.dad = sub nuw i64 %.sroa.8213.0.copyload.i, %i.czx ; 6 uses
  %i.dae = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.czx ; 4 uses
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.backedge, %bb.abv
  %i.daf = phi i64 [ 0, %bb.abv ], [ %i.das, %.backedge.i.i.i.i.backedge ] ; 5 uses
  %i.dag = sub nuw i64 %i.dad, %i.daf             ; 3 uses
  %i.dah = getelementptr inbounds nuw i8, ptr %i.dae, i64 %i.daf ; 2 uses
  %i.dai = icmp ult i64 %i.dag, 16
  br i1 %i.dai, label %.preheader.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.backedge.i.i.i.i
  %.not.i.i.i.i.i.i389 = icmp eq i64 %i.dad, %i.daf
  br i1 %.not.i.i.i.i.i.i389, label %.backedge.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.abw
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.dam, %bb.abw ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.daj = getelementptr inbounds nuw i8, ptr %i.dah, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.dak = load i8, ptr %i.daj, align 1, !alias.scope !8103, !noalias !8104, !noundef !16
  %i.dal = icmp eq i8 %i.dak, 40
  br i1 %i.dal, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i, label %bb.abw

bb.abw:                                           ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dam = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.dam, %i.dag
  br i1 %exitcond.not.i.i.i.i.i.i, label %.backedge.i.i, label %.lr.ph.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i: ; preds = %.backedge.i.i.i.i
  %i.dan = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dah, i64 noundef %i.dag)
          to label %.noexc146.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.i ; 2 uses

.noexc146.i:                                      ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i
  %i.dao = extractvalue { i64, i64 } %i.dan, 0
  %i.dap = extractvalue { i64, i64 } %i.dan, 1
  %i.daq = trunc nuw i64 %i.dao to i1
  br i1 %i.daq, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i, label %.backedge.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc146.i
  %.sroa.4.0.i27.i.i.i.i.i = phi i64 [ %i.dap, %.noexc146.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.dar = add i64 %i.daf, 1
  %i.das = add i64 %i.dar, %.sroa.4.0.i27.i.i.i.i.i ; 2 uses
  %.not21.i.i.i.i.i = icmp ugt i64 %i.das, %i.dad ; 2 uses
  %i.dat = add i64 %.sroa.4.0.i27.i.i.i.i.i, %i.daf ; 3 uses
  %or.cond.i.not.i.i.i.i = icmp ult i64 %i.dat, %i.dad
  br i1 %or.cond.i.not.i.i.i.i, label %bb.aby, label %bb.abx

bb.abx:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i, label %.backedge.i.i, label %.backedge.i.i.i.i.backedge

bb.aby:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i
  %i.dau = getelementptr inbounds nuw i8, ptr %i.dae, i64 %i.dat
  %lhsc.i.i.i.i360 = load i8, ptr %i.dau, align 1, !alias.scope !8105, !noalias !8100
  %i.dav = icmp eq i8 %lhsc.i.i.i.i360, 40        ; 2 uses
  %brmerge.i.i.i.i = or i1 %.not21.i.i.i.i.i, %i.dav
  br i1 %brmerge.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i.i", label %.backedge.i.i.i.i.backedge

.backedge.i.i.i.i.backedge:                       ; preds = %bb.aby, %bb.abx
  br label %.backedge.i.i.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i.i": ; preds = %bb.aby
  br i1 %i.dav, label %bb.abz, label %.backedge.i.i

bb.abz:                                           ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i.i"
  %i.daw = add nuw i64 %i.dat, 1                  ; 4 uses
  %i.dax = icmp ult i64 %i.daw, %i.dad
  br i1 %i.dax, label %.lr.ph.i.i.i361, label %.backedge.i.i

._crit_edge.i.i.i362:                             ; preds = %bb.acb
  %0 = icmp eq i32 %.sroa.011.1.i.i.i, 0
  br i1 %0, label %bb.aca, label %.backedge.i.i

bb.aca:                                           ; preds = %._crit_edge.i.i.i362
  %i.day = icmp slt i8 %i.dbd, -64
  %i.daz = getelementptr inbounds nuw i8, ptr %i.dae, i64 %i.daw ; 3 uses
  %i.dba = load i8, ptr %i.daz, align 1, !alias.scope !8106, !noalias !8100, !noundef !16
  %i.dbb = icmp slt i8 %i.dba, -64
  %brmerge.i.i = or i1 %i.day, %i.dbb
  br i1 %brmerge.i.i, label %.backedge.i.i, label %bb.ace

.lr.ph.i.i.i361:                                  ; preds = %bb.abz, %bb.acb
  %.sroa.011.034.i.i.i = phi i32 [ %.sroa.011.1.i.i.i, %bb.acb ], [ 1, %bb.abz ] ; 3 uses
  %.sroa.015.033.i.i.i = phi i64 [ %i.dbe, %bb.acb ], [ %i.daw, %bb.abz ] ; 3 uses
  %i.dbc = getelementptr inbounds nuw i8, ptr %i.dae, i64 %.sroa.015.033.i.i.i
  %i.dbd = load i8, ptr %i.dbc, align 1, !alias.scope !8107, !noalias !8100, !noundef !16 ; 2 uses
  switch i8 %i.dbd, label %bb.acb [
    i8 40, label %bb.acc
    i8 41, label %bb.acd
  ]

bb.acb:                                           ; preds = %bb.acd, %bb.acc, %.lr.ph.i.i.i361
  %.sroa.011.1.i.i.i = phi i32 [ %.sroa.011.034.i.i.i, %.lr.ph.i.i.i361 ], [ %i.dbh, %bb.acc ], [ %i.dbi, %bb.acd ] ; 3 uses
  %i.dbe = add nuw i64 %.sroa.015.033.i.i.i, 1    ; 2 uses
  %i.dbf = icmp ult i64 %i.dbe, %i.dad
  %i.dbg = icmp ne i32 %.sroa.011.1.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.dbf, i1 %i.dbg, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i361, label %._crit_edge.i.i.i362

bb.acc:                                           ; preds = %.lr.ph.i.i.i361
  %i.dbh = add i32 %.sroa.011.034.i.i.i, 1
  br label %bb.acb

bb.acd:                                           ; preds = %.lr.ph.i.i.i361
  %i.dbi = add i32 %.sroa.011.034.i.i.i, -1
  br label %bb.acb

bb.ace:                                           ; preds = %bb.aca
  %i.dbj = sub nuw i64 %.sroa.015.033.i.i.i, %i.daw ; 3 uses
  %i.dbk = invoke fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @172, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.daz, i64 noundef %i.dbj)
          to label %.noexc147.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc147.i:                                      ; preds = %bb.ace
  br i1 %i.dbk, label %bb.acf, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.abx, %.noexc146.i, %.preheader.i.i.i.i.i.i, %bb.abw, %_ZN17openapi_generator33check_struct_fields_have_required17h20fb86d1d3eb91daE.exit.i.i, %bb.adl, %._crit_edge.i90.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i", %bb.adk, %bb.adj, %.split.i.i85.i.i, %.noexc152.i, %.noexc148.i, %.noexc147.i, %bb.aca, %._crit_edge.i.i.i362, %bb.abz, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i.i", %bb.abu, %.split.i.i.i.i359
  %.sroa.0.0.be.in.i.i = phi i64 [ %.sroa.051.0.i.i, %_ZN17openapi_generator33check_struct_fields_have_required17h20fb86d1d3eb91daE.exit.i.i ], [ %i.czw, %.noexc152.i ], [ %i.czw, %.noexc147.i ], [ %i.czw, %bb.abw ], [ %i.czw, %.noexc148.i ], [ %i.czw, %bb.adl ], [ %i.czw, %bb.aca ], [ %i.czw, %bb.adk ], [ %i.czw, %bb.adj ], [ %i.czw, %._crit_edge.i90.i.i ], [ %i.czw, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i" ], [ %i.czw, %.split.i.i85.i.i ], [ %i.czw, %bb.abu ], [ %i.czw, %bb.abz ], [ %i.czw, %._crit_edge.i.i.i362 ], [ %i.czw, %.split.i.i.i.i359 ], [ %i.czw, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i.i" ], [ %i.czw, %.preheader.i.i.i.i.i.i ], [ %i.czw, %.noexc146.i ], [ %i.czw, %bb.abx ]
  %.sroa.0.0.be.i.i = add i64 %.sroa.0.0.be.in.i.i, 1
  br label %bb.abo

bb.acf:                                           ; preds = %.noexc147.i
  %i.dbl = invoke fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @173, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.daz, i64 noundef %i.dbj)
          to label %.noexc148.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc148.i:                                      ; preds = %bb.acf
  br i1 %i.dbl, label %bb.acg, label %.backedge.i.i

bb.acg:                                           ; preds = %.noexc148.i
  %i.dbm = add i64 %i.czw, 16
  %i.dbn = add i64 %i.dbm, %i.dbj                 ; 7 uses
  %i.dbo = icmp eq i64 %i.dbn, 0
  br i1 %i.dbo, label %bb.acj, label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  %.not.i62.i.i = icmp ult i64 %i.dbn, %.sroa.8213.0.copyload.i
  br i1 %.not.i62.i.i, label %bb.aci, label %.split.i63.i.i

.split.i63.i.i:                                   ; preds = %bb.ach
  %i.dbp = icmp eq i64 %i.dbn, %.sroa.8213.0.copyload.i
  br i1 %i.dbp, label %bb.acj, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i"

bb.aci:                                           ; preds = %bb.ach
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dbn
  %i.dbr = load i8, ptr %i.dbq, align 1, !alias.scope !8108, !noalias !8100, !noundef !16
  %i.dbs = icmp sgt i8 %i.dbr, -65
  br i1 %i.dbs, label %bb.acj, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i"

bb.acj:                                           ; preds = %bb.aci, %.split.i63.i.i, %bb.acg
  %i.dbt = sub nuw i64 %.sroa.8213.0.copyload.i, %i.dbn
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dbn
  br label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i"

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i": ; preds = %bb.acj, %bb.aci, %.split.i63.i.i
  %.sroa.3.0.i64.i.i = phi i64 [ %i.dbt, %bb.acj ], [ undef, %bb.aci ], [ undef, %.split.i63.i.i ]
  %.sroa.0.0.i65.i.i = phi ptr [ %i.dbu, %bb.acj ], [ null, %bb.aci ], [ null, %.split.i63.i.i ] ; 2 uses
  %.not54.i.i = icmp eq ptr %.sroa.0.0.i65.i.i, null ; 2 uses
  %.sroa.7.0.i.i = select i1 %.not54.i.i, i64 0, i64 %.sroa.3.0.i64.i.i ; 2 uses
  %.sroa.08.0.i.i = select i1 %.not54.i.i, ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.0.i65.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !8109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !8109
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.08.0.i.i, i64 noundef %.sroa.7.0.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @174, i64 noundef range(i64 7, 15) 11)
          to label %.noexc149.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc149.i:                                      ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i"
  invoke fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef align 8 dereferenceable(104) %i.ac)
          to label %.noexc150.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc150.i:                                      ; preds = %.noexc149.i
  %i.dbv = load i64, ptr %i.ad, align 8, !range !37, !noalias !8109, !noundef !16
  %i.dbw = trunc nuw i64 %i.dbv to i1
  %i.dbx = load i64, ptr %i.cvw, align 8, !noalias !8109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !8109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !8109
  br i1 %i.dbw, label %bb.acl, label %bb.ack

bb.ack:                                           ; preds = %.noexc150.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !8110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !8110
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.08.0.i.i, i64 noundef %.sroa.7.0.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef range(i64 7, 15) 7)
          to label %.noexc151.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc151.i:                                      ; preds = %bb.ack
  invoke fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef align 8 dereferenceable(104) %i.aa)
          to label %.noexc152.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc152.i:                                      ; preds = %.noexc151.i
  %i.dby = load i64, ptr %i.ab, align 8, !range !37, !noalias !8110, !noundef !16
  %i.dbz = trunc nuw i64 %i.dby to i1
  %i.dca = load i64, ptr %i.cvx, align 8, !noalias !8110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8110
  br i1 %i.dbz, label %bb.acl, label %.backedge.i.i

bb.acl:                                           ; preds = %.noexc152.i, %.noexc150.i
  %.sroa.052.0.i.i = phi i64 [ 11, %.noexc150.i ], [ 7, %.noexc152.i ]
  %.sroa.3.0.i67.pn.i.i = phi i64 [ %i.dbx, %.noexc150.i ], [ %i.dca, %.noexc152.i ]
  %.sroa.051.0.i.i = add i64 %.sroa.3.0.i67.pn.i.i, %i.dbn ; 11 uses
  %i.dcb = add i64 %.sroa.051.0.i.i, %.sroa.052.0.i.i ; 17 uses
  %i.dcc = icmp eq i64 %i.dcb, 0                  ; 2 uses
  br i1 %i.dcc, label %bb.aco, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %.not.i69.i.i = icmp ult i64 %i.dcb, %.sroa.8213.0.copyload.i
  br i1 %.not.i69.i.i, label %bb.acn, label %.split.i70.i.i

.split.i70.i.i:                                   ; preds = %bb.acm
  %i.dcd = icmp eq i64 %i.dcb, %.sroa.8213.0.copyload.i
  br i1 %i.dcd, label %bb.aco, label %.invoke2962

bb.acn:                                           ; preds = %bb.acm
  %i.dce = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dcb
  %i.dcf = load i8, ptr %i.dce, align 1, !alias.scope !8111, !noalias !8100, !noundef !16
  %i.dcg = icmp sgt i8 %i.dcf, -65
  br i1 %i.dcg, label %bb.aco, label %.invoke2962

bb.aco:                                           ; preds = %bb.acn, %.split.i70.i.i, %bb.acl
  %i.dch = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dcb ; 3 uses
  %i.dci = icmp eq i64 %.sroa.8213.0.copyload.i, %i.dcb ; 2 uses
  br i1 %i.dci, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h1dca0bac7d942637E.exit.i.i", label %.lr.ph.i.i.i.i.i363

.lr.ph.i.i.i.i.i363:                              ; preds = %bb.aco, %bb.act
  %i.dcj = phi i64 [ %i.dem, %bb.act ], [ 0, %bb.aco ] ; 3 uses
  %i.dck = phi ptr [ %i.den, %bb.act ], [ %i.dch, %bb.aco ] ; 6 uses
  %i.dcl = ptrtoint ptr %i.dck to i64
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dck, i64 1 ; 3 uses
  %i.dcn = load i8, ptr %i.dck, align 1, !alias.scope !8112, !noalias !8113, !noundef !16 ; 5 uses
  %i.dco = icmp sgt i8 %i.dcn, -1
  br i1 %i.dco, label %.thread.i.i.i.i.i.i388, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i363
  %i.dcp = and i8 %i.dcn, 31
  %i.dcq = zext nneg i8 %i.dcp to i32             ; 3 uses
  %i.dcr = icmp ne ptr %i.dcm, %i.czl
  call void @llvm.assume(i1 %i.dcr)
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.dck, i64 2 ; 3 uses
  %i.dct = load i8, ptr %i.dcm, align 1, !alias.scope !8112, !noalias !8113, !noundef !16
  %i.dcu = shl nuw nsw i32 %i.dcq, 6
  %i.dcv = and i8 %i.dct, 63
  %i.dcw = zext nneg i8 %i.dcv to i32             ; 2 uses
  %i.dcx = or disjoint i32 %i.dcu, %i.dcw
  %i.dcy = icmp samesign ugt i8 %i.dcn, -33
  br i1 %i.dcy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i", label %bb.acp

.thread.i.i.i.i.i.i388:                           ; preds = %.lr.ph.i.i.i.i.i363
  %i.dcz = zext nneg i8 %i.dcn to i32
  %i.dda = add i64 %i.dcj, 1
  br label %.split.i.i.i.i.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i"
  %i.ddb = icmp ne ptr %i.dcs, %i.czl
  call void @llvm.assume(i1 %i.ddb)
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.dck, i64 3 ; 3 uses
  %i.ddd = load i8, ptr %i.dcs, align 1, !alias.scope !8112, !noalias !8113, !noundef !16
  %i.dde = shl nuw nsw i32 %i.dcw, 6
  %i.ddf = and i8 %i.ddd, 63
  %i.ddg = zext nneg i8 %i.ddf to i32
  %i.ddh = or disjoint i32 %i.dde, %i.ddg         ; 2 uses
  %i.ddi = shl nuw nsw i32 %i.dcq, 12
  %i.ddj = or disjoint i32 %i.ddh, %i.ddi
  %i.ddk = icmp samesign ugt i8 %i.dcn, -17
  br i1 %i.ddk, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i", label %bb.acp

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i"
  %i.ddl = icmp ne ptr %i.ddc, %i.czl
  call void @llvm.assume(i1 %i.ddl)
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.dck, i64 4
  %i.ddn = load i8, ptr %i.ddc, align 1, !alias.scope !8112, !noalias !8113, !noundef !16
  %i.ddo = shl nuw nsw i32 %i.dcq, 18
  %i.ddp = and i32 %i.ddo, 1835008
  %i.ddq = shl nuw nsw i32 %i.ddh, 6
  %i.ddr = and i8 %i.ddn, 63
  %i.dds = zext nneg i8 %i.ddr to i32
  %i.ddt = or disjoint i32 %i.ddq, %i.dds
  %i.ddu = or disjoint i32 %i.ddt, %i.ddp
  br label %bb.acp

bb.acp:                                           ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i"
  %i.ddv = phi ptr [ %i.ddc, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i" ], [ %i.ddm, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i" ], [ %i.dcs, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i = phi i32 [ %i.ddj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i" ], [ %i.ddu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i" ], [ %i.dcx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i" ] ; 7 uses
  %i.ddw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ddw)
  %i.ddx = ptrtoint ptr %i.ddv to i64
  %i.ddy = sub i64 %i.ddx, %i.dcl
  %i.ddz = add i64 %i.ddy, %i.dcj                 ; 3 uses
  %i.dea = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 128
  br i1 %i.dea, label %.split.i.i.i.i.i.i.i.i, label %bb.acq

bb.acq:                                           ; preds = %bb.acp
  %i.deb = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 169
  br i1 %i.deb, label %bb.acr, label %bb.acu

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.acp, %.thread.i.i.i.i.i.i388
  %i.dec = phi ptr [ %i.dcm, %.thread.i.i.i.i.i.i388 ], [ %i.ddv, %bb.acp ]
  %i.ded = phi i64 [ %i.dda, %.thread.i.i.i.i.i.i388 ], [ %i.ddz, %bb.acp ]
  %.sroa.4.0.i.ph.i14.i.i.i.i.i.i = phi i32 [ %i.dcz, %.thread.i.i.i.i.i.i388 ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i.i, %bb.acp ] ; 6 uses
  %i.dee = add nsw i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, -48
  %.sroa.010.0.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.dee, 10
  %i.def = icmp samesign ugt i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, 64
  %i.deg = icmp samesign ult i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, 91
  %.sroa.011.0.i.i.i.i.i.i.i.i.i = select i1 %i.def, i1 %i.deg, i1 %.sroa.010.0.i.i.i.i.i.i.i.i.i
  %i.deh = icmp samesign ugt i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, 96
  %i.dei = icmp samesign ult i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, 123
  %.sroa.012.0.i.i.i.i.i.i.i.i.i = select i1 %i.deh, i1 %i.dei, i1 %.sroa.011.0.i.i.i.i.i.i.i.i.i
  %.not8.i.i.i.i.i.i387 = icmp eq i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, 95
  %cond.fr6.i.i.i.i.i.i.i.i = freeze i1 %.sroa.012.0.i.i.i.i.i.i.i.i.i
  %brmerge.i.i.i.i.i.i = or i1 %.not8.i.i.i.i.i.i387, %cond.fr6.i.i.i.i.i.i.i.i
  br i1 %brmerge.i.i.i.i.i.i, label %bb.act, label %bb.acu

bb.acr:                                           ; preds = %bb.acq
  %i.dej = invoke noundef zeroext i1 @_ZN4core7unicode12unicode_data10alphabetic11lookup_slow17h0a43975d86ab62d2E(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i.i.i.i.i.i.i)
          to label %.noexc153.i unwind label %.loopexit.split-lp305.loopexit.i

.noexc153.i:                                      ; preds = %bb.acr
  br i1 %i.dej, label %bb.act, label %bb.acs

bb.acs:                                           ; preds = %.noexc153.i
  %i.dek = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 177
  br i1 %i.dek, label %"_ZN4core4char7methods22_$LT$impl$u20$char$GT$15is_alphanumeric17haf667bb31da7888aE.exit.i.i.i.i.i.i.i.i", label %bb.acu

"_ZN4core4char7methods22_$LT$impl$u20$char$GT$15is_alphanumeric17haf667bb31da7888aE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.acs
  %i.del = invoke noundef zeroext i1 @_ZN4core7unicode12unicode_data1n11lookup_slow17hdfb8029e3c529b03E(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i.i.i.i.i.i.i)
          to label %.noexc154.i unwind label %.loopexit.split-lp305.loopexit.i

.noexc154.i:                                      ; preds = %"_ZN4core4char7methods22_$LT$impl$u20$char$GT$15is_alphanumeric17haf667bb31da7888aE.exit.i.i.i.i.i.i.i.i"
  br i1 %i.del, label %bb.act, label %bb.acu

bb.act:                                           ; preds = %.noexc154.i, %.noexc153.i, %.split.i.i.i.i.i.i.i.i
  %i.dem = phi i64 [ %i.ded, %.split.i.i.i.i.i.i.i.i ], [ %i.ddz, %.noexc154.i ], [ %i.ddz, %.noexc153.i ]
  %i.den = phi ptr [ %i.dec, %.split.i.i.i.i.i.i.i.i ], [ %i.ddv, %.noexc154.i ], [ %i.ddv, %.noexc153.i ] ; 2 uses
  %i.deo = icmp eq ptr %i.den, %i.czl
  br i1 %i.deo, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h1dca0bac7d942637E.exit.i.i", label %.lr.ph.i.i.i.i.i363

bb.acu:                                           ; preds = %.noexc154.i, %bb.acs, %.split.i.i.i.i.i.i.i.i, %bb.acq
  %i.dep = add i64 %i.dcj, %i.dcb
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h1dca0bac7d942637E.exit.i.i"

"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h1dca0bac7d942637E.exit.i.i": ; preds = %bb.act, %bb.acu, %bb.aco
  %i.deq = phi i64 [ %i.dep, %bb.acu ], [ %.sroa.8213.0.copyload.i, %bb.aco ], [ %.sroa.8213.0.copyload.i, %bb.act ] ; 11 uses
  %.not.i74.i.i = icmp ugt i64 %i.dcb, %i.deq
  br i1 %.not.i74.i.i, label %.invoke2962, label %bb.acv

bb.acv:                                           ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h1dca0bac7d942637E.exit.i.i"
  br i1 %i.dcc, label %bb.acx, label %bb.acw

bb.acw:                                           ; preds = %bb.acv
  %.not5.i.i.i = icmp ult i64 %i.dcb, %.sroa.8213.0.copyload.i
  br i1 %.not5.i.i.i, label %bb.acy, label %.split.i75.i.i

bb.acx:                                           ; preds = %bb.acy, %.split.i75.i.i, %bb.acv
  %i.der = icmp eq i64 %i.deq, 0
  br i1 %i.der, label %bb.adb, label %bb.acz

.split.i75.i.i:                                   ; preds = %bb.acw
  br i1 %i.dci, label %bb.acx, label %.invoke2962

bb.acy:                                           ; preds = %bb.acw
  %i.des = load i8, ptr %i.dch, align 1, !alias.scope !8114, !noalias !8100, !noundef !16
  %i.det = icmp sgt i8 %i.des, -65
  br i1 %i.det, label %bb.acx, label %.invoke2962

bb.acz:                                           ; preds = %bb.acx
  %.not6.i.i.i = icmp ult i64 %i.deq, %.sroa.8213.0.copyload.i
  br i1 %.not6.i.i.i, label %bb.ada, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.acz
  %i.deu = icmp eq i64 %i.deq, %.sroa.8213.0.copyload.i
  br i1 %i.deu, label %bb.adb, label %.invoke2962

bb.ada:                                           ; preds = %bb.acz
  %i.dev = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.deq
  %i.dew = load i8, ptr %i.dev, align 1, !alias.scope !8114, !noalias !8100, !noundef !16
  %i.dex = icmp sgt i8 %i.dew, -65
  br i1 %i.dex, label %bb.adb, label %.invoke2962

bb.adb:                                           ; preds = %bb.ada, %.split7.i.i.i, %bb.acx
  %i.dey = sub nuw i64 %i.deq, %i.dcb
  %i.dez = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h6197f76d203b4248E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dch, i64 noundef %i.dey) ; 2 uses
  %i.dfa = extractvalue { ptr, i64 } %i.dez, 0
  %i.dfb = extractvalue { ptr, i64 } %i.dez, 1
  %i.dfc = icmp eq i64 %.sroa.051.0.i.i, 0
  br i1 %i.dfc, label %bb.ade, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.not.i78.i.i = icmp ult i64 %.sroa.051.0.i.i, %.sroa.8213.0.copyload.i
  br i1 %.not.i78.i.i, label %bb.add, label %.split.i79.i.i

.split.i79.i.i:                                   ; preds = %bb.adc
  %i.dfd = icmp eq i64 %.sroa.051.0.i.i, %.sroa.8213.0.copyload.i
  br i1 %i.dfd, label %bb.ade, label %.invoke2962

bb.add:                                           ; preds = %bb.adc
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.051.0.i.i
  %i.dff = load i8, ptr %i.dfe, align 1, !alias.scope !8115, !noalias !8100, !noundef !16
  %i.dfg = icmp sgt i8 %i.dff, -65
  br i1 %i.dfg, label %bb.ade, label %.invoke2962

bb.ade:                                           ; preds = %bb.add, %.split.i79.i.i, %bb.adb
  %i.dfh = sub nuw i64 %.sroa.8213.0.copyload.i, %.sroa.051.0.i.i ; 4 uses
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.051.0.i.i ; 2 uses
  br label %.backedge.i.i.i385

.backedge.i.i.i385:                               ; preds = %.backedge.i.i.i385.backedge, %bb.ade
  %i.dfj = phi i64 [ 0, %bb.ade ], [ %i.dfw, %.backedge.i.i.i385.backedge ] ; 5 uses
  %i.dfk = sub nuw i64 %i.dfh, %i.dfj             ; 3 uses
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dfi, i64 %i.dfj ; 2 uses
  %i.dfm = icmp ult i64 %i.dfk, 16
  br i1 %i.dfm, label %.preheader.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.backedge.i.i.i385
  %.not.i.i.i.i.i386 = icmp eq i64 %i.dfh, %i.dfj
  br i1 %.not.i.i.i.i.i386, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i", label %.lr.ph.i.i.i83.i.i

.lr.ph.i.i.i83.i.i:                               ; preds = %.preheader.i.i.i.i.i, %bb.adf
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.dfq, %bb.adf ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dfl, i64 %.sroa.01.05.i.i.i.i.i
  %i.dfo = load i8, ptr %i.dfn, align 1, !alias.scope !8116, !noalias !8117, !noundef !16
  %i.dfp = icmp eq i8 %i.dfo, 123
  br i1 %i.dfp, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %bb.adf

bb.adf:                                           ; preds = %.lr.ph.i.i.i83.i.i
  %i.dfq = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dfq, %i.dfk
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i", label %.lr.ph.i.i.i83.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i: ; preds = %.backedge.i.i.i385
  %i.dfr = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 123, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dfl, i64 noundef %i.dfk)
          to label %.noexc157.i unwind label %.loopexit304.i ; 2 uses

.noexc157.i:                                      ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i
  %i.dfs = extractvalue { i64, i64 } %i.dfr, 0
  %i.dft = extractvalue { i64, i64 } %i.dfr, 1
  %i.dfu = trunc nuw i64 %i.dfs to i1
  br i1 %i.dfu, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i: ; preds = %.lr.ph.i.i.i83.i.i, %.noexc157.i
  %.sroa.4.0.i27.i.i.i.i = phi i64 [ %i.dft, %.noexc157.i ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i83.i.i ] ; 2 uses
  %i.dfv = add i64 %i.dfj, 1
  %i.dfw = add i64 %i.dfv, %.sroa.4.0.i27.i.i.i.i ; 2 uses
  %.not21.i.i.i.i = icmp ugt i64 %i.dfw, %i.dfh   ; 2 uses
  %i.dfx = add i64 %.sroa.4.0.i27.i.i.i.i, %i.dfj ; 3 uses
  %or.cond.i.not.i.i.i = icmp ult i64 %i.dfx, %i.dfh
  br i1 %or.cond.i.not.i.i.i, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  br i1 %.not21.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i", label %.backedge.i.i.i385.backedge

bb.adh:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i
  %i.dfy = getelementptr inbounds nuw i8, ptr %i.dfi, i64 %i.dfx
  %lhsc.i.i.i = load i8, ptr %i.dfy, align 1, !alias.scope !8118, !noalias !8100
  %lhsc.i.fr.i.i = freeze i8 %lhsc.i.i.i
  %i.dfz = icmp eq i8 %lhsc.i.fr.i.i, 123         ; 2 uses
  %brmerge.i.i.i = or i1 %.not21.i.i.i.i, %i.dfz
  br i1 %brmerge.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.loopexit.i.i.i", label %.backedge.i.i.i385.backedge

.backedge.i.i.i385.backedge:                      ; preds = %bb.adh, %bb.adg
  br label %.backedge.i.i.i385

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.loopexit.i.i.i": ; preds = %bb.adh
  %spec.select.i.i = select i1 %i.dfz, i64 %i.dfx, i64 0
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i"

"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i": ; preds = %bb.adg, %.noexc157.i, %.preheader.i.i.i.i.i, %bb.adf, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.loopexit.i.i.i"
  %.sink.i.i.i.i364 = phi i64 [ 0, %bb.adf ], [ %spec.select.i.i, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.loopexit.i.i.i" ], [ 0, %.preheader.i.i.i.i.i ], [ 0, %.noexc157.i ], [ 0, %bb.adg ]
  %.sroa.025.0.i.i = add i64 %.sink.i.i.i.i364, %.sroa.051.0.i.i ; 7 uses
  %i.dga = icmp eq i64 %.sroa.025.0.i.i, 0
  br i1 %i.dga, label %bb.adk, label %bb.adi

bb.adi:                                           ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i"
  %.not.i.i84.i.i = icmp ult i64 %.sroa.025.0.i.i, %.sroa.8213.0.copyload.i
  br i1 %.not.i.i84.i.i, label %bb.adj, label %.split.i.i85.i.i

.split.i.i85.i.i:                                 ; preds = %bb.adi
  %i.dgb = icmp eq i64 %.sroa.025.0.i.i, %.sroa.8213.0.copyload.i
  br i1 %i.dgb, label %bb.adk, label %.backedge.i.i

bb.adj:                                           ; preds = %bb.adi
  %i.dgc = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.025.0.i.i
  %i.dgd = load i8, ptr %i.dgc, align 1, !alias.scope !8119, !noalias !8100, !noundef !16
  %i.dge = icmp sgt i8 %i.dgd, -65
  br i1 %i.dge, label %bb.adk, label %.backedge.i.i

bb.adk:                                           ; preds = %bb.adj, %.split.i.i85.i.i, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i"
  %i.dgf = sub nuw i64 %.sroa.8213.0.copyload.i, %.sroa.025.0.i.i ; 2 uses
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.025.0.i.i ; 3 uses
  %.not.i15.i.i.i = icmp eq i64 %.sroa.8213.0.copyload.i, %.sroa.025.0.i.i
  br i1 %.not.i15.i.i.i, label %.backedge.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i": ; preds = %bb.adk
  %rhsc.i.i.i = load i8, ptr %i.dgg, align 1, !alias.scope !8120, !noalias !8100
  %i.dgh = icmp eq i8 %rhsc.i.i.i, 123
  %i.dgi = icmp ugt i64 %i.dgf, 1
  %or.cond34.i.i.i = select i1 %i.dgh, i1 %i.dgi, i1 false
  br i1 %or.cond34.i.i.i, label %.lr.ph.i88.i.i, label %.backedge.i.i

._crit_edge.i90.i.i:                              ; preds = %bb.adm
  %1 = icmp eq i32 %.sroa.07.1.i.i.i, 0
  br i1 %1, label %bb.adl, label %.backedge.i.i

bb.adl:                                           ; preds = %._crit_edge.i90.i.i
  %i.dgj = icmp slt i8 %i.dgo, -64
  %i.dgk = getelementptr inbounds nuw i8, ptr %i.dgg, i64 1 ; 2 uses
  %i.dgl = load i8, ptr %i.dgk, align 1, !alias.scope !8121, !noalias !8100, !noundef !16
  %i.dgm = icmp slt i8 %i.dgl, -64
  %brmerge261.i.i = or i1 %i.dgj, %i.dgm
  br i1 %brmerge261.i.i, label %.backedge.i.i, label %bb.adp

.lr.ph.i88.i.i:                                   ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i", %bb.adm
  %.sroa.07.025.i.i.i = phi i32 [ %.sroa.07.1.i.i.i, %bb.adm ], [ 1, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i" ] ; 3 uses
  %.sroa.011.024.i.i.i = phi i64 [ %i.dgp, %bb.adm ], [ 1, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i" ] ; 3 uses
  %i.dgn = getelementptr inbounds nuw i8, ptr %i.dgg, i64 %.sroa.011.024.i.i.i
  %i.dgo = load i8, ptr %i.dgn, align 1, !alias.scope !8120, !noalias !8100, !noundef !16 ; 2 uses
  switch i8 %i.dgo, label %bb.adm [
    i8 123, label %bb.adn
    i8 125, label %bb.ado
  ]

bb.adm:                                           ; preds = %bb.ado, %bb.adn, %.lr.ph.i88.i.i
  %.sroa.07.1.i.i.i = phi i32 [ %.sroa.07.025.i.i.i, %.lr.ph.i88.i.i ], [ %i.dgs, %bb.adn ], [ %i.dgt, %bb.ado ] ; 3 uses
  %i.dgp = add nuw i64 %.sroa.011.024.i.i.i, 1    ; 2 uses
  %i.dgq = icmp ult i64 %i.dgp, %i.dgf
  %i.dgr = icmp ne i32 %.sroa.07.1.i.i.i, 0
  %or.cond.i89.i.i = select i1 %i.dgq, i1 %i.dgr, i1 false
  br i1 %or.cond.i89.i.i, label %.lr.ph.i88.i.i, label %._crit_edge.i90.i.i

bb.adn:                                           ; preds = %.lr.ph.i88.i.i
  %i.dgs = add i32 %.sroa.07.025.i.i.i, 1
  br label %bb.adm

bb.ado:                                           ; preds = %.lr.ph.i88.i.i
  %i.dgt = add i32 %.sroa.07.025.i.i.i, -1
  br label %bb.adm

.invoke2962:                                      ; preds = %.split.i79.i.i, %bb.add, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h1dca0bac7d942637E.exit.i.i", %.split.i75.i.i, %bb.acy, %.split7.i.i.i, %bb.ada, %.split.i70.i.i, %bb.acn, %.split.i.i.i, %bb.abq
  %i.dgu = phi i64 [ %i.dcb, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h1dca0bac7d942637E.exit.i.i" ], [ %i.dcb, %.split.i70.i.i ], [ %.sroa.0.0.i.i340, %.split.i.i.i ], [ %.sroa.0.0.i.i340, %bb.abq ], [ %i.dcb, %bb.acn ], [ %i.dcb, %bb.ada ], [ %i.dcb, %.split7.i.i.i ], [ %i.dcb, %bb.acy ], [ %i.dcb, %.split.i75.i.i ], [ %.sroa.051.0.i.i, %bb.add ], [ %.sroa.051.0.i.i, %.split.i79.i.i ]
  %i.dgv = phi i64 [ %i.deq, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h1dca0bac7d942637E.exit.i.i" ], [ %.sroa.8213.0.copyload.i, %.split.i70.i.i ], [ %.sroa.8213.0.copyload.i, %.split.i.i.i ], [ %.sroa.8213.0.copyload.i, %bb.abq ], [ %.sroa.8213.0.copyload.i, %bb.acn ], [ %i.deq, %bb.ada ], [ %i.deq, %.split7.i.i.i ], [ %i.deq, %bb.acy ], [ %i.deq, %.split.i75.i.i ], [ %.sroa.8213.0.copyload.i, %bb.add ], [ %.sroa.8213.0.copyload.i, %.split.i79.i.i ]
  %i.dgw = phi ptr [ @177, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h1dca0bac7d942637E.exit.i.i" ], [ @176, %.split.i70.i.i ], [ @170, %.split.i.i.i ], [ @170, %bb.abq ], [ @176, %bb.acn ], [ @177, %bb.ada ], [ @177, %.split7.i.i.i ], [ @177, %bb.acy ], [ @177, %.split.i75.i.i ], [ @178, %bb.add ], [ @178, %.split.i79.i.i ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cyv, i64 noundef %.sroa.8213.0.copyload.i, i64 noundef %i.dgu, i64 noundef %i.dgv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dgw) #38
          to label %.cont2963 unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont2963:                                        ; preds = %.invoke2962
  unreachable

bb.adp:                                           ; preds = %bb.adl
  %i.dgx = add i64 %.sroa.011.024.i.i.i, -1       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !8123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !8123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !8123
  store ptr %i.dfa, ptr %i.z, align 8, !noalias !8124
  store i64 %i.dfb, ptr %i.cvy, align 8, !noalias !8124
  store ptr @179, ptr %i.y, align 8, !noalias !8124
  store i64 5, ptr %i.cvz, align 8, !noalias !8124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8125
  store i64 0, ptr %i.r, align 8, !alias.scope !8126, !noalias !8127
  store i64 %i.dgx, ptr %.sroa.4.0..sroa_idx.i.i139.i, align 8, !alias.scope !8126, !noalias !8127
  store ptr %i.dgk, ptr %.sroa.5.0..sroa_idx.i.i140.i, align 8, !alias.scope !8126, !noalias !8127
  store i64 %i.dgx, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !8126, !noalias !8127
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !8126, !noalias !8127
  store i64 %i.dgx, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !8126, !noalias !8127
  store i32 10, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !8126, !noalias !8127
  store i32 10, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 4, !alias.scope !8126, !noalias !8127
  store i8 1, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !8126, !noalias !8127
  store i8 0, ptr %.sroa.62.0..sroa_idx.i.i.i, align 8, !alias.scope !8126, !noalias !8127
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i141.i, align 1, !alias.scope !8126, !noalias !8127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8128
  %i.dgy = invoke fastcc { ptr, i64 } @"_ZN81_$LT$core..str..iter..Lines$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h40ef85e84b8a874cE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.r)
          to label %.noexc159.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.noexc159.i:                                      ; preds = %bb.adp
  %i.dgz = extractvalue { ptr, i64 } %i.dgy, 0    ; 2 uses
  %i.dha = extractvalue { ptr, i64 } %i.dgy, 1
  %.not.i.i.i.i.i.i.i365 = icmp eq ptr %i.dgz, null
  br i1 %.not.i.i.i.i.i.i.i365, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h82ac48aa10bd5623E.exit.thread.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i366"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h82ac48aa10bd5623E.exit.thread.i.i.i": ; preds = %.noexc159.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8125
  br label %_ZN17openapi_generator33check_struct_fields_have_required17h20fb86d1d3eb91daE.exit.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i366": ; preds = %.noexc159.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !8129
  %i.dhb = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #37, !noalias !8129 ; 8 uses
  %i.dhc = icmp eq ptr %i.dhb, null
  br i1 %i.dhc, label %bb.adq, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i.i.i.i.i.i.i"

bb.adq:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i366"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 64, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #38
          to label %.noexc160.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc160.i:                                      ; preds = %bb.adq
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i366"
  store ptr %i.dgz, ptr %i.dhb, align 8, !noalias !8130
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.dhb, i64 8
  store i64 %i.dha, ptr %i.dhd, align 8, !noalias !8130
  store i64 4, ptr %i.q, align 8, !noalias !8128
  store ptr %i.dhb, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i335, align 8, !noalias !8128
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !8128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !noalias !8131
  call void @llvm.experimental.noalias.scope.decl(metadata !8132)
  call void @llvm.experimental.noalias.scope.decl(metadata !8133)
  %i.dhe = invoke fastcc { ptr, i64 } @"_ZN81_$LT$core..str..iter..Lines$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h40ef85e84b8a874cE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %.noexc.i.i.i.i.i.i.i369 unwind label %.thread.i.i.i.i.i.i.i, !noalias !8130 ; 2 uses

.noexc.i.i.i.i.i.i.i369:                          ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i.i.i.i.i.i.i"
  %i.dhf = extractvalue { ptr, i64 } %i.dhe, 0    ; 2 uses
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dhf, null
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i370

_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.thread.i.i: ; preds = %.noexc.i.i.i.i.i.i.i369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8124
  store i64 0, ptr %i.x, align 8, !noalias !8124
  store ptr inttoptr (i64 8 to ptr), ptr %i.cwa, align 8, !noalias !8124
  store i64 0, ptr %i.cwb, align 8, !noalias !8124
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dhb, i64 16
  br label %.lr.ph.i93.i.i

.lr.ph.i.i.i.i.i.i.i.i.i370:                      ; preds = %.noexc.i.i.i.i.i.i.i369, %.noexc11.i.i.i.i.i.i.i
  %i.dhh = phi ptr [ %i.dho, %.noexc11.i.i.i.i.i.i.i ], [ %i.dhb, %.noexc.i.i.i.i.i.i.i369 ]
  %i.dhi = phi i64 [ %i.dhp, %.noexc11.i.i.i.i.i.i.i ], [ 4, %.noexc.i.i.i.i.i.i.i369 ] ; 3 uses
  %i.dhj = phi i64 [ %i.dhs, %.noexc11.i.i.i.i.i.i.i ], [ 1, %.noexc.i.i.i.i.i.i.i369 ] ; 4 uses
  %.pn.i.i.i.i.i.i.i.i.i = phi { ptr, i64 } [ %i.dht, %.noexc11.i.i.i.i.i.i.i ], [ %i.dhe, %.noexc.i.i.i.i.i.i.i369 ]
  %i.dhk = phi ptr [ %i.dhu, %.noexc11.i.i.i.i.i.i.i ], [ %i.dhf, %.noexc.i.i.i.i.i.i.i369 ]
  %i.dhl = extractvalue { ptr, i64 } %.pn.i.i.i.i.i.i.i.i.i, 1
  %i.dhm = icmp samesign ult i64 %i.dhj, 576460752303423488
  call void @llvm.assume(i1 %i.dhm)
  %i.dhn = icmp eq i64 %i.dhj, %i.dhi
  br i1 %i.dhn, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h23c327adbd4e54baE.exit.i.i.i.i.i.i.i.i.i", label %bb.adr

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h23c327adbd4e54baE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i370
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf73253a6d4574d3aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.dhi, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc10.i.i.i.i.i.i.i unwind label %bb.ads, !noalias !8130

.noexc10.i.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h23c327adbd4e54baE.exit.i.i.i.i.i.i.i.i.i"
  %.pre2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !17, !alias.scope !8134, !noalias !8135
  %.pre.i.i.i.i.i.i.i384 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i335, align 8, !alias.scope !8134, !noalias !8135
  br label %bb.adr

bb.adr:                                           ; preds = %.noexc10.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i370
  %i.dho = phi ptr [ %i.dhh, %.lr.ph.i.i.i.i.i.i.i.i.i370 ], [ %.pre.i.i.i.i.i.i.i384, %.noexc10.i.i.i.i.i.i.i ] ; 2 uses
  %i.dhp = phi i64 [ %i.dhi, %.lr.ph.i.i.i.i.i.i.i.i.i370 ], [ %.pre2.i.i.i.i.i.i.i.i.i, %.noexc10.i.i.i.i.i.i.i ]
  %i.dhq = getelementptr inbounds nuw [16 x i8], ptr %i.dho, i64 %i.dhj ; 2 uses
  store ptr %i.dhk, ptr %i.dhq, align 8, !noalias !8136
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.dhq, i64 8
  store i64 %i.dhl, ptr %i.dhr, align 8, !noalias !8136
  %i.dhs = add nuw nsw i64 %i.dhj, 1              ; 3 uses
  store i64 %i.dhs, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !8134, !noalias !8135
  %i.dht = invoke fastcc { ptr, i64 } @"_ZN81_$LT$core..str..iter..Lines$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h40ef85e84b8a874cE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %.noexc11.i.i.i.i.i.i.i unwind label %bb.ads, !noalias !8130 ; 2 uses

.noexc11.i.i.i.i.i.i.i:                           ; preds = %bb.adr
  %i.dhu = extractvalue { ptr, i64 } %i.dht, 0    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i371 = icmp eq ptr %i.dhu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i371, label %_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i370

.thread.i.i.i.i.i.i.i:                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h806cf9553f49aa0dE.exit.i.i.i.i.i.i.i"
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.adt

bb.ads:                                           ; preds = %bb.adr, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h23c327adbd4e54baE.exit.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !8128 ; 2 uses
  %i.dhv = icmp eq i64 %.val.pre.i.i.i.i.i.i.i, 0
  br i1 %i.dhv, label %.body161.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ads
  %.val9.i.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i335, align 8, !noalias !8128
  %i.dhw = shl nuw i64 %.val.pre.i.i.i.i.i.i.i, 4
  br label %bb.adt

bb.adt:                                           ; preds = %._crit_edge.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  %.val9.i.i.i.i.i.i.i367 = phi ptr [ %i.dhb, %.thread.i.i.i.i.i.i.i ], [ %.val9.i.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ]
  %lpad.phi9.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ]
  %.val8.i.i.i.i.i.i.i368 = phi i64 [ 64, %.thread.i.i.i.i.i.i.i ], [ %i.dhw, %._crit_edge.i.i.i.i.i.i ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i367, i64 noundef %.val8.i.i.i.i.i.i.i368, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !8130
  br label %.body161.i

_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.i.i: ; preds = %.noexc11.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.pre.i.i.i = load i64, ptr %i.q, align 8, !noalias !8137 ; 2 uses
  %.sroa.6.0.copyload.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i335, align 8, !noalias !8137 ; 3 uses
  %i.dhx = shl nuw nsw i64 %i.dhs, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8124
  store i64 0, ptr %i.x, align 8, !noalias !8124
  store ptr inttoptr (i64 8 to ptr), ptr %i.cwa, align 8, !noalias !8124
  store i64 0, ptr %i.cwb, align 8, !noalias !8124
  %i.dhy = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.pre.i.i.i, i64 %i.dhx
  %.not62103.i.i.i = icmp eq ptr %.sroa.6.0.copyload.pre.i.i.i, null
  br i1 %.not62103.i.i.i, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h82ac48aa10bd5623E.exit.i.i.i", label %.lr.ph.i93.i.i

.lr.ph.i93.i.i:                                   ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.thread.i.i
  %i.dhz = phi ptr [ %i.dhg, %_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.thread.i.i ], [ %i.dhy, %_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.i.i ]
  %.sroa.0.0.copyload.i136.i.i = phi i64 [ 4, %_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.thread.i.i ], [ %.sroa.0.0.copyload.pre.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.i.i ] ; 4 uses
  %.sroa.6.0.copyload.i134.i.i = phi ptr [ %i.dhb, %_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.thread.i.i ], [ %.sroa.6.0.copyload.pre.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25c194f2f44ed3f8E.exit.i.i.i ] ; 5 uses
  %.sroa.058.1102.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i134.i.i, i64 16
  br label %bb.adu

bb.adu:                                           ; preds = %bb.afe, %.lr.ph.i93.i.i
  %.sroa.058.1106.i.i.i = phi ptr [ %.sroa.058.1102.i.i.i, %.lr.ph.i93.i.i ], [ %.sroa.058.1.i.i.i, %bb.afe ] ; 3 uses
  %.sroa.058.0105.i.i.i = phi ptr [ %.sroa.6.0.copyload.i134.i.i, %.lr.ph.i93.i.i ], [ %.sroa.058.1106.i.i.i, %bb.afe ] ; 3 uses
  %i.dia = load ptr, ptr %.sroa.058.0105.i.i.i, align 8, !nonnull !16, !align !19, !noundef !16
  %i.dib = getelementptr inbounds nuw i8, ptr %.sroa.058.0105.i.i.i, i64 8 ; 2 uses
  %i.dic = load i64, ptr %i.dib, align 8, !noundef !16
  %i.did = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h6197f76d203b4248E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dia, i64 noundef %i.dic) ; 2 uses
  %i.die = extractvalue { ptr, i64 } %i.did, 0    ; 5 uses
  %i.dif = extractvalue { ptr, i64 } %i.did, 1    ; 6 uses
  %.not.i.i.i94.i.i = icmp ult i64 %i.dif, 4
  br i1 %.not.i.i.i94.i.i, label %.backedge.i.i101.i.i.preheader, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i.i"

.backedge.i.i101.i.i.preheader:                   ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i.i", %bb.adu
  br label %.backedge.i.i101.i.i

end_hunk_0
