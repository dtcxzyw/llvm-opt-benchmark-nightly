inline.NumInlined: 4415
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
  %.val3.i.i.i396 = load ptr, ptr %i.czb, align 8, !alias.scope !7873, !noalias !7861, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i396, i64 noundef %.val.i.i130.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !7876
  br label %bb.abh

bb.abg:                                           ; preds = %bb.abh
  %i.czc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !7876
  unreachable

bb.abh:                                           ; preds = %bb.abf, %bb.abe
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #33
          to label %.body132.i unwind label %bb.abg, !noalias !7876

bb.abi:                                           ; preds = %bb.abb
  %i.czd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao) #33
          to label %.body132.i unwind label %bb.abj, !noalias !7861

bb.abj:                                           ; preds = %bb.abi
  %i.cze = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !7861
  unreachable

bb.abk:                                           ; preds = %bb.abd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !7876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !7861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !7861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !7861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %.val93.i = load i64, ptr %i.be, align 8        ; 2 uses
  %i.czf = icmp eq i64 %.val93.i, 0
  br i1 %i.czf, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit134.i", label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i337, i64 noundef %.val93.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h945b6a273b4c97cbE.exit134.i"

bb.abm:                                           ; preds = %_ZN3std2fs14read_to_string17h99799222c976c3b0E.exit.i
  %.sroa.8213.0.copyload.i = load i64, ptr %.sroa.8213.0..sroa_idx.i, align 8, !alias.scope !7861 ; 32 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.czg = invoke { ptr, i64 } @_ZN3std4path4Path13_strip_prefix17h70fd9b124dcff30fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i337, i64 noundef %.val1.i.i.i338, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cvf, i64 noundef %.sroa.8199.0.copyload.i)
          to label %_ZN3std4path4Path12strip_prefix17h7642565aeead8c8fE.exit.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.loopexit304.i:                                   ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i
  %lpad.loopexit306.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.i:                 ; preds = %"_ZN4core4char7methods22_$LT$impl$u20$char$GT$15is_alphanumeric17haf667bb31da7888aE.exit.i.i.i.i.i.i.i.i", %bb.acs
  %lpad.loopexit310.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.i: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i
  %lpad.loopexit313.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.adr, %.noexc151.i, %bb.acl, %.noexc149.i, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i", %bb.acg, %bb.acf, %.noexc143.i, %bb.abr
  %lpad.loopexit317.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.abm
  %lpad.loopexit325.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke2960, %bb.ads
  %lpad.loopexit.split-lp326.i = landingpad { ptr, i32 }
          cleanup
  br label %.body161.i

.body161.i:                                       ; preds = %bb.ady, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h82ac48aa10bd5623E.exit86.i.i.i", %bb.adv, %bb.adu, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.i, %.loopexit.split-lp305.loopexit.i, %.loopexit304.i
  %eh.lpad-body162.i = phi { ptr, i32 } [ %.pn.i.i.i373, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h82ac48aa10bd5623E.exit86.i.i.i" ], [ %lpad.loopexit.i.i.i.i.i.i.i, %bb.adu ], [ %lpad.phi9.i.i.i.i.i.i.i, %bb.adv ], [ %.pn.i.i.i373, %bb.ady ], [ %lpad.loopexit306.i, %.loopexit304.i ], [ %lpad.loopexit310.i, %.loopexit.split-lp305.loopexit.i ], [ %lpad.loopexit313.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit317.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit325.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp326.i, %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7882)
  call void @llvm.experimental.noalias.scope.decl(metadata !7885)
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
  br i1 %i.czn, label %bb.abr, label %.invoke2960

bb.abq:                                           ; preds = %bb.abp
  %i.czo = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.0.0.i.i340
  %i.czp = load i8, ptr %i.czo, align 1, !alias.scope !7887, !noalias !7890, !noundef !27
  %i.czq = icmp sgt i8 %i.czp, -65
  br i1 %i.czq, label %bb.abr, label %.invoke2960

bb.abr:                                           ; preds = %bb.abq, %.split.i.i.i, %bb.abo
  %i.czr = sub nuw i64 %.sroa.8213.0.copyload.i, %.sroa.0.0.i.i340
  %i.czs = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %.sroa.0.0.i.i340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !7892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !7892
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.ae, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.czs, i64 noundef %i.czr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @171, i64 noundef range(i64 7, 15) 14)
          to label %.noexc143.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc143.i:                                      ; preds = %bb.abr
  invoke fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef align 8 dereferenceable(104) %i.ae)
          to label %.noexc144.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc144.i:                                      ; preds = %.noexc143.i
  %i.czt = load i64, ptr %i.af, align 8, !range !3481, !noalias !7892, !noundef !27
  %i.czu = trunc nuw i64 %i.czt to i1
  %i.czv = load i64, ptr %i.cvv, align 8, !noalias !7892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7892
  br i1 %i.czu, label %bb.abs, label %_ZN17openapi_generator26check_query_params_in_file17h5f39b7d75028c088E.exit.i

bb.abs:                                           ; preds = %.noexc144.i
  %i.czw = add i64 %i.czv, %.sroa.0.0.i.i340      ; 25 uses
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
  %i.dab = load i8, ptr %i.daa, align 1, !alias.scope !7896, !noalias !7890, !noundef !27
  %i.dac = icmp sgt i8 %i.dab, -65
  br i1 %i.dac, label %bb.abv, label %.backedge.i.i

bb.abv:                                           ; preds = %bb.abu, %.split.i.i.i.i359, %bb.abs
  %i.dad = sub nuw i64 %.sroa.8213.0.copyload.i, %i.czx ; 8 uses
  %i.dae = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.czx ; 4 uses
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.backedge, %bb.abv
  %i.daf = phi i64 [ 0, %bb.abv ], [ %i.das, %.backedge.i.i.i.i.backedge ] ; 5 uses
  %i.dag = sub nuw i64 %i.dad, %i.daf             ; 3 uses
  %i.dah = getelementptr inbounds nuw i8, ptr %i.dae, i64 %i.daf ; 2 uses
  %i.dai = icmp ult i64 %i.dag, 16
  br i1 %i.dai, label %.preheader.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.backedge.i.i.i.i
  %.not.i.i.i.i.i.i390 = icmp eq i64 %i.dad, %i.daf
  br i1 %.not.i.i.i.i.i.i390, label %.backedge.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.abw
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.dam, %bb.abw ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.daj = getelementptr inbounds nuw i8, ptr %i.dah, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.dak = load i8, ptr %i.daj, align 1, !alias.scope !7901, !noalias !7906, !noundef !27
  %i.dal = icmp eq i8 %i.dak, 40
  br i1 %i.dal, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i, label %bb.abw

bb.abw:                                           ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dam = add nuw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
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
  %i.dat = add i64 %.sroa.4.0.i27.i.i.i.i.i, %i.daf ; 4 uses
  %or.cond.i.not.i.i.i.i = icmp ult i64 %i.dat, %i.dad
  br i1 %or.cond.i.not.i.i.i.i, label %bb.aby, label %bb.abx

bb.abx:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i, label %.backedge.i.i, label %.backedge.i.i.i.i.backedge

bb.aby:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i
  %i.dau = getelementptr inbounds nuw i8, ptr %i.dae, i64 %i.dat
  %lhsc.i.i.i.i360 = load i8, ptr %i.dau, align 1, !alias.scope !7910, !noalias !7890
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

._crit_edge.i.i.i362:                             ; preds = %bb.acc
  %i.day = icmp eq i32 %.sroa.011.1.i.i.i, 0
  %i.daz = icmp sgt i8 %i.dbf, -65
  %.not.i19.not.i.i.i = icmp ult i64 %i.dat, %.sroa.015.033.i.i.i
  %or.cond53.i.i.i = and i1 %.not.i19.not.i.i.i, %i.day
  br i1 %or.cond53.i.i.i, label %bb.aca, label %.backedge.i.i

bb.aca:                                           ; preds = %._crit_edge.i.i.i362
  %i.dba = getelementptr inbounds nuw i8, ptr %i.dae, i64 %i.daw ; 3 uses
  %i.dbb = load i8, ptr %i.dba, align 1, !alias.scope !7911, !noalias !7890, !noundef !27
  %i.dbc = icmp sgt i8 %i.dbb, -65
  br i1 %i.dbc, label %.split.i20.i.i.i, label %.backedge.i.i

.split.i20.i.i.i:                                 ; preds = %bb.aca
  %.not6.i.i.i.i363 = icmp ult i64 %.sroa.015.033.i.i.i, %i.dad
  br i1 %.not6.i.i.i.i363, label %bb.acb, label %.split7.i.i.i.i

.split7.i.i.i.i:                                  ; preds = %.split.i20.i.i.i
  %i.dbd = icmp eq i64 %.sroa.015.033.i.i.i, %i.dad
  br i1 %i.dbd, label %bb.acf, label %.backedge.i.i

bb.acb:                                           ; preds = %.split.i20.i.i.i
  br i1 %i.daz, label %bb.acf, label %.backedge.i.i

.lr.ph.i.i.i361:                                  ; preds = %bb.abz, %bb.acc
  %.sroa.011.034.i.i.i = phi i32 [ %.sroa.011.1.i.i.i, %bb.acc ], [ 1, %bb.abz ] ; 3 uses
  %.sroa.015.033.i.i.i = phi i64 [ %i.dbg, %bb.acc ], [ %i.daw, %bb.abz ] ; 6 uses
  %i.dbe = getelementptr inbounds nuw i8, ptr %i.dae, i64 %.sroa.015.033.i.i.i
  %i.dbf = load i8, ptr %i.dbe, align 1, !alias.scope !7914, !noalias !7890, !noundef !27 ; 2 uses
  switch i8 %i.dbf, label %bb.acc [
    i8 40, label %bb.acd
    i8 41, label %bb.ace
  ]

bb.acc:                                           ; preds = %bb.ace, %bb.acd, %.lr.ph.i.i.i361
  %.sroa.011.1.i.i.i = phi i32 [ %.sroa.011.034.i.i.i, %.lr.ph.i.i.i361 ], [ %i.dbj, %bb.acd ], [ %i.dbk, %bb.ace ] ; 3 uses
  %i.dbg = add nuw i64 %.sroa.015.033.i.i.i, 1    ; 2 uses
  %i.dbh = icmp ult i64 %i.dbg, %i.dad
  %i.dbi = icmp ne i32 %.sroa.011.1.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.dbh, i1 %i.dbi, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i361, label %._crit_edge.i.i.i362

bb.acd:                                           ; preds = %.lr.ph.i.i.i361
  %i.dbj = add i32 %.sroa.011.034.i.i.i, 1
  br label %bb.acc

bb.ace:                                           ; preds = %.lr.ph.i.i.i361
  %i.dbk = add i32 %.sroa.011.034.i.i.i, -1
  br label %bb.acc

bb.acf:                                           ; preds = %bb.acb, %.split7.i.i.i.i
  %i.dbl = sub nuw i64 %.sroa.015.033.i.i.i, %i.daw ; 3 uses
  %i.dbm = invoke fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @172, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dba, i64 noundef %i.dbl)
          to label %.noexc147.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc147.i:                                      ; preds = %bb.acf
  br i1 %i.dbm, label %bb.acg, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.abx, %.noexc146.i, %.preheader.i.i.i.i.i.i, %bb.abw, %_ZN17openapi_generator33check_struct_fields_have_required17h20fb86d1d3eb91daE.exit.i.i, %bb.adn, %.split7.i.i92.i.i, %bb.adm, %._crit_edge.i90.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i", %bb.adl, %bb.adk, %.split.i.i85.i.i, %.noexc152.i, %.noexc148.i, %.noexc147.i, %bb.acb, %.split7.i.i.i.i, %bb.aca, %._crit_edge.i.i.i362, %bb.abz, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i.i", %bb.abu, %.split.i.i.i.i359
  %.sroa.0.0.be.in.i.i = phi i64 [ %.sroa.051.0.i.i, %_ZN17openapi_generator33check_struct_fields_have_required17h20fb86d1d3eb91daE.exit.i.i ], [ %i.czw, %.noexc152.i ], [ %i.czw, %.noexc147.i ], [ %i.czw, %bb.abw ], [ %i.czw, %.noexc148.i ], [ %i.czw, %bb.adl ], [ %i.czw, %bb.adm ], [ %i.czw, %bb.adn ], [ %i.czw, %bb.adk ], [ %i.czw, %._crit_edge.i90.i.i ], [ %i.czw, %.split7.i.i92.i.i ], [ %i.czw, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i" ], [ %i.czw, %.split.i.i85.i.i ], [ %i.czw, %bb.acb ], [ %i.czw, %bb.aca ], [ %i.czw, %.split7.i.i.i.i ], [ %i.czw, %bb.abu ], [ %i.czw, %bb.abz ], [ %i.czw, %._crit_edge.i.i.i362 ], [ %i.czw, %.split.i.i.i.i359 ], [ %i.czw, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i.i" ], [ %i.czw, %.preheader.i.i.i.i.i.i ], [ %i.czw, %.noexc146.i ], [ %i.czw, %bb.abx ]
  %.sroa.0.0.be.i.i = add i64 %.sroa.0.0.be.in.i.i, 1
  br label %bb.abo

bb.acg:                                           ; preds = %.noexc147.i
  %i.dbn = invoke fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @173, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dba, i64 noundef %i.dbl)
          to label %.noexc148.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc148.i:                                      ; preds = %bb.acg
  br i1 %i.dbn, label %bb.ach, label %.backedge.i.i

bb.ach:                                           ; preds = %.noexc148.i
  %i.dbo = add i64 %i.czw, 16
  %i.dbp = add i64 %i.dbo, %i.dbl                 ; 7 uses
  %i.dbq = icmp eq i64 %i.dbp, 0
  br i1 %i.dbq, label %bb.ack, label %bb.aci

bb.aci:                                           ; preds = %bb.ach
  %.not.i62.i.i = icmp ult i64 %i.dbp, %.sroa.8213.0.copyload.i
  br i1 %.not.i62.i.i, label %bb.acj, label %.split.i63.i.i

.split.i63.i.i:                                   ; preds = %bb.aci
  %i.dbr = icmp eq i64 %i.dbp, %.sroa.8213.0.copyload.i
  br i1 %i.dbr, label %bb.ack, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i"

bb.acj:                                           ; preds = %bb.aci
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dbp
  %i.dbt = load i8, ptr %i.dbs, align 1, !alias.scope !7915, !noalias !7890, !noundef !27
  %i.dbu = icmp sgt i8 %i.dbt, -65
  br i1 %i.dbu, label %bb.ack, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i"

bb.ack:                                           ; preds = %bb.acj, %.split.i63.i.i, %bb.ach
  %i.dbv = sub nuw i64 %.sroa.8213.0.copyload.i, %i.dbp
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dbp
  br label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i"

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i": ; preds = %bb.ack, %bb.acj, %.split.i63.i.i
  %.sroa.3.0.i64.i.i = phi i64 [ %i.dbv, %bb.ack ], [ undef, %bb.acj ], [ undef, %.split.i63.i.i ]
  %.sroa.0.0.i65.i.i = phi ptr [ %i.dbw, %bb.ack ], [ null, %bb.acj ], [ null, %.split.i63.i.i ] ; 2 uses
  %.not54.i.i = icmp eq ptr %.sroa.0.0.i65.i.i, null ; 2 uses
  %.sroa.7.0.i.i = select i1 %.not54.i.i, i64 0, i64 %.sroa.3.0.i64.i.i ; 2 uses
  %.sroa.08.0.i.i = select i1 %.not54.i.i, ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.0.i65.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !7918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !7918
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.08.0.i.i, i64 noundef %.sroa.7.0.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @174, i64 noundef range(i64 7, 15) 11)
          to label %.noexc149.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc149.i:                                      ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i"
  invoke fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef align 8 dereferenceable(104) %i.ac)
          to label %.noexc150.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc150.i:                                      ; preds = %.noexc149.i
  %i.dbx = load i64, ptr %i.ad, align 8, !range !3481, !noalias !7918, !noundef !27
  %i.dby = trunc nuw i64 %i.dbx to i1
  %i.dbz = load i64, ptr %i.cvw, align 8, !noalias !7918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !7918
  br i1 %i.dby, label %bb.acm, label %bb.acl

bb.acl:                                           ; preds = %.noexc150.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !7922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !7922
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.08.0.i.i, i64 noundef %.sroa.7.0.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef range(i64 7, 15) 7)
          to label %.noexc151.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc151.i:                                      ; preds = %bb.acl
  invoke fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef align 8 dereferenceable(104) %i.aa)
          to label %.noexc152.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc152.i:                                      ; preds = %.noexc151.i
  %i.dca = load i64, ptr %i.ab, align 8, !range !3481, !noalias !7922, !noundef !27
  %i.dcb = trunc nuw i64 %i.dca to i1
  %i.dcc = load i64, ptr %i.cvx, align 8, !noalias !7922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !7922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7922
  br i1 %i.dcb, label %bb.acm, label %.backedge.i.i

bb.acm:                                           ; preds = %.noexc152.i, %.noexc150.i
  %.sroa.052.0.i.i = phi i64 [ 11, %.noexc150.i ], [ 7, %.noexc152.i ]
  %.sroa.3.0.i67.pn.i.i = phi i64 [ %i.dbz, %.noexc150.i ], [ %i.dcc, %.noexc152.i ]
  %.sroa.051.0.i.i = add i64 %.sroa.3.0.i67.pn.i.i, %i.dbp ; 11 uses
  %i.dcd = add i64 %.sroa.051.0.i.i, %.sroa.052.0.i.i ; 17 uses
  %i.dce = icmp eq i64 %i.dcd, 0                  ; 2 uses
  br i1 %i.dce, label %bb.acp, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  %.not.i69.i.i = icmp ult i64 %i.dcd, %.sroa.8213.0.copyload.i
  br i1 %.not.i69.i.i, label %bb.aco, label %.split.i70.i.i

.split.i70.i.i:                                   ; preds = %bb.acn
  %i.dcf = icmp eq i64 %i.dcd, %.sroa.8213.0.copyload.i
  br i1 %i.dcf, label %bb.acp, label %.invoke2960

bb.aco:                                           ; preds = %bb.acn
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dcd
  %i.dch = load i8, ptr %i.dcg, align 1, !alias.scope !7926, !noalias !7890, !noundef !27
  %i.dci = icmp sgt i8 %i.dch, -65
  br i1 %i.dci, label %bb.acp, label %.invoke2960

bb.acp:                                           ; preds = %bb.aco, %.split.i70.i.i, %bb.acm
  %i.dcj = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dcd ; 3 uses
  %i.dck = icmp eq i64 %.sroa.8213.0.copyload.i, %i.dcd ; 2 uses
  br i1 %i.dck, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h1dca0bac7d942637E.exit.i.i", label %.lr.ph.i.i.i.i.i364

.lr.ph.i.i.i.i.i364:                              ; preds = %bb.acp, %bb.acu
  %i.dcl = phi i64 [ %i.deo, %bb.acu ], [ 0, %bb.acp ] ; 3 uses
  %i.dcm = phi ptr [ %i.dep, %bb.acu ], [ %i.dcj, %bb.acp ] ; 6 uses
  %i.dcn = ptrtoint ptr %i.dcm to i64
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dcm, i64 1 ; 3 uses
  %i.dcp = load i8, ptr %i.dcm, align 1, !alias.scope !7929, !noalias !7932, !noundef !27 ; 5 uses
  %i.dcq = icmp sgt i8 %i.dcp, -1
  br i1 %i.dcq, label %.thread.i.i.i.i.i.i389, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i364
  %i.dcr = and i8 %i.dcp, 31
  %i.dcs = zext nneg i8 %i.dcr to i32             ; 3 uses
  %i.dct = icmp ne ptr %i.dco, %i.czl
  call void @llvm.assume(i1 %i.dct)
  %i.dcu = getelementptr inbounds nuw i8, ptr %i.dcm, i64 2 ; 3 uses
  %i.dcv = load i8, ptr %i.dco, align 1, !alias.scope !7929, !noalias !7932, !noundef !27
  %i.dcw = shl nuw nsw i32 %i.dcs, 6
  %i.dcx = and i8 %i.dcv, 63
  %i.dcy = zext nneg i8 %i.dcx to i32             ; 2 uses
  %i.dcz = or disjoint i32 %i.dcw, %i.dcy
  %i.dda = icmp samesign ugt i8 %i.dcp, -33
  br i1 %i.dda, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i", label %bb.acq

.thread.i.i.i.i.i.i389:                           ; preds = %.lr.ph.i.i.i.i.i364
  %i.ddb = zext nneg i8 %i.dcp to i32
  %i.ddc = add i64 %i.dcl, 1
  br label %.split.i.i.i.i.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i"
  %i.ddd = icmp ne ptr %i.dcu, %i.czl
  call void @llvm.assume(i1 %i.ddd)
  %i.dde = getelementptr inbounds nuw i8, ptr %i.dcm, i64 3 ; 3 uses
  %i.ddf = load i8, ptr %i.dcu, align 1, !alias.scope !7929, !noalias !7932, !noundef !27
  %i.ddg = shl nuw nsw i32 %i.dcy, 6
  %i.ddh = and i8 %i.ddf, 63
  %i.ddi = zext nneg i8 %i.ddh to i32
  %i.ddj = or disjoint i32 %i.ddg, %i.ddi         ; 2 uses
  %i.ddk = shl nuw nsw i32 %i.dcs, 12
  %i.ddl = or disjoint i32 %i.ddj, %i.ddk
  %i.ddm = icmp samesign ugt i8 %i.dcp, -17
  br i1 %i.ddm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i", label %bb.acq

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i"
  %i.ddn = icmp ne ptr %i.dde, %i.czl
  call void @llvm.assume(i1 %i.ddn)
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.dcm, i64 4
  %i.ddp = load i8, ptr %i.dde, align 1, !alias.scope !7929, !noalias !7932, !noundef !27
  %i.ddq = shl nuw nsw i32 %i.dcs, 18
  %i.ddr = and i32 %i.ddq, 1835008
  %i.dds = shl nuw nsw i32 %i.ddj, 6
  %i.ddt = and i8 %i.ddp, 63
  %i.ddu = zext nneg i8 %i.ddt to i32
  %i.ddv = or disjoint i32 %i.dds, %i.ddu
  %i.ddw = or disjoint i32 %i.ddv, %i.ddr
  br label %bb.acq

bb.acq:                                           ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i"
  %i.ddx = phi ptr [ %i.dde, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i" ], [ %i.ddo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i" ], [ %i.dcu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i = phi i32 [ %i.ddl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i" ], [ %i.ddw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i" ], [ %i.dcz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i" ] ; 7 uses
  %i.ddy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ddy)
  %i.ddz = ptrtoint ptr %i.ddx to i64
  %i.dea = sub i64 %i.ddz, %i.dcn
  %i.deb = add i64 %i.dea, %i.dcl                 ; 3 uses
end_hunk_0
