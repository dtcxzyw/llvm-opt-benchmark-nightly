inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E:bb.a

.lr.ph7606:                                       ; preds = %bb.ng, %bb.nh
  %i.aqe = phi ptr [ %i.aqc, %bb.nh ], [ %.sink11.i1347, %bb.ng ] ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 16
  %i.aqg = tail call fastcc noundef zeroext i1 @_ZN4rhai3ast4expr4Expr7is_pure17h777d0eb9ca9fd5bbE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aqf), !noalias !50500
  br i1 %i.aqg, label %bb.nh, label %thread-pre-split

.cont:                                            ; preds = %bb.ng, %bb.nh
  %.sroa.01.0.i1124.le = getelementptr inbounds nuw i8, ptr %.tr, i64 2 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.aqi = getelementptr inbounds nuw i8, ptr %.tr, i64 1 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %.pre4937, i64 8
  %i.aqk = getelementptr inbounds nuw i8, ptr %.pre4937, i64 24
  %i.aql = getelementptr inbounds nuw i8, ptr %.pre4937, i64 2 ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.aqm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.aqn = load ptr, ptr %i.aqj, align 8, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %.sroa.01541.0.copyload = load i64, ptr %i.aqn, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.61545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqn, i64 16
  %.sroa.61545.0..sroa_idx1546 = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.61545.0..sroa_idx1546, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.61545.0..sroa_idx, i64 80, i1 false)
  %.sroa.61547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqn, i64 96 ; 2 uses
  %.sroa.61547.0.copyload = load i64, ptr %.sroa.61547.0..sroa_idx, align 8 ; 3 uses
  store i64 0, ptr %.sroa.61547.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50503)
  %i.aqo = icmp ugt i64 %.sroa.61547.0.copyload, 3 ; 4 uses
  %.sink10.i.i1351 = select i1 %i.aqo, i64 %.sroa.4.0.copyload, i64 %.sroa.61547.0.copyload ; 3 uses
  %spec.select = select i1 %i.aqo, i64 0, i64 %.sroa.4.0.copyload
  %spec.select2029 = select i1 %i.aqo, i64 %.sroa.61547.0.copyload, i64 0
  store i64 %.sroa.01541.0.copyload, ptr %i.cn, align 8, !alias.scope !50506
  %.sroa.4.0..sroa_idx1543 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %spec.select, ptr %.sroa.4.0..sroa_idx1543, align 8, !alias.scope !50506
  %.sroa.61547.0..sroa_idx1548 = getelementptr inbounds nuw i8, ptr %i.cn, i64 96
  store i64 %spec.select2029, ptr %.sroa.61547.0..sroa_idx1548, align 8, !alias.scope !50506
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.cn, i64 104 ; 2 uses
  store i64 0, ptr %i.aqp, align 8, !alias.scope !50508, !noalias !50503
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.cn, i64 112
  store i64 %.sink10.i.i1351, ptr %i.aqq, align 8, !alias.scope !50508, !noalias !50503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50509)
  %i.aqr = icmp eq i64 %.sink10.i.i1351, 0
  br i1 %i.aqr, label %.loopexit5022, label %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.lr.ph.i"

"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.lr.ph.i": ; preds = %.cont
  %i.aqs = inttoptr i64 %.sroa.01541.0.copyload to ptr
  %.sink11.i.i.i = select i1 %i.aqo, ptr %i.aqs, ptr %i.cn
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17 ; 2 uses
  br label %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.i"

"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.i": ; preds = %.noexc3818, %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.lr.ph.i"
  %i.aqt = phi i64 [ 0, %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.lr.ph.i" ], [ %i.aqu, %.noexc3818 ] ; 2 uses
  %i.aqu = add nuw i64 %i.aqt, 1                  ; 3 uses
  store i64 %i.aqu, ptr %i.aqp, align 8, !alias.scope !50512, !noalias !50515
  %i.aqv = getelementptr inbounds nuw [32 x i8], ptr %.sink11.i.i.i, i64 %i.aqt ; 3 uses
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.aqv, i64 16
  %.sroa.6.0.copyload5.i = load i8, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !50519 ; 6 uses
  %.not.i3815 = icmp eq i8 %.sroa.6.0.copyload5.i, 21
  br i1 %.not.i3815, label %.loopexit5022, label %bb.ni

bb.ni:                                            ; preds = %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.i"
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.aqv, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !50520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.aqv, i64 16, i1 false), !noalias !50519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.8.0..sroa_idx6.i, i64 15, i1 false), !noalias !50519
  store i8 %.sroa.6.0.copyload5.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !50520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50521)
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !50524, !noalias !50527, !nonnull !3, !noundef !3 ; 3 uses
  %i.aqw = load ptr, ptr %i.aqk, align 8, !noalias !50530, !nonnull !3, !align !4, !noundef !3
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 32
  %i.aqy = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16 ; 3 uses
  %i.aqz = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aqy)
          to label %.noexc.i.i unwind label %bb.nn, !noalias !50530

.noexc.i.i:                                       ; preds = %bb.ni
  br i1 %i.aqz, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %.noexc.i.i
  %i.ara = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aqy)
          to label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i" unwind label %bb.nn, !noalias !50530

bb.nk:                                            ; preds = %.noexc.i.i
  %i.arb = load ptr, ptr %i.aqy, align 8, !noalias !50531, !nonnull !3, !noundef !3
  %i.arc = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 32
  %i.ard = load i64, ptr %i.arc, align 8, !noalias !50531, !noundef !3
  %i.are = insertvalue { ptr, i64 } poison, ptr %i.arb, 0
  %i.arf = insertvalue { ptr, i64 } %i.are, i64 %i.ard, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i": ; preds = %bb.nj, %bb.nk
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ %i.arf, %bb.nk ], [ %i.ara, %bb.nj ] ; 2 uses
  %i.arg = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50535)
  %i.arh = load ptr, ptr %i.aqx, align 8, !alias.scope !50535, !noalias !50538, !nonnull !3, !noundef !3 ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 16 ; 3 uses
  %i.arj = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ari)
          to label %.noexc3.i.i unwind label %bb.nn, !noalias !50530

.noexc3.i.i:                                      ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i"
  br i1 %i.arj, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %.noexc3.i.i
  %i.ark = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ari)
          to label %"_ZN98_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17hb8582d5a222231a0E.exit.i.i.i" unwind label %bb.nn, !noalias !50530

bb.nm:                                            ; preds = %.noexc3.i.i
  %i.arl = load ptr, ptr %i.ari, align 8, !noalias !50539, !nonnull !3, !noundef !3
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arh, i64 32
  %i.arn = load i64, ptr %i.arm, align 8, !noalias !50539, !noundef !3
  %i.aro = insertvalue { ptr, i64 } poison, ptr %i.arl, 0
  %i.arp = insertvalue { ptr, i64 } %i.aro, i64 %i.arn, 1
  br label %"_ZN98_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17hb8582d5a222231a0E.exit.i.i.i"

"_ZN98_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17hb8582d5a222231a0E.exit.i.i.i": ; preds = %bb.nl, %bb.nm
  %.merged.i.i3.i.i.i = phi { ptr, i64 } [ %i.arp, %bb.nm ], [ %i.ark, %bb.nl ] ; 2 uses
  %i.arq = extractvalue { ptr, i64 } %.merged.i.i3.i.i.i, 1
  %.not.i.i.i.i = icmp eq i64 %i.arg, %i.arq
  br i1 %.not.i.i.i.i, label %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h2464a6b7ab1ae6fcE.exit.i.i", label %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h2464a6b7ab1ae6fcE.exit.thread.i.i"

bb.nn:                                            ; preds = %bb.nl, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i", %bb.nj, %bb.ni
  %i.arr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$$LP$rhai..ast..ident..Ident$C$rhai..ast..expr..Expr$RP$$GT$17hc79a89ea2bae1012E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.c) #72
          to label %.body unwind label %bb.nr, !noalias !50540

"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h2464a6b7ab1ae6fcE.exit.i.i": ; preds = %"_ZN98_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17hb8582d5a222231a0E.exit.i.i.i"
  %i.ars = extractvalue { ptr, i64 } %.merged.i.i3.i.i.i, 0
  %i.art = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0
  %bcmp.i.i.i.i3816 = tail call i32 @bcmp(ptr %i.art, ptr %i.ars, i64 %i.arg), !noalias !50538
  %i.aru = icmp eq i32 %bcmp.i.i.i.i3816, 0
  br i1 %i.aru, label %bb.nt, label %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h2464a6b7ab1ae6fcE.exit.thread.i.i"

"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h2464a6b7ab1ae6fcE.exit.thread.i.i": ; preds = %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h2464a6b7ab1ae6fcE.exit.i.i", %"_ZN98_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17hb8582d5a222231a0E.exit.i.i.i"
  %i.arv = atomicrmw sub ptr %.val1.i.i, i64 1 release, align 8, !noalias !50541
  %i.arw = icmp eq i64 %i.arv, 1
  br i1 %i.arw, label %bb.no, label %bb.ns

bb.no:                                            ; preds = %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h2464a6b7ab1ae6fcE.exit.thread.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.c)
          to label %bb.ns unwind label %bb.np, !noalias !50540, !inline_history !11528

bb.np:                                            ; preds = %bb.no
  %i.arx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i) #74
          to label %.body unwind label %bb.nq, !noalias !50540, !inline_history !11528

bb.nq:                                            ; preds = %bb.np
  %i.ary = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !50552, !inline_history !11528
  unreachable

bb.nr:                                            ; preds = %bb.nn
  %i.arz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !50530
  unreachable

bb.ns:                                            ; preds = %bb.no, %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h2464a6b7ab1ae6fcE.exit.thread.i.i"
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i) #75
          to label %.noexc3818 unwind label %.loopexit3957

.noexc3818:                                       ; preds = %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50520
  %i.asa = icmp eq i64 %i.aqu, %.sink10.i.i1351
  br i1 %i.asa, label %.loopexit5022, label %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.i"

.body:                                            ; preds = %.loopexit3957, %.loopexit.split-lp, %bb.np, %bb.nn, %bb.nw
  %.pn770 = phi { ptr, i32 } [ %i.asl, %bb.nw ], [ %i.arr, %bb.nn ], [ %i.arx, %bb.np ], [ %lpad.loopexit, %.loopexit3957 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr123drop_in_place$LT$smallvec..IntoIter$LT$$u5b$$LP$rhai..ast..ident..Ident$C$rhai..ast..expr..Expr$RP$$u3b$$u20$3$u5d$$GT$$GT$17h950984db57bc5939E"(ptr noalias noundef align 8 dereferenceable(120) %i.cn) #72
          to label %common.resume unwind label %bb.ai

.loopexit3957:                                    ; preds = %bb.ns
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.nv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.nt:                                            ; preds = %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17h2464a6b7ab1ae6fcE.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.7.0..sroa_idx4933 = getelementptr inbounds nuw i8, ptr %i.co, i64 17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.0..sroa_idx4933, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3.0..sroa_idx.i, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50520
  %.sroa.4.0..sroa_idx4931 = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i8 %.sroa.6.0.copyload5.i, ptr %.sroa.4.0..sroa_idx4931, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50556)
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.7.0..sroa_idx4933, align 1, !alias.scope !50559, !noalias !50560 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 22
  %.sroa.9.0.copyload.i.i = load i16, ptr %.sroa.9.0..sroa_idx.i.i, align 2, !alias.scope !50559, !noalias !50560 ; 2 uses
  %.sroa.911.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.sroa.911.0.copyload.i.i = load ptr, ptr %.sroa.911.0..sroa_idx.i.i, align 8, !alias.scope !50559, !noalias !50560 ; 4 uses
  %i.asb = load <2 x i16>, ptr %i.aql, align 2, !noalias !50563 ; 2 uses
  %i.asc = icmp eq i8 %.sroa.6.0.copyload5.i, 14
  br i1 %i.asc, label %bb.nu, label %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i

bb.nu:                                            ; preds = %bb.nt
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 18
  %i.asd = load <2 x i16>, ptr %.sroa.54.0..sroa_idx.i.i, align 2, !alias.scope !50559, !noalias !50560
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.911.0.copyload.i.i) ]
  %i.ase = getelementptr inbounds nuw i8, ptr %.sroa.911.0.copyload.i.i, i64 136
  %3 = shufflevector <2 x i16> %i.asb, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %4 = shufflevector <4 x i16> %3, <4 x i16> <i16 poison, i16 poison, i16 0, i16 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i16> %4, ptr %i.ase, align 8, !noalias !50564
  br label %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i

_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i: ; preds = %bb.nu, %bb.nt
  %i.asf = phi <2 x i16> [ %i.asb, %bb.nt ], [ %i.asd, %bb.nu ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50576)
  %i.asg = load ptr, ptr %i.co, align 8, !alias.scope !50579, !noalias !50560, !nonnull !3, !noundef !3
  %i.ash = atomicrmw sub ptr %i.asg, i64 1 release, align 8, !noalias !50580
  %i.asi = icmp eq i64 %i.ash, 1
  br i1 %i.asi, label %bb.nv, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hc91b0378e4d58025E.exit"

bb.nv:                                            ; preds = %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.co)
          to label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hc91b0378e4d58025E.exit" unwind label %.loopexit.split-lp

.loopexit5022:                                    ; preds = %.noexc3818, %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.i", %.cont
  %i.asj = load <2 x i16>, ptr %i.aql, align 2, !noalias !50581
  br label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hc91b0378e4d58025E.exit"

"_ZN4core6option15Option$LT$T$GT$11map_or_else17hc91b0378e4d58025E.exit": ; preds = %.loopexit5022, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i, %bb.nv
  %.sroa.12.0 = phi ptr [ undef, %.loopexit5022 ], [ %.sroa.911.0.copyload.i.i, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i ], [ %.sroa.911.0.copyload.i.i, %bb.nv ] ; 2 uses
  %.sroa.11.0 = phi i16 [ undef, %.loopexit5022 ], [ %.sroa.9.0.copyload.i.i, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i ], [ %.sroa.9.0.copyload.i.i, %bb.nv ] ; 2 uses
  %.sroa.6.0 = phi i8 [ undef, %.loopexit5022 ], [ %.sroa.5.0.copyload.i.i, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i ], [ %.sroa.5.0.copyload.i.i, %bb.nv ] ; 2 uses
  %.sroa.03913.0 = phi i8 [ 9, %.loopexit5022 ], [ %.sroa.6.0.copyload5.i, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i ], [ %.sroa.6.0.copyload5.i, %bb.nv ] ; 2 uses
  %i.ask = phi <2 x i16> [ %i.asj, %.loopexit5022 ], [ %i.asf, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i ], [ %i.asf, %bb.nv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.nx unwind label %bb.nw

bb.nw:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hc91b0378e4d58025E.exit"
  %i.asl = landingpad { ptr, i32 }
          cleanup
  store i8 %.sroa.03913.0, ptr %.tr, align 8
  store i8 %.sroa.6.0, ptr %i.aqi, align 1
  %i.asm = extractelement <2 x i16> %i.ask, i64 0
  store i16 %i.asm, ptr %.sroa.01.0.i1124.le, align 2
  %i.asn = extractelement <2 x i16> %i.ask, i64 1
  store i16 %i.asn, ptr %i.aqh, align 4
  %.sroa.11.0..tr.sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 6
  store i16 %.sroa.11.0, ptr %.sroa.11.0..tr.sroa_idx, align 2
  store ptr %.sroa.12.0, ptr %i.fp, align 8
  br label %.body

bb.nx:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hc91b0378e4d58025E.exit"
  store i8 %.sroa.03913.0, ptr %.tr, align 8
  store i8 %.sroa.6.0, ptr %i.aqi, align 1
  store <2 x i16> %i.ask, ptr %.sroa.01.0.i1124.le, align 2
  %.sroa.11.0..tr.sroa_idx3923 = getelementptr inbounds nuw i8, ptr %.tr, i64 6
  store i16 %.sroa.11.0, ptr %.sroa.11.0..tr.sroa_idx3923, align 2
  store ptr %.sroa.12.0, ptr %i.fp, align 8
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$smallvec..IntoIter$LT$$u5b$$LP$rhai..ast..ident..Ident$C$rhai..ast..expr..Expr$RP$$u3b$$u20$3$u5d$$GT$$GT$17h950984db57bc5939E"(ptr noalias noundef align 8 dereferenceable(120) %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

bb.ny:                                            ; preds = %bb.nf
  %i.aso = getelementptr inbounds nuw i8, ptr %.pre4937, i64 8 ; 2 uses
  %i.asp = load i8, ptr %i.cy, align 1, !range !5, !noundef !3
  %i.asq = trunc nuw i8 %i.asp to i1
  br i1 %i.asq, label %bb.nz, label %tailrecurse.backedge

bb.nz:                                            ; preds = %bb.ny
  %i.asr = load ptr, ptr %i.aso, align 8, !nonnull !3, !align !4, !noundef !3
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 8
  %i.ast = load ptr, ptr %i.ass, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 16 ; 3 uses
  %i.asv = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.asu)
  br i1 %i.asv, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  %i.asw = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.asu) ; 2 uses
  %i.asx = extractvalue { ptr, i64 } %i.asw, 0
  %i.asy = extractvalue { ptr, i64 } %i.asw, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit945"

bb.ob:                                            ; preds = %bb.nz
  %i.asz = load ptr, ptr %i.asu, align 8, !nonnull !3, !noundef !3
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ast, i64 32
  %i.atb = load i64, ptr %i.ata, align 8, !noundef !3
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit945"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit945": ; preds = %bb.oa, %bb.ob
  %.sroa.0.0.i943 = phi ptr [ %i.asx, %bb.oa ], [ %i.asz, %bb.ob ] ; 2 uses
  %.merged.i944 = phi i64 [ %i.asy, %bb.oa ], [ %i.atb, %bb.ob ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i943) ]
  %.val1102 = load ptr, ptr %i.cz, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.val1103 = load i64, ptr %i.da, align 8, !noundef !3 ; 2 uses
  %i.atc = icmp eq i64 %.val1103, 0
  br i1 %i.atc, label %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3836, label %.lr.ph.i.preheader.i3824

.lr.ph.i.preheader.i3824:                         ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit945"
  %.idx.i3825 = mul nuw nsw i64 %.val1103, 24
  %i.atd = getelementptr inbounds nuw i8, ptr %.val1102, i64 %.idx.i3825
  br label %.lr.ph.i.i3826

.lr.ph.i.i3826:                                   ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3831", %.lr.ph.i.preheader.i3824
  %i.ate = phi ptr [ %i.atf, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3831" ], [ %i.atd, %.lr.ph.i.preheader.i3824 ] ; 3 uses
  %i.atf = getelementptr inbounds i8, ptr %i.ate, i64 -24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50587)
  %i.atg = load ptr, ptr %i.atf, align 8, !alias.scope !50590, !noalias !50591, !nonnull !3, !noundef !3 ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 16 ; 3 uses
  %i.ati = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ath), !noalias !50598
  br i1 %i.ati, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %.lr.ph.i.i3826
  %i.atj = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ath), !noalias !50598
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i.i3827"

bb.od:                                            ; preds = %.lr.ph.i.i3826
  %i.atk = load ptr, ptr %i.ath, align 8, !noalias !50598, !nonnull !3, !noundef !3
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atg, i64 32
  %i.atm = load i64, ptr %i.atl, align 8, !noalias !50598, !noundef !3
  %i.atn = insertvalue { ptr, i64 } poison, ptr %i.atk, 0
  %i.ato = insertvalue { ptr, i64 } %i.atn, i64 %i.atm, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i.i3827"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i.i3827": ; preds = %bb.od, %bb.oc
  %.merged.i.i.i.i.i.i3829 = phi { ptr, i64 } [ %i.atj, %bb.oc ], [ %i.ato, %bb.od ] ; 2 uses
  %i.atp = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i3829, 1
  %.not.i.i.i.i.i3830 = icmp eq i64 %i.atp, %.merged.i944
  br i1 %.not.i.i.i.i.i3830, label %"_ZN4rhai9optimizer14OptimizerState21find_literal_constant28_$u7b$$u7b$closure$u7d$$u7d$17h2145de2a79ed1a30E.exit.i.i.i3832", label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3831"

"_ZN4rhai9optimizer14OptimizerState21find_literal_constant28_$u7b$$u7b$closure$u7d$$u7d$17h2145de2a79ed1a30E.exit.i.i.i3832": ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i.i3827"
  %i.atq = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i3829, 0
  %bcmp.i.i.i.i.i3833 = tail call i32 @bcmp(ptr %i.atq, ptr nonnull readonly align 1 %.sroa.0.0.i943, i64 %.merged.i944), !noalias !50599
  %bcmp.i.i.fr.i.i.i3834 = freeze i32 %bcmp.i.i.i.i.i3833
  %i.atr = icmp eq i32 %bcmp.i.i.fr.i.i.i3834, 0
  br i1 %i.atr, label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3835, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3831"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3831": ; preds = %"_ZN4rhai9optimizer14OptimizerState21find_literal_constant28_$u7b$$u7b$closure$u7d$$u7d$17h2145de2a79ed1a30E.exit.i.i.i3832", %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i.i3827"
  %i.ats = icmp eq ptr %.val1102, %i.atf
  br i1 %i.ats, label %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3836, label %.lr.ph.i.i3826

_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3835: ; preds = %"_ZN4rhai9optimizer14OptimizerState21find_literal_constant28_$u7b$$u7b$closure$u7d$$u7d$17h2145de2a79ed1a30E.exit.i.i.i3832"
  %i.att = getelementptr inbounds i8, ptr %i.ate, i64 -16 ; 2 uses
  %i.atu = load i8, ptr %i.att, align 8, !range !11819, !noalias !50600, !noundef !3
  switch i8 %i.atu, label %bb.of [
    i8 13, label %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3836
    i8 12, label %bb.oe
  ]

bb.oe:                                            ; preds = %_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3835
  %i.atv = getelementptr inbounds i8, ptr %i.ate, i64 -8
  %i.atw = load ptr, ptr %i.atv, align 8, !noalias !50600, !nonnull !3, !align !4, !noundef !3
  br label %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3836

bb.of:                                            ; preds = %_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3835
  br label %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3836

_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3836: ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3831", %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit945", %_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3835, %bb.oe, %bb.of
  %.sroa.0.0.i = phi ptr [ null, %_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3835 ], [ %i.att, %bb.of ], [ %i.atw, %bb.oe ], [ null, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit945" ], [ null, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3831" ]
  %i.atx = tail call fastcc noundef zeroext i1 @"_ZN4core6option15Option$LT$T$GT$6map_or17h2cca40479d5462dbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.0.0.i)
  br i1 %i.atx, label %bb.og, label %tailrecurse.backedge

bb.og:                                            ; preds = %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3836
  %i.aty = getelementptr inbounds nuw i8, ptr %.pre4937, i64 2
  %i.atz = getelementptr inbounds nuw i8, ptr %.pre4937, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.645)
  %i.aua = load ptr, ptr %i.aso, align 8, !nonnull !3, !align !4, !noundef !3
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 8
  %i.auc = load ptr, ptr %i.aub, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 16 ; 3 uses
  %i.aue = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aud)
  br i1 %i.aue, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %bb.og
  %i.auf = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aud) ; 2 uses
  %i.aug = extractvalue { ptr, i64 } %i.auf, 0
  %i.auh = extractvalue { ptr, i64 } %i.auf, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit942"

bb.oi:                                            ; preds = %bb.og
  %i.aui = load ptr, ptr %i.aud, align 8, !nonnull !3, !noundef !3
  %i.auj = getelementptr inbounds nuw i8, ptr %i.auc, i64 32
  %i.auk = load i64, ptr %i.auj, align 8, !noundef !3
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit942"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit942": ; preds = %bb.oh, %bb.oi
  %.sroa.0.0.i940 = phi ptr [ %i.aug, %bb.oh ], [ %i.aui, %bb.oi ] ; 2 uses
  %.merged.i941 = phi i64 [ %i.auh, %bb.oh ], [ %i.auk, %bb.oi ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i940) ]
  %.val1100 = load ptr, ptr %i.cz, align 8, !nonnull !3, !noundef !3
  %.val1101 = load i64, ptr %i.da, align 8, !noundef !3
  %i.aul = tail call fastcc noundef align 8 dereferenceable_or_null(16) ptr @_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE(ptr nonnull %.val1100, i64 %.val1101, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i940, i64 noundef %.merged.i941) ; 4 uses
  %.not762 = icmp eq ptr %i.aul, null
  br i1 %.not762, label %bb.ok, label %bb.oj, !prof !543

bb.oj:                                            ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit942"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.val1077 = load i8, ptr %i.aul, align 8, !range !645, !noundef !3
  %i.aum = getelementptr i8, ptr %i.aul, i64 8
  %.val1078 = load ptr, ptr %i.aum, align 8
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic9read_lock17h6a9d8b16f098c7d9E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, i8 %.val1077, ptr %.val1078)
  %i.aun = load i64, ptr %i.u, align 8, !range !455, !noundef !3
  %i.auo = trunc nuw i64 %i.aun to i1
  br i1 %i.auo, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h57edf0258c57d649E.exit870", label %bb.ol

end_hunk_0
begin_hunk_1_@_ZN4rhai9optimizer13optimize_expr17haeffafea56131100E:bb.a

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit926": ; preds = %bb.td, %bb.te
  %.sroa.0.0.i924 = phi ptr [ %i.bgj, %bb.td ], [ %i.bgl, %bb.te ] ; 3 uses
  %.merged.i925 = phi i64 [ %i.bgk, %bb.td ], [ %i.bgn, %bb.te ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i924) ]
  %i.bgo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i924, i64 %.merged.i925
  store ptr %.sroa.0.0.i924, ptr %i.bx, align 8
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bgo, ptr %i.bgp, align 8
  %i.bgq = load i64, ptr %i.beh, align 8, !noundef !3
  %.sroa.0595.0 = tail call i64 @llvm.abs.i64(i64 %i.bgq, i1 false)
  %i.bgr = add i64 %.sroa.0595.0, -1
  %i.bgs = call fastcc noundef i64 @_ZN4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_by17h79f7a1fb7902042cE(ptr noalias noundef align 8 dereferenceable(16) %i.bx, i64 noundef %i.bgr)
  %.not751 = icmp eq i64 %i.bgs, 0
  br i1 %.not751, label %bb.tf, label %.thread1982

bb.tf:                                            ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit926"
  %i.bgt = call fastcc { i32, i32 } @_ZN4core3str11validations23next_code_point_reverse17h91a344c48779acd6E(ptr noalias noundef align 8 dereferenceable(16) %i.bx) ; 2 uses
  %i.bgu = extractvalue { i32, i32 } %i.bgt, 0
  %i.bgv = trunc i32 %i.bgu to i1
  %i.bgw = extractvalue { i32, i32 } %i.bgt, 1    ; 3 uses
  %.not752 = icmp ne i32 %i.bgw, 1114112
  %or.cond2030.not = select i1 %i.bgv, i1 %.not752, i1 false
  br i1 %or.cond2030.not, label %bb.tg, label %.thread1982, !prof !1645

bb.tg:                                            ; preds = %bb.tf
  %i.bgx = load <2 x i16>, ptr %i.bgd, align 2    ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.ti unwind label %bb.th

.thread1982:                                      ; preds = %bb.tf, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit926"
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2198) #70
  unreachable

bb.th:                                            ; preds = %bb.tg
  %i.bgy = landingpad { ptr, i32 }
          cleanup
  store i8 4, ptr %.tr, align 8
  %i.bgz = extractelement <2 x i16> %i.bgx, i64 0
  store i16 %i.bgz, ptr %.sroa.01.0.i1124.le7125, align 2
  %i.bha = extractelement <2 x i16> %i.bgx, i64 1
  store i16 %i.bha, ptr %i.bgc, align 4
  store i32 %i.bgw, ptr %i.ft, align 8
  br label %common.resume

bb.ti:                                            ; preds = %bb.tg
  store i8 4, ptr %.tr, align 8
  store <2 x i16> %i.bgx, ptr %.sroa.01.0.i1124.le7125, align 2
  store i32 %i.bgw, ptr %i.ft, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

.split692:                                        ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit929"
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @425, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2199) #70
  unreachable

.split690:                                        ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit929"
  %i.bhb = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE"(ptr noalias noundef align 8 dereferenceable(16) %i.by, i64 noundef %i.bfm)
  %.not753 = icmp eq i64 %i.bhb, 0
  br i1 %.not753, label %bb.tj, label %.thread1987

bb.tj:                                            ; preds = %.split690
  %i.bhc = call fastcc { i32, i32 } @_ZN4core3str11validations15next_code_point17h5bd96adb02bfb3e4E(ptr noalias noundef align 8 dereferenceable(16) %i.by) ; 2 uses
  %i.bhd = extractvalue { i32, i32 } %i.bhc, 0
  %i.bhe = trunc i32 %i.bhd to i1
  %i.bhf = extractvalue { i32, i32 } %i.bhc, 1    ; 3 uses
  %.not754 = icmp ne i32 %i.bhf, 1114112
  %or.cond2032.not = select i1 %i.bhe, i1 %.not754, i1 false
  br i1 %or.cond2032.not, label %bb.tk, label %.thread1987, !prof !1645

bb.tk:                                            ; preds = %bb.tj
  %i.bhg = load <2 x i16>, ptr %i.bez, align 2    ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.tm unwind label %bb.tl

.thread1987:                                      ; preds = %bb.tj, %.split690
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2200) #70
  unreachable

bb.tl:                                            ; preds = %bb.tk
  %i.bhh = landingpad { ptr, i32 }
          cleanup
  store i8 4, ptr %.tr, align 8
  %i.bhi = extractelement <2 x i16> %i.bhg, i64 0
  store i16 %i.bhi, ptr %.sroa.01.0.i1124.le7127, align 2
  %i.bhj = extractelement <2 x i16> %i.bhg, i64 1
  store i16 %i.bhj, ptr %i.bey, align 4
  store i32 %i.bhf, ptr %i.ft, align 8
  br label %common.resume

bb.tm:                                            ; preds = %bb.tk
  store i8 4, ptr %.tr, align 8
  store <2 x i16> %i.bhg, ptr %.sroa.01.0.i1124.le7127, align 2
  store i32 %i.bhf, ptr %i.ft, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

bb.tn:                                            ; preds = %bb.ql
  %i.bhk = getelementptr inbounds nuw i8, ptr %.pre4934, i64 8 ; 4 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %.pre4934, i64 24 ; 4 uses
  %i.bhm = load i64, ptr %i.bhl, align 8, !noundef !3 ; 3 uses
  %i.bhn = icmp slt i64 %i.bhm, 0
  %.pre3028 = load ptr, ptr %i.bhk, align 8       ; 3 uses
  br i1 %i.bhn, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit.thread2028", label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.bho = load i64, ptr %.pre3028, align 8, !noundef !3 ; 2 uses
  %i.bhp = icmp ult i64 %i.bhm, %i.bho
  br i1 %i.bhp, label %.lr.ph7579, label %.critedge860

.lr.ph7579:                                       ; preds = %bb.to
  %i.bhq = getelementptr inbounds nuw i8, ptr %.pre3028, i64 16 ; 2 uses
  %.idx7619 = shl nuw nsw i64 %i.bho, 4
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 %.idx7619
  br label %bb.tq

bb.tp:                                            ; preds = %bb.tq
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhu, i64 16 ; 2 uses
  %i.bht = icmp eq ptr %i.bhs, %i.bhr
  br i1 %i.bht, label %._crit_edge7585, label %bb.tq

bb.tq:                                            ; preds = %.lr.ph7579, %bb.tp
  %i.bhu = phi ptr [ %i.bhq, %.lr.ph7579 ], [ %i.bhs, %bb.tp ] ; 2 uses
  %i.bhv = tail call fastcc noundef zeroext i1 @_ZN4rhai3ast4expr4Expr7is_pure17h777d0eb9ca9fd5bbE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bhu), !noalias !50650, !inline_history !50653
  br i1 %i.bhv, label %bb.tp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit": ; preds = %bb.tq
  %.pr2027.pre = load i64, ptr %i.bhl, align 8    ; 2 uses
  %i.bhw = icmp slt i64 %.pr2027.pre, 0
  br i1 %i.bhw, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit._ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit.thread2028_crit_edge", label %.critedge860

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit._ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit.thread2028_crit_edge": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit"
  %.pre3027 = load ptr, ptr %i.bhk, align 8
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit.thread2028"

._crit_edge7585:                                  ; preds = %bb.tp
  %.sroa.01.0.i1124.le7131 = getelementptr inbounds nuw i8, ptr %.tr, i64 2 ; 2 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.bhy = getelementptr inbounds nuw i8, ptr %.tr, i64 1 ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %.pre4934, i64 2
  %i.bia = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.bia, align 8
  %.val1023 = load ptr, ptr %i.bhk, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %.val1023, i64 16
  %i.bic = load i64, ptr %.val1023, align 8, !noundef !3 ; 2 uses
  %i.bid = load i64, ptr %i.bhl, align 8, !noundef !3 ; 4 uses
  %i.bie = icmp sgt i64 %i.bid, -1
  br i1 %i.bie, label %.split695, label %.split697

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit.thread2028": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit._ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit.thread2028_crit_edge", %bb.tn
  %i.bif = phi ptr [ %.pre3027, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit._ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit.thread2028_crit_edge" ], [ %.pre3028, %bb.tn ] ; 2 uses
  %i.big = phi i64 [ %.pr2027.pre, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit._ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit.thread2028_crit_edge" ], [ %i.bhm, %bb.tn ]
  %i.bih = sub i64 0, %i.big
  %i.bii = load i64, ptr %i.bif, align 8, !noundef !3 ; 3 uses
  %.not746 = icmp ult i64 %i.bii, %i.bih
  br i1 %.not746, label %.critedge860, label %bb.tr

bb.tr:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h69facf0220ab10aaE.exit.thread2028"
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bif, i64 16 ; 2 uses
  %.idx7620 = shl nuw nsw i64 %i.bii, 4
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 %.idx7620
  %i.bil = icmp eq i64 %i.bii, 0
  br i1 %i.bil, label %._crit_edge7593, label %.lr.ph7592

bb.ts:                                            ; preds = %.lr.ph7592
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bio, i64 16 ; 2 uses
  %i.bin = icmp eq ptr %i.bim, %i.bik
  br i1 %i.bin, label %._crit_edge7593, label %.lr.ph7592

.lr.ph7592:                                       ; preds = %bb.tr, %bb.ts
  %i.bio = phi ptr [ %i.bim, %bb.ts ], [ %i.bij, %bb.tr ] ; 2 uses
  %i.bip = tail call fastcc noundef zeroext i1 @_ZN4rhai3ast4expr4Expr7is_pure17h777d0eb9ca9fd5bbE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bio), !noalias !50654, !inline_history !50653
  br i1 %i.bip, label %bb.ts, label %.critedge860

._crit_edge7593:                                  ; preds = %bb.tr, %bb.ts
  %.sroa.01.0.i1124.le7129 = getelementptr inbounds nuw i8, ptr %.tr, i64 2 ; 2 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.bir = getelementptr inbounds nuw i8, ptr %.tr, i64 1 ; 2 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.bis, align 8
  %i.bit = load ptr, ptr %i.bhk, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.biu = load i64, ptr %i.bit, align 8, !noundef !3 ; 3 uses
  %i.biv = load i64, ptr %i.bhl, align 8, !noundef !3
  %.sroa.0580.0 = tail call i64 @llvm.abs.i64(i64 %i.biv, i1 false)
  %i.biw = sub i64 %i.biu, %.sroa.0580.0          ; 3 uses
  %i.bix = icmp ult i64 %i.biw, %i.biu
  br i1 %i.bix, label %bb.tt, label %bb.tv

bb.tt:                                            ; preds = %._crit_edge7593
  %i.biy = getelementptr inbounds nuw i8, ptr %.pre4934, i64 2
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bit, i64 16
  %i.bja = getelementptr inbounds nuw [16 x i8], ptr %i.biz, i64 %i.biw ; 7 uses
  %.sroa.02980.0.copyload = load i8, ptr %i.bja, align 8 ; 3 uses
  %.sroa.52982.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bja, i64 1
  %.sroa.52982.0.copyload = load i8, ptr %.sroa.52982.0..sroa_idx, align 1 ; 2 uses
  %.sroa.52985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bja, i64 2 ; 2 uses
  %.sroa.72988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bja, i64 4
  %.sroa.92991.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bja, i64 6
  %.sroa.92991.0.copyload = load i16, ptr %.sroa.92991.0..sroa_idx, align 2 ; 2 uses
  %.sroa.92994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bja, i64 8
  %.sroa.92994.0.copyload = load ptr, ptr %.sroa.92994.0..sroa_idx, align 8 ; 4 uses
  store i8 9, ptr %i.bja, align 8
  %i.bjb = load <2 x i16>, ptr %.sroa.52985.0..sroa_idx, align 2
  store i16 0, ptr %.sroa.52985.0..sroa_idx, align 2
  store i16 0, ptr %.sroa.72988.0..sroa_idx, align 4
  %i.bjc = load <2 x i16>, ptr %i.biy, align 2    ; 2 uses
  %i.bjd = icmp eq i8 %.sroa.02980.0.copyload, 14
  br i1 %i.bjd, label %bb.tu, label %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit

bb.tu:                                            ; preds = %bb.tt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.92994.0.copyload) ]
  %i.bje = getelementptr inbounds nuw i8, ptr %.sroa.92994.0.copyload, i64 136
  %5 = shufflevector <2 x i16> %i.bjc, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x i16> %5, <4 x i16> <i16 poison, i16 poison, i16 0, i16 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i16> %6, ptr %i.bje, align 8, !noalias !50657
  br label %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit

bb.tv:                                            ; preds = %._crit_edge7593
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.biw, i64 noundef %i.biu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2201) #70
  unreachable

bb.tw:                                            ; preds = %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit
  %i.bjf = landingpad { ptr, i32 }
          cleanup
  store i8 %.sroa.02980.0.copyload, ptr %.tr, align 8
  store i8 %.sroa.52982.0.copyload, ptr %i.bir, align 1
  %i.bjg = extractelement <2 x i16> %i.bji, i64 0
  store i16 %i.bjg, ptr %.sroa.01.0.i1124.le7129, align 2
  %i.bjh = extractelement <2 x i16> %i.bji, i64 1
  store i16 %i.bjh, ptr %i.biq, align 4
  %.sroa.83008.0..tr.lcssa2880.sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 6
  store i16 %.sroa.92991.0.copyload, ptr %.sroa.83008.0..tr.lcssa2880.sroa_idx, align 2
  store ptr %.sroa.92994.0.copyload, ptr %i.ft, align 8
  br label %common.resume

_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit: ; preds = %bb.tt, %bb.tu
  %i.bji = phi <2 x i16> [ %i.bjc, %bb.tt ], [ %i.bjb, %bb.tu ] ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.tx unwind label %bb.tw

bb.tx:                                            ; preds = %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit
  store i8 %.sroa.02980.0.copyload, ptr %.tr, align 8
  store i8 %.sroa.52982.0.copyload, ptr %i.bir, align 1
  store <2 x i16> %i.bji, ptr %.sroa.01.0.i1124.le7129, align 2
  %.sroa.83008.0..tr.lcssa2880.sroa_idx3009 = getelementptr inbounds nuw i8, ptr %.tr, i64 6
  store i16 %.sroa.92991.0.copyload, ptr %.sroa.83008.0..tr.lcssa2880.sroa_idx3009, align 2
  store ptr %.sroa.92994.0.copyload, ptr %i.ft, align 8
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

.split697:                                        ; preds = %._crit_edge7585
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @425, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2202) #70
  unreachable

.split695:                                        ; preds = %._crit_edge7585
  %i.bjj = icmp ult i64 %i.bid, %i.bic
  br i1 %i.bjj, label %bb.ty, label %bb.ua

bb.ty:                                            ; preds = %.split695
  %i.bjk = getelementptr inbounds nuw [16 x i8], ptr %i.bib, i64 %i.bid ; 7 uses
  %.sroa.0.0.copyload = load i8, ptr %i.bjk, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjk, i64 1
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.52955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjk, i64 2 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjk, i64 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjk, i64 6
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2 ; 2 uses
  %.sroa.92962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjk, i64 8
  %.sroa.92962.0.copyload = load ptr, ptr %.sroa.92962.0..sroa_idx, align 8 ; 4 uses
  store i8 9, ptr %i.bjk, align 8
  %i.bjl = load <2 x i16>, ptr %.sroa.52955.0..sroa_idx, align 2
  store i16 0, ptr %.sroa.52955.0..sroa_idx, align 2
  store i16 0, ptr %.sroa.7.0..sroa_idx, align 4
  %i.bjm = load <2 x i16>, ptr %i.bhz, align 2    ; 2 uses
  %i.bjn = icmp eq i8 %.sroa.0.0.copyload, 14
  br i1 %i.bjn, label %bb.tz, label %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit1419

bb.tz:                                            ; preds = %bb.ty
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.92962.0.copyload) ]
  %i.bjo = getelementptr inbounds nuw i8, ptr %.sroa.92962.0.copyload, i64 136
  %7 = shufflevector <2 x i16> %i.bjm, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x i16> %7, <4 x i16> <i16 poison, i16 poison, i16 0, i16 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i16> %8, ptr %i.bjo, align 8, !noalias !50660
  br label %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit1419

bb.ua:                                            ; preds = %.split695
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bid, i64 noundef %i.bic, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2203) #70
  unreachable

bb.ub:                                            ; preds = %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit1419
  %i.bjp = landingpad { ptr, i32 }
          cleanup
  store i8 %.sroa.0.0.copyload, ptr %.tr, align 8
  store i8 %.sroa.5.0.copyload, ptr %i.bhy, align 1
  %i.bjq = extractelement <2 x i16> %i.bjs, i64 0
  store i16 %i.bjq, ptr %.sroa.01.0.i1124.le7131, align 2
  %i.bjr = extractelement <2 x i16> %i.bjs, i64 1
  store i16 %i.bjr, ptr %i.bhx, align 4
  %.sroa.8.0..tr.lcssa2879.sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 6
  store i16 %.sroa.9.0.copyload, ptr %.sroa.8.0..tr.lcssa2879.sroa_idx, align 2
  store ptr %.sroa.92962.0.copyload, ptr %i.ft, align 8
  br label %common.resume

_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit1419: ; preds = %bb.ty, %bb.tz
  %i.bjs = phi <2 x i16> [ %i.bjm, %bb.ty ], [ %i.bjl, %bb.tz ] ; 3 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.uc unwind label %bb.ub

bb.uc:                                            ; preds = %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit1419
  store i8 %.sroa.0.0.copyload, ptr %.tr, align 8
  store i8 %.sroa.5.0.copyload, ptr %i.bhy, align 1
  store <2 x i16> %i.bjs, ptr %.sroa.01.0.i1124.le7131, align 2
  %.sroa.8.0..tr.lcssa2879.sroa_idx2975 = getelementptr inbounds nuw i8, ptr %.tr, i64 6
  store i16 %.sroa.9.0.copyload, ptr %.sroa.8.0..tr.lcssa2879.sroa_idx2975, align 2
  store ptr %.sroa.92962.0.copyload, ptr %i.ft, align 8
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

bb.ud:                                            ; preds = %bb.qm
  %i.bjt = getelementptr inbounds nuw i8, ptr %.pre4934, i64 8
  %i.bju = load ptr, ptr %i.bjt, align 8, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 96
  %i.bjw = load i64, ptr %i.bjv, align 8, !alias.scope !50663, !noalias !50666, !noundef !3 ; 2 uses
  %i.bjx = icmp ugt i64 %i.bjw, 3                 ; 2 uses
  %i.bjy = load ptr, ptr %i.bju, align 8, !alias.scope !50663, !noalias !50666, !nonnull !3
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bju, i64 8
  %i.bka = load i64, ptr %i.bjz, align 8, !alias.scope !50663, !noalias !50666
  %.sink11.i1420 = select i1 %i.bjx, ptr %i.bjy, ptr %i.bju ; 2 uses
  %.sink10.i1421 = select i1 %i.bjx, i64 %i.bka, i64 %i.bjw ; 2 uses
  %.idx7618 = shl nuw nsw i64 %.sink10.i1421, 5
  %i.bkb = getelementptr inbounds nuw i8, ptr %.sink11.i1420, i64 %.idx7618
  %i.bkc = icmp eq i64 %.sink10.i1421, 0
  br i1 %i.bkc, label %.cont1573, label %.lr.ph7572

bb.ue:                                            ; preds = %.lr.ph7572
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkf, i64 32 ; 2 uses
  %i.bke = icmp eq ptr %i.bkd, %i.bkb
  br i1 %i.bke, label %.cont1573, label %.lr.ph7572

.lr.ph7572:                                       ; preds = %bb.ud, %bb.ue
  %i.bkf = phi ptr [ %i.bkd, %bb.ue ], [ %.sink11.i1420, %bb.ud ] ; 2 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 16
  %i.bkh = tail call fastcc noundef zeroext i1 @_ZN4rhai3ast4expr4Expr7is_pure17h777d0eb9ca9fd5bbE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bkg), !noalias !50668
  br i1 %i.bkh, label %bb.ue, label %.critedge860

.cont1573:                                        ; preds = %bb.ud, %bb.ue
  %.sroa.01.0.i1124.le7133 = getelementptr inbounds nuw i8, ptr %.tr, i64 2 ; 2 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.bkj = getelementptr inbounds nuw i8, ptr %.tr, i64 1 ; 2 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %.pre4934, i64 8
  %i.bkl = getelementptr inbounds nuw i8, ptr %.pre4934, i64 24
  %i.bkm = getelementptr inbounds nuw i8, ptr %.pre4934, i64 2 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i8 1, ptr %i.bkn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.bko = load ptr, ptr %i.bkk, align 8, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %.sroa.01563.0.copyload = load i64, ptr %i.bko, align 8 ; 2 uses
  %.sroa.41565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bko, i64 8
  %.sroa.41565.0.copyload = load i64, ptr %.sroa.41565.0..sroa_idx, align 8 ; 2 uses
  %.sroa.61568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bko, i64 16
  %.sroa.61568.0..sroa_idx1569 = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.61568.0..sroa_idx1569, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.61568.0..sroa_idx, i64 80, i1 false)
  %.sroa.61570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bko, i64 96 ; 2 uses
  %.sroa.61570.0.copyload = load i64, ptr %.sroa.61570.0..sroa_idx, align 8 ; 3 uses
  store i64 0, ptr %.sroa.61570.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50671)
  %i.bkp = icmp ugt i64 %.sroa.61570.0.copyload, 3 ; 4 uses
  %.sink10.i.i1424 = select i1 %i.bkp, i64 %.sroa.41565.0.copyload, i64 %.sroa.61570.0.copyload ; 3 uses
  %spec.select2033 = select i1 %i.bkp, i64 0, i64 %.sroa.41565.0.copyload
  %spec.select2034 = select i1 %i.bkp, i64 %.sroa.61570.0.copyload, i64 0
  store i64 %.sroa.01563.0.copyload, ptr %i.cb, align 8, !alias.scope !50674
  %.sroa.41565.0..sroa_idx1566 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %spec.select2033, ptr %.sroa.41565.0..sroa_idx1566, align 8, !alias.scope !50674
  %.sroa.61570.0..sroa_idx1571 = getelementptr inbounds nuw i8, ptr %i.cb, i64 96
  store i64 %spec.select2034, ptr %.sroa.61570.0..sroa_idx1571, align 8, !alias.scope !50674
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.cb, i64 104 ; 2 uses
  store i64 0, ptr %i.bkq, align 8, !alias.scope !50676, !noalias !50671
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.cb, i64 112
  store i64 %.sink10.i.i1424, ptr %i.bkr, align 8, !alias.scope !50676, !noalias !50671
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50677)
  %i.bks = icmp eq i64 %.sink10.i.i1424, 0
  br i1 %i.bks, label %.thread5011.loopexit, label %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.lr.ph.i3847"

"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.lr.ph.i3847": ; preds = %.cont1573
  %i.bkt = inttoptr i64 %.sroa.01563.0.copyload to ptr
  %.sink11.i.i.i3848 = select i1 %i.bkp, ptr %i.bkt, ptr %i.cb
  %.sroa.2.0..sroa_idx.i3849 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.sroa.3.0..sroa_idx.i3850 = getelementptr inbounds nuw i8, ptr %i.b, i64 17 ; 2 uses
  br label %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.i3851"

"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.i3851": ; preds = %.noexc3875, %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.lr.ph.i3847"
  %i.bku = phi i64 [ 0, %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.lr.ph.i3847" ], [ %i.bkv, %.noexc3875 ] ; 2 uses
  %i.bkv = add nuw i64 %i.bku, 1                  ; 3 uses
  store i64 %i.bkv, ptr %i.bkq, align 8, !alias.scope !50680, !noalias !50683
  %i.bkw = getelementptr inbounds nuw [32 x i8], ptr %.sink11.i.i.i3848, i64 %i.bku ; 3 uses
  %.sroa.6.0..sroa_idx4.i3852 = getelementptr inbounds nuw i8, ptr %i.bkw, i64 16
  %.sroa.6.0.copyload5.i3853 = load i8, ptr %.sroa.6.0..sroa_idx4.i3852, align 8, !noalias !50687 ; 6 uses
  %.not.i3854 = icmp eq i8 %.sroa.6.0.copyload5.i3853, 21
  br i1 %.not.i3854, label %.thread5011.loopexit, label %bb.uf

bb.uf:                                            ; preds = %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.i3851"
  %.sroa.8.0..sroa_idx6.i3855 = getelementptr inbounds nuw i8, ptr %i.bkw, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.bkw, i64 16, i1 false), !noalias !50687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3.0..sroa_idx.i3850, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.8.0..sroa_idx6.i3855, i64 15, i1 false), !noalias !50687
  store i8 %.sroa.6.0.copyload5.i3853, ptr %.sroa.2.0..sroa_idx.i3849, align 8, !noalias !50688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50689)
  %.val1.i.i3856 = load ptr, ptr %i.b, align 8, !alias.scope !50692, !noalias !50695, !nonnull !3, !noundef !3 ; 3 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %.val1.i.i3856, i64 16 ; 3 uses
  %i.bky = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bkx)
          to label %.noexc.i.i3859 unwind label %bb.uk, !noalias !50698

.noexc.i.i3859:                                   ; preds = %bb.uf
  br i1 %i.bky, label %bb.ug, label %bb.uh

bb.ug:                                            ; preds = %.noexc.i.i3859
  %i.bkz = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bkx)
          to label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i3860" unwind label %bb.uk, !noalias !50698

bb.uh:                                            ; preds = %.noexc.i.i3859
  %i.bla = load ptr, ptr %i.bkx, align 8, !noalias !50699, !nonnull !3, !noundef !3
  %i.blb = getelementptr inbounds nuw i8, ptr %.val1.i.i3856, i64 32
  %i.blc = load i64, ptr %i.blb, align 8, !noalias !50699, !noundef !3
  %i.bld = insertvalue { ptr, i64 } poison, ptr %i.bla, 0
  %i.ble = insertvalue { ptr, i64 } %i.bld, i64 %i.blc, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i3860"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i3860": ; preds = %bb.ug, %bb.uh
  %.merged.i.i.i.i.i3862 = phi { ptr, i64 } [ %i.ble, %bb.uh ], [ %i.bkz, %bb.ug ] ; 2 uses
  %i.blf = extractvalue { ptr, i64 } %.merged.i.i.i.i.i3862, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50703)
  %i.blg = load ptr, ptr %i.bkl, align 8, !alias.scope !50703, !noalias !50698, !nonnull !3, !noundef !3 ; 2 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blg, i64 16 ; 3 uses
  %i.bli = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.blh)
          to label %.noexc3.i.i3863 unwind label %bb.uk, !noalias !50698

.noexc3.i.i3863:                                  ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i3860"
  br i1 %i.bli, label %bb.ui, label %bb.uj

bb.ui:                                            ; preds = %.noexc3.i.i3863
  %i.blj = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.blh)
          to label %"_ZN63_$LT$$RF$mut$u20$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h252b54bdbb105424E.exit.i.i.i" unwind label %bb.uk, !noalias !50698

bb.uj:                                            ; preds = %.noexc3.i.i3863
  %i.blk = load ptr, ptr %i.blh, align 8, !noalias !50706, !nonnull !3, !noundef !3
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blg, i64 32
  %i.blm = load i64, ptr %i.bll, align 8, !noalias !50706, !noundef !3
  %i.bln = insertvalue { ptr, i64 } poison, ptr %i.blk, 0
  %i.blo = insertvalue { ptr, i64 } %i.bln, i64 %i.blm, 1
  br label %"_ZN63_$LT$$RF$mut$u20$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h252b54bdbb105424E.exit.i.i.i"

"_ZN63_$LT$$RF$mut$u20$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h252b54bdbb105424E.exit.i.i.i": ; preds = %bb.ui, %bb.uj
  %.merged.i.i.i.i.i.i3865 = phi { ptr, i64 } [ %i.blo, %bb.uj ], [ %i.blj, %bb.ui ] ; 2 uses
  %i.blp = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i3865, 1
  %.not.i.i.i.i3866 = icmp eq i64 %i.blf, %i.blp
  br i1 %.not.i.i.i.i3866, label %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17he138ad6c0d25e001E.exit.i.i", label %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17he138ad6c0d25e001E.exit.thread.i.i"

bb.uk:                                            ; preds = %bb.ui, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i3860", %bb.ug, %bb.uf
  %i.blq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$$LP$rhai..ast..ident..Ident$C$rhai..ast..expr..Expr$RP$$GT$17hc79a89ea2bae1012E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b) #72
          to label %.body3873 unwind label %bb.uo, !noalias !50707

"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17he138ad6c0d25e001E.exit.i.i": ; preds = %"_ZN63_$LT$$RF$mut$u20$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h252b54bdbb105424E.exit.i.i.i"
  %i.blr = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i3865, 0
  %i.bls = extractvalue { ptr, i64 } %.merged.i.i.i.i.i3862, 0
  %bcmp.i.i.i.i3868 = tail call i32 @bcmp(ptr %i.bls, ptr %i.blr, i64 %i.blf), !noalias !50708
  %i.blt = icmp eq i32 %bcmp.i.i.i.i3868, 0
  br i1 %i.blt, label %bb.uq, label %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17he138ad6c0d25e001E.exit.thread.i.i"

"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17he138ad6c0d25e001E.exit.thread.i.i": ; preds = %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17he138ad6c0d25e001E.exit.i.i", %"_ZN63_$LT$$RF$mut$u20$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h252b54bdbb105424E.exit.i.i.i"
  %i.blu = atomicrmw sub ptr %.val1.i.i3856, i64 1 release, align 8, !noalias !50709
  %i.blv = icmp eq i64 %i.blu, 1
  br i1 %i.blv, label %bb.ul, label %bb.up

bb.ul:                                            ; preds = %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17he138ad6c0d25e001E.exit.thread.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %bb.up unwind label %bb.um, !noalias !50707, !inline_history !11528

bb.um:                                            ; preds = %bb.ul
  %i.blw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i3849) #74
          to label %.body3873 unwind label %bb.un, !noalias !50707, !inline_history !11528

bb.un:                                            ; preds = %bb.um
  %i.blx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !50720, !inline_history !11528
  unreachable

bb.uo:                                            ; preds = %bb.uk
  %i.bly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !50698
  unreachable

bb.up:                                            ; preds = %bb.ul, %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17he138ad6c0d25e001E.exit.thread.i.i"
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i3849) #75
          to label %.noexc3875 unwind label %.loopexit3958

.noexc3875:                                       ; preds = %bb.up
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50688
  %i.blz = icmp eq i64 %i.bkv, %.sink10.i.i1424
  br i1 %i.blz, label %.thread5011.loopexit, label %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.i3851"

.body3873:                                        ; preds = %.loopexit.split-lp3959, %.loopexit3958, %bb.um, %bb.uk, %bb.ut
  %.pn744 = phi { ptr, i32 } [ %i.bmk, %bb.ut ], [ %i.blq, %bb.uk ], [ %i.blw, %bb.um ], [ %lpad.loopexit3960, %.loopexit3958 ], [ %lpad.loopexit.split-lp3961, %.loopexit.split-lp3959 ]
  invoke fastcc void @"_ZN4core3ptr123drop_in_place$LT$smallvec..IntoIter$LT$$u5b$$LP$rhai..ast..ident..Ident$C$rhai..ast..expr..Expr$RP$$u3b$$u20$3$u5d$$GT$$GT$17h950984db57bc5939E"(ptr noalias noundef align 8 dereferenceable(120) %i.cb) #72
          to label %common.resume unwind label %bb.ai

.loopexit3958:                                    ; preds = %bb.up
  %lpad.loopexit3960 = landingpad { ptr, i32 }
          cleanup
  br label %.body3873

.loopexit.split-lp3959:                           ; preds = %bb.us
  %lpad.loopexit.split-lp3961 = landingpad { ptr, i32 }
          cleanup
  br label %.body3873

bb.uq:                                            ; preds = %"_ZN4rhai9optimizer13optimize_expr28_$u7b$$u7b$closure$u7d$$u7d$17he138ad6c0d25e001E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %.sroa.7.0..sroa_idx6538 = getelementptr inbounds nuw i8, ptr %i.cc, i64 17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.0..sroa_idx6538, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3.0..sroa_idx.i3850, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50688
  %.sroa.5.0..sroa_idx6536 = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i8 %.sroa.6.0.copyload5.i3853, ptr %.sroa.5.0..sroa_idx6536, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50724)
  %.sroa.5.0.copyload.i.i3878 = load i8, ptr %.sroa.7.0..sroa_idx6538, align 1, !alias.scope !50727, !noalias !50728 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i3879 = getelementptr inbounds nuw i8, ptr %i.cc, i64 22
  %.sroa.9.0.copyload.i.i3880 = load i16, ptr %.sroa.9.0..sroa_idx.i.i3879, align 2, !alias.scope !50727, !noalias !50728 ; 2 uses
  %.sroa.911.0..sroa_idx.i.i3881 = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.911.0.copyload.i.i3882 = load ptr, ptr %.sroa.911.0..sroa_idx.i.i3881, align 8, !alias.scope !50727, !noalias !50728 ; 4 uses
  %i.bma = load <2 x i16>, ptr %i.bkm, align 2, !noalias !50731 ; 2 uses
  %i.bmb = icmp eq i8 %.sroa.6.0.copyload5.i3853, 14
  br i1 %i.bmb, label %bb.ur, label %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i3883

bb.ur:                                            ; preds = %bb.uq
  %.sroa.54.0..sroa_idx.i.i3893 = getelementptr inbounds nuw i8, ptr %i.cc, i64 18
  %i.bmc = load <2 x i16>, ptr %.sroa.54.0..sroa_idx.i.i3893, align 2, !alias.scope !50727, !noalias !50728
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.911.0.copyload.i.i3882) ]
  %i.bmd = getelementptr inbounds nuw i8, ptr %.sroa.911.0.copyload.i.i3882, i64 136
  %9 = shufflevector <2 x i16> %i.bma, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x i16> %9, <4 x i16> <i16 poison, i16 poison, i16 0, i16 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i16> %10, ptr %i.bmd, align 8, !noalias !50732
  br label %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i3883

_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i3883: ; preds = %bb.ur, %bb.uq
  %i.bme = phi <2 x i16> [ %i.bma, %bb.uq ], [ %i.bmc, %bb.ur ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50744)
  %i.bmf = load ptr, ptr %i.cc, align 8, !alias.scope !50747, !noalias !50728, !nonnull !3, !noundef !3
  %i.bmg = atomicrmw sub ptr %i.bmf, i64 1 release, align 8, !noalias !50748
  %i.bmh = icmp eq i64 %i.bmg, 1
  br i1 %i.bmh, label %bb.us, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hcae256c70017712aE.exit"

bb.us:                                            ; preds = %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i3883
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.cc)
          to label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hcae256c70017712aE.exit" unwind label %.loopexit.split-lp3959

.thread5011.loopexit:                             ; preds = %"_ZN86_$LT$smallvec..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb36f6823ee21decbE.exit.i3851", %.noexc3875, %.cont1573
  %i.bmi = load <2 x i16>, ptr %i.bkm, align 2, !noalias !50749
  br label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hcae256c70017712aE.exit"

"_ZN4core6option15Option$LT$T$GT$11map_or_else17hcae256c70017712aE.exit": ; preds = %.thread5011.loopexit, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i3883, %bb.us
  %.sroa.123942.0 = phi ptr [ undef, %.thread5011.loopexit ], [ %.sroa.911.0.copyload.i.i3882, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i3883 ], [ %.sroa.911.0.copyload.i.i3882, %bb.us ] ; 2 uses
  %.sroa.113939.0 = phi i16 [ undef, %.thread5011.loopexit ], [ %.sroa.9.0.copyload.i.i3880, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i3883 ], [ %.sroa.9.0.copyload.i.i3880, %bb.us ] ; 2 uses
  %.sroa.63930.0 = phi i8 [ undef, %.thread5011.loopexit ], [ %.sroa.5.0.copyload.i.i3878, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i3883 ], [ %.sroa.5.0.copyload.i.i3878, %bb.us ] ; 2 uses
  %.sroa.03928.0 = phi i8 [ 9, %.thread5011.loopexit ], [ %.sroa.6.0.copyload5.i3853, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i3883 ], [ %.sroa.6.0.copyload5.i3853, %bb.us ] ; 2 uses
  %i.bmj = phi <2 x i16> [ %i.bmi, %.thread5011.loopexit ], [ %i.bme, %_ZN4rhai3ast4expr4Expr12set_position17ha3d3338d0a6f6f81E.exit.i.i3883 ], [ %i.bme, %bb.us ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.tr)
          to label %bb.uu unwind label %bb.ut

bb.ut:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hcae256c70017712aE.exit"
  %i.bmk = landingpad { ptr, i32 }
          cleanup
  store i8 %.sroa.03928.0, ptr %.tr, align 8
  store i8 %.sroa.63930.0, ptr %i.bkj, align 1
  %i.bml = extractelement <2 x i16> %i.bmj, i64 0
  store i16 %i.bml, ptr %.sroa.01.0.i1124.le7133, align 2
  %i.bmm = extractelement <2 x i16> %i.bmj, i64 1
  store i16 %i.bmm, ptr %i.bki, align 4
  %.sroa.113939.0..tr.sroa_idx = getelementptr inbounds nuw i8, ptr %.tr, i64 6
  store i16 %.sroa.113939.0, ptr %.sroa.113939.0..tr.sroa_idx, align 2
  store ptr %.sroa.123942.0, ptr %i.ft, align 8
  br label %.body3873

bb.uu:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hcae256c70017712aE.exit"
  store i8 %.sroa.03928.0, ptr %.tr, align 8
  store i8 %.sroa.63930.0, ptr %i.bkj, align 1
  store <2 x i16> %i.bmj, ptr %.sroa.01.0.i1124.le7133, align 2
  %.sroa.113939.0..tr.sroa_idx3940 = getelementptr inbounds nuw i8, ptr %.tr, i64 6
  store i16 %.sroa.113939.0, ptr %.sroa.113939.0..tr.sroa_idx3940, align 2
  store ptr %.sroa.123942.0, ptr %i.ft, align 8
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$smallvec..IntoIter$LT$$u5b$$LP$rhai..ast..ident..Ident$C$rhai..ast..expr..Expr$RP$$u3b$$u20$3$u5d$$GT$$GT$17h950984db57bc5939E"(ptr noalias noundef align 8 dereferenceable(120) %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$13shrink_to_fit17h7220b9c8b2993500E.exit"

bb.uv:                                            ; preds = %bb.qn
  %i.bmn = getelementptr inbounds nuw i8, ptr %.pre4934, i64 8 ; 2 uses
  %i.bmo = load i8, ptr %i.cy, align 1, !range !5, !noundef !3
  %i.bmp = trunc nuw i8 %i.bmo to i1
  br i1 %i.bmp, label %bb.uw, label %tailrecurse.backedge

bb.uw:                                            ; preds = %bb.uv
  %i.bmq = load ptr, ptr %i.bmn, align 8, !nonnull !3, !align !4, !noundef !3
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmq, i64 8
  %i.bms = load ptr, ptr %i.bmr, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bms, i64 16 ; 3 uses
  %i.bmu = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bmt)
  br i1 %i.bmu, label %bb.ux, label %bb.uy

bb.ux:                                            ; preds = %bb.uw
  %i.bmv = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bmt) ; 2 uses
  %i.bmw = extractvalue { ptr, i64 } %i.bmv, 0
  %i.bmx = extractvalue { ptr, i64 } %i.bmv, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit923"

bb.uy:                                            ; preds = %bb.uw
  %i.bmy = load ptr, ptr %i.bmt, align 8, !nonnull !3, !noundef !3
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bms, i64 32
  %i.bna = load i64, ptr %i.bmz, align 8, !noundef !3
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit923"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit923": ; preds = %bb.ux, %bb.uy
  %.sroa.0.0.i921 = phi ptr [ %i.bmw, %bb.ux ], [ %i.bmy, %bb.uy ] ; 2 uses
  %.merged.i922 = phi i64 [ %i.bmx, %bb.ux ], [ %i.bna, %bb.uy ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i921) ]
  %.val1098 = load ptr, ptr %i.cz, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.val1099 = load i64, ptr %i.da, align 8, !noundef !3 ; 2 uses
  %i.bnb = icmp eq i64 %.val1099, 0
  br i1 %i.bnb, label %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3912, label %.lr.ph.i.preheader.i3899

.lr.ph.i.preheader.i3899:                         ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit923"
  %.idx.i3900 = mul nuw nsw i64 %.val1099, 24
  %i.bnc = getelementptr inbounds nuw i8, ptr %.val1098, i64 %.idx.i3900
  br label %.lr.ph.i.i3901

.lr.ph.i.i3901:                                   ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3906", %.lr.ph.i.preheader.i3899
  %i.bnd = phi ptr [ %i.bne, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3906" ], [ %i.bnc, %.lr.ph.i.preheader.i3899 ] ; 3 uses
  %i.bne = getelementptr inbounds i8, ptr %i.bnd, i64 -24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50755)
  %i.bnf = load ptr, ptr %i.bne, align 8, !alias.scope !50758, !noalias !50759, !nonnull !3, !noundef !3 ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 16 ; 3 uses
  %i.bnh = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bng), !noalias !50766
  br i1 %i.bnh, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %.lr.ph.i.i3901
  %i.bni = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bng), !noalias !50766
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i.i3902"

bb.va:                                            ; preds = %.lr.ph.i.i3901
  %i.bnj = load ptr, ptr %i.bng, align 8, !noalias !50766, !nonnull !3, !noundef !3
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnf, i64 32
  %i.bnl = load i64, ptr %i.bnk, align 8, !noalias !50766, !noundef !3
  %i.bnm = insertvalue { ptr, i64 } poison, ptr %i.bnj, 0
  %i.bnn = insertvalue { ptr, i64 } %i.bnm, i64 %i.bnl, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i.i3902"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i.i3902": ; preds = %bb.va, %bb.uz
  %.merged.i.i.i.i.i.i3904 = phi { ptr, i64 } [ %i.bni, %bb.uz ], [ %i.bnn, %bb.va ] ; 2 uses
  %i.bno = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i3904, 1
  %.not.i.i.i.i.i3905 = icmp eq i64 %i.bno, %.merged.i922
  br i1 %.not.i.i.i.i.i3905, label %"_ZN4rhai9optimizer14OptimizerState21find_literal_constant28_$u7b$$u7b$closure$u7d$$u7d$17h2145de2a79ed1a30E.exit.i.i.i3908", label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3906"

"_ZN4rhai9optimizer14OptimizerState21find_literal_constant28_$u7b$$u7b$closure$u7d$$u7d$17h2145de2a79ed1a30E.exit.i.i.i3908": ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i.i3902"
  %i.bnp = extractvalue { ptr, i64 } %.merged.i.i.i.i.i.i3904, 0
  %bcmp.i.i.i.i.i3909 = tail call i32 @bcmp(ptr %i.bnp, ptr nonnull readonly align 1 %.sroa.0.0.i921, i64 %.merged.i922), !noalias !50767
  %bcmp.i.i.fr.i.i.i3910 = freeze i32 %bcmp.i.i.i.i.i3909
  %i.bnq = icmp eq i32 %bcmp.i.i.fr.i.i.i3910, 0
  br i1 %i.bnq, label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3911, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3906"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3906": ; preds = %"_ZN4rhai9optimizer14OptimizerState21find_literal_constant28_$u7b$$u7b$closure$u7d$$u7d$17h2145de2a79ed1a30E.exit.i.i.i3908", %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i.i3902"
  %i.bnr = icmp eq ptr %.val1098, %i.bne
  br i1 %i.bnr, label %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3912, label %.lr.ph.i.i3901

_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3911: ; preds = %"_ZN4rhai9optimizer14OptimizerState21find_literal_constant28_$u7b$$u7b$closure$u7d$$u7d$17h2145de2a79ed1a30E.exit.i.i.i3908"
  %i.bns = getelementptr inbounds i8, ptr %i.bnd, i64 -16 ; 2 uses
  %i.bnt = load i8, ptr %i.bns, align 8, !range !11819, !noalias !50768, !noundef !3
  switch i8 %i.bnt, label %bb.vc [
    i8 13, label %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3912
    i8 12, label %bb.vb
  ]

bb.vb:                                            ; preds = %_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3911
  %i.bnu = getelementptr inbounds i8, ptr %i.bnd, i64 -8
  %i.bnv = load ptr, ptr %i.bnu, align 8, !noalias !50768, !nonnull !3, !align !4, !noundef !3
  br label %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3912

bb.vc:                                            ; preds = %_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3911
  br label %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3912

_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3912: ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3906", %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit923", %_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3911, %bb.vb, %bb.vc
  %.sroa.0.0.i3907 = phi ptr [ null, %_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h5f74a00f131a441cE.exit.i3911 ], [ %i.bns, %bb.vc ], [ %i.bnv, %bb.vb ], [ null, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit923" ], [ null, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17hab89a7d0089c6ba1E.exit.i.i3906" ]
  %i.bnw = tail call fastcc noundef zeroext i1 @"_ZN4core6option15Option$LT$T$GT$6map_or17h2cca40479d5462dbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.0.0.i3907)
  br i1 %i.bnw, label %bb.vd, label %tailrecurse.backedge

bb.vd:                                            ; preds = %_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE.exit3912
  %i.bnx = getelementptr inbounds nuw i8, ptr %.pre4934, i64 2
  %i.bny = getelementptr inbounds nuw i8, ptr %.pre4934, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6211)
  %i.bnz = load ptr, ptr %i.bmn, align 8, !nonnull !3, !align !4, !noundef !3
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 8
  %i.bob = load ptr, ptr %i.boa, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 16 ; 3 uses
  %i.bod = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.boc)
  br i1 %i.bod, label %bb.ve, label %bb.vf

bb.ve:                                            ; preds = %bb.vd
  %i.boe = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.boc) ; 2 uses
  %i.bof = extractvalue { ptr, i64 } %i.boe, 0
  %i.bog = extractvalue { ptr, i64 } %i.boe, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit920"

bb.vf:                                            ; preds = %bb.vd
  %i.boh = load ptr, ptr %i.boc, align 8, !nonnull !3, !noundef !3
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bob, i64 32
  %i.boj = load i64, ptr %i.boi, align 8, !noundef !3
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit920"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit920": ; preds = %bb.ve, %bb.vf
  %.sroa.0.0.i918 = phi ptr [ %i.bof, %bb.ve ], [ %i.boh, %bb.vf ] ; 2 uses
  %.merged.i919 = phi i64 [ %i.bog, %bb.ve ], [ %i.boj, %bb.vf ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i918) ]
  %.val1096 = load ptr, ptr %i.cz, align 8, !nonnull !3, !noundef !3
  %.val1097 = load i64, ptr %i.da, align 8, !noundef !3
  %i.bok = tail call fastcc noundef align 8 dereferenceable_or_null(16) ptr @_ZN4rhai9optimizer14OptimizerState21find_literal_constant17hb1e6f2a9b89f156eE(ptr nonnull %.val1096, i64 %.val1097, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i918, i64 noundef %.merged.i919) ; 4 uses
  %.not738 = icmp eq ptr %i.bok, null
  br i1 %.not738, label %bb.vh, label %bb.vg, !prof !543

bb.vg:                                            ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit920"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.val1075 = load i8, ptr %i.bok, align 8, !range !645, !noundef !3
  %i.bol = getelementptr i8, ptr %i.bok, i64 8
  %.val1076 = load ptr, ptr %i.bol, align 8
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic9read_lock17h6a9d8b16f098c7d9E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, i8 %.val1075, ptr %.val1076)
  %i.bom = load i64, ptr %i.r, align 8, !range !455, !noundef !3
  %i.bon = trunc nuw i64 %i.bom to i1
  br i1 %i.bon, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h57edf0258c57d649E.exit", label %bb.vi

end_hunk_1
