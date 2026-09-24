Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15192
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN5xtask6common7command12run_commands28_$u7b$$u7b$closure$u7d$$u7d$17h489cc10dbe2d418eE":bb.a
  %i.aec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.body164.i:                                       ; preds = %bb.ji, %bb.jh
  %i.aed = phi ptr [ %i.adp, %bb.jh ], [ %i.dd, %bb.ji ]
  %i.aee = phi ptr [ %i.adq, %bb.jh ], [ %i.dc, %bb.ji ]
  %i.aef = phi ptr [ %i.ads, %bb.jh ], [ %i.zv, %bb.ji ]
  %.pn33.i = phi { ptr, i32 } [ %.pn59.pn.pn.i.i, %bb.jh ], [ %i.adu, %bb.ji ]
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$xtask..common..command..wait_for_tasks..$u7b$$u7b$closure$u7d$$u7d$$GT$17h8a97c4ecf5d5f7f8E"(ptr noundef nonnull align 8 %i.aef) #55
          to label %"_ZN4core3ptr340drop_in_place$LT$core..iter..adapters..zip..Zip$LT$alloc..vec..into_iter..IntoIter$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$$C$core..slice..iter..Iter$LT$xtask..common..command..Command$GT$$GT$$GT$17h2965cdbf8883eef4E.exit148.i" unwind label %bb.ab, !noalias !34445

bb.jo:                                            ; preds = %bb.ac
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34623)
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val4.i28 = load ptr, ptr %i.aeh, align 8, !alias.scope !34623, !noalias !34445, !nonnull !24, !noundef !24 ; 4 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val5.i = load i64, ptr %i.aei, align 8, !alias.scope !34623, !noalias !34445, !noundef !24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34624), !noalias !34445
  %i.aej = icmp eq i64 %.val5.i, 0
  br i1 %i.aej, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b694516929171f2E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.jo, %"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit.i.i.i"
  %.sroa.0.012.i.i.i = phi i64 [ %i.ael, %"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit.i.i.i" ], [ 0, %bb.jo ] ; 2 uses
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %.val4.i28, i64 %.sroa.0.012.i.i.i
  %i.ael = add nuw i64 %.sroa.0.012.i.i.i, 1      ; 4 uses
  %.val7.i.i.i = load ptr, ptr %i.aek, align 8, !alias.scope !34624, !noalias !34625, !nonnull !24, !noundef !24 ; 2 uses
  %i.aem = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.val7.i.i.i)
          to label %.noexc.i.i.i32 unwind label %bb.jq, !noalias !34626

.noexc.i.i.i32:                                   ; preds = %.lr.ph.i.i.i
  br i1 %i.aem, label %bb.jp, label %"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit.i.i.i"

bb.jp:                                            ; preds = %.noexc.i.i.i32
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %.val7.i.i.i)
          to label %"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit.i.i.i" unwind label %bb.jq, !noalias !34626

"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit.i.i.i": ; preds = %bb.jp, %.noexc.i.i.i32
  %i.aen = icmp eq i64 %i.ael, %.val5.i
  br i1 %i.aen, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b694516929171f2E.exit.i", label %.lr.ph.i.i.i

bb.jq:                                            ; preds = %bb.jp, %.lr.ph.i.i.i
  %i.aeo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.aep = icmp eq i64 %i.ael, %.val5.i
  br i1 %i.aep, label %.body.i30, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %bb.jq, %"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit11.i.i.i"
  %.sroa.0.113.i.i.i = phi i64 [ %i.aer, %"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit11.i.i.i" ], [ %i.ael, %bb.jq ] ; 2 uses
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %.val4.i28, i64 %.sroa.0.113.i.i.i
  %i.aer = add i64 %.sroa.0.113.i.i.i, 1          ; 2 uses
  %.val.i.i.i29 = load ptr, ptr %i.aeq, align 8, !alias.scope !34624, !noalias !34625, !nonnull !24, !noundef !24 ; 2 uses
  %i.aes = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.val.i.i.i29)
          to label %.noexc9.i.i.i unwind label %bb.js, !noalias !34626

.noexc9.i.i.i:                                    ; preds = %.lr.ph15.i.i.i
  br i1 %i.aes, label %bb.jr, label %"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit11.i.i.i"

bb.jr:                                            ; preds = %.noexc9.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %.val.i.i.i29)
          to label %"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit11.i.i.i" unwind label %bb.js, !noalias !34626

"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit11.i.i.i": ; preds = %bb.jr, %.noexc9.i.i.i
  %i.aet = icmp eq i64 %i.aer, %.val5.i
  br i1 %i.aet, label %.body.i30, label %.lr.ph15.i.i.i

bb.js:                                            ; preds = %bb.jr, %.lr.ph15.i.i.i
  %i.aeu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !34626
  unreachable

.body.i30:                                        ; preds = %"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit11.i.i.i", %bb.jq
  %.val2.i31 = load i64, ptr %i.aeg, align 8, !range !30, !alias.scope !34623, !noalias !34445, !noundef !24 ; 2 uses
  %i.aev = icmp eq i64 %.val2.i31, 0
  br i1 %i.aev, label %.body34, label %bb.jt

bb.jt:                                            ; preds = %.body.i30
  %i.aew = shl nuw i64 %.val2.i31, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i28, i64 noundef %i.aew, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !34625
  br label %.body34

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b694516929171f2E.exit.i": ; preds = %"_ZN4core3ptr198drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$17h231c2729dba5deb9E.exit.i.i.i", %bb.jo
  %.val.i33 = load i64, ptr %i.aeg, align 8, !range !30, !alias.scope !34623, !noalias !34445, !noundef !24 ; 2 uses
  %i.aex = icmp eq i64 %.val.i33, 0
  br i1 %i.aex, label %"_ZN4core3ptr221drop_in_place$LT$alloc..vec..Vec$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$$GT$17haa60ad78b911929cE.exit", label %bb.ju

bb.ju:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b694516929171f2E.exit.i"
  %i.aey = shl nuw i64 %.val.i33, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i28, i64 noundef %i.aey, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !34625
  br label %"_ZN4core3ptr221drop_in_place$LT$alloc..vec..Vec$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$$GT$17haa60ad78b911929cE.exit"

bb.jv:                                            ; preds = %bb.dr, %bb.dq
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread142:                                       ; preds = %bb.jj, %bb.ek
  %i.afa = phi ptr [ %i.ne, %bb.ek ], [ %i.adv, %bb.jj ]
  %.sink.i.ph = phi i8 [ 3, %bb.ek ], [ 4, %bb.jj ]
  store i8 %.sink.i.ph, ptr %i.afa, align 1, !noalias !34443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.jx

bb.jw:                                            ; preds = %"_ZN4core3ptr340drop_in_place$LT$core..iter..adapters..zip..Zip$LT$alloc..vec..into_iter..IntoIter$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$$C$core..slice..iter..Iter$LT$xtask..common..command..Command$GT$$GT$$GT$17h2965cdbf8883eef4E.exit150.i", %bb.jm
  %i.afb = phi ptr [ %i.fx, %"_ZN4core3ptr340drop_in_place$LT$core..iter..adapters..zip..Zip$LT$alloc..vec..into_iter..IntoIter$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$$C$core..slice..iter..Iter$LT$xtask..common..command..Command$GT$$GT$$GT$17h2965cdbf8883eef4E.exit150.i" ], [ %i.adv, %bb.jm ]
  %i.afc = phi ptr [ %i.fy, %"_ZN4core3ptr340drop_in_place$LT$core..iter..adapters..zip..Zip$LT$alloc..vec..into_iter..IntoIter$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$$C$core..slice..iter..Iter$LT$xtask..common..command..Command$GT$$GT$$GT$17h2965cdbf8883eef4E.exit150.i" ], [ %i.adw, %bb.jm ]
  %i.afd = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.0261.0.copyload.i = load i64, ptr %i.afd, align 8, !noalias !34443 ; 2 uses
  %.sroa.4262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.4262.0.copyload.i = load ptr, ptr %.sroa.4262.0..sroa_idx.i, align 8, !noalias !34443
  %.sroa.5263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.5263.0.copyload.i = load i64, ptr %.sroa.5263.0..sroa_idx.i, align 8, !noalias !34443
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 282
  store i8 0, ptr %i.afe, align 2, !noalias !34443
  store i8 1, ptr %i.afb, align 1, !noalias !34443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.aff = icmp eq i64 %.sroa.0261.0.copyload.i, -9223372036854775807
  br i1 %i.aff, label %bb.jx, label %bb.jy

common.ret:                                       ; preds = %bb.kf, %bb.jx
  %storemerge = phi i8 [ 1, %bb.kf ], [ 3, %bb.jx ]
  store i8 %storemerge, ptr %i.bh, align 1
  ret void

bb.jx:                                            ; preds = %.thread142, %bb.jw
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %common.ret

.sink.split:                                      ; preds = %bb.l, %.thread155
  %.sink = phi ptr [ %i.zn, %.thread155 ], [ %i.de, %bb.l ]
  %.ph = phi ptr [ %i.zo, %.thread155 ], [ %i.df, %bb.l ]
  %.sroa.091.0154.ph = phi i64 [ -9223372036854775808, %.thread155 ], [ 0, %bb.l ]
  %.sroa.992.0153.ph = phi ptr [ %.sroa.7255.2.i, %.thread155 ], [ inttoptr (i64 8 to ptr), %bb.l ]
  store i8 1, ptr %.sink, align 1, !noalias !34443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.jy

bb.jy:                                            ; preds = %.sink.split, %bb.jw
  %i.afg = phi ptr [ %i.afc, %bb.jw ], [ %.ph, %.sink.split ]
  %.sroa.091.0154 = phi i64 [ %.sroa.0261.0.copyload.i, %bb.jw ], [ %.sroa.091.0154.ph, %.sink.split ] ; 4 uses
  %.sroa.992.0153 = phi ptr [ %.sroa.4262.0.copyload.i, %bb.jw ], [ %.sroa.992.0153.ph, %.sink.split ] ; 5 uses
  %.sroa.1093.0152 = phi i64 [ %.sroa.5263.0.copyload.i, %bb.jw ], [ 0, %.sink.split ] ; 5 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$xtask..common..command..run_batch..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd0fd49840d4b55efE"(ptr noundef nonnull align 8 %i.afg)
          to label %bb.ka unwind label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.afh = landingpad { ptr, i32 }
          cleanup
  br label %.body26

bb.ka:                                            ; preds = %bb.jy
  %i.afi = icmp eq i64 %.sroa.091.0154, -9223372036854775808
  br i1 %i.afi, label %bb.kh, label %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb2ba1f312c196b47E.exit"

"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb2ba1f312c196b47E.exit": ; preds = %bb.ka
  store i64 %.sroa.091.0154, ptr %i.bg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.sroa.992.0153, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store i64 %.sroa.1093.0152, ptr %.sroa.598.0..sroa_idx, align 8
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34627)
  call void @llvm.experimental.noalias.scope.decl(metadata !34628)
  call void @llvm.experimental.noalias.scope.decl(metadata !34629)
  %i.afk = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.afl = load i64, ptr %i.afk, align 8, !alias.scope !34630, !noalias !34628, !noundef !24 ; 3 uses
  %i.afm = load i64, ptr %i.afj, align 8, !range !30, !alias.scope !34630, !noalias !34628, !noundef !24
  %i.afn = sub i64 %i.afm, %i.afl
  %i.afo = icmp ugt i64 %.sroa.1093.0152, %i.afn
  br i1 %i.afo, label %bb.kb, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ca717c3dfa02006E.exit.i", !prof !26

bb.kb:                                            ; preds = %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb2ba1f312c196b47E.exit"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afj, i64 noundef %i.afl, i64 noundef %.sroa.1093.0152, i64 noundef 8, i64 noundef 80)
          to label %.noexc24 unwind label %bb.kc

.noexc24:                                         ; preds = %bb.kb
  %.pre.i.i23 = load i64, ptr %i.afk, align 8, !alias.scope !34631, !noalias !34628
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ca717c3dfa02006E.exit.i"

bb.kc:                                            ; preds = %bb.kb
  %i.afp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$GT$17h076e4bdcd3dbabf2E"(ptr noalias noundef align 8 dereferenceable(24) %i.bg) #55
          to label %.body26 unwind label %bb.kg

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ca717c3dfa02006E.exit.i": ; preds = %.noexc24, %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb2ba1f312c196b47E.exit"
  %i.afq = phi i64 [ %i.afl, %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb2ba1f312c196b47E.exit" ], [ %.pre.i.i23, %.noexc24 ] ; 3 uses
  %i.afr = icmp ult i64 %i.afq, 115292150460684698
  call void @llvm.assume(i1 %i.afr)
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aft = load ptr, ptr %i.afs, align 8, !alias.scope !34631, !noalias !34628, !nonnull !24, !noundef !24
  %i.afu = getelementptr inbounds nuw [80 x i8], ptr %i.aft, i64 %i.afq
  %i.afv = mul i64 %.sroa.1093.0152, 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.afu, ptr nonnull readonly align 8 %.sroa.992.0153, i64 %i.afv, i1 false), !noalias !34632
  %i.afw = add i64 %i.afq, %.sroa.1093.0152
  store i64 %i.afw, ptr %i.afk, align 8, !alias.scope !34631, !noalias !34628
  store i64 0, ptr %.sroa.598.0..sroa_idx, align 8, !alias.scope !34628, !noalias !34627
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.afy = load i64, ptr %i.afx, align 8, !noundef !24
  %i.afz = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aga = load i64, ptr %i.afz, align 8, !noundef !24
  %i.agb = add i64 %i.aga, %i.afy
  store i64 %i.agb, ptr %i.afz, align 8
  %i.agc = icmp eq i64 %.sroa.091.0154, 0
  br i1 %i.agc, label %"_ZN4core3ptr103drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$GT$17h076e4bdcd3dbabf2E.exit", label %bb.kd

bb.kd:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ca717c3dfa02006E.exit.i"
  %i.agd = mul nuw i64 %.sroa.091.0154, 80
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.992.0153, i64 noundef %i.agd, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !34633
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$GT$17h076e4bdcd3dbabf2E.exit"

.body26:                                          ; preds = %bb.jz, %.body, %bb.kc
  %.pn8.pn = phi { ptr, i32 } [ %i.afh, %bb.jz ], [ %i.afp, %bb.kc ], [ %.pn6, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.age = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$GT$17h076e4bdcd3dbabf2E"(ptr noalias noundef align 8 dereferenceable(24) %i.age) #55
          to label %bb.b unwind label %bb.kg

"_ZN4core3ptr103drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$GT$17h076e4bdcd3dbabf2E.exit": ; preds = %bb.kd, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ca717c3dfa02006E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !38, !alias.scope !34441
  br label %bb.e

bb.ke:                                            ; preds = %bb.e
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0107.0.copyload = load i64, ptr %i.agf, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.4108.0.copyload = load ptr, ptr %.sroa.4108.0..sroa_idx, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.5109.0.copyload = load i64, ptr %.sroa.5109.0..sroa_idx, align 8
  br label %bb.kf

bb.kf:                                            ; preds = %bb.kh, %bb.ke
  %.sroa.4104.0 = phi i64 [ %.sroa.5109.0.copyload, %bb.ke ], [ undef, %bb.kh ]
  %.sroa.3101.0 = phi ptr [ %.sroa.4108.0.copyload, %bb.ke ], [ %.sroa.992.0153, %bb.kh ]
  %.sroa.099.0 = phi i64 [ %.sroa.0107.0.copyload, %bb.ke ], [ -9223372036854775808, %bb.kh ]
  store i64 %.sroa.099.0, ptr %0, align 8
  %.sroa.3101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3101.0, ptr %.sroa.3101.0..sroa_idx102, align 8
  %.sroa.4104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4104.0, ptr %.sroa.4104.0..sroa_idx105, align 8
  br label %common.ret

.thread390:                                       ; preds = %.thread, %bb.h
  %.sroa.01.016.i139 = phi i64 [ %i.cr, %.thread ], [ %i.da, %bb.h ] ; 4 uses
  %i.agg = sub nuw i64 %i.cr, %.sroa.01.016.i139
  %i.agh = getelementptr inbounds nuw [272 x i8], ptr %i.cp, i64 %.sroa.01.016.i139
  store ptr %i.agh, ptr %i.cm, align 8, !alias.scope !34441
  store i64 %i.agg, ptr %i.cq, align 8, !alias.scope !34441
  %i.agi = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.cp, ptr %i.agi, align 8
  %i.agj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.01.016.i139, ptr %i.agj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.agl = load ptr, ptr %i.agk, align 8, !nonnull !24, !align !31, !noundef !24
  %i.agm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.agn = load i64, ptr %i.agm, align 8, !noundef !24
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.agp = load ptr, ptr %1, align 8, !nonnull !24, !align !42, !noundef !24
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.agr = load i64, ptr %i.agq, align 8, !noundef !24
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.agt = load i8, ptr %i.ags, align 8, !range !38, !noundef !24
  %i.agu = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.cp, ptr %i.agu, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %.sroa.01.016.i139, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.agp, ptr %.sroa.985.0..sroa_idx, align 8
  %.sroa.1086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 %i.agr, ptr %.sroa.1086.0..sroa_idx, align 8
  %.sroa.1187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %i.agn, ptr %.sroa.1187.0..sroa_idx, align 8
  %.sroa.1389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.agl, ptr %.sroa.1389.0..sroa_idx, align 8
  %.sroa.1490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.agv = load <2 x ptr>, ptr %i.ago, align 8
  store <2 x ptr> %i.agv, ptr %.sroa.1490.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 283
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 284
  store i8 %i.agt, ptr %.sroa.18.0..sroa_idx, align 4
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 283
  br label %bb.l

bb.kg:                                            ; preds = %.body, %bb.kc, %.body26
  %i.agy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.kh:                                            ; preds = %bb.ka
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.992.0153) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$GT$17h076e4bdcd3dbabf2E"(ptr noalias noundef align 8 dereferenceable(24) %i.agz)
          to label %bb.kf unwind label %bb.c

.body:                                            ; preds = %bb.jv, %"_ZN4core3ptr221drop_in_place$LT$alloc..vec..Vec$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$$GT$17haa60ad78b911929cE.exit"
  %i.aha = phi ptr [ %i.ek, %"_ZN4core3ptr221drop_in_place$LT$alloc..vec..Vec$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$$GT$17haa60ad78b911929cE.exit" ], [ %i.dc, %bb.jv ]
  %.pn6 = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn.pn.pn.pn.i, %"_ZN4core3ptr221drop_in_place$LT$alloc..vec..Vec$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$core..option..Option$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$C$anyhow..Error$GT$$GT$$GT$$GT$17haa60ad78b911929cE.exit" ], [ %i.aez, %bb.jv ]
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$xtask..common..command..run_batch..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd0fd49840d4b55efE"(ptr noundef nonnull align 8 %i.aha) #55
          to label %.body26 unwind label %bb.kg
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5xtask6common7command14health_command17hcdfd2f985e62ca04E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !34664
  %i.b = tail call noundef dereferenceable_or_null(44) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 44, i64 noundef range(i64 1, 9) 1) #47, !noalias !34664 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 44, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54, !noalias !34665
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit": ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.b, ptr noundef nonnull align 1 dereferenceable(44) @1217, i64 44, i1 false), !noalias !34666
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !34667
  %i.d = tail call noundef dereferenceable_or_null(7) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 7, i64 noundef range(i64 1, 9) 1) #47, !noalias !34667 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @1218, i64 7, i1 false), !noalias !34668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775802, ptr %i.a, align 8
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !38, !noalias !34669, !noundef !24
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i", !prof !29

._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i: ; preds = %bb.e
  %.pre.i.i = load i64, ptr %i.g, align 8, !noalias !34670
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !34670
  br label %bb.g

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i": ; preds = %bb.e
  %i.k = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc13 unwind label %bb.f   ; 2 uses

.noexc13:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i"
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.m, ptr %i.n, align 8, !noalias !34671
  store i8 1, ptr %i.h, align 8, !noalias !34671
  br label %bb.g

bb.f:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i"
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$xtask..common..command..Body$GT$17h4863229f07924fbbE"(ptr noalias noundef align 8 dereferenceable(72) %i.a) #55
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit" unwind label %bb.h

bb.g:                                             ; preds = %.noexc13, %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i
  %.pre-phi36 = phi i64 [ %i.m, %.noexc13 ], [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.l, %.noexc13 ], [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i ] ; 2 uses
  %i.p = add i64 %.pre-phi, 1
  store i64 %i.p, ptr %i.g, align 8, !noalias !34670
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 44, ptr %i.q, align 8
end_hunk_0
