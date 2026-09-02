Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN5milli6update3new6merger20merge_and_send_rtree17h87d306452375d24bE:bb.a
  store i40 %.sroa.10.1.extract.trunc, ptr %.sroa.461.0..sroa_idx, align 1
  invoke void @"_ZN5milli6update3new7extract3geo229_$LT$impl$u20$core..convert..From$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$u20$for$u20$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$4from17ha84a1ca6dcc8c13eE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.av, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(20) %i.ai)
          to label %bb.eq unwind label %.loopexit596

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.experimental.noalias.scope.decl(metadata !153657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !153660
  call void @llvm.experimental.noalias.scope.decl(metadata !153663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !153666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %i.bf, i64 72, i1 false), !noalias !153669
  store i64 0, ptr %i.bf, align 8, !alias.scope !153670, !noalias !153669
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !153670, !noalias !153669
  store i64 0, ptr %.sroa.07.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !153670, !noalias !153669
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !153670, !noalias !153669
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !153670, !noalias !153669
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.812.0..sroa_idx.i.i, align 8, !alias.scope !153670, !noalias !153669
  %i.ml = load i64, ptr %i.dr, align 8, !alias.scope !153670, !noalias !153669, !noundef !14 ; 2 uses
  store i64 0, ptr %i.dr, align 8, !alias.scope !153670, !noalias !153669
  %i.mm = uitofp i64 %i.ml to float
  %i.mn = call float @llvm.log.f32(float %i.mm)
  %i.mo = fdiv float %i.mn, f0x3F8C9F54
  %i.mp = call float @llvm.ceil.f32(float %i.mo)
  %i.mq = call i64 @llvm.fptoui.sat.i64.f32(float %i.mp) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !153666
  %i.mr = mul i64 %i.mq, 88                       ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.mq, 104811045873349725
  br i1 %or.cond.i.i.i.i.i, label %bb.es, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !2997

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.eq
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.et, label %bb.er

bb.er:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !153671
  %i.mt = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.mr, i64 noundef range(i64 1, 9) 8) #79, !noalias !153671 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.er ], [ 0, %bb.eq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.mr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2744) #80
          to label %.noexc.i.i unwind label %bb.ey, !noalias !153676

.noexc.i.i:                                       ; preds = %bb.es
  unreachable

bb.et:                                            ; preds = %bb.er, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.mt, %bb.er ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.mq, %bb.er ] ; 3 uses
  %i.mv = icmp samesign ule i64 %i.mq, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.mv)
  store i64 %.sroa.4.0.i.i.i, ptr %i.n, align 8, !noalias !153666
  store ptr %.sroa.10.0.i.i.i, ptr %i.ds, align 8, !noalias !153666
  store i64 0, ptr %i.dt, align 8, !noalias !153666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !153666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !noalias !153666
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false), !noalias !153666
  %i.mw = icmp eq i64 %.sroa.4.0.i.i.i, 0
  br i1 %i.mw, label %bb.eu, label %bb.fc

bb.eu:                                            ; preds = %bb.et
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4a41d8201b760b5bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2745)
          to label %._crit_edge.i.i unwind label %bb.ev, !noalias !153677

._crit_edge.i.i:                                  ; preds = %bb.eu
  %.pre.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !153680, !noalias !153682
  br label %bb.fc

bb.ev:                                            ; preds = %bb.eu
  %i.mx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr196drop_in_place$LT$$LP$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$usize$C$usize$RP$$GT$17h14d326ef49847d8aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.m) #81
          to label %.body.i.i unwind label %bb.ew, !noalias !153676

bb.ew:                                            ; preds = %bb.ev
  %i.my = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153677
  unreachable

.body.i.i:                                        ; preds = %bb.ev
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..vec..Vec$LT$$LP$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$usize$C$usize$RP$$GT$$GT$17h14a7f0e7ab373361E"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #81
          to label %.body330 unwind label %bb.ex, !noalias !153676

bb.ex:                                            ; preds = %.body.i.i
  %i.mz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i327

.body.i327:                                       ; preds = %bb.fa, %bb.ez, %bb.ex
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153676
  unreachable

bb.ey:                                            ; preds = %bb.es
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153684)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h45aa8a1e5909e72aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.o)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i" unwind label %bb.ez, !noalias !153676, !inline_history !107746

bb.ez:                                            ; preds = %bb.ey
  %i.nb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i = load i64, ptr %i.o, align 8, !range !9, !alias.scope !153687, !noalias !153666, !noundef !14 ; 2 uses
  %i.nc = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.nc, label %.body.i327, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.nd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val3.i.i.i328 = load ptr, ptr %i.nd, align 8, !alias.scope !153687, !noalias !153666, !nonnull !14, !noundef !14
  %i.ne = mul nuw i64 %.val2.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i328, i64 noundef %i.ne, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153690, !inline_history !107750
  br label %.body.i327

"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i": ; preds = %bb.ey
  %.val.i.i.i329 = load i64, ptr %i.o, align 8, !range !9, !alias.scope !153687, !noalias !153666, !noundef !14 ; 2 uses
  %i.nf = icmp eq i64 %.val.i.i.i329, 0
  br i1 %i.nf, label %.body330, label %bb.fb

bb.fb:                                            ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i"
  %i.ng = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ng, align 8, !alias.scope !153687, !noalias !153666, !nonnull !14, !noundef !14
  %i.nh = mul nuw i64 %.val.i.i.i329, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.nh, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153690, !inline_history !107750
  br label %.body330

bb.fc:                                            ; preds = %._crit_edge.i.i, %bb.et
  %i.ni = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %.sroa.10.0.i.i.i, %bb.et ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ni, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.m, i64 88, i1 false), !noalias !153676
  store i64 1, ptr %i.dt, align 8, !alias.scope !153680, !noalias !153682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !153666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !153660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !153666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !153666
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i321, align 8, !noalias !153660
  store ptr %i.bf, ptr %.sroa.5.0..sroa_idx.i322, align 8, !noalias !153660
  store i64 %i.ml, ptr %.sroa.6.0..sroa_idx.i323, align 8, !noalias !153660
  store i64 1, ptr %i.dv, align 8, !noalias !153660
  call void @llvm.experimental.noalias.scope.decl(metadata !153691)
  call void @llvm.experimental.noalias.scope.decl(metadata !153694)
  call void @llvm.experimental.noalias.scope.decl(metadata !153697)
  call void @llvm.experimental.noalias.scope.decl(metadata !153700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !153702
  %i.nj = load i64, ptr %i.dw, align 8, !alias.scope !153709, !noalias !153712, !noundef !14 ; 2 uses
  %.not62.i68.i.i.i.i = icmp eq i64 %i.nj, 0
  br i1 %.not62.i68.i.i.i.i, label %.loopexit.i.i.i324, label %.lr.ph63.i.lr.ph.i.i.i.i

.lr.ph63.i.lr.ph.i.i.i.i:                         ; preds = %bb.fc
  call void @llvm.experimental.noalias.scope.decl(metadata !153714)
  br label %bb.fd

bb.fd:                                            ; preds = %.backedge.i.i.i.i.i, %.lr.ph63.i.lr.ph.i.i.i.i
  %i.nk = phi i64 [ %i.nj, %.lr.ph63.i.lr.ph.i.i.i.i ], [ %i.ow, %.backedge.i.i.i.i.i ]
  %i.nl = load ptr, ptr %i.dx, align 8, !alias.scope !153716, !noalias !153712, !nonnull !14, !noundef !14
  %i.nm = getelementptr [88 x i8], ptr %i.nl, i64 %i.nk ; 10 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 -16    ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !noalias !153717, !noundef !14 ; 3 uses
  %.not12.i.i.i.i.i = icmp eq i64 %i.no, 0
  br i1 %.not12.i.i.i.i.i, label %bb.fe, label %.preheader.i.i.i.i.i

bb.fe:                                            ; preds = %bb.fd
  %i.np = getelementptr i8, ptr %i.nm, i64 -64
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i321, align 8, !alias.scope !153716, !noalias !153712, !nonnull !14, !align !240, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153718)
  %.sroa.0.0.copyload.i.i.i.i.i.i = load double, ptr %.val.i.i.i.i.i, align 8, !alias.scope !153721, !noalias !153731 ; 2 uses
  %.sroa.4.0..0.val.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i.i = load double, ptr %.sroa.4.0..0.val.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !153721, !noalias !153731 ; 2 uses
  %.sroa.5.0..0.val.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i.i = load double, ptr %.sroa.5.0..0.val.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !153721, !noalias !153731 ; 2 uses
  %i.nq = load double, ptr %i.np, align 8, !alias.scope !153732, !noalias !153739, !noundef !14
  %i.nr = fcmp ugt double %i.nq, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ns = getelementptr i8, ptr %i.nm, i64 -56
  %i.nt = load double, ptr %i.ns, align 8, !alias.scope !153718, !noalias !153717
  %i.nu = fcmp ugt double %i.nt, %.sroa.4.0.copyload.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = select i1 %i.nr, i1 true, i1 %i.nu
  %i.nv = getelementptr i8, ptr %i.nm, i64 -48
  %i.nw = load double, ptr %i.nv, align 8, !alias.scope !153718, !noalias !153717
  %i.nx = fcmp ugt double %i.nw, %.sroa.5.0.copyload.i.i.i.i.i.i
  %or.cond5.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.nx
  br i1 %or.cond5.i.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ny = getelementptr i8, ptr %i.nm, i64 -40
  %i.nz = load double, ptr %i.ny, align 8, !alias.scope !153744, !noalias !153749, !noundef !14
  %i.oa = fcmp ult double %i.nz, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ob = getelementptr i8, ptr %i.nm, i64 -32
  %i.oc = load double, ptr %i.ob, align 8, !alias.scope !153718, !noalias !153717
  %i.od = fcmp ult double %i.oc, %.sroa.4.0.copyload.i.i.i.i.i.i
  %or.cond8.i.i.i.i.i.i = select i1 %i.oa, i1 true, i1 %i.od
  br i1 %or.cond8.i.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i"

"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i": ; preds = %bb.ff
  %i.oe = getelementptr i8, ptr %i.nm, i64 -24
  %i.of = load double, ptr %i.oe, align 8, !alias.scope !153744, !noalias !153749, !noundef !14
  %i.og = fcmp ult double %i.of, %.sroa.5.0.copyload.i.i.i.i.i.i
  br i1 %i.og, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i", %bb.fd
  %i.oh = getelementptr i8, ptr %i.nm, i64 -72    ; 3 uses
  %i.oi = load i64, ptr %i.oh, align 8, !noalias !153717, !noundef !14 ; 5 uses
  %i.oj = icmp ult i64 %i.oi, 128102389400760776
  call void @llvm.assume(i1 %i.oj)
  %i.ok = icmp ult i64 %i.no, %i.oi
  br i1 %i.ok, label %.lr.ph.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.ol = getelementptr i8, ptr %i.nm, i64 -80
  %.pre.i.i.i.i.i = load ptr, ptr %i.ol, align 8, !noalias !153717 ; 3 uses
  br label %bb.fl

"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i": ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i", %.preheader.i.i.i.i.i, %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i", %bb.ff, %bb.fe
  invoke fastcc void @"_ZN5rstar9algorithm7removal35DrainIterator$LT$T$C$R$C$Params$GT$8pop_node17hdb08a0c98b6b5eeeE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p, i1 noundef zeroext true)
          to label %.noexc.i2.i unwind label %.loopexit.split-lp.i.i, !noalias !153753

.noexc.i2.i:                                      ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i"
  %i.om = load i64, ptr %i.i, align 8, !range !2917, !noalias !153754, !noundef !14
  %.not13.i.i.i.i.i = icmp eq i64 %i.om, -9223372036854775808
  br i1 %.not13.i.i.i.i.i, label %bb.fk, label %bb.fg

bb.fg:                                            ; preds = %.noexc.i2.i
  %i.on = load i64, ptr %i.dz, align 8, !noalias !153754, !noundef !14
  %i.oo = load ptr, ptr %.sroa.5.0..sroa_idx.i322, align 8, !alias.scope !153716, !noalias !153712, !nonnull !14, !align !240, !noundef !14 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153755)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h45aa8a1e5909e72aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.oo)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i" unwind label %bb.fh, !noalias !153717, !inline_history !107746

bb.fh:                                            ; preds = %bb.fg
  %i.op = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.oo, align 8, !range !9, !alias.scope !153758, !noalias !153717, !noundef !14 ; 2 uses
  %i.oq = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.oq, label %.body.i.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.or, align 8, !alias.scope !153758, !noalias !153717, !nonnull !14, !noundef !14
  %i.os = mul nuw i64 %.val2.i.i.i.i.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %i.os, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153761, !inline_history !107750
  br label %.body.i.i.i.i.i

"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i": ; preds = %bb.fg
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.oo, align 8, !range !9, !alias.scope !153758, !noalias !153717, !noundef !14 ; 2 uses
  %i.ot = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ot, label %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i", label %bb.fj

bb.fj:                                            ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i"
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ou, align 8, !alias.scope !153758, !noalias !153717, !nonnull !14, !noundef !14
  %i.ov = mul nuw i64 %.val.i.i.i.i.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.ov, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153761, !inline_history !107750
  br label %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i"

bb.fk:                                            ; preds = %.noexc.i2.i
  %.pre79.i.i.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !153716, !noalias !153712
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.fx, %bb.fk
  %i.ow = phi i64 [ %.pre79.i.i.i.i.i, %bb.fk ], [ %i.qu, %bb.fx ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ow, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i324, label %bb.fd

.body.i.i.i.i.i:                                  ; preds = %bb.fi, %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.oo, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !153717
  br label %.body.i1.i

"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i": ; preds = %bb.fj, %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.oo, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !153717
  %i.ox = load i64, ptr %.sroa.6.0..sroa_idx.i323, align 8, !alias.scope !153716, !noalias !153712, !noundef !14
  %i.oy = load ptr, ptr %.sroa.5.0..sroa_idx.i322, align 8, !alias.scope !153716, !noalias !153712, !nonnull !14, !align !240, !noundef !14
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 72
  %i.pa = sub i64 %i.ox, %i.on
  store i64 %i.pa, ptr %i.oz, align 8, !noalias !153717
  br label %.loopexit.i.i.i324

bb.fl:                                            ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %i.pb = phi i64 [ %i.no, %.lr.ph.i.i.i.i.i ], [ %i.py, %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i" ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [72 x i8], ptr %.pre.i.i.i.i.i, i64 %i.pb ; 11 uses
  %i.pd = load i64, ptr %i.pc, align 8, !range !2917, !noalias !153717, !noundef !14
  %.not14.i.i.i.i.i = icmp eq i64 %i.pd, -9223372036854775808
  br i1 %.not14.i.i.i.i.i, label %.preheader.split.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i": ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !153754
  call void @llvm.experimental.noalias.scope.decl(metadata !153762)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.pc, i64 72, i1 false), !noalias !153765
  %i.pe = add nsw i64 %i.oi, -1                   ; 2 uses
  %i.pf = getelementptr inbounds nuw [72 x i8], ptr %.pre.i.i.i.i.i, i64 %i.pe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pc, ptr noundef nonnull align 8 dereferenceable(72) %i.pf, i64 72, i1 false), !noalias !153766
  store i64 %i.pe, ptr %i.oh, align 8, !alias.scope !153762, !noalias !153768
  %i.pg = load i64, ptr %i.l, align 8, !range !2917, !noalias !153754, !noundef !14
  %.not17.i.i.i.i.i = icmp eq i64 %i.pg, -9223372036854775808
  br i1 %.not17.i.i.i.i.i, label %bb.fr, label %bb.ft, !prof !121

.preheader.split.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.fl
  %.val21.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i321, align 8, !alias.scope !153716, !noalias !153712, !nonnull !14, !align !240, !noundef !14 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153769)
  call void @llvm.experimental.noalias.scope.decl(metadata !153772)
  call void @llvm.experimental.noalias.scope.decl(metadata !153775)
  call void @llvm.experimental.noalias.scope.decl(metadata !153777)
  call void @llvm.experimental.noalias.scope.decl(metadata !153780)
  call void @llvm.experimental.noalias.scope.decl(metadata !153782)
  call void @llvm.experimental.noalias.scope.decl(metadata !153785)
  call void @llvm.experimental.noalias.scope.decl(metadata !153787)
  call void @llvm.experimental.noalias.scope.decl(metadata !153790)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ph, align 8, !alias.scope !153792, !noalias !153793, !noundef !14
  %.val6.i.i.i.i.i.i.i.i.i.i = load double, ptr %.val21.i.i.i.i.i, align 8, !alias.scope !153794, !noalias !153795, !noundef !14
  %i.pi = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i
  br i1 %i.pi, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.1, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.1:           ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pj, align 8, !alias.scope !153792, !noalias !153793, !noundef !14
  %.val6.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pk, align 8, !alias.scope !153794, !noalias !153795, !noundef !14
  %i.pl = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.1, %.val6.i.i.i.i.i.i.i.i.i.i.1
  br i1 %i.pl, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.2, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.2:           ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.1
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pn = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.pm, align 8, !alias.scope !153792, !noalias !153793, !noundef !14
  %.val6.i.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.pn, align 8, !alias.scope !153794, !noalias !153795, !noundef !14
  %i.po = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.2, %.val6.i.i.i.i.i.i.i.i.i.i.2
  br i1 %i.po, label %bb.fm, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

bb.fm:                                            ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.2
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pq = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !153796)
  call void @llvm.experimental.noalias.scope.decl(metadata !153799)
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.pp, align 8, !alias.scope !153801, !noalias !153802, !noundef !14
  %.val1.i.i.i.i.i.i.i.i = load i32, ptr %i.pq, align 8, !alias.scope !153803, !noalias !153804, !noundef !14
  %i.pr = icmp eq i32 %.val.i.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.pr, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.fm
  call void @llvm.experimental.noalias.scope.decl(metadata !153805)
  call void @llvm.experimental.noalias.scope.decl(metadata !153808)
  call void @llvm.experimental.noalias.scope.decl(metadata !153810)
  call void @llvm.experimental.noalias.scope.decl(metadata !153813)
  call void @llvm.experimental.noalias.scope.decl(metadata !153815)
  call void @llvm.experimental.noalias.scope.decl(metadata !153818)
  %i.ps = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pc, i64 40
  %.val.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.pt, align 8, !alias.scope !153820, !noalias !153821, !noundef !14
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ps, align 8, !alias.scope !153822, !noalias !153823, !noundef !14
  %i.pu = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.pu, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1:         ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pc, i64 48
  %i.pw = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pv, align 8, !alias.scope !153820, !noalias !153821, !noundef !14
  %.val6.i.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pw, align 8, !alias.scope !153822, !noalias !153823, !noundef !14
  %i.px = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.i.1, %.val6.i.i.i.i.i.i.i.i.i.i.i.1
  br i1 %i.px, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i", label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i": ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.i, %.preheader.split.i.i.i.i.i.i.i.i.i.i, %.preheader.split.i.i.i.i.i.i.i.i.i.i.1, %.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1, %bb.fm, %.preheader.split.i.i.i.i.i.i.i.i.i.i.2
  %i.py = add i64 %i.pb, 1                        ; 3 uses
  store i64 %i.py, ptr %i.nn, align 8, !noalias !153717
  %exitcond.not.i.i.i.i = icmp eq i64 %i.py, %i.oi
  br i1 %exitcond.not.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %bb.fl

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i": ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1
  %6 = getelementptr i8, ptr %i.nm, i64 -8        ; 2 uses
  %7 = load i64, ptr %6, align 8, !noalias !153717, !noundef !14
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8, !noalias !153717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !153754
  call void @llvm.experimental.noalias.scope.decl(metadata !153824)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.pc, i64 72, i1 false), !noalias !153827
  %i.pz = add nsw i64 %i.oi, -1                   ; 2 uses
  %i.qa = getelementptr inbounds nuw [72 x i8], ptr %.pre.i.i.i.i.i, i64 %i.pz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pc, ptr noundef nonnull align 8 dereferenceable(72) %i.qa, i64 72, i1 false), !noalias !153828
  store i64 %i.pz, ptr %i.oh, align 8, !alias.scope !153824, !noalias !153830
  %i.qb = load i64, ptr %i.j, align 8, !range !2917, !noalias !153754, !noundef !14
  %.not15.i.i.i.i.i = icmp eq i64 %i.qb, -9223372036854775808
  br i1 %.not15.i.i.i.i.i, label %bb.fy, label %bb.fn, !prof !15

bb.fn:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !153754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !153754
  store ptr @413, ptr %i.e, align 8, !noalias !153754
  %.sroa.48.0..sroa_idx.i.i.i.i.i326 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.48.0..sroa_idx.i.i.i.i.i326, align 8, !noalias !153754
  store ptr @415, ptr %i.f, align 8, !noalias !153754
  %i.qc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.qc, align 8, !noalias !153754
  %i.qd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.qd, align 8, !noalias !153754
  %i.qe = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.qe, align 8, !noalias !153754
  %i.qf = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.qf, align 8, !noalias !153754
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @416) #80
          to label %bb.fo unwind label %bb.fp, !noalias !153717

bb.fo:                                            ; preds = %bb.fr, %bb.fn
  unreachable

bb.fp:                                            ; preds = %bb.fn
  %i.qg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef align 8 dereferenceable(72) %i.j) #81
          to label %.body.i1.i unwind label %bb.fq, !noalias !153717

bb.fq:                                            ; preds = %bb.fs, %bb.fp
  %i.qh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153717
  unreachable

bb.fr:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !153754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !153754
  store ptr @418, ptr %i.g, align 8, !noalias !153754
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !noalias !153754
  store ptr @415, ptr %i.h, align 8, !noalias !153754
  %i.qi = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.qi, align 8, !noalias !153754
  %i.qj = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.qj, align 8, !noalias !153754
  %i.qk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.qk, align 8, !noalias !153754
  %i.ql = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %i.ql, align 8, !noalias !153754
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @419) #80
          to label %bb.fo unwind label %bb.fs, !noalias !153717

bb.fs:                                            ; preds = %bb.fr
  %i.qm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef align 8 dereferenceable(72) %i.l) #81
          to label %.body.i1.i unwind label %bb.fq, !noalias !153717

bb.ft:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !153754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !153754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !153754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false), !noalias !153754
  %i.qn = load i64, ptr %i.dw, align 8, !alias.scope !153831, !noalias !153834, !noundef !14 ; 3 uses
  %i.qo = load i64, ptr %i.p, align 8, !range !9, !alias.scope !153831, !noalias !153834, !noundef !14
  %i.qp = icmp eq i64 %i.qn, %i.qo
  br i1 %i.qp, label %bb.fu, label %bb.fx

bb.fu:                                            ; preds = %bb.ft
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4a41d8201b760b5bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @420)
          to label %bb.fx unwind label %bb.fv, !noalias !153837

bb.fv:                                            ; preds = %bb.fu
  %i.qq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr196drop_in_place$LT$$LP$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$usize$C$usize$RP$$GT$17h14d326ef49847d8aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.k) #81
          to label %.body.i1.i unwind label %bb.fw, !noalias !153717

bb.fw:                                            ; preds = %bb.fv
  %i.qr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153837
  unreachable

bb.fx:                                            ; preds = %bb.fu, %bb.ft
  %i.qs = load ptr, ptr %i.dx, align 8, !alias.scope !153831, !noalias !153834, !nonnull !14, !noundef !14
  %i.qt = getelementptr inbounds nuw [88 x i8], ptr %i.qs, i64 %i.qn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.qt, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.k, i64 88, i1 false), !noalias !153717
  %i.qu = add i64 %i.qn, 1                        ; 2 uses
  store i64 %i.qu, ptr %i.dw, align 8, !alias.scope !153831, !noalias !153834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !153754
  br label %.backedge.i.i.i.i.i

bb.fy:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !153754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !153702
  store i64 0, ptr %i.dv, align 8, !alias.scope !153838, !noalias !153839
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"

.loopexit.i.i.i324:                               ; preds = %.backedge.i.i.i.i.i, %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i", %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !153702
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"

.loopexit.split-lp.i.i:                           ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.body.i1.i:                                       ; preds = %.loopexit.split-lp.i.i, %bb.fv, %bb.fs, %bb.fp, %.body.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %i.qq, %bb.fv ], [ %i.op, %.body.i.i.i.i.i ], [ %i.qg, %bb.fp ], [ %i.qm, %bb.fs ]
  invoke fastcc void @"_ZN4core3ptr450drop_in_place$LT$core..iter..adapters..take..Take$LT$rstar..algorithm..removal..DrainIterator$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$C$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$rstar..params..DefaultParams$GT$$GT$$GT$17hcb66315d368b958cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p) #81
          to label %.body330 unwind label %bb.fz, !noalias !153753

bb.fz:                                            ; preds = %.body.i1.i
  %i.qv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153753
  unreachable

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i": ; preds = %.loopexit.i.i.i324, %bb.fy
  invoke fastcc void @"_ZN4core3ptr450drop_in_place$LT$core..iter..adapters..take..Take$LT$rstar..algorithm..removal..DrainIterator$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$C$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$rstar..params..DefaultParams$GT$$GT$$GT$17hcb66315d368b958cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %bb.ga unwind label %.loopexit596

bb.ga:                                            ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !153660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !153843)
  %i.qw = lshr i32 %.sroa.11.sroa.0.0.insert.insert499, 16
  %i.qx = trunc nuw i32 %i.qw to i16              ; 3 uses
  %i.qy = trunc i32 %.sroa.11.sroa.0.0.insert.insert499 to i16
  %i.qz = load ptr, ptr %i.ea, align 8, !alias.scope !153843, !nonnull !14, !noundef !14 ; 2 uses
  %i.ra = load i64, ptr %i.eb, align 8, !alias.scope !153843, !noundef !14 ; 8 uses
  switch i64 %i.ra, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.ga
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.ga ], [ %i.rl, %.lr.ph.i.i.i ] ; 4 uses
  %i.rb = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.ra
  call void @llvm.assume(i1 %i.rb)
  %i.rc = getelementptr inbounds nuw [32 x i8], ptr %i.qz, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.rd = getelementptr i8, ptr %i.rc, i64 24
  %.val20.i.i.i = load i16, ptr %i.rd, align 8, !alias.scope !153846, !noalias !153851, !noundef !14 ; 2 uses
  %i.re = icmp eq i16 %.val20.i.i.i, %i.qx
  br i1 %i.re, label %bb.gc, label %bb.gb

.lr.ph.i.i.i:                                     ; preds = %bb.ga, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.rm, %.lr.ph.i.i.i ], [ %i.ra, %bb.ga ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.rl, %.lr.ph.i.i.i ], [ 0, %bb.ga ] ; 2 uses
  %i.rf = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.rg = add i64 %i.rf, %.sroa.05.024.i.i.i      ; 3 uses
  %i.rh = icmp ult i64 %i.rg, %i.ra
  call void @llvm.assume(i1 %i.rh)
  %i.ri = getelementptr inbounds nuw [32 x i8], ptr %i.qz, i64 %i.rg
  %i.rj = getelementptr i8, ptr %i.ri, i64 24
  %.val22.i.i.i = load i16, ptr %i.rj, align 8, !alias.scope !153846, !noalias !153851, !noundef !14
  %i.rk = icmp ugt i16 %.val22.i.i.i, %i.qx
  %i.rl = select i1 %i.rk, i64 %.sroa.05.024.i.i.i, i64 %i.rg, !unpredictable !14 ; 2 uses
  %i.rm = sub nuw i64 %.sroa.01.025.i.i.i, %i.rf  ; 2 uses
  %i.rn = icmp ugt i64 %i.rm, 1
  br i1 %i.rn, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.gb:                                            ; preds = %._crit_edge.i.i.i
  %i.ro = icmp ult i16 %.val20.i.i.i, %i.qx
  %i.rp = zext i1 %i.ro to i64
  %i.rq = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.rp
  %i.rr = icmp ule i64 %i.rq, %i.ra
  call void @llvm.assume(i1 %i.rr)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gc:                                            ; preds = %._crit_edge.i.i.i
  %i.rs = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.rc, i16 noundef %i.qy)
          to label %.noexc335 unwind label %.loopexit596

.noexc335:                                        ; preds = %bb.gc
  br i1 %i.rs, label %bb.gd, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gd:                                            ; preds = %.noexc335
  %i.rt = load i64, ptr %i.rc, align 8, !range !2917, !noalias !153843, !noundef !14 ; 3 uses
  %i.ru = icmp eq i64 %i.rt, -9223372036854775808
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.rw = load i64, ptr %i.rv, align 8, !noalias !153843, !noundef !14 ; 2 uses
  br i1 %i.ru, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.rx = icmp ult i64 %i.rw, 4611686018427387904
  call void @llvm.assume(i1 %i.rx)
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.sroa.03.0.in.i = icmp eq i64 %i.rw, 0
  br i1 %.sroa.03.0.in.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i": ; preds = %bb.gf
  call void @llvm.experimental.noalias.scope.decl(metadata !153853)
  %i.ry = icmp ult i64 %i.ra, 288230376151711744
  call void @llvm.assume(i1 %i.ry)
  %.sroa.4.0..sroa_idx.i334 = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i334, align 8, !noalias !153856 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.sa = xor i64 %.sroa.05.0.lcssa.i.i.i, -1
  %i.sb = add nsw i64 %i.ra, %i.sa
  %i.sc = shl nuw nsw i64 %i.sb, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rc, ptr nonnull align 8 %i.rz, i64 %i.sc, i1 false), !noalias !153858
  %i.sd = add nsw i64 %i.ra, -1
  store i64 %i.sd, ptr %i.eb, align 8, !alias.scope !153860, !noalias !153861
  switch i64 %i.rt, label %bb.gg [
    i64 -9223372036854775808, label %bb.gh
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
  ]

bb.gg:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  %i.se = shl nuw i64 %i.rt, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.se, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !153843
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gh:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !153843
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit": ; preds = %bb.gh, %bb.gg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i", %bb.gf, %.noexc335, %bb.gb, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.bz

"_ZN4core3ptr478drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$milli..update..new..extract..geo..ExtractedGeoPoint$GT$$GT$$C$core..result..Result$LT$milli..update..new..extract..geo..ExtractedGeoPoint$C$std..io..error..Error$GT$..Ok$GT$$C$core..iter..sources..from_fn..FromFn$LT$milli..update..new..extract..geo..iterator_over_spilled_geopoints..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h4aa99a5d15b43f31E.exit320": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17he5d54392b14c28c9E.exit.i.i.i.i.i318", %bb.en, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ej

"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hdad021418472378fE.exit315": ; preds = %"_ZN4core3ptr81drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$17he5d54392b14c28c9E.exit.i3.i313", %"_ZN4core3ptr109drop_in_place$LT$core..option..Option$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$17h6b4edd2e0c29bc59E.exit.i310", %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.gi

bb.gi:                                            ; preds = %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hdad021418472378fE.exit315", %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6357)
  br label %bb.gj

bb.gj:                                            ; preds = %.backedge.i.i.i.i, %bb.gi
  %.sroa.0.0.idx12.i.i.i.i = phi i64 [ 0, %bb.gi ], [ %.sroa.0.0.add.i.i.i.i, %.backedge.i.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i.i = phi i64 [ 0, %bb.gi ], [ %i.sf, %.backedge.i.i.i.i ] ; 2 uses
  %.sroa.0.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.0.0.idx12.i.i.i.i
  %.sroa.0.0.add.i.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i.i, 8 ; 2 uses
  %i.sf = add nuw nsw i64 %.sroa.7.011.i.i.i.i, 1
  %i.sg = load ptr, ptr %.sroa.0.0.ptr.i.i.i.i, align 8, !alias.scope !153862, !noundef !14 ; 2 uses
  %i.sh = icmp eq ptr %i.sg, null
  br i1 %i.sh, label %.backedge.i.i.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.si = shl nuw i64 1, %.sroa.7.011.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$$u5d$$GT$$GT$17h21305d096b039e44E"(ptr nonnull %i.sg, i64 %i.si)
          to label %.backedge.i.i.i.i unwind label %.loopexit

.backedge.i.i.i.i:                                ; preds = %bb.gk, %bb.gj
  %i.sj = icmp eq i64 %.sroa.0.0.add.i.i.i.i, 504
  br i1 %i.sj, label %"_ZN4core3ptr148drop_in_place$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17heaa253cadc356a46E.exit", label %bb.gj

"_ZN4core3ptr148drop_in_place$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17heaa253cadc356a46E.exit": ; preds = %.backedge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0347)
  br label %bb.bj

"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit": ; preds = %bb.bm, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i", %bb.gp
  %.sroa.0125.8 = phi i8 [ 1, %bb.gp ], [ 0, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i" ], [ 0, %bb.bm ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.experimental.noalias.scope.decl(metadata !153871)
  call void @llvm.experimental.noalias.scope.decl(metadata !153874)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h45aa8a1e5909e72aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.bf)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i339" unwind label %bb.gl, !inline_history !107746

bb.gl:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"
  %i.sk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i337 = load i64, ptr %i.bf, align 8, !range !9, !alias.scope !153877, !noundef !14 ; 2 uses
  %i.sl = icmp eq i64 %.val2.i.i.i337, 0
  br i1 %i.sl, label %.body342, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.sm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val3.i.i.i338 = load ptr, ptr %i.sm, align 8, !alias.scope !153877, !nonnull !14, !noundef !14
  %i.sn = mul nuw i64 %.val2.i.i.i337, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i338, i64 noundef %i.sn, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153880, !inline_history !107750
  br label %.body342

"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i339": ; preds = %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"
  %.val.i.i.i340 = load i64, ptr %i.bf, align 8, !range !9, !alias.scope !153877, !noundef !14 ; 2 uses
  %i.so = icmp eq i64 %.val.i.i.i340, 0
  br i1 %i.so, label %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h6cceb103c711b3f6E.exit", label %bb.gn

bb.gn:                                            ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i339"
  %i.sp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val1.i.i.i341 = load ptr, ptr %i.sp, align 8, !alias.scope !153877, !nonnull !14, !noundef !14
  %i.sq = mul nuw i64 %.val.i.i.i340, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i341, i64 noundef %i.sq, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153880, !inline_history !107750
  br label %"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h6cceb103c711b3f6E.exit"

bb.go:                                            ; preds = %bb.ai
  %i.sr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$17hfe77ade7e580bff7E"(ptr noalias noundef align 8 dereferenceable(136) %i.ba) #81
          to label %.thread434 unwind label %bb.r

bb.gp:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.am, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit"
end_hunk_0
