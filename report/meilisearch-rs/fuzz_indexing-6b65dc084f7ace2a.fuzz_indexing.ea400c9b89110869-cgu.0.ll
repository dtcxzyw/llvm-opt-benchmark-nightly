Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15603
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN7geojson10conversion12to_geo_types124_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geojson..GeoJson$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17hc0c2e1f7b0cc7df2E":bb.a
bb.af:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h81f4fc415d3f7aebE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$geo_types..geometry..Geometry$GT$17h7f581d85ecd4a206E"(ptr noalias noundef align 8 dereferenceable(56) %i.g) #65
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.ag, !noalias !46234

bb.ag:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #66, !noalias !46234
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc7.i.i.i.i.i.i.i.i.i.i, %bb.ad, %.noexc34.i.i.i.i.i.i.i.i.i.i, %bb.aa
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.db, %bb.af ], [ %lpad.loopexit.split-lp128, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$geo_types..geometry..Geometry$GT$$GT$17hf84885c907772a8fE"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #65
          to label %.body.i unwind label %bb.ah, !noalias !46205

bb.ah:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i, %bb.w
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #66, !noalias !46205
  unreachable

.loopexit.i.i.i.i.i.i.i.thread.i.i:               ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha809e430855f568fE.exit.thread.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbc84b25b74a90596E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha809e430855f568fE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.y
  %.sroa.9.0.copyload60.i.i.i.ph.i.i = phi i64 [ %i.cu, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha809e430855f568fE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 1, %bb.y ], [ %i.cu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbc84b25b74a90596E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 1, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha809e430855f568fE.exit.thread.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.7.0.copyload58.i.i.i.ph.i.i = phi ptr [ %i.cs, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha809e430855f568fE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cc, %bb.y ], [ %i.cs, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbc84b25b74a90596E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cc, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha809e430855f568fE.exit.thread.i.i.i.i.i32.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46222
  %.sroa.0.0.copyload56.i.i.i110.i.i = load i64, ptr %i.i, align 8, !noalias !46242
  br label %.thread.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i.i.i.i.i.i.i.i.i.i.i", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i22.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.copyload56.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload56.i.i.i.pre.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i.i.i.i.i.i.i.i.i.i.i" ], [ 4, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i22.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.14.0.i.i = phi i64 [ %.sroa.14.16.copyload181.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14.16.copyload179.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i22.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.10.0.i.i = phi ptr [ %.sroa.10.16.copyload177.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.16.copyload176.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i22.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i106.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i22.i.i.i.i.i.i.i.i.i.i" ]
  %i.de = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i22.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.9.0.copyload60.i.i.i.i.i = phi i64 [ %i.cu, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i.i.i.i.i.i.i.i.i.i.i" ], [ 1, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i22.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.7.0.copyload58.i.i.i.i.i = phi ptr [ %i.cs, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cc, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9ec91dcc5989ff45E.exit.thread6.i22.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46222
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.thread80.i.i.i.i.i
  %.sroa.14.1.i.i = phi i64 [ %.sroa.14.0.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.16.copyload.i.i, %.loopexit.i.i.i.i.thread80.i.i.i.i.i ]
  %.sroa.10.1.i.i = phi ptr [ %.sroa.10.0.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.16.copyload.i.i, %.loopexit.i.i.i.i.thread80.i.i.i.i.i ]
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i105.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i106.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.thread80.i.i.i.i.i ]
  %i.df = phi i64 [ %i.de, %.loopexit.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.thread80.i.i.i.i.i ]
  %.sroa.0.087.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload56.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit.i.i.i.i.thread80.i.i.i.i.i ] ; 4 uses
  %.sroa.7.086.i.i.i.i.i = phi ptr [ %.sroa.7.0.copyload58.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.loopexit.i.i.i.i.thread80.i.i.i.i.i ] ; 4 uses
  %.sroa.9.085.i.i.i.i.i = phi i64 [ %.sroa.9.0.copyload60.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit.i.i.i.i.thread80.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46204
  %i.dg = icmp eq i64 %.sroa.9.085.i.i.i.i.i, 0
  br i1 %i.dg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00d8904892efeca0E.exit.i.i.i.i.i.i", label %.lr.ph

bb.aj:                                            ; preds = %.lr.ph
  %i.dh = icmp eq i64 %i.dj, %.sroa.9.085.i.i.i.i.i
  br i1 %i.dh, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00d8904892efeca0E.exit.i.i.i.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai, %bb.aj
  %.sroa.0.0.i.i.i.i.i.i.i124 = phi i64 [ %i.dj, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.di = getelementptr inbounds nuw [56 x i8], ptr %.sroa.7.086.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i124
  %i.dj = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i124, 1 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$geo_types..geometry..Geometry$GT$17h7f581d85ecd4a206E"(ptr noalias noundef readonly align 8 dereferenceable(56) %i.di)
          to label %bb.aj unwind label %bb.al, !noalias !46245, !inline_history !46168

bb.ak:                                            ; preds = %.lr.ph126
  %i.dk = add nuw i64 %.sroa.0.1.i.i.i.i.i.i.i125, 1 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, %.sroa.9.085.i.i.i.i.i
  br i1 %i.dl, label %.body.i.i.i.i.i.i, label %.lr.ph126

bb.al:                                            ; preds = %.lr.ph
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = icmp eq i64 %i.dj, %.sroa.9.085.i.i.i.i.i
  br i1 %i.dn, label %.body.i.i.i.i.i.i, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.al, %bb.ak
  %.sroa.0.1.i.i.i.i.i.i.i125 = phi i64 [ %i.dk, %bb.ak ], [ %i.dj, %bb.al ] ; 2 uses
  %i.do = getelementptr inbounds nuw [56 x i8], ptr %.sroa.7.086.i.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i.i125
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$geo_types..geometry..Geometry$GT$17h7f581d85ecd4a206E"(ptr noalias noundef readonly align 8 dereferenceable(56) %i.do) #65
          to label %bb.ak unwind label %bb.am, !noalias !46245, !inline_history !46168

bb.am:                                            ; preds = %.lr.ph126
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #66, !noalias !46246, !inline_history !46168
  unreachable

.body.i.i.i.i.i.i:                                ; preds = %bb.ak, %bb.al
  %i.dq = icmp eq i64 %.sroa.0.087.i.i.i.i.i, 0
  br i1 %i.dq, label %.body.i, label %bb.an

bb.an:                                            ; preds = %.body.i.i.i.i.i.i
  %i.dr = mul nuw i64 %.sroa.0.087.i.i.i.i.i, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.086.i.i.i.i.i, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !46245, !inline_history !46247
  br label %.body.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00d8904892efeca0E.exit.i.i.i.i.i.i": ; preds = %bb.aj, %bb.ai
  %i.ds = icmp eq i64 %.sroa.0.087.i.i.i.i.i, 0
  br i1 %i.ds, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00d8904892efeca0E.exit.i.i.i.i.i.i"
  %i.dt = mul nuw i64 %.sroa.0.087.i.i.i.i.i, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.086.i.i.i.i.i, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !46245, !inline_history !46247
  br label %bb.aq

.thread.i:                                        ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha809e430855f568fE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i.i.i.thread.i.i, %bb.s
  %.sroa.0.079.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload56.i.i.i110.i.i, %.loopexit.i.i.i.i.i.i.i.thread.i.i ], [ 0, %bb.s ], [ 0, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha809e430855f568fE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.7.078.i.i.i.i.i = phi ptr [ %.sroa.7.0.copyload58.i.i.i.ph.i.i, %.loopexit.i.i.i.i.i.i.i.thread.i.i ], [ inttoptr (i64 8 to ptr), %bb.s ], [ inttoptr (i64 8 to ptr), %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha809e430855f568fE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.9.077.i.i.i.i.i = phi i64 [ %.sroa.9.0.copyload60.i.i.i.ph.i.i, %.loopexit.i.i.i.i.i.i.i.thread.i.i ], [ 0, %bb.s ], [ 0, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17ha809e430855f568fE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.du, align 8, !alias.scope !46202
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.079.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !46202
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.7.078.i.i.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !46202
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.077.i.i.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !46202
  store i64 29, ptr %0, align 8, !alias.scope !46202
  br label %"_ZN7geojson10conversion12to_geo_types145_$LT$impl$u20$core..convert..TryFrom$LT$geojson..feature_collection..FeatureCollection$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h8a3ca35ae5ee03d9E.exit"

bb.ap:                                            ; preds = %.noexc.i1, %.noexc.i.i.i.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ap, %bb.an, %.body.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i, %bb.w
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dv, %bb.ap ], [ %i.dm, %.body.i.i.i.i.i.i ], [ %i.ce, %bb.w ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ], [ %i.dm, %bb.an ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$geojson..geojson..GeoJson$GT$17h60f87e3464a7f828E"(ptr noalias noundef align 8 dereferenceable(320) %i.j) #65
          to label %common.resume unwind label %bb.ar, !noalias !46201

bb.aq:                                            ; preds = %bb.ao, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00d8904892efeca0E.exit.i.i.i.i.i.i"
  %.sroa.314.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.314.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.15.i.i, i64 288, i1 false), !noalias !46248
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i)
  store i64 %i.df, ptr %0, align 8, !alias.scope !46202
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i105.i.i, ptr %.sroa.213.0..sroa_idx.i, align 8, !alias.scope !46202
  %.sroa.213.sroa.2.0..sroa.213.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.1.i.i, ptr %.sroa.213.sroa.2.0..sroa.213.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !46202
  %.sroa.213.sroa.3.0..sroa.213.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.14.1.i.i, ptr %.sroa.213.sroa.3.0..sroa.213.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !46202
  br label %"_ZN7geojson10conversion12to_geo_types145_$LT$impl$u20$core..convert..TryFrom$LT$geojson..feature_collection..FeatureCollection$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h8a3ca35ae5ee03d9E.exit"

bb.ar:                                            ; preds = %.body.i
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #66, !noalias !46201
  unreachable

"_ZN7geojson10conversion12to_geo_types145_$LT$impl$u20$core..convert..TryFrom$LT$geojson..feature_collection..FeatureCollection$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h8a3ca35ae5ee03d9E.exit": ; preds = %.thread.i, %bb.aq
  call fastcc void @"_ZN4core3ptr46drop_in_place$LT$geojson..geojson..GeoJson$GT$17h60f87e3464a7f828E"(ptr noalias noundef align 8 dereferenceable(320) %i.j), !noalias !46201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !46201
  br label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h4c3aefede41f3201E.exit"

"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h4c3aefede41f3201E.exit": ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i.i", %.noexc.i, %bb.f, %"_ZN7geojson10conversion12to_geo_types145_$LT$impl$u20$core..convert..TryFrom$LT$geojson..feature_collection..FeatureCollection$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h8a3ca35ae5ee03d9E.exit", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7geojson10conversion12to_geo_types126_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Geometry$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h392328ebbc62e1feE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(320) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !46444 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 2 uses
  %i.b = alloca [320 x i8], align 8               ; 7 uses
  %i.c = alloca [128 x i8], align 8               ; 2 uses
  %i.d = alloca [320 x i8], align 8               ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.12 = alloca [288 x i8], align 8          ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.9 = alloca [288 x i8], align 8           ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46446)
  %i.l = load i64, ptr %1, align 8, !range !90, !alias.scope !46446, !noundef !18
  switch i64 %i.l, label %default.unreachable599 [
    i64 0, label %bb.b
    i64 1, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
    i64 2, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i36.i
    i64 3, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i52.i
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.q
  ]

default.unreachable599:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val33.i = load i64, ptr %i.m, align 8, !alias.scope !46446, !noundef !18 ; 3 uses
  switch i64 %.val33.i, label %_ZN7geojson10conversion12to_geo_types16create_geo_point17h99610685359cca4bE.exit.i [
    i64 0, label %.invoke478
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %.invoke478

.invoke478:                                       ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ @1832, %bb.c ], [ @1831, %bb.b ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val33.i, i64 noundef %.val33.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) #64
          to label %.cont479 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !46252

.cont479:                                         ; preds = %.invoke478
  unreachable

_ZN7geojson10conversion12to_geo_types16create_geo_point17h99610685359cca4bE.exit.i: ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !46446, !nonnull !18, !noundef !18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !alias.scope !46445
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load <2 x double>, ptr %.val.i, align 8, !noalias !46447
  store <2 x double> %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !46445
  store i64 29, ptr %0, align 8, !alias.scope !46445
  br label %bb.al

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !46446, !nonnull !18, !noundef !18
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !46446, !noundef !18 ; 5 uses
  %i.u = shl nuw i64 %i.t, 4                      ; 3 uses
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %_ZN4core4iter6traits8iterator8Iterator7collect17hb24297e0752fb995E.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !46448, !inline_history !46252
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #63, !noalias !46448, !inline_history !46252 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.invoke, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.d, %bb.e
  %.val20.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.val20.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %.val22.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !noalias !46449, !noundef !18 ; 3 uses
  switch i64 %.val22.i.i.i.i.i.i.i.i.i.i, label %bb.e [
    i64 0, label %.invoke.i.i.i.i.i
    i64 1, label %3
  ]

.invoke.i.i.i.i.i:                                ; preds = %.preheader.i.i.i.i.i.i.i, %3
  %i.aa = phi ptr [ @1832, %3 ], [ @1831, %.preheader.i.i.i.i.i.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val22.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val22.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa) #64
          to label %.cont.i.i.i.i.i unwind label %.body.i.i.i.i.i, !noalias !46449, !inline_history !46252

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

3:                                                ; preds = %.preheader.i.i.i.i.i.i.i
  br label %.invoke.i.i.i.i.i

bb.e:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  %4 = getelementptr i8, ptr %i.y, i64 8
  %.val21.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %4, align 8, !noalias !46449, !nonnull !18, !noundef !18
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.val20.i.i.i.i.i.i.i.i.i.i
  %i.ac = load <2 x double>, ptr %.val21.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46450
  store <2 x double> %i.ac, ptr %i.ab, align 8, !noalias !46451
  %i.ad = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.t
  br i1 %i.ae, label %_ZN4core4iter6traits8iterator8Iterator7collect17hb24297e0752fb995E.exit.i, label %.preheader.i.i.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !46452, !inline_history !46252
  br label %.body8

_ZN4core4iter6traits8iterator8Iterator7collect17hb24297e0752fb995E.exit.i: ; preds = %bb.e, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i14.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.w, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.ag, align 8, !alias.scope !46445
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !46446
  %.sroa.42.i.sroa.4.0..sroa.42.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i14.i.i.i.i.i, ptr %.sroa.42.i.sroa.4.0..sroa.42.0..sroa_idx.i.sroa_idx, align 8, !noalias !46446
  %.sroa.42.i.sroa.5.0..sroa.42.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.t, ptr %.sroa.42.i.sroa.5.0..sroa.42.0..sroa_idx.i.sroa_idx, align 8, !noalias !46446
  store i64 29, ptr %0, align 8, !alias.scope !46445
  br label %bb.al

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i36.i: ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !46446, !nonnull !18, !noundef !18
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !46446, !noundef !18 ; 5 uses
  %i.al = shl nuw i64 %i.ak, 4                    ; 3 uses
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i36.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !46453, !inline_history !46252
  %i.an = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 9) 8) #63, !noalias !46453, !inline_history !46252 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.invoke, label %.preheader.i.i.i.i.i.i37.i

.preheader.i.i.i.i.i.i37.i:                       ; preds = %bb.f, %bb.g
  %.val20.i.i.i.i.i.i.i.i.i38.i = phi i64 [ %i.au, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.val20.i.i.i.i.i.i.i.i.i38.i ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %.val22.i.i.i.i.i.i.i.i.i40.i = load i64, ptr %i.aq, align 8, !noalias !46454, !noundef !18 ; 3 uses
  switch i64 %.val22.i.i.i.i.i.i.i.i.i40.i, label %bb.g [
    i64 0, label %.invoke.i.i.i.i47.i
    i64 1, label %5
  ]

.invoke.i.i.i.i47.i:                              ; preds = %.preheader.i.i.i.i.i.i37.i, %5
  %i.ar = phi ptr [ @1834, %5 ], [ @1833, %.preheader.i.i.i.i.i.i37.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val22.i.i.i.i.i.i.i.i.i40.i, i64 noundef %.val22.i.i.i.i.i.i.i.i.i40.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar) #64
          to label %.cont.i.i.i.i49.i unwind label %.body.i.i.i.i48.i, !noalias !46454, !inline_history !46252

.cont.i.i.i.i49.i:                                ; preds = %.invoke.i.i.i.i47.i
  unreachable

5:                                                ; preds = %.preheader.i.i.i.i.i.i37.i
  br label %.invoke.i.i.i.i47.i

bb.g:                                             ; preds = %.preheader.i.i.i.i.i.i37.i
  %6 = getelementptr i8, ptr %i.ap, i64 8
  %.val21.i.i.i.i.i.i.i.i.i43.i = load ptr, ptr %6, align 8, !noalias !46454, !nonnull !18, !noundef !18
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %.val20.i.i.i.i.i.i.i.i.i38.i
  %i.at = load <2 x double>, ptr %.val21.i.i.i.i.i.i.i.i.i43.i, align 8, !noalias !46455
  store <2 x double> %i.at, ptr %i.as, align 8, !noalias !46456
  %i.au = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i38.i, 1 ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.ak
  br i1 %i.av, label %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit.i, label %.preheader.i.i.i.i.i.i37.i

.body.i.i.i.i48.i:                                ; preds = %.invoke.i.i.i.i47.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !46457, !inline_history !46252
  br label %.body8

_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit.i: ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i36.i
  %.sroa.10.0.i14.i.i.i.i44.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i36.i ], [ %i.an, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ax, align 8, !alias.scope !46445
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !46446
  %.sroa.45.i.sroa.4.0..sroa.45.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i14.i.i.i.i44.i, ptr %.sroa.45.i.sroa.4.0..sroa.45.0..sroa_idx.i.sroa_idx, align 8, !noalias !46446
  %.sroa.45.i.sroa.5.0..sroa.45.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ak, ptr %.sroa.45.i.sroa.5.0..sroa.45.0..sroa_idx.i.sroa_idx, align 8, !noalias !46446
  store i64 29, ptr %0, align 8, !alias.scope !46445
  br label %bb.al

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i52.i: ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !46446, !nonnull !18, !noundef !18
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !46446, !noundef !18 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !46458
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h013a411a8a03a748E.exit.i.i.thread.i.i.i.i.i", label %bb.h

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h013a411a8a03a748E.exit.i.i.thread.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i52.i
  store i64 0, ptr %i.j, align 8, !noalias !46458
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bd, align 8, !noalias !46458
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h56fd3c395d43a931E.exit.i

bb.h:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i52.i
  %.idx = mul nuw nsw i64 %i.bb, 24               ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !46459, !inline_history !46252
  %i.bf = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 9) 8) #63, !noalias !46459, !inline_history !46252 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.invoke, label %.preheader.i.i.preheader.i.i.i.i.i

.preheader.i.i.preheader.i.i.i.i.i:               ; preds = %bb.h
  store i64 %i.bb, ptr %i.j, align 8, !noalias !46458
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !noalias !46458
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46461)
  br label %.preheader.i.i.i.i.i.i53.i

bb.i:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i57.i

.preheader.i.i.i.i.i.i53.i:                       ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.preheader.i.i.i.i.i
  %.val20.i.i.i.i.i.i.i.i.i54.i = phi i64 [ %i.ca, %.loopexit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.preheader.i.i.i.i.i ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.val20.i.i.i.i.i.i.i.i.i54.i ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %.val21.i.i.i.i.i.i.i.i.i55.i = load ptr, ptr %i.bl, align 8, !noalias !46462, !nonnull !18, !noundef !18
  %i.bm = getelementptr i8, ptr %i.bk, i64 16
  %.val22.i.i.i.i.i.i.i.i.i56.i = load i64, ptr %i.bm, align 8, !noalias !46462, !noundef !18 ; 5 uses
  %i.bn = shl nuw i64 %.val22.i.i.i.i.i.i.i.i.i56.i, 4 ; 3 uses
  %i.bo = icmp eq i64 %.val22.i.i.i.i.i.i.i.i.i56.i, 0
  br i1 %i.bo, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i.i.i.i53.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !46463, !inline_history !46252
  %i.bp = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bn, i64 noundef range(i64 1, 9) 8) #63, !noalias !46463, !inline_history !46252 ; 4 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.k, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #64
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.i, !noalias !46462, !inline_history !46252

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.k
  unreachable

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.j, %bb.l
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %bb.l ], [ 0, %bb.j ] ; 3 uses
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %.val21.i.i.i.i.i.i.i.i.i55.i, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bs, align 8, !noalias !46464, !noundef !18 ; 3 uses
  switch i64 %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l [
    i64 0, label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %7
  ]

.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %7
  %i.bt = phi ptr [ @1834, %7 ], [ @1833, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt) #64
          to label %.cont.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !46464, !inline_history !46252

.cont.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

7:                                                ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %8 = getelementptr i8, ptr %i.br, i64 8
  %.val21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %8, align 8, !noalias !46464, !nonnull !18, !noundef !18
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = load <2 x double>, ptr %.val21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46465
  store <2 x double> %i.bv, ptr %i.bu, align 8, !noalias !46466
  %i.bw = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %.val22.i.i.i.i.i.i.i.i.i56.i
  br i1 %i.bx, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !46467, !inline_history !46252
  br label %.body.i.i.i.i57.i

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.l, %.preheader.i.i.i.i.i.i53.i
  %.sroa.10.0.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %.preheader.i.i.i.i.i.i53.i ], [ %i.bp, %bb.l ]
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.val20.i.i.i.i.i.i.i.i.i54.i ; 3 uses
  store i64 %.val22.i.i.i.i.i.i.i.i.i56.i, ptr %i.bz, align 8, !noalias !46468
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %.sroa.10.0.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46468
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %.val22.i.i.i.i.i.i.i.i.i56.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46468
  %i.ca = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i54.i, 1 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.bb
  br i1 %i.cb, label %_ZN4core4iter6traits8iterator8Iterator7collect17h56fd3c395d43a931E.exit.i, label %.preheader.i.i.i.i.i.i53.i

.body.i.i.i.i57.i:                                ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %i.by, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.val20.i.i.i.i.i.i.i.i.i54.i, ptr %i.bi, align 8, !alias.scope !46469, !noalias !46470
  call fastcc void @"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$geo_types..geometry..line_string..LineString$GT$$GT$17hf3f4d61cc47760c2E"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #65, !noalias !46458, !inline_history !46252
  br label %.body8

_ZN4core4iter6traits8iterator8Iterator7collect17h56fd3c395d43a931E.exit.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h013a411a8a03a748E.exit.i.i.thread.i.i.i.i.i"
  %i.cc = phi ptr [ %i.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h013a411a8a03a748E.exit.i.i.thread.i.i.i.i.i" ], [ %i.bi, %.loopexit.i.i.i.i.i.i.i.i.i.i ]
  store i64 %i.bb, ptr %i.cc, align 8, !alias.scope !46469, !noalias !46470
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !46446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !46458
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.cd, align 8, !alias.scope !46445
  store i64 29, ptr %0, align 8, !alias.scope !46445
  br label %bb.al

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !46447
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val34.i = load ptr, ptr %i.ce, align 8, !alias.scope !46446
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val35.i = load i64, ptr %i.cf, align 8, !alias.scope !46446, !noundef !18
  invoke fastcc void @_ZN7geojson10conversion12to_geo_types18create_geo_polygon17h25176b3381e563e6E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.k, ptr %.val34.i, i64 %.val35.i)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !46252

.noexc12:                                         ; preds = %bb.m
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.411.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !46446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !46447
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.cg, align 8, !alias.scope !46445
  store i64 29, ptr %0, align 8, !alias.scope !46445
  br label %bb.al

bb.n:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !46446, !nonnull !18, !noundef !18
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !46446, !noundef !18 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !46471
  %i.cl = mul i64 %i.ck, 48                       ; 4 uses
  %or.cond.i.i.i.i.i.i.i.i5 = icmp ugt i64 %i.ck, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i.i.i5, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i59.i, !prof !36

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i59.i: ; preds = %bb.n
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h121b45ad5e785a9cE.exit.i.i.i.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i59.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !46472, !inline_history !46252
  %i.cn = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cl, i64 noundef range(i64 1, 9) 8) #63, !noalias !46472, !inline_history !46252 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.invoke, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h121b45ad5e785a9cE.exit.i.i.i.i.i.i.i"

.invoke:                                          ; preds = %bb.n, %bb.o, %bb.h, %bb.f, %bb.d
  %i.cp = phi i64 [ 8, %bb.h ], [ 8, %bb.f ], [ 8, %bb.d ], [ 8, %bb.o ], [ 0, %bb.n ]
  %i.cq = phi i64 [ %.idx, %bb.h ], [ %i.al, %bb.f ], [ %i.u, %bb.d ], [ %i.cl, %bb.o ], [ %i.cl, %bb.n ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.cp, i64 %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #64
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !46252

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h121b45ad5e785a9cE.exit.i.i.i.i.i.i.i": ; preds = %bb.o, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i59.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i59.i ], [ %i.cn, %bb.o ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i59.i ], [ %i.ck, %bb.o ] ; 2 uses
  %i.cr = icmp samesign ule i64 %i.ck, %.sroa.4.0.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.cr)
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.i, align 8, !noalias !46471
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %i.cs, align 8, !noalias !46471
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46474)
  %i.cu = icmp eq i64 %i.ck, 0
  br i1 %i.cu, label %_ZN4core4iter6traits8iterator8Iterator7collect17h8024ee6d0c24a899E.exit.i, label %.preheader.i.i.i.i.i.i60.i

.preheader.i.i.i.i.i.i60.i:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h121b45ad5e785a9cE.exit.i.i.i.i.i.i.i", %bb.p
  %.val20.i.i.i.i.i.i.i.i.i61.i = phi i64 [ %i.cz, %bb.p ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h121b45ad5e785a9cE.exit.i.i.i.i.i.i.i" ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %.val20.i.i.i.i.i.i.i.i.i61.i ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %.val21.i.i.i.i.i.i.i.i.i62.i = load ptr, ptr %i.cw, align 8, !noalias !46475
  %i.cx = getelementptr i8, ptr %i.cv, i64 16
  %.val22.i.i.i.i.i.i.i.i.i63.i = load i64, ptr %i.cx, align 8, !noalias !46475, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !46476
  invoke fastcc void @_ZN7geojson10conversion12to_geo_types18create_geo_polygon17h25176b3381e563e6E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h, ptr readonly %.val21.i.i.i.i.i.i.i.i.i62.i, i64 %.val22.i.i.i.i.i.i.i.i.i63.i)
          to label %bb.p unwind label %.body.i.i.i.i64.i, !noalias !46475, !inline_history !46252

bb.p:                                             ; preds = %.preheader.i.i.i.i.i.i60.i
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %.val20.i.i.i.i.i.i.i.i.i61.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !46477
  %i.cz = add nuw nsw i64 %.val20.i.i.i.i.i.i.i.i.i61.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46476
  %i.da = icmp eq i64 %i.cz, %i.ck
  br i1 %i.da, label %_ZN4core4iter6traits8iterator8Iterator7collect17h8024ee6d0c24a899E.exit.i, label %.preheader.i.i.i.i.i.i60.i

.body.i.i.i.i64.i:                                ; preds = %.preheader.i.i.i.i.i.i60.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i61.i, ptr %i.ct, align 8, !alias.scope !46478, !noalias !46479
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$geo_types..geometry..polygon..Polygon$GT$$GT$17h304041e627e928e9E"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #65, !noalias !46471, !inline_history !46252
  br label %.body8

_ZN4core4iter6traits8iterator8Iterator7collect17h8024ee6d0c24a899E.exit.i: ; preds = %bb.p, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h121b45ad5e785a9cE.exit.i.i.i.i.i.i.i"
  store i64 %i.ck, ptr %i.ct, align 8, !alias.scope !46478, !noalias !46479
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.413.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !46446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46471
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.dc, align 8, !alias.scope !46445
  store i64 29, ptr %0, align 8, !alias.scope !46445
  br label %bb.al

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !46446, !nonnull !18, !noundef !18 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !46446, !noundef !18 ; 2 uses
  %.idx349 = shl nuw nsw i64 %i.dg, 7
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx349 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !46480
  %i.di = icmp eq i64 %i.dg, 0
  br i1 %i.di, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h476712fde256653aE.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.8169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %.noexc21.thread
  %.sroa.0.0338 = phi ptr [ %i.de, %.lr.ph ], [ %i.dj, %.noexc21.thread ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0338, i64 128 ; 4 uses
  invoke fastcc void @"_ZN66_$LT$geojson..geometry..Geometry$u20$as$u20$core..clone..Clone$GT$5clone17h099f12175d907343E"(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0338)
          to label %.noexc51.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !46403

.noexc51.a:                                       ; preds = %bb.r
  invoke fastcc void @"_ZN7geojson10conversion12to_geo_types126_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Geometry$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h392328ebbc62e1feE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(320) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.a)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %.noexc51.a
  %.sroa.0166.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  %.sroa.4167.0.copyload = load i64, ptr %.sroa.4167.0..sroa_idx, align 8 ; 3 uses
  %.not.i.i.i35 = icmp eq i64 %.sroa.0166.0.copyload, 29
  br i1 %.not.i.i.i35, label %bb.s, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h7b5d3939f945b082E.exit.i.thread486"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h7b5d3939f945b082E.exit.i.thread486": ; preds = %.noexc52
  %.sroa.8.16.copyload = load ptr, ptr %.sroa.5168.0..sroa_idx, align 8
  %.sroa.11.16..sroa.5168.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.11.16.copyload = load i64, ptr %.sroa.11.16..sroa.5168.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.16..sroa.5168.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.16..sroa.5168.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.12.64..8.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.12.64..8.val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.8169.0..sroa_idx, i64 256, i1 false)
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h476712fde256653aE.exit.i"

bb.s:                                             ; preds = %.noexc52
  %i.dk = and i64 %.sroa.4167.0.copyload, -2
  %switch = icmp eq i64 %i.dk, 10
  br i1 %switch, label %.noexc21.thread, label %bb.u

.noexc21.thread:                                  ; preds = %bb.s
  %i.dl = icmp eq ptr %i.dj, %i.dh
  br i1 %i.dl, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h476712fde256653aE.exit.i", label %bb.r

bb.t:                                             ; preds = %bb.v
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$geo_types..geometry..Geometry$GT$17h7f581d85ecd4a206E"(ptr noalias noundef align 8 dereferenceable(56) %i.f) #65
          to label %.body8 unwind label %bb.ad, !noalias !46481, !inline_history !46404

bb.u:                                             ; preds = %bb.s
end_hunk_0
begin_hunk_1_@"_ZN7geojson10conversion12to_geo_types126_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Geometry$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h392328ebbc62e1feE":bb.a
"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00d8904892efeca0E.exit.i.i": ; preds = %bb.af, %bb.ae
  %i.eu = icmp eq i64 %.sroa.065.0, 0
  br i1 %i.eu, label %.noexc14, label %bb.ak

bb.ak:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00d8904892efeca0E.exit.i.i"
  %i.ev = mul nuw i64 %.sroa.065.0, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !46488, !inline_history !46420
  br label %.noexc14

.noexc14:                                         ; preds = %bb.ak, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00d8904892efeca0E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %.sroa.332.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.332.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.9, i64 288, i1 false), !noalias !46446
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  store i64 %i.eg, ptr %0, align 8, !alias.scope !46445
  %.sroa.231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.476.sroa.0.0.copyload176, ptr %.sroa.231.0..sroa_idx.i, align 8, !noalias !46446
  %.sroa.231.i.sroa.4.0..sroa.231.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.2, ptr %.sroa.231.i.sroa.4.0..sroa.231.0..sroa_idx.i.sroa_idx, align 8, !noalias !46446
  %.sroa.231.i.sroa.5.0..sroa.231.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.11.2, ptr %.sroa.231.i.sroa.5.0..sroa.231.0..sroa_idx.i.sroa_idx, align 8, !noalias !46446
  br label %bb.al

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %.noexc51.a, %.invoke478, %.invoke, %bb.m
  %lpad.loopexit.split-lp709 = landingpad { ptr, i32 }
          cleanup
  br label %.body8

.body8:                                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i19, %bb.t, %.body.i.i, %bb.aj, %.body.i.i.i.i64.i, %.body.i.i.i.i57.i, %.body.i.i.i.i48.i, %.body.i.i.i.i.i
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.db, %.body.i.i.i.i64.i ], [ %i.af, %.body.i.i.i.i.i ], [ %i.aw, %.body.i.i.i.i48.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i57.i ], [ %i.eo, %bb.aj ], [ %i.dm, %bb.t ], [ %eh.lpad-body.i20, %.body.i19 ], [ %i.eo, %.body.i.i ], [ %lpad.loopexit.split-lp709, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17ha99327d9f4f64f4bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1) #65
          to label %.body unwind label %bb.am, !noalias !46490, !inline_history !46423

bb.al:                                            ; preds = %.noexc14.thread, %.noexc14, %_ZN4core4iter6traits8iterator8Iterator7collect17h8024ee6d0c24a899E.exit.i, %.noexc12, %_ZN4core4iter6traits8iterator8Iterator7collect17h56fd3c395d43a931E.exit.i, %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit.i, %_ZN4core4iter6traits8iterator8Iterator7collect17hb24297e0752fb995E.exit.i, %_ZN7geojson10conversion12to_geo_types16create_geo_point17h99610685359cca4bE.exit.i
  invoke void @"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17ha99327d9f4f64f4bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %"_ZN7geojson10conversion12to_geo_types123_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Value$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17hd705df73c0053df5E.exit" unwind label %bb.an, !inline_history !46423

bb.am:                                            ; preds = %.body8
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #66, !noalias !46490, !inline_history !46423
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body8, %bb.an
  %eh.lpad-body = phi { ptr, i32 } [ %i.ex, %bb.an ], [ %eh.lpad-body9, %.body8 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46491)
  %i.ez = load i64, ptr %i.ey, align 8, !range !54, !alias.scope !46491, !noundef !18 ; 2 uses
  %switch.i = icmp sgt i64 %i.ez, 0
  br i1 %switch.i, label %bb.ao, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit"

bb.ao:                                            ; preds = %.body
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1.i = load ptr, ptr %i.fa, align 8, !alias.scope !46491, !nonnull !18, !noundef !18
  %i.fb = shl nuw i64 %i.ez, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.fb, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !46491
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit"

"_ZN7geojson10conversion12to_geo_types123_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Value$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17hd705df73c0053df5E.exit": ; preds = %bb.al
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46492)
  %i.fd = load i64, ptr %i.fc, align 8, !range !54, !alias.scope !46492, !noundef !18 ; 2 uses
  %switch.i2 = icmp sgt i64 %i.fd, 0
  br i1 %switch.i2, label %bb.ap, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit4"

bb.ap:                                            ; preds = %"_ZN7geojson10conversion12to_geo_types123_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Value$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17hd705df73c0053df5E.exit"
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1.i3 = load ptr, ptr %i.fe, align 8, !alias.scope !46492, !nonnull !18, !noundef !18
  %i.ff = shl nuw i64 %i.fd, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i3, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !46492
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit4"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit4": ; preds = %bb.ap, %"_ZN7geojson10conversion12to_geo_types123_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Value$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17hd705df73c0053df5E.exit"
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46493)
  %i.fh = load i64, ptr %i.fg, align 8, !range !54, !alias.scope !46493, !noundef !18
  %i.fi = icmp eq i64 %i.fh, -9223372036854775808
  br i1 %i.fi, label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17hf1e7aefb3054a1e5E.exit", label %bb.aq

bb.aq:                                            ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit4"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46496)
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val1.i.i.i.i = load i64, ptr %i.fj, align 8, !alias.scope !46497, !noundef !18 ; 4 uses
  %i.fk = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.fk, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i.i.i.i = load ptr, ptr %i.fl, align 8, !alias.scope !46497, !nonnull !18, !noundef !18
  %or.cond.i.i.i.i.i.i.i.i = icmp slt i64 %.val1.i.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i.i), !noalias !46496
  %i.fm = shl i64 %.val1.i.i.i.i, 3
  %i.fn = and i64 %i.fm, -16                      ; 2 uses
  %i.fo = add i64 %i.fn, 16                       ; 2 uses
  %i.fp = add nsw i64 %.val1.i.i.i.i, 17
  %i.fq = add i64 %i.fp, %i.fo                    ; 3 uses
  %i.fr = icmp uge i64 %i.fq, %i.fo
  tail call void @llvm.assume(i1 %i.fr), !noalias !46496
  %i.fs = icmp ult i64 %i.fq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.fs), !noalias !46496
  %i.ft = sub nuw nsw i64 -16, %i.fn
  %i.fu = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.ft
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fu, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) 16) #63, !noalias !46497, !inline_history !5
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i, %bb.aq
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h9a4c6a5dbdc6b06bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.fg), !inline_history !6
  br label %"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17hf1e7aefb3054a1e5E.exit"

"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17hf1e7aefb3054a1e5E.exit": ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit4", %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i"
  ret void

bb.ar:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i484"
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #66
  unreachable

.noexc:                                           ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i484", %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit"
  resume { ptr, i32 } %eh.lpad-body

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit": ; preds = %bb.ao, %.body
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46498)
  %i.fx = load i64, ptr %i.fw, align 8, !range !54, !alias.scope !46498, !noundef !18
  %i.fy = icmp eq i64 %i.fx, -9223372036854775808
  br i1 %i.fy, label %.noexc, label %bb.as

bb.as:                                            ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46501)
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val1.i.i.i.i480 = load i64, ptr %i.fz, align 8, !alias.scope !46502, !noundef !18 ; 4 uses
  %i.ga = icmp eq i64 %.val1.i.i.i.i480, 0
  br i1 %i.ga, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i484", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i481

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i481: ; preds = %bb.as
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i.i.i.i482 = load ptr, ptr %i.gb, align 8, !alias.scope !46502, !nonnull !18, !noundef !18
  %or.cond.i.i.i.i.i.i.i.i483 = icmp slt i64 %.val1.i.i.i.i480, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i.i483), !noalias !46501
  %i.gc = shl i64 %.val1.i.i.i.i480, 3
  %i.gd = and i64 %i.gc, -16                      ; 2 uses
  %i.ge = add i64 %i.gd, 16                       ; 2 uses
  %i.gf = add nsw i64 %.val1.i.i.i.i480, 17
  %i.gg = add i64 %i.gf, %i.ge                    ; 3 uses
  %i.gh = icmp uge i64 %i.gg, %i.ge
  tail call void @llvm.assume(i1 %i.gh), !noalias !46501
  %i.gi = icmp ult i64 %i.gg, 9223372036854775793
  tail call void @llvm.assume(i1 %i.gi), !noalias !46501
  %i.gj = sub nuw nsw i64 -16, %i.gd
  %i.gk = getelementptr inbounds i8, ptr %.val.i.i.i.i482, i64 %i.gj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gk, i64 noundef %i.gg, i64 noundef range(i64 1, -9223372036854775807) 16) #63, !noalias !46502, !inline_history !5
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i484"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hb92c8151464fc21cE.exit.i484": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i481, %bb.as
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h9a4c6a5dbdc6b06bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.fw)
          to label %.noexc unwind label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7geojson10conversion12to_geo_types18create_geo_polygon17h25176b3381e563e6E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #3 personality ptr @rust_eh_personality !guid !46601 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.not = icmp eq i64 %.16.val, 0
  br i1 %.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit.thread, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !noundef !18
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !18 ; 7 uses
  %i.h = shl nuw i64 %i.g, 4                      ; 3 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !46602
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 8) #63, !noalias !46602 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.preheader.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #64, !noalias !46603
  unreachable

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b, %bb.d
  %.val20.i.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.val20.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val22.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !46604, !noundef !18 ; 3 uses
  switch i64 %.val22.i.i.i.i.i.i.i.i.i, label %bb.d [
    i64 0, label %.invoke.i.i.i.i
    i64 1, label %1
  ]

.invoke.i.i.i.i:                                  ; preds = %.preheader.i.i.i.i.i.i, %1
  %i.n = phi ptr [ @1834, %1 ], [ @1833, %.preheader.i.i.i.i.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val22.i.i.i.i.i.i.i.i.i, i64 noundef %.val22.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) #64
          to label %.cont.i.i.i.i unwind label %.body.i.i.i.i, !noalias !46604

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

1:                                                ; preds = %.preheader.i.i.i.i.i.i
  br label %.invoke.i.i.i.i

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i
  %2 = getelementptr i8, ptr %i.l, i64 8
  %.val21.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !46604, !nonnull !18, !noundef !18
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.val20.i.i.i.i.i.i.i.i.i
  %i.p = load <2 x double>, ptr %.val21.i.i.i.i.i.i.i.i.i, align 8, !noalias !46605
  store <2 x double> %i.p, ptr %i.o, align 8, !noalias !46606
  %i.q = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.g
  br i1 %i.r, label %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit, label %.preheader.i.i.i.i.i.i

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.q, %bb.r, %.body.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %.body.i.i.i.i ], [ %lpad.loopexit.split-lp86, %bb.p ], [ %lpad.loopexit.split-lp86, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body.ph, %bb.q ], [ %eh.lpad-body.ph, %bb.r ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !46603
  br label %common.resume

_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit: ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.6.0 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.j, %bb.d ] ; 3 uses
  %i.t = icmp ult i64 %.16.val, 384307168202282326
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %.16.val, 1
  br i1 %i.u, label %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit.thread, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i4

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i4: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %.idx = mul nuw nsw i64 %.16.val, 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46607
  %gepdiff = add nsw i64 %.idx, -24               ; 3 uses
  %i.w = udiv exact i64 %gepdiff, 24              ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !46608
  %i.x = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %gepdiff, i64 noundef range(i64 1, 9) 8) #63, !noalias !46608 ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %.preheader.i.i.preheader.i.i.i.i

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i4
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %gepdiff, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #64
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  unreachable

.preheader.i.i.preheader.i.i.i.i:                 ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i4
  store i64 %i.w, ptr %i.a, align 8, !noalias !46607
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %i.z, align 8, !noalias !46607
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46610)
  br label %.preheader.i.i.i.i.i.i5

bb.f:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i9

.preheader.i.i.i.i.i.i5:                          ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %.preheader.i.i.preheader.i.i.i.i
  %.val20.i.i.i.i.i.i.i.i.i6 = phi i64 [ %i.as, %.loopexit.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.val20.i.i.i.i.i.i.i.i.i6 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val21.i.i.i.i.i.i.i.i.i7 = load ptr, ptr %i.ad, align 8, !noalias !46611, !nonnull !18, !noundef !18
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val22.i.i.i.i.i.i.i.i.i8 = load i64, ptr %i.ae, align 8, !noalias !46611, !noundef !18 ; 5 uses
  %i.af = shl nuw i64 %.val22.i.i.i.i.i.i.i.i.i8, 4 ; 3 uses
  %i.ag = icmp eq i64 %.val22.i.i.i.i.i.i.i.i.i8, 0
  br i1 %i.ag, label %.loopexit.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i.i.i.i.i5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !46612
  %i.ah = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, 9) 8) #63, !noalias !46612 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #64
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.f, !noalias !46611

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.h
  unreachable

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.g, %bb.i
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.i ], [ 0, %bb.g ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.val21.i.i.i.i.i.i.i.i.i7, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !46613, !noundef !18 ; 3 uses
  switch i64 %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i [
    i64 0, label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %3
  ]

.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %3
  %i.al = phi ptr [ @1834, %3 ], [ @1833, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al) #64
          to label %.cont.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !46613

.cont.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

3:                                                ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %4 = getelementptr i8, ptr %i.aj, i64 8
  %.val21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %4, align 8, !noalias !46613, !nonnull !18, !noundef !18
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.an = load <2 x double>, ptr %.val21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46614
  store <2 x double> %i.an, ptr %i.am, align 8, !noalias !46615
  %i.ao = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %.val22.i.i.i.i.i.i.i.i.i8
  br i1 %i.ap, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !46616
  br label %.body.i.i.i.i9

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.i, %.preheader.i.i.i.i.i.i5
  %.sroa.10.0.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %.preheader.i.i.i.i.i.i5 ], [ %i.ah, %bb.i ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.val20.i.i.i.i.i.i.i.i.i6 ; 3 uses
  store i64 %.val22.i.i.i.i.i.i.i.i.i8, ptr %i.ar, align 8, !noalias !46617
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.10.0.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46617
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.val22.i.i.i.i.i.i.i.i.i8, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46617
  %i.as = add i64 %.val20.i.i.i.i.i.i.i.i.i6, 1   ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.w
  br i1 %i.at, label %_ZN4core4iter6traits8iterator8Iterator7collect17h980b89d7a2d8e1dcE.exit, label %.preheader.i.i.i.i.i.i5

.body.i.i.i.i9:                                   ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %eh.lpad-body.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.aq, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.val20.i.i.i.i.i.i.i.i.i6, ptr %i.aa, align 8, !alias.scope !46618, !noalias !46619
  call fastcc void @"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$geo_types..geometry..line_string..LineString$GT$$GT$17hf3f4d61cc47760c2E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #65, !noalias !46607
  br label %bb.q

_ZN4core4iter6traits8iterator8Iterator7collect17h980b89d7a2d8e1dcE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46607
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit.thread: ; preds = %bb.a, %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit, %_ZN4core4iter6traits8iterator8Iterator7collect17h980b89d7a2d8e1dcE.exit
  %.sroa.0.034 = phi i64 [ %i.g, %_ZN4core4iter6traits8iterator8Iterator7collect17h980b89d7a2d8e1dcE.exit ], [ %i.g, %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit ], [ 0, %bb.a ] ; 6 uses
  %.sroa.6.029 = phi ptr [ %.sroa.6.0, %_ZN4core4iter6traits8iterator8Iterator7collect17h980b89d7a2d8e1dcE.exit ], [ %.sroa.6.0, %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 5 uses
  %.sroa.5.0 = phi ptr [ %i.x, %_ZN4core4iter6traits8iterator8Iterator7collect17h980b89d7a2d8e1dcE.exit ], [ inttoptr (i64 8 to ptr), %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 3 uses
  %.sroa.06.0 = phi i64 [ %i.w, %_ZN4core4iter6traits8iterator8Iterator7collect17h980b89d7a2d8e1dcE.exit ], [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit ], [ 0, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.034, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %.sroa.6.029, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.0.034, ptr %.sroa.8.0..sroa_idx4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.06.0, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.06.0, ptr %.sroa.610.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46623)
  %.not.i.i.i = icmp eq i64 %.sroa.0.034, 0
  br i1 %.not.i.i.i, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit.i", label %bb.k

bb.k:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit.thread
  %i.av = getelementptr [16 x i8], ptr %.sroa.6.029, i64 %.sroa.0.034 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -16    ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.aw, null
  %.pre.i.i = load double, ptr %.sroa.6.029, align 8, !noalias !46624 ; 2 uses
  br i1 %.not24.i.i.i, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val27.i.i.i = load double, ptr %i.aw, align 8, !noalias !46624, !noundef !18
  %i.ax = fcmp oeq double %.pre.i.i, %.val27.i.i.i
  br i1 %i.ax, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.i.i", label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i.i"

"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.i.i": ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.6.029, i64 8
  %i.az = getelementptr i8, ptr %i.av, i64 -8
  %.val.i.i.i = load double, ptr %i.ay, align 8, !noalias !46624, !noundef !18
  %.val25.i.i.i = load double, ptr %i.az, align 8, !noalias !46624, !noundef !18
  %i.ba = fcmp oeq double %.val.i.i.i, %.val25.i.i.i
  br i1 %i.ba, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit.i", label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i.i"

"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i.i": ; preds = %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.i.i", %bb.l, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.6.029, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !noalias !46624, !noundef !18
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hf18829a0e773511bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3136)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !46625

.noexc.i:                                         ; preds = %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i.i"
  %.pre5.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2, align 8, !alias.scope !46626
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.pre5.i.i, i64 %.sroa.0.034 ; 2 uses
  store double %.pre.i.i, ptr %i.bd, align 8, !noalias !46625
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store double %i.bc, ptr %i.be, align 8, !noalias !46625
  %i.bf = add i64 %.sroa.0.034, 1
  store i64 %i.bf, ptr %.sroa.8.0..sroa_idx4, align 8, !alias.scope !46626
  br label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i.i"
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @"_ZN4core3ptr88drop_in_place$LT$alloc..vec..Vec$LT$geo_types..geometry..line_string..LineString$GT$$GT$17hf3f4d61cc47760c2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b) #65, !noalias !46620
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !46621 ; 2 uses
  %i.bg = icmp eq i64 %.val.i, 0
  br i1 %i.bg, label %common.resume, label %bb.p

"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit.i": ; preds = %.noexc.i, %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.i.i", %_ZN4core4iter6traits8iterator8Iterator7collect17hba29dcd4163f96eaE.exit.thread
  %.idx.i = mul nuw nsw i64 %.sroa.06.0, 24
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 %.idx.i
  %i.bi = icmp eq i64 %.sroa.06.0, 0
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit.i", %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit17.i"
  %.sroa.01.018.i = phi ptr [ %i.bz, %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit17.i" ], [ %.sroa.5.0, %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit.i" ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46627)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 8 ; 2 uses
  %.val.i4.i = load ptr, ptr %i.bj, align 8, !alias.scope !46627, !noalias !46625, !nonnull !18, !noundef !18 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 16 ; 2 uses
  %.val1.i5.i = load i64, ptr %i.bk, align 8, !alias.scope !46627, !noalias !46625, !noundef !18 ; 5 uses
  %.not.i.i6.i = icmp eq i64 %.val1.i5.i, 0
  br i1 %.not.i.i6.i, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit17.i", label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.bl = getelementptr [16 x i8], ptr %.val.i4.i, i64 %.val1.i5.i ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -16    ; 2 uses
  %.not24.i.i7.i = icmp eq ptr %i.bm, null
  %.pre.i8.i = load double, ptr %.val.i4.i, align 8, !noalias !46628 ; 2 uses
  br i1 %.not24.i.i7.i, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i10.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val27.i.i9.i = load double, ptr %i.bm, align 8, !noalias !46628, !noundef !18
  %i.bn = fcmp oeq double %.pre.i8.i, %.val27.i.i9.i
  br i1 %i.bn, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.i13.i", label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i10.i"

"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.i13.i": ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.bp = getelementptr i8, ptr %i.bl, i64 -8
  %.val.i.i14.i = load double, ptr %i.bo, align 8, !noalias !46628, !noundef !18
  %.val25.i.i15.i = load double, ptr %i.bp, align 8, !noalias !46628, !noundef !18
  %i.bq = fcmp oeq double %.val.i.i14.i, %.val25.i.i15.i
  br i1 %i.bq, label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit17.i", label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i10.i"

"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i10.i": ; preds = %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.i13.i", %bb.n, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.bs = load double, ptr %i.br, align 8, !noalias !46628, !noundef !18
  %i.bt = load i64, ptr %.sroa.01.018.i, align 8, !range !19, !alias.scope !46629, !noalias !46625, !noundef !18
  %i.bu = icmp eq i64 %.val1.i5.i, %i.bt
  br i1 %i.bu, label %bb.o, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7d28830d77d5fbc2E.exit.i11.i"

bb.o:                                             ; preds = %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i10.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hf18829a0e773511bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.01.018.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3136)
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !46625

.noexc16.i:                                       ; preds = %bb.o
  %.pre5.i12.i = load ptr, ptr %i.bj, align 8, !alias.scope !46629, !noalias !46625
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7d28830d77d5fbc2E.exit.i11.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7d28830d77d5fbc2E.exit.i11.i": ; preds = %.noexc16.i, %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i10.i"
  %i.bv = phi ptr [ %.val.i4.i, %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.thread.i10.i" ], [ %.pre5.i12.i, %.noexc16.i ]
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.val1.i5.i ; 2 uses
  store double %.pre.i8.i, ptr %i.bw, align 8, !noalias !46625
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store double %i.bs, ptr %i.bx, align 8, !noalias !46625
  %i.by = add i64 %.val1.i5.i, 1
  store i64 %i.by, ptr %i.bk, align 8, !alias.scope !46629, !noalias !46625
  br label %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit17.i"

"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit17.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7d28830d77d5fbc2E.exit.i11.i", %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$9is_closed17h96929f450f445053E.exit.i13.i", %.lr.ph.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.01.018.i, i64 24 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bh
  br i1 %i.ca, label %.loopexit, label %.lr.ph.i

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val3.i = load ptr, ptr %.sroa.6.0..sroa_idx2, align 8, !alias.scope !46621, !nonnull !18, !noundef !18
  %i.cb = shl nuw i64 %.val.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !46625
  br label %common.resume

.loopexit:                                        ; preds = %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit17.i", %"_ZN9geo_types8geometry11line_string19LineString$LT$T$GT$5close17h4850a2fbc4c59b65E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !alias.scope !46630
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !alias.scope !46625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.q:                                             ; preds = %.body.i.i.i.i9, %bb.j
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.au, %bb.j ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i9 ] ; 2 uses
  %i.cd = icmp eq i64 %i.g, 0
  br i1 %i.cd, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = shl nuw i64 %i.g, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #63
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
