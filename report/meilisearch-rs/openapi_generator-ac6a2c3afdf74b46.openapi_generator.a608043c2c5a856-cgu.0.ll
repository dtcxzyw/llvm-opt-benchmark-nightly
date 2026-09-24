Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/openapi_generator-ac6a2c3afdf74b46.openapi_generator.a608043c2c5a856-cgu.0?download=true
inline.NumInlined: 4415
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !8087)
  %i.cyt = load i64, ptr %i.bd, align 8, !range !21, !alias.scope !8087, !noalias !8086, !noundef !16 ; 5 uses
  %i.cyu = icmp eq i64 %i.cyt, -9223372036854775808
  %i.cyv = load ptr, ptr %.sroa.5212.0..sroa_idx.i, align 8, !alias.scope !8088 ; 22 uses
  br i1 %i.cyu, label %bb.abb, label %bb.abm

bb.abb:                                           ; preds = %_ZN3std2fs14read_to_string17h99799222c976c3b0E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !8089
  store ptr %i.cyv, ptr %i.ao, align 8, !noalias !8089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !8089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !8090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8090
  store ptr %.val.i.i.i337, ptr %i.al, align 8, !noalias !8090
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.val1.i.i.i338, ptr %i.cyw, align 8, !noalias !8090
  store ptr %i.al, ptr %i.am, align 8, !noalias !8090
  %.sroa.42.0..sroa_idx.i.i.i390 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.42.0..sroa_idx.i.i.i390, align 8, !noalias !8090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !8091
  store ptr @77, ptr %i.ak, align 8, !noalias !8092
  %.sroa.4.0..sroa_idx.i.i.i391 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i391, align 8, !noalias !8092
  %.sroa.5.0..sroa_idx.i.i.i392 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i392, align 8, !noalias !8092
  %.sroa.6.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i393, align 8, !noalias !8092
  %.sroa.7.0..sroa_idx.i.i.i394 = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i394, align 8, !noalias !8092
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ak)
          to label %bb.abc unwind label %bb.abi, !noalias !8089

bb.abc:                                           ; preds = %bb.abb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !8091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !8090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !8090
  call void @llvm.experimental.noalias.scope.decl(metadata !8093)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !8089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !8089
  store ptr %i.cyv, ptr %i.aj, align 8, !noalias !8094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !8094
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ah)
          to label %bb.abd unwind label %bb.abe, !noalias !8094

bb.abd:                                           ; preds = %bb.abc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false), !noalias !8094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !8094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !8095
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.cyv, ptr %i.cyx, align 8, !noalias !8096
  %i.cyy = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h45c5a1d7a44c14e2E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ai)
          to label %bb.abk unwind label %.loopexit.split-lp321.i

bb.abe:                                           ; preds = %bb.abc
  %i.cyz = landingpad { ptr, i32 }
          cleanup
  %.val.i.i130.i = load i64, ptr %i.an, align 8, !alias.scope !8093, !noalias !8089 ; 2 uses
  %i.cza = icmp eq i64 %.val.i.i130.i, 0
  br i1 %i.cza, label %bb.abh, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.czb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val3.i.i.i395 = load ptr, ptr %i.czb, align 8, !alias.scope !8093, !noalias !8089, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i395, i64 noundef %.val.i.i130.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !8094
  br label %bb.abh

bb.abg:                                           ; preds = %bb.abh
  %i.czc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !8094
  unreachable

bb.abh:                                           ; preds = %bb.abf, %bb.abe
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #33
          to label %.body132.i unwind label %bb.abg, !noalias !8094

bb.abi:                                           ; preds = %bb.abb
  %i.czd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h889362eb2c39c873E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao) #33
          to label %.body132.i unwind label %bb.abj, !noalias !8089

bb.abj:                                           ; preds = %bb.abi
  %i.cze = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !8089
  unreachable

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
  %i.day = icmp eq i32 %.sroa.011.1.i.i.i, 0
  br i1 %i.day, label %bb.aca, label %.backedge.i.i

bb.aca:                                           ; preds = %._crit_edge.i.i.i362
  %0 = icmp slt i8 %i.dbc, -64
  %i.daz = getelementptr inbounds nuw i8, ptr %i.dae, i64 %i.daw ; 3 uses
  %i.dba = load i8, ptr %i.daz, align 1, !alias.scope !8106, !noalias !8100, !noundef !16
  %1 = icmp slt i8 %i.dba, -64
  %brmerge.i.i = or i1 %0, %1
  br i1 %brmerge.i.i, label %.backedge.i.i, label %bb.ace

.lr.ph.i.i.i361:                                  ; preds = %bb.abz, %bb.acb
  %.sroa.011.034.i.i.i = phi i32 [ %.sroa.011.1.i.i.i, %bb.acb ], [ 1, %bb.abz ] ; 3 uses
  %.sroa.015.033.i.i.i = phi i64 [ %i.dbd, %bb.acb ], [ %i.daw, %bb.abz ] ; 3 uses
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.dae, i64 %.sroa.015.033.i.i.i
  %i.dbc = load i8, ptr %i.dbb, align 1, !alias.scope !8107, !noalias !8100, !noundef !16 ; 2 uses
  switch i8 %i.dbc, label %bb.acb [
    i8 40, label %bb.acc
    i8 41, label %bb.acd
  ]

bb.acb:                                           ; preds = %bb.acd, %bb.acc, %.lr.ph.i.i.i361
  %.sroa.011.1.i.i.i = phi i32 [ %.sroa.011.034.i.i.i, %.lr.ph.i.i.i361 ], [ %i.dbg, %bb.acc ], [ %i.dbh, %bb.acd ] ; 3 uses
  %i.dbd = add nuw i64 %.sroa.015.033.i.i.i, 1    ; 2 uses
  %i.dbe = icmp ult i64 %i.dbd, %i.dad
  %i.dbf = icmp ne i32 %.sroa.011.1.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.dbe, i1 %i.dbf, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i361, label %._crit_edge.i.i.i362

bb.acc:                                           ; preds = %.lr.ph.i.i.i361
  %i.dbg = add i32 %.sroa.011.034.i.i.i, 1
  br label %bb.acb

bb.acd:                                           ; preds = %.lr.ph.i.i.i361
  %i.dbh = add i32 %.sroa.011.034.i.i.i, -1
  br label %bb.acb

bb.ace:                                           ; preds = %bb.aca
  %2 = sub nuw i64 %.sroa.015.033.i.i.i, %i.daw   ; 3 uses
  %i.dbi = invoke fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @172, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.daz, i64 noundef %2)
          to label %.noexc147.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc147.i:                                      ; preds = %bb.ace
  br i1 %i.dbi, label %bb.acf, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.abx, %.noexc146.i, %.preheader.i.i.i.i.i.i, %bb.abw, %_ZN17openapi_generator33check_struct_fields_have_required17h20fb86d1d3eb91daE.exit.i.i, %bb.adl, %._crit_edge.i90.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i", %bb.adk, %bb.adj, %.split.i.i85.i.i, %.noexc152.i, %.noexc148.i, %.noexc147.i, %bb.aca, %._crit_edge.i.i.i362, %bb.abz, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i.i", %bb.abu, %.split.i.i.i.i359
  %.sroa.0.0.be.in.i.i = phi i64 [ %.sroa.051.0.i.i, %_ZN17openapi_generator33check_struct_fields_have_required17h20fb86d1d3eb91daE.exit.i.i ], [ %i.czw, %.noexc152.i ], [ %i.czw, %.noexc147.i ], [ %i.czw, %bb.abw ], [ %i.czw, %.noexc148.i ], [ %i.czw, %bb.adl ], [ %i.czw, %bb.aca ], [ %i.czw, %bb.adk ], [ %i.czw, %bb.adj ], [ %i.czw, %._crit_edge.i90.i.i ], [ %i.czw, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h0f473e4ec894617cE.exit.i.i.i" ], [ %i.czw, %.split.i.i85.i.i ], [ %i.czw, %bb.abu ], [ %i.czw, %bb.abz ], [ %i.czw, %._crit_edge.i.i.i362 ], [ %i.czw, %.split.i.i.i.i359 ], [ %i.czw, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h9ae1945b89879943E.exit.i.i.i" ], [ %i.czw, %.preheader.i.i.i.i.i.i ], [ %i.czw, %.noexc146.i ], [ %i.czw, %bb.abx ]
  %.sroa.0.0.be.i.i = add i64 %.sroa.0.0.be.in.i.i, 1
  br label %bb.abo

bb.acf:                                           ; preds = %.noexc147.i
  %i.dbj = invoke fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @173, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.daz, i64 noundef %2)
          to label %.noexc148.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc148.i:                                      ; preds = %bb.acf
  br i1 %i.dbj, label %bb.acg, label %.backedge.i.i

bb.acg:                                           ; preds = %.noexc148.i
  %i.dbk = add i64 %i.czw, 16
  %i.dbl = add i64 %i.dbk, %2                     ; 7 uses
  %i.dbm = icmp eq i64 %i.dbl, 0
  br i1 %i.dbm, label %bb.acj, label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  %.not.i62.i.i = icmp ult i64 %i.dbl, %.sroa.8213.0.copyload.i
  br i1 %.not.i62.i.i, label %bb.aci, label %.split.i63.i.i

.split.i63.i.i:                                   ; preds = %bb.ach
  %i.dbn = icmp eq i64 %i.dbl, %.sroa.8213.0.copyload.i
  br i1 %i.dbn, label %bb.acj, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i"

bb.aci:                                           ; preds = %bb.ach
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dbl
  %i.dbp = load i8, ptr %i.dbo, align 1, !alias.scope !8108, !noalias !8100, !noundef !16
  %i.dbq = icmp sgt i8 %i.dbp, -65
  br i1 %i.dbq, label %bb.acj, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i"

bb.acj:                                           ; preds = %bb.aci, %.split.i63.i.i, %bb.acg
  %i.dbr = sub nuw i64 %.sroa.8213.0.copyload.i, %i.dbl
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dbl
  br label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i"

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit66.i.i": ; preds = %bb.acj, %bb.aci, %.split.i63.i.i
  %.sroa.3.0.i64.i.i = phi i64 [ %i.dbr, %bb.acj ], [ undef, %bb.aci ], [ undef, %.split.i63.i.i ]
  %.sroa.0.0.i65.i.i = phi ptr [ %i.dbs, %bb.acj ], [ null, %bb.aci ], [ null, %.split.i63.i.i ] ; 2 uses
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
  %i.dbt = load i64, ptr %i.ad, align 8, !range !37, !noalias !8109, !noundef !16
  %i.dbu = trunc nuw i64 %i.dbt to i1
  %i.dbv = load i64, ptr %i.cvw, align 8, !noalias !8109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !8109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !8109
  br i1 %i.dbu, label %bb.acl, label %bb.ack

bb.ack:                                           ; preds = %.noexc150.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !8110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !8110
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.08.0.i.i, i64 noundef %.sroa.7.0.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef range(i64 7, 15) 7)
          to label %.noexc151.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc151.i:                                      ; preds = %bb.ack
  invoke fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef align 8 dereferenceable(104) %i.aa)
          to label %.noexc152.i unwind label %.loopexit.split-lp305.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc152.i:                                      ; preds = %.noexc151.i
  %i.dbw = load i64, ptr %i.ab, align 8, !range !37, !noalias !8110, !noundef !16
  %i.dbx = trunc nuw i64 %i.dbw to i1
  %i.dby = load i64, ptr %i.cvx, align 8, !noalias !8110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8110
  br i1 %i.dbx, label %bb.acl, label %.backedge.i.i

bb.acl:                                           ; preds = %.noexc152.i, %.noexc150.i
  %.sroa.052.0.i.i = phi i64 [ 11, %.noexc150.i ], [ 7, %.noexc152.i ]
  %.sroa.3.0.i67.pn.i.i = phi i64 [ %i.dbv, %.noexc150.i ], [ %i.dby, %.noexc152.i ]
  %.sroa.051.0.i.i = add i64 %.sroa.3.0.i67.pn.i.i, %i.dbl ; 11 uses
  %i.dbz = add i64 %.sroa.051.0.i.i, %.sroa.052.0.i.i ; 17 uses
  %i.dca = icmp eq i64 %i.dbz, 0                  ; 2 uses
  br i1 %i.dca, label %bb.aco, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %.not.i69.i.i = icmp ult i64 %i.dbz, %.sroa.8213.0.copyload.i
  br i1 %.not.i69.i.i, label %bb.acn, label %.split.i70.i.i

.split.i70.i.i:                                   ; preds = %bb.acm
  %i.dcb = icmp eq i64 %i.dbz, %.sroa.8213.0.copyload.i
  br i1 %i.dcb, label %bb.aco, label %.invoke2962

bb.acn:                                           ; preds = %bb.acm
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dbz
  %i.dcd = load i8, ptr %i.dcc, align 1, !alias.scope !8111, !noalias !8100, !noundef !16
  %i.dce = icmp sgt i8 %i.dcd, -65
  br i1 %i.dce, label %bb.aco, label %.invoke2962

bb.aco:                                           ; preds = %bb.acn, %.split.i70.i.i, %bb.acl
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.cyv, i64 %i.dbz ; 3 uses
  %i.dcg = icmp eq i64 %.sroa.8213.0.copyload.i, %i.dbz ; 2 uses
  br i1 %i.dcg, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17h1dca0bac7d942637E.exit.i.i", label %.lr.ph.i.i.i.i.i363

.lr.ph.i.i.i.i.i363:                              ; preds = %bb.aco, %bb.act
  %i.dch = phi i64 [ %i.dek, %bb.act ], [ 0, %bb.aco ] ; 3 uses
  %i.dci = phi ptr [ %i.del, %bb.act ], [ %i.dcf, %bb.aco ] ; 6 uses
  %i.dcj = ptrtoint ptr %i.dci to i64
  %i.dck = getelementptr inbounds nuw i8, ptr %i.dci, i64 1 ; 3 uses
  %i.dcl = load i8, ptr %i.dci, align 1, !alias.scope !8112, !noalias !8113, !noundef !16 ; 5 uses
  %i.dcm = icmp sgt i8 %i.dcl, -1
  br i1 %i.dcm, label %.thread.i.i.i.i.i.i388, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i363
  %i.dcn = and i8 %i.dcl, 31
  %i.dco = zext nneg i8 %i.dcn to i32             ; 3 uses
  %i.dcp = icmp ne ptr %i.dck, %i.czl
  call void @llvm.assume(i1 %i.dcp)
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dci, i64 2 ; 3 uses
  %i.dcr = load i8, ptr %i.dck, align 1, !alias.scope !8112, !noalias !8113, !noundef !16
  %i.dcs = shl nuw nsw i32 %i.dco, 6
  %i.dct = and i8 %i.dcr, 63
  %i.dcu = zext nneg i8 %i.dct to i32             ; 2 uses
  %i.dcv = or disjoint i32 %i.dcs, %i.dcu
  %i.dcw = icmp samesign ugt i8 %i.dcl, -33
  br i1 %i.dcw, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i", label %bb.acp

.thread.i.i.i.i.i.i388:                           ; preds = %.lr.ph.i.i.i.i.i363
  %i.dcx = zext nneg i8 %i.dcl to i32
  %i.dcy = add i64 %i.dch, 1
  br label %.split.i.i.i.i.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i"
  %i.dcz = icmp ne ptr %i.dcq, %i.czl
  call void @llvm.assume(i1 %i.dcz)
  %i.dda = getelementptr inbounds nuw i8, ptr %i.dci, i64 3 ; 3 uses
  %i.ddb = load i8, ptr %i.dcq, align 1, !alias.scope !8112, !noalias !8113, !noundef !16
  %i.ddc = shl nuw nsw i32 %i.dcu, 6
  %i.ddd = and i8 %i.ddb, 63
  %i.dde = zext nneg i8 %i.ddd to i32
  %i.ddf = or disjoint i32 %i.ddc, %i.dde         ; 2 uses
  %i.ddg = shl nuw nsw i32 %i.dco, 12
  %i.ddh = or disjoint i32 %i.ddf, %i.ddg
  %i.ddi = icmp samesign ugt i8 %i.dcl, -17
  br i1 %i.ddi, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i", label %bb.acp

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i"
  %i.ddj = icmp ne ptr %i.dda, %i.czl
  call void @llvm.assume(i1 %i.ddj)
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.dci, i64 4
  %i.ddl = load i8, ptr %i.dda, align 1, !alias.scope !8112, !noalias !8113, !noundef !16
  %i.ddm = shl nuw nsw i32 %i.dco, 18
  %i.ddn = and i32 %i.ddm, 1835008
  %i.ddo = shl nuw nsw i32 %i.ddf, 6
  %i.ddp = and i8 %i.ddl, 63
  %i.ddq = zext nneg i8 %i.ddp to i32
  %i.ddr = or disjoint i32 %i.ddo, %i.ddq
  %i.dds = or disjoint i32 %i.ddr, %i.ddn
  br label %bb.acp

bb.acp:                                           ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i"
  %i.ddt = phi ptr [ %i.dda, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i" ], [ %i.ddk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i" ], [ %i.dcq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i = phi i32 [ %i.ddh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit14.i.i.i.i.i.i.i.i" ], [ %i.dds, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit16.i.i.i.i.i.i.i.i" ], [ %i.dcv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he65392c538471d83E.exit12.i.i.i.i.i.i.i.i" ] ; 7 uses
  %i.ddu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ddu)
  %i.ddv = ptrtoint ptr %i.ddt to i64
  %i.ddw = sub i64 %i.ddv, %i.dcj
  %i.ddx = add i64 %i.ddw, %i.dch                 ; 3 uses
  %i.ddy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 128
  br i1 %i.ddy, label %.split.i.i.i.i.i.i.i.i, label %bb.acq

bb.acq:                                           ; preds = %bb.acp
  %i.ddz = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 169
  br i1 %i.ddz, label %bb.acr, label %bb.acu

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.acp, %.thread.i.i.i.i.i.i388
  %i.dea = phi ptr [ %i.dck, %.thread.i.i.i.i.i.i388 ], [ %i.ddt, %bb.acp ]
  %i.deb = phi i64 [ %i.dcy, %.thread.i.i.i.i.i.i388 ], [ %i.ddx, %bb.acp ]
  %.sroa.4.0.i.ph.i14.i.i.i.i.i.i = phi i32 [ %i.dcx, %.thread.i.i.i.i.i.i388 ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i.i, %bb.acp ] ; 6 uses
  %i.dec = add nsw i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, -48
  %.sroa.010.0.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.dec, 10
  %i.ded = icmp samesign ugt i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, 64
  %i.dee = icmp samesign ult i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, 91
  %.sroa.011.0.i.i.i.i.i.i.i.i.i = select i1 %i.ded, i1 %i.dee, i1 %.sroa.010.0.i.i.i.i.i.i.i.i.i
  %i.def = icmp samesign ugt i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, 96
  %i.deg = icmp samesign ult i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, 123
  %.sroa.012.0.i.i.i.i.i.i.i.i.i = select i1 %i.def, i1 %i.deg, i1 %.sroa.011.0.i.i.i.i.i.i.i.i.i
  %.not8.i.i.i.i.i.i387 = icmp eq i32 %.sroa.4.0.i.ph.i14.i.i.i.i.i.i, 95
  %cond.fr6.i.i.i.i.i.i.i.i = freeze i1 %.sroa.012.0.i.i.i.i.i.i.i.i.i
  %brmerge.i.i.i.i.i.i = or i1 %.not8.i.i.i.i.i.i387, %cond.fr6.i.i.i.i.i.i.i.i
  br i1 %brmerge.i.i.i.i.i.i, label %bb.act, label %bb.acu

bb.acr:                                           ; preds = %bb.acq
  %i.deh = invoke noundef zeroext i1 @_ZN4core7unicode12unicode_data10alphabetic11lookup_slow17h0a43975d86ab62d2E(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i.i.i.i.i.i.i)
          to label %.noexc153.i unwind label %.loopexit.split-lp305.loopexit.i

.noexc153.i:                                      ; preds = %bb.acr
  br i1 %i.deh, label %bb.act, label %bb.acs

bb.acs:                                           ; preds = %.noexc153.i
  %i.dei = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i, 177
  br i1 %i.dei, label %"_ZN4core4char7methods22_$LT$impl$u20$char$GT$15is_alphanumeric17haf667bb31da7888aE.exit.i.i.i.i.i.i.i.i", label %bb.acu

"_ZN4core4char7methods22_$LT$impl$u20$char$GT$15is_alphanumeric17haf667bb31da7888aE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.acs
  %i.dej = invoke noundef zeroext i1 @_ZN4core7unicode12unicode_data1n11lookup_slow17hdfb8029e3c529b03E(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i.i.i.i.i.i.i)
          to label %.noexc154.i unwind label %.loopexit.split-lp305.loopexit.i

.noexc154.i:                                      ; preds = %"_ZN4core4char7methods22_$LT$impl$u20$char$GT$15is_alphanumeric17haf667bb31da7888aE.exit.i.i.i.i.i.i.i.i"
  br i1 %i.dej, label %bb.act, label %bb.acu

bb.act:                                           ; preds = %.noexc154.i, %.noexc153.i, %.split.i.i.i.i.i.i.i.i
  %i.dek = phi i64 [ %i.deb, %.split.i.i.i.i.i.i.i.i ], [ %i.ddx, %.noexc154.i ], [ %i.ddx, %.noexc153.i ]
  %i.del = phi ptr [ %i.dea, %.split.i.i.i.i.i.i.i.i ], [ %i.ddt, %.noexc154.i ], [ %i.ddt, %.noexc153.i ] ; 2 uses
  %i.dem = icmp eq ptr %i.del, %i.czl
end_hunk_0
