Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN5rstar9algorithm5rstar16recursive_insert17h28ef6085fff690bcE:bb.a
  tail call fastcc void @_ZN5rstar9algorithm5rstar16resolve_overflow17hd77d9a5e06733865E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(72) %1, i64 noundef %3)
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit, %bb.x, %bb.t
  ret void

bb.z:                                             ; preds = %.thread61
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit: ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i", %bb.q
  %.sroa.18.0.lcssa.i = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.q ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i" ]
  %.sroa.9.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.q ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i" ]
  %i.cz = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %bb.q ], [ %i.cn, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i" ]
  %i.da = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %bb.q ], [ %i.cq, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i" ]
  store <2 x double> %i.cz, ptr %i.c, align 8
  store double %.sroa.9.0.lcssa.i, ptr %i.q, align 8
  store <2 x double> %i.da, ptr %i.u, align 8
  store double %.sroa.18.0.lcssa.i, ptr %i.w, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bu, ptr %i.dc, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.y

bb.aa:                                            ; preds = %._crit_edge, %bb.f
  %i.dd = phi ptr [ %.pre, %._crit_edge ], [ %.val, %bb.f ]
  %i.de = getelementptr inbounds nuw [72 x i8], ptr %i.dd, i64 %.val7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.de, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false)
  %i.df = add nuw nsw i64 %.val7, 1
  store i64 %i.df, ptr %i.ag, align 8, !alias.scope !179158, !noalias !179159
  tail call fastcc void @_ZN5rstar9algorithm5rstar16resolve_overflow17hd77d9a5e06733865E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(72) %1, i64 noundef %3)
  br label %bb.y

.thread57:                                        ; preds = %bb.v, %bb.h, %.thread61
  %.pn552 = phi { ptr, i32 } [ %i.an, %bb.h ], [ %lpad.thr_comm, %.thread61 ], [ %i.ct, %bb.v ]
  resume { ptr, i32 } %.pn552
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5rstar9algorithm5rstar16resolve_overflow17hd77d9a5e06733865E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !57 ; 6 uses
  %i.f = icmp ult i64 %i.e, 128102389400760776
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 6
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !179246
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179248)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179252)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !alias.scope !179253, !noalias !179254, !noundef !57
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !alias.scope !179255, !noalias !179256, !noundef !57
  %i.n = fadd double %i.k, %i.m
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = load <2 x double>, ptr %i.h, align 8, !alias.scope !179253, !noalias !179257
  %i.q = load <2 x double>, ptr %i.i, align 8, !alias.scope !179255, !noalias !179258
  %i.r = fadd <2 x double> %i.p, %i.q
  %i.s = fmul <2 x double> %i.r, splat (double 5.000000e-01)
  store <2 x double> %i.s, ptr %i.c, align 16, !alias.scope !179259, !noalias !179260
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double %i.o, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 16, !alias.scope !179259, !noalias !179260
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !179245, !noalias !179261, !nonnull !57, !noundef !57 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !179246
  store ptr %i.c, ptr %i.b, align 8, !noalias !179262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !179262
  store ptr %i.b, ptr %i.a, align 8, !noalias !179262
  %i.v = icmp samesign ult i64 %i.e, 21
  br i1 %i.v, label %bb.d, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core5slice4sort8unstable7ipnsort17h6addb3350f829546E(ptr noalias noundef nonnull align 8 %i.u, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !179246
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hf0f5b733fdbb5ebeE(ptr noalias noundef nonnull align 8 %i.u, i64 noundef %i.e, ptr nonnull %i.b)
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !179262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !179246
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !179263
  %i.w = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, 9) 8) #79, !noalias !179263 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit.i"

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 144, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2739) #80, !noalias !179264
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.y = add nsw i64 %i.e, -2                     ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !179265, !noalias !179266
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.w, ptr noundef nonnull align 8 dereferenceable(144) %i.z, i64 144, i1 false), !noalias !179267
  %.idx.i.i = mul nuw nsw i64 %i.y, 72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit.i", %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i"
  %.sroa.02.023.i.i = phi ptr [ %i.ad, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i" ], [ %i.u, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit.i" ] ; 9 uses
  %.sroa.9.020.i.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i" ], [ f0x7FEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit.i" ] ; 2 uses
  %.sroa.18.017.i.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i" ], [ f0xFFEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit.i" ] ; 2 uses
  %i.ab = phi <2 x double> [ %i.ap, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i" ], [ splat (double f0x7FEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit.i" ] ; 2 uses
  %i.ac = phi <2 x double> [ %i.as, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i" ], [ splat (double f0xFFEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit.i" ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179268)
  %i.ae = load i64, ptr %.sroa.02.023.i.i, align 8, !range !83, !alias.scope !179269, !noalias !179270, !noundef !57
  %.not.i.i.i = icmp eq i64 %i.ae, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 48
  %i.ah = load <2 x double>, ptr %i.ag, align 8, !alias.scope !179271, !noalias !179272
  %.sroa.11.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 64
  %.sroa.11.24.copyload.i.i = load double, ptr %.sroa.11.24..sroa_idx.i.i, align 8, !alias.scope !179271, !noalias !179272
  %i.ai = load <2 x double>, ptr %i.af, align 8, !alias.scope !179271, !noalias !179272
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 40
  %.sroa.69.0.copyload.i.i = load double, ptr %.sroa.69.0..sroa_idx.i.i, align 8, !alias.scope !179271, !noalias !179272
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i"

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 8
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 16
  %.sroa.5.0.copyload8.i.i = load double, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !alias.scope !179273, !noalias !179272
  %i.ak = load <2 x double>, ptr %i.aj, align 8, !alias.scope !179273, !noalias !179272 ; 2 uses
  %.sroa.69.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 24
  %.sroa.69.0.copyload11.i.i = load double, ptr %.sroa.69.0..sroa_idx10.i.i, align 8, !alias.scope !179273, !noalias !179272 ; 2 uses
  %i.al = insertelement <2 x double> %i.ak, double %.sroa.5.0.copyload8.i.i, i64 1
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i": ; preds = %bb.g, %bb.f
  %.sroa.11.0.i.i = phi double [ %.sroa.69.0.copyload11.i.i, %bb.g ], [ %.sroa.11.24.copyload.i.i, %bb.f ] ; 2 uses
  %.sroa.69.0.i.i = phi double [ %.sroa.69.0.copyload11.i.i, %bb.g ], [ %.sroa.69.0.copyload.i.i, %bb.f ] ; 2 uses
  %i.am = phi <2 x double> [ %i.ak, %bb.g ], [ %i.ai, %bb.f ] ; 2 uses
  %i.an = phi <2 x double> [ %i.al, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ao = fcmp olt <2 x double> %i.ab, %i.am
  %i.ap = select <2 x i1> %i.ao, <2 x double> %i.ab, <2 x double> %i.am ; 2 uses
  %i.aq = fcmp olt double %.sroa.9.020.i.i, %.sroa.69.0.i.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i = select i1 %i.aq, double %.sroa.9.020.i.i, double %.sroa.69.0.i.i ; 2 uses
  %i.ar = fcmp ogt <2 x double> %i.ac, %i.an
  %i.as = select <2 x i1> %i.ar, <2 x double> %i.ac, <2 x double> %i.an ; 2 uses
  %i.at = fcmp ogt double %.sroa.18.017.i.i, %.sroa.11.0.i.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i.i = select i1 %i.at, double %.sroa.18.017.i.i, double %.sroa.11.0.i.i ; 2 uses
  %i.au = icmp eq ptr %i.ad, %i.aa
  br i1 %i.au, label %_ZN5rstar9algorithm5rstar25get_nodes_for_reinsertion17h5ef3dfbfdfb829f7E.exit, label %.lr.ph.i.i

_ZN5rstar9algorithm5rstar25get_nodes_for_reinsertion17h5ef3dfbfdfb829f7E.exit: ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i"
  store <2 x double> %i.ap, ptr %i.h, align 8, !alias.scope !179245, !noalias !179261
  store double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !alias.scope !179245, !noalias !179261
  store <2 x double> %i.as, ptr %i.i, align 8, !alias.scope !179245, !noalias !179261
  store double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i.i, ptr %i.l, align 8, !alias.scope !179245, !noalias !179261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !179246
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.av, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %.sroa.3.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.aw, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN5rstar9algorithm5rstar25get_nodes_for_reinsertion17h5ef3dfbfdfb829f7E.exit
  %storemerge = phi i64 [ -9223372036854775807, %_ZN5rstar9algorithm5rstar25get_nodes_for_reinsertion17h5ef3dfbfdfb829f7E.exit ], [ -9223372036854775806, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5rstar9algorithm5rstar5split17h79b55ccbce4f5382E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.g, align 8, !nonnull !57, !noundef !57 ; 35 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val27 = load i64, ptr %i.h, align 8, !noundef !57 ; 22 uses
  %i.i = icmp ult i64 %.val27, 128102389400760776
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %.val27, -2                  ; 3 uses
  %i.k = icmp samesign ult i64 %.val27, 2
  %i.l = icmp samesign ult i64 %.val27, 21        ; 2 uses
  %.not.i = icmp eq i64 %.val27, 2
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %.val26, i64 %i.j ; 14 uses
  %.sroa.021.1114.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.n = icmp ugt i64 %i.j, 3
  %.idx176.i = mul nuw nsw i64 %.val27, 72
  %i.o = getelementptr inbounds nuw i8, ptr %.val26, i64 %.idx176.i ; 2 uses
  br i1 %i.k, label %.loopexit99.i, label %.split.split.preheader.i, !prof !58

.split.split.preheader.i:                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val26, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.val26, i64 48
  %.sroa.10.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val26, i64 56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val26, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %.sroa.020.0.ptr.i = getelementptr inbounds nuw i8, ptr %.val26, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val26, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %.val26, i64 120
  %.sroa.10.24..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %.val26, i64 128
  %.sroa.5.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %.val26, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %.val26, i64 80
  %.sroa.5.0..sroa_idx10.1.i = getelementptr inbounds nuw i8, ptr %.val26, i64 88
  %.sroa.020.0.ptr.1.i = getelementptr inbounds nuw i8, ptr %.val26, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %.val26, i64 168
  %i.w = getelementptr inbounds nuw i8, ptr %.val26, i64 192
  %.sroa.10.24..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %.val26, i64 200
  %.sroa.5.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %.val26, i64 176
  %i.x = getelementptr inbounds nuw i8, ptr %.val26, i64 152
  %.sroa.5.0..sroa_idx10.2.i = getelementptr inbounds nuw i8, ptr %.val26, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.1030.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.522.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %.sroa.1030.24..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %.sroa.522.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %.sroa.522.0..sroa_idx23.1.i = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  br label %.split.split.i

.loopexit.i:                                      ; preds = %._crit_edge157.i, %.preheader.i
  %.sroa.0.193.lcssa.i = phi double [ %.sroa.0.092172.i, %.preheader.i ], [ %.sroa.0.294.i, %._crit_edge157.i ]
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0174.i, %.preheader.i ], [ %.sroa.0.2.i, %._crit_edge157.i ] ; 2 uses
  %i.ae = icmp samesign ult i64 %.sroa.018.1175.i, 3 ; 2 uses
  %i.af = zext i1 %i.ae to i64
  %.sroa.018.1.i = add nuw nsw i64 %.sroa.018.1175.i, %i.af
  br i1 %i.ae, label %.split.split.i, label %bb.q

.split.split.i:                                   ; preds = %.loopexit.i, %.split.split.preheader.i
  %.sroa.018.1175.i = phi i64 [ %.sroa.018.1.i, %.loopexit.i ], [ 1, %.split.split.preheader.i ] ; 3 uses
  %.sroa.0.0174.i = phi i64 [ %.sroa.0.1.lcssa.i, %.loopexit.i ], [ 0, %.split.split.preheader.i ] ; 2 uses
  %.sroa.018.0173.i = phi i64 [ %.sroa.018.1175.i, %.loopexit.i ], [ 0, %.split.split.preheader.i ] ; 2 uses
  %.sroa.0.092172.i = phi double [ %.sroa.0.193.lcssa.i, %.loopexit.i ], [ f0x7FEFFFFFFFFFFFFF, %.split.split.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.018.0173.i, ptr %i.f, align 8, !noalias !179454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !179454
  store ptr %i.f, ptr %i.e, align 8, !noalias !179455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !179455
  store ptr %i.e, ptr %i.d, align 8, !noalias !179455
  br i1 %i.l, label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit.i", label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit.thread.i", !prof !58

"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit.thread.i": ; preds = %.split.split.i
  call void @_ZN4core5slice4sort8unstable7ipnsort17h8364740d76b9fb81E(ptr noalias noundef nonnull align 8 %.val26, i64 noundef %.val27, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !179455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !179454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit.i": ; preds = %.split.split.i
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h4d29e29c59c9cbe0E(ptr noalias noundef nonnull align 8 %.val26, i64 noundef %.val27, ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !179455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !179454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.not.i, label %.loopexit99.i, label %bb.b, !prof !129

.loopexit99.i:                                    ; preds = %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit.i", %bb.a
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 3, i64 noundef %.val27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2728) #80
  unreachable

bb.b:                                             ; preds = %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit.i", %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit.thread.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !179456)
  %i.ag = load i64, ptr %.val26, align 8, !range !83, !alias.scope !179457, !noalias !179456, !noundef !57
  %.not.i.i = icmp eq i64 %i.ag, -9223372036854775808
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.24.copyload.i = load double, ptr %i.q, align 8, !alias.scope !179458
  %.sroa.08.0.copyload.i = load double, ptr %i.p, align 8, !alias.scope !179458
  %i.ah = load <2 x double>, ptr %.sroa.10.24..sroa_idx.i, align 8, !alias.scope !179458
  %i.ai = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !179458
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i"

bb.d:                                             ; preds = %bb.b
  %.sroa.08.0.copyload9.i = load double, ptr %i.r, align 8, !alias.scope !179459 ; 2 uses
  %i.aj = load <2 x double>, ptr %.sroa.5.0..sroa_idx10.i, align 8, !alias.scope !179459 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i": ; preds = %bb.d, %bb.c
  %.sroa.7.0.i = phi double [ %.sroa.08.0.copyload9.i, %bb.d ], [ %.sroa.7.24.copyload.i, %bb.c ] ; 2 uses
  %.sroa.08.0.i = phi double [ %.sroa.08.0.copyload9.i, %bb.d ], [ %.sroa.08.0.copyload.i, %bb.c ] ; 2 uses
  %i.ak = phi <2 x double> [ %i.aj, %bb.d ], [ %i.ah, %bb.c ] ; 2 uses
  %i.al = phi <2 x double> [ %i.aj, %bb.d ], [ %i.ai, %bb.c ] ; 2 uses
  %i.am = fcmp ogt <2 x double> %i.al, splat (double f0x7FEFFFFFFFFFFFFF)
  %i.an = fcmp ogt double %.sroa.08.0.i, f0x7FEFFFFFFFFFFFFF
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.an, double f0x7FEFFFFFFFFFFFFF, double %.sroa.08.0.i ; 2 uses
  %i.ao = select <2 x i1> %i.am, <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), <2 x double> %i.al ; 2 uses
  %i.ap = fcmp olt <2 x double> %i.ak, splat (double f0xFFEFFFFFFFFFFFFF)
  %i.aq = fcmp olt double %.sroa.7.0.i, f0xFFEFFFFFFFFFFFFF
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.i = select i1 %i.aq, double f0xFFEFFFFFFFFFFFFF, double %.sroa.7.0.i ; 2 uses
  %i.ar = select <2 x i1> %i.ap, <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), <2 x double> %i.ak ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179460)
  %i.as = load i64, ptr %.sroa.020.0.ptr.i, align 8, !range !83, !alias.scope !179457, !noalias !179460, !noundef !57
  %.not.i.1.i = icmp eq i64 %i.as, -9223372036854775808
  br i1 %.not.i.1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i"
  %.sroa.7.24.copyload.1.i = load double, ptr %i.t, align 8, !alias.scope !179461
  %.sroa.08.0.copyload.1.i = load double, ptr %i.s, align 8, !alias.scope !179461
  %i.at = load <2 x double>, ptr %.sroa.10.24..sroa_idx.1.i, align 8, !alias.scope !179461
  %i.au = load <2 x double>, ptr %.sroa.5.0..sroa_idx.1.i, align 8, !alias.scope !179461
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.1.i"

bb.f:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i"
  %.sroa.08.0.copyload9.1.i = load double, ptr %i.u, align 8, !alias.scope !179462 ; 2 uses
  %i.av = load <2 x double>, ptr %.sroa.5.0..sroa_idx10.1.i, align 8, !alias.scope !179462 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.1.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.1.i": ; preds = %bb.f, %bb.e
  %.sroa.7.0.1.i = phi double [ %.sroa.08.0.copyload9.1.i, %bb.f ], [ %.sroa.7.24.copyload.1.i, %bb.e ] ; 2 uses
  %.sroa.08.0.1.i = phi double [ %.sroa.08.0.copyload9.1.i, %bb.f ], [ %.sroa.08.0.copyload.1.i, %bb.e ] ; 2 uses
  %i.aw = phi <2 x double> [ %i.av, %bb.f ], [ %i.at, %bb.e ] ; 2 uses
  %i.ax = phi <2 x double> [ %i.av, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.ay = fcmp olt <2 x double> %i.ao, %i.ax
  %i.az = fcmp olt double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.08.0.1.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1.i = select i1 %i.az, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, double %.sroa.08.0.1.i ; 2 uses
  %i.ba = select <2 x i1> %i.ay, <2 x double> %i.ao, <2 x double> %i.ax ; 2 uses
  %i.bb = fcmp ogt <2 x double> %i.ar, %i.aw
  %i.bc = fcmp ogt double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.i, %.sroa.7.0.1.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.1.i = select i1 %i.bc, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.i, double %.sroa.7.0.1.i ; 2 uses
  %i.bd = select <2 x i1> %i.bb, <2 x double> %i.ar, <2 x double> %i.aw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179463)
  %i.be = load i64, ptr %.sroa.020.0.ptr.1.i, align 8, !range !83, !alias.scope !179457, !noalias !179463, !noundef !57
  %.not.i.2.i = icmp eq i64 %i.be, -9223372036854775808
  br i1 %.not.i.2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.1.i"
  %.sroa.7.24.copyload.2.i = load double, ptr %i.w, align 8, !alias.scope !179464
  %.sroa.08.0.copyload.2.i = load double, ptr %i.v, align 8, !alias.scope !179464
  %i.bf = load <2 x double>, ptr %.sroa.10.24..sroa_idx.2.i, align 8, !alias.scope !179464
  %i.bg = load <2 x double>, ptr %.sroa.5.0..sroa_idx.2.i, align 8, !alias.scope !179464
  br label %.lr.ph.preheader.i

bb.h:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.1.i"
  %.sroa.08.0.copyload9.2.i = load double, ptr %i.x, align 8, !alias.scope !179465 ; 2 uses
  %i.bh = load <2 x double>, ptr %.sroa.5.0..sroa_idx10.2.i, align 8, !alias.scope !179465 ; 2 uses
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h, %bb.g
  %.sroa.7.0.2.i = phi double [ %.sroa.08.0.copyload9.2.i, %bb.h ], [ %.sroa.7.24.copyload.2.i, %bb.g ] ; 2 uses
  %.sroa.08.0.2.i = phi double [ %.sroa.08.0.copyload9.2.i, %bb.h ], [ %.sroa.08.0.copyload.2.i, %bb.g ] ; 2 uses
  %i.bi = phi <2 x double> [ %i.bh, %bb.h ], [ %i.bf, %bb.g ] ; 2 uses
  %i.bj = phi <2 x double> [ %i.bh, %bb.h ], [ %i.bg, %bb.g ] ; 2 uses
  %i.bk = fcmp olt <2 x double> %i.ba, %i.bj
  %i.bl = fcmp olt double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1.i, %.sroa.08.0.2.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2.i = select i1 %i.bl, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1.i, double %.sroa.08.0.2.i
  %i.bm = select <2 x i1> %i.bk, <2 x double> %i.ba, <2 x double> %i.bj
  %i.bn = fcmp ogt <2 x double> %i.bd, %i.bi
  %i.bo = fcmp ogt double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.1.i, %.sroa.7.0.2.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.2.i = select i1 %i.bo, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.1.i, double %.sroa.7.0.2.i
  %i.bp = select <2 x i1> %i.bn, <2 x double> %i.bd, <2 x double> %i.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !179466)
  %i.bq = load i64, ptr %i.m, align 8, !range !83, !alias.scope !179467, !noalias !179466, !noundef !57
  %.not.i40.i = icmp eq i64 %i.bq, -9223372036854775808
  br i1 %.not.i40.i, label %bb.j, label %bb.i

.preheader.i:                                     ; preds = %bb.l, %bb.k
  %.sroa.728.0.1.i = phi double [ %.sroa.020.0.copyload21.1.i, %bb.l ], [ %.sroa.728.24.copyload.1.i, %bb.k ] ; 2 uses
  %.sroa.020.0.1.i = phi double [ %.sroa.020.0.copyload21.1.i, %bb.l ], [ %.sroa.020.0.copyload.1.i, %bb.k ] ; 2 uses
  %i.br = phi <2 x double> [ %i.cn, %bb.l ], [ %i.cl, %bb.k ] ; 2 uses
  %i.bs = phi <2 x double> [ %i.cn, %bb.l ], [ %i.cm, %bb.k ] ; 2 uses
  %i.bt = fcmp olt <2 x double> %i.cg, %i.bs
  %i.bu = fcmp olt double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.i, %.sroa.020.0.1.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.1.i = select i1 %i.bu, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.i, double %.sroa.020.0.1.i ; 2 uses
  %i.bv = select <2 x i1> %i.bt, <2 x double> %i.cg, <2 x double> %i.bs ; 2 uses
  %i.bw = fcmp ogt <2 x double> %i.cj, %i.br
  %i.bx = fcmp ogt double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.i, %.sroa.728.0.1.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.1.i = select i1 %i.bx, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.i, double %.sroa.728.0.1.i ; 2 uses
  %i.by = select <2 x i1> %i.bw, <2 x double> %i.cj, <2 x double> %i.br ; 2 uses
  br i1 %i.n, label %.lr.ph169.i, label %.loopexit.i

bb.i:                                             ; preds = %.lr.ph.preheader.i
  %.sroa.728.24.copyload.i = load double, ptr %i.z, align 8, !alias.scope !179468
  %.sroa.020.0.copyload.i = load double, ptr %i.y, align 8, !alias.scope !179468
  %i.bz = load <2 x double>, ptr %.sroa.1030.24..sroa_idx.i, align 8, !alias.scope !179468
  %i.ca = load <2 x double>, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !179468
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit41.i"

bb.j:                                             ; preds = %.lr.ph.preheader.i
  %.sroa.020.0.copyload21.i = load double, ptr %i.aa, align 8, !alias.scope !179469 ; 2 uses
  %i.cb = load <2 x double>, ptr %.sroa.522.0..sroa_idx23.i, align 8, !alias.scope !179469 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit41.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit41.i": ; preds = %bb.j, %bb.i
  %.sroa.728.0.i = phi double [ %.sroa.020.0.copyload21.i, %bb.j ], [ %.sroa.728.24.copyload.i, %bb.i ] ; 2 uses
  %.sroa.020.0.i = phi double [ %.sroa.020.0.copyload21.i, %bb.j ], [ %.sroa.020.0.copyload.i, %bb.i ] ; 2 uses
  %i.cc = phi <2 x double> [ %i.cb, %bb.j ], [ %i.bz, %bb.i ] ; 2 uses
  %i.cd = phi <2 x double> [ %i.cb, %bb.j ], [ %i.ca, %bb.i ] ; 2 uses
  %i.ce = fcmp ogt <2 x double> %i.cd, splat (double f0x7FEFFFFFFFFFFFFF)
  %i.cf = fcmp ogt double %.sroa.020.0.i, f0x7FEFFFFFFFFFFFFF
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.i = select i1 %i.cf, double f0x7FEFFFFFFFFFFFFF, double %.sroa.020.0.i ; 2 uses
  %i.cg = select <2 x i1> %i.ce, <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), <2 x double> %i.cd ; 2 uses
  %i.ch = fcmp olt <2 x double> %i.cc, splat (double f0xFFEFFFFFFFFFFFFF)
  %i.ci = fcmp olt double %.sroa.728.0.i, f0xFFEFFFFFFFFFFFFF
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.i = select i1 %i.ci, double f0xFFEFFFFFFFFFFFFF, double %.sroa.728.0.i ; 2 uses
  %i.cj = select <2 x i1> %i.ch, <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), <2 x double> %i.cc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179470)
  %i.ck = load i64, ptr %.sroa.021.1114.i, align 8, !range !83, !alias.scope !179467, !noalias !179470, !noundef !57
  %.not.i40.1.i = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not.i40.1.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit41.i"
  %.sroa.728.24.copyload.1.i = load double, ptr %i.ac, align 8, !alias.scope !179471
  %.sroa.020.0.copyload.1.i = load double, ptr %i.ab, align 8, !alias.scope !179471
  %i.cl = load <2 x double>, ptr %.sroa.1030.24..sroa_idx.1.i, align 8, !alias.scope !179471
  %i.cm = load <2 x double>, ptr %.sroa.522.0..sroa_idx.1.i, align 8, !alias.scope !179471
  br label %.preheader.i

bb.l:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit41.i"
  %.sroa.020.0.copyload21.1.i = load double, ptr %i.ad, align 8, !alias.scope !179472 ; 2 uses
  %i.cn = load <2 x double>, ptr %.sroa.522.0..sroa_idx23.1.i, align 8, !alias.scope !179472 ; 2 uses
  br label %.preheader.i

.lr.ph169.i:                                      ; preds = %.preheader.i, %._crit_edge157.i
  %.sroa.022.1168.i = phi i64 [ %.sroa.022.1.i, %._crit_edge157.i ], [ 4, %.preheader.i ] ; 3 uses
  %.sroa.0.1167.i = phi i64 [ %.sroa.0.2.i, %._crit_edge157.i ], [ %.sroa.0.0174.i, %.preheader.i ]
  %.sroa.022.0166.i = phi i64 [ %.sroa.022.1168.i, %._crit_edge157.i ], [ 3, %.preheader.i ] ; 2 uses
  %.sroa.0.193165.i = phi double [ %.sroa.0.294.i, %._crit_edge157.i ], [ %.sroa.0.092172.i, %.preheader.i ] ; 2 uses
  %.idx.i = mul nuw nsw i64 %.sroa.022.0166.i, 72
  %i.co = getelementptr inbounds nuw i8, ptr %.val26, i64 %.idx.i ; 3 uses
  br label %.lr.ph138.i

.lr.ph138.i:                                      ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit49.i", %.lr.ph169.i
  %.sroa.024.1137.i = phi ptr [ %.sroa.024.1.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit49.i" ], [ %.sroa.020.0.ptr.i, %.lr.ph169.i ] ; 3 uses
  %.sroa.024.0136.i = phi ptr [ %.sroa.024.1137.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit49.i" ], [ %.val26, %.lr.ph169.i ] ; 7 uses
  %.sroa.036.0135.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit49.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2.i, %.lr.ph169.i ] ; 2 uses
  %.sroa.14.0132.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i54.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit49.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.2.i, %.lr.ph169.i ] ; 2 uses
  %i.cp = phi <2 x double> [ %i.df, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit49.i" ], [ %i.bp, %.lr.ph169.i ] ; 2 uses
  %i.cq = phi <2 x double> [ %i.dc, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit49.i" ], [ %i.bm, %.lr.ph169.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179473)
  %i.cr = load i64, ptr %.sroa.024.0136.i, align 8, !range !83, !alias.scope !179474, !noalias !179473, !noundef !57
  %.not.i48.i = icmp eq i64 %i.cr, -9223372036854775808
  br i1 %.not.i48.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph138.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 48
  %.sroa.765.24.copyload.i = load double, ptr %i.ct, align 8, !alias.scope !179475
  %.sroa.1067.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 56
  %.sroa.057.0.copyload.i = load double, ptr %i.cs, align 8, !alias.scope !179475
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 32
  %i.cu = load <2 x double>, ptr %.sroa.1067.24..sroa_idx.i, align 8, !alias.scope !179475
  %i.cv = load <2 x double>, ptr %.sroa.559.0..sroa_idx.i, align 8, !alias.scope !179475
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit49.i"

bb.n:                                             ; preds = %.lr.ph138.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 8
  %.sroa.057.0.copyload58.i = load double, ptr %i.cw, align 8, !alias.scope !179476 ; 2 uses
  %.sroa.559.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 16
  %i.cx = load <2 x double>, ptr %.sroa.559.0..sroa_idx60.i, align 8, !alias.scope !179476 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit49.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit49.i": ; preds = %bb.n, %bb.m
  %.sroa.765.0.i = phi double [ %.sroa.057.0.copyload58.i, %bb.n ], [ %.sroa.765.24.copyload.i, %bb.m ] ; 2 uses
  %.sroa.057.0.i = phi double [ %.sroa.057.0.copyload58.i, %bb.n ], [ %.sroa.057.0.copyload.i, %bb.m ] ; 2 uses
  %i.cy = phi <2 x double> [ %i.cx, %bb.n ], [ %i.cu, %bb.m ] ; 2 uses
  %i.cz = phi <2 x double> [ %i.cx, %bb.n ], [ %i.cv, %bb.m ] ; 2 uses
  %i.da = fcmp olt <2 x double> %i.cq, %i.cz
  %i.db = fcmp olt double %.sroa.036.0135.i, %.sroa.057.0.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51.i = select i1 %i.db, double %.sroa.036.0135.i, double %.sroa.057.0.i ; 2 uses
  %i.dc = select <2 x i1> %i.da, <2 x double> %i.cq, <2 x double> %i.cz ; 2 uses
  %i.dd = fcmp ogt <2 x double> %i.cp, %i.cy
  %i.de = fcmp ogt double %.sroa.14.0132.i, %.sroa.765.0.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i54.i = select i1 %i.de, double %.sroa.14.0132.i, double %.sroa.765.0.i ; 2 uses
  %i.df = select <2 x i1> %i.dd, <2 x double> %i.cp, <2 x double> %i.cy ; 2 uses
  %i.dg = icmp eq ptr %.sroa.024.1137.i, %i.co    ; 2 uses
  %.sroa.024.1.idx.i = select i1 %i.dg, i64 0, i64 72
  %.sroa.024.1.i = getelementptr inbounds nuw i8, ptr %.sroa.024.1137.i, i64 %.sroa.024.1.idx.i
  br i1 %i.dg, label %._crit_edge.i, label %.lr.ph138.i

._crit_edge.i:                                    ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit49.i"
  %2 = icmp eq i64 %.sroa.022.0166.i, %.val27
  br i1 %2, label %._crit_edge157.i, label %.lr.ph156.preheader.i

.lr.ph156.preheader.i:                            ; preds = %._crit_edge.i
  %.sroa.025.1146.i = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  br label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i", %.lr.ph156.preheader.i
  %.sroa.025.1154.i = phi ptr [ %.sroa.025.1.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i" ], [ %.sroa.025.1146.i, %.lr.ph156.preheader.i ] ; 3 uses
  %.sroa.025.0153.i = phi ptr [ %.sroa.025.1154.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i" ], [ %i.co, %.lr.ph156.preheader.i ] ; 7 uses
  %.sroa.045.0152.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i59.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.1.i, %.lr.ph156.preheader.i ] ; 2 uses
  %.sroa.1451.0149.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i62.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.1.i, %.lr.ph156.preheader.i ] ; 2 uses
  %i.dh = phi <2 x double> [ %i.dx, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i" ], [ %i.by, %.lr.ph156.preheader.i ] ; 2 uses
  %i.di = phi <2 x double> [ %i.du, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i" ], [ %i.bv, %.lr.ph156.preheader.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179477)
  %i.dj = load i64, ptr %.sroa.025.0153.i, align 8, !range !83, !alias.scope !179478, !noalias !179477, !noundef !57
  %.not.i56.i = icmp eq i64 %i.dj, -9223372036854775808
  br i1 %.not.i56.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph156.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 48
  %.sroa.781.24.copyload.i = load double, ptr %i.dl, align 8, !alias.scope !179479
  %.sroa.1083.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 56
  %.sroa.073.0.copyload.i = load double, ptr %i.dk, align 8, !alias.scope !179479
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 32
  %i.dm = load <2 x double>, ptr %.sroa.1083.24..sroa_idx.i, align 8, !alias.scope !179479
  %i.dn = load <2 x double>, ptr %.sroa.575.0..sroa_idx.i, align 8, !alias.scope !179479
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i"

bb.p:                                             ; preds = %.lr.ph156.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 8
  %.sroa.073.0.copyload74.i = load double, ptr %i.do, align 8, !alias.scope !179480 ; 2 uses
  %.sroa.575.0..sroa_idx76.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 16
  %i.dp = load <2 x double>, ptr %.sroa.575.0..sroa_idx76.i, align 8, !alias.scope !179480 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i": ; preds = %bb.p, %bb.o
  %.sroa.781.0.i = phi double [ %.sroa.073.0.copyload74.i, %bb.p ], [ %.sroa.781.24.copyload.i, %bb.o ] ; 2 uses
  %.sroa.073.0.i = phi double [ %.sroa.073.0.copyload74.i, %bb.p ], [ %.sroa.073.0.copyload.i, %bb.o ] ; 2 uses
  %i.dq = phi <2 x double> [ %i.dp, %bb.p ], [ %i.dm, %bb.o ] ; 2 uses
  %i.dr = phi <2 x double> [ %i.dp, %bb.p ], [ %i.dn, %bb.o ] ; 2 uses
  %i.ds = fcmp olt <2 x double> %i.di, %i.dr
  %i.dt = fcmp olt double %.sroa.045.0152.i, %.sroa.073.0.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i59.i = select i1 %i.dt, double %.sroa.045.0152.i, double %.sroa.073.0.i ; 2 uses
  %i.du = select <2 x i1> %i.ds, <2 x double> %i.di, <2 x double> %i.dr ; 2 uses
  %i.dv = fcmp ogt <2 x double> %i.dh, %i.dq
  %i.dw = fcmp ogt double %.sroa.1451.0149.i, %.sroa.781.0.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i62.i = select i1 %i.dw, double %.sroa.1451.0149.i, double %.sroa.781.0.i ; 2 uses
  %i.dx = select <2 x i1> %i.dv, <2 x double> %i.dh, <2 x double> %i.dq ; 2 uses
  %i.dy = icmp eq ptr %.sroa.025.1154.i, %i.o     ; 2 uses
  %.sroa.025.1.idx.i = select i1 %i.dy, i64 0, i64 72
  %.sroa.025.1.i = getelementptr inbounds nuw i8, ptr %.sroa.025.1154.i, i64 %.sroa.025.1.idx.i
  br i1 %i.dy, label %._crit_edge157.i, label %.lr.ph156.i

._crit_edge157.i:                                 ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i", %._crit_edge.i
  %.sroa.1451.0.lcssa.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.1.i, %._crit_edge.i ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i62.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i" ]
  %.sroa.045.0.lcssa.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.1.i, %._crit_edge.i ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i59.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i" ]
  %3 = phi <2 x double> [ %i.by, %._crit_edge.i ], [ %i.dx, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i" ]
  %4 = phi <2 x double> [ %i.bv, %._crit_edge.i ], [ %i.du, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit57.i" ]
  %i.dz = fsub <2 x double> %i.df, %i.dc          ; 2 uses
  %i.ea = insertelement <2 x double> poison, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i54.i, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %.sroa.1451.0.lcssa.i, i64 1
  %i.ec = insertelement <2 x double> poison, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51.i, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %.sroa.045.0.lcssa.i, i64 1
  %i.ee = fsub <2 x double> %i.eb, %i.ed
  %i.ef = fsub <2 x double> %3, %4                ; 2 uses
  %i.eg = fadd <2 x double> %i.ee, zeroinitializer
  %i.eh = shufflevector <2 x double> %i.dz, <2 x double> %i.ef, <2 x i32> <i32 0, i32 2>
  %i.ei = fadd <2 x double> %i.eh, %i.eg
  %i.ej = shufflevector <2 x double> %i.dz, <2 x double> %i.ef, <2 x i32> <i32 1, i32 3>
  %i.ek = fadd <2 x double> %i.ej, %i.ei          ; 2 uses
  %i.el = fcmp ogt <2 x double> %i.ek, zeroinitializer
  %i.em = select <2 x i1> %i.el, <2 x double> %i.ek, <2 x double> zeroinitializer ; 2 uses
  %shift = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.em, %shift
  %i.en = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.eo = fcmp ogt double %.sroa.0.193165.i, %i.en ; 2 uses
  %.sroa.0.294.i = select i1 %i.eo, double %i.en, double %.sroa.0.193165.i ; 2 uses
  %.sroa.0.2.i = select i1 %i.eo, i64 %.sroa.018.0173.i, i64 %.sroa.0.1167.i ; 2 uses
  %i.ep = icmp ult i64 %.sroa.022.1168.i, %i.j    ; 2 uses
  %i.eq = zext i1 %i.ep to i64
  %.sroa.022.1.i = add nuw i64 %.sroa.022.1168.i, %i.eq
  br i1 %i.ep, label %.lr.ph169.i, label %.loopexit.i

bb.q:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.1.lcssa.i, ptr %i.c, align 8, !noalias !179481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !179481
  store ptr %i.c, ptr %i.b, align 8, !noalias !179482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !179482
  store ptr %i.b, ptr %i.a, align 8, !noalias !179482
  %i.er = add nsw i64 %.val27, -3                 ; 3 uses
  br i1 %i.l, label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit", label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit.thread", !prof !58

"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit.thread": ; preds = %bb.q
  call void @_ZN4core5slice4sort8unstable7ipnsort17h8364740d76b9fb81E(ptr noalias noundef nonnull align 8 %.val26, i64 noundef %.val27, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !179482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !179481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.lr.ph240.preheader

"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit": ; preds = %bb.q
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h4d29e29c59c9cbe0E(ptr noalias noundef nonnull align 8 %.val26, i64 noundef %.val27, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !179482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !179481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i28235 = icmp ult i64 %i.er, 3
  br i1 %.not.i28235, label %._crit_edge241, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit.thread", %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit"
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %._crit_edge228
  %.sroa.0.0239 = phi i64 [ %.sroa.0.1, %._crit_edge228 ], [ 3, %.lr.ph240.preheader ]
  %.sroa.0.0180238 = phi double [ %.sroa.0.1181, %._crit_edge228 ], [ 0.000000e+00, %.lr.ph240.preheader ] ; 3 uses
  %.sroa.5.0237 = phi double [ %.sroa.5.1, %._crit_edge228 ], [ 0.000000e+00, %.lr.ph240.preheader ] ; 2 uses
  %.sroa.075.0236 = phi i64 [ %spec.select189, %._crit_edge228 ], [ 3, %.lr.ph240.preheader ] ; 9 uses
  %i.es = icmp uge i64 %.sroa.075.0236, %i.er     ; 2 uses
  %not. = xor i1 %i.es, true
  %i.et = zext i1 %not. to i64
  %spec.select189 = add nuw i64 %.sroa.075.0236, %i.et ; 2 uses
  %i.eu = add i64 %.sroa.075.0236, -1             ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %.val27
  br i1 %i.ev, label %bb.y, label %bb.ab

._crit_edge241:                                   ; preds = %._crit_edge228, %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit"
  %.sroa.0.0.lcssa = phi i64 [ 3, %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17h06d3f2aac0ca0396E.exit" ], [ %.sroa.0.1, %._crit_edge228 ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179483)
  %i.ew = icmp ugt i64 %.sroa.0.0.lcssa, %.val27
  br i1 %i.ew, label %bb.t, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !60

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %._crit_edge241
  %i.ex = sub nuw nsw i64 %.val27, %.sroa.0.0.lcssa ; 3 uses
  %i.ey = mul nuw nsw i64 %i.ex, 72               ; 4 uses
  %i.ez = icmp eq i64 %.val27, %.sroa.0.0.lcssa   ; 2 uses
  br i1 %i.ez, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit", label %bb.r

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !179484
  %i.fa = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ey, i64 noundef range(i64 1, 9) 8) #79, !noalias !179484 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.s, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit"

bb.s:                                             ; preds = %bb.r
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2741) #80, !noalias !179485
  unreachable

bb.t:                                             ; preds = %._crit_edge241
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off13assert_failed17h76342509ab517cd0E"(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.val27, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2741) #80, !noalias !179485
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.r
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.fa, %bb.r ] ; 4 uses
  store i64 %.sroa.0.0.lcssa, ptr %i.h, align 8, !alias.scope !179483, !noalias !179486
  %i.fc = getelementptr inbounds nuw [72 x i8], ptr %.val26, i64 %.sroa.0.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i, ptr nonnull align 8 %i.fc, i64 %i.ey, i1 false), !noalias !179487
  %.idx.i29 = mul nuw nsw i64 %.sroa.0.0.lcssa, 72
  %i.fd = getelementptr inbounds nuw i8, ptr %.val26, i64 %.idx.i29
  %i.fe = icmp eq i64 %.sroa.0.0.lcssa, 0
  br i1 %i.fe, label %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit", %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38"
  %.sroa.02.023.i = phi ptr [ %i.fh, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38" ], [ %.val26, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit" ] ; 9 uses
  %.sroa.9.020.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i45, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38" ], [ f0x7FEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit" ] ; 2 uses
  %.sroa.18.017.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i48, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38" ], [ f0xFFEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit" ] ; 2 uses
  %i.ff = phi <2 x double> [ %i.ft, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38" ], [ splat (double f0x7FEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit" ] ; 2 uses
  %i.fg = phi <2 x double> [ %i.fw, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38" ], [ splat (double f0xFFEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit" ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179488)
  %i.fi = load i64, ptr %.sroa.02.023.i, align 8, !range !83, !alias.scope !179489, !noalias !179490, !noundef !57
  %.not.i.i30 = icmp eq i64 %i.fi, -9223372036854775808
  br i1 %.not.i.i30, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 48
  %i.fl = load <2 x double>, ptr %i.fk, align 8, !alias.scope !179491, !noalias !179492
  %.sroa.11.24..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 64
  %.sroa.11.24.copyload.i35 = load double, ptr %.sroa.11.24..sroa_idx.i34, align 8, !alias.scope !179491, !noalias !179492
  %i.fm = load <2 x double>, ptr %i.fj, align 8, !alias.scope !179491, !noalias !179492
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 40
  %.sroa.69.0.copyload.i = load double, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !179491, !noalias !179492
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38"

bb.v:                                             ; preds = %.lr.ph.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 8
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 16
  %.sroa.5.0.copyload8.i = load double, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !179493, !noalias !179492
  %i.fo = load <2 x double>, ptr %i.fn, align 8, !alias.scope !179493, !noalias !179492 ; 2 uses
  %.sroa.69.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 24
  %.sroa.69.0.copyload11.i = load double, ptr %.sroa.69.0..sroa_idx10.i, align 8, !alias.scope !179493, !noalias !179492 ; 2 uses
  %i.fp = insertelement <2 x double> %i.fo, double %.sroa.5.0.copyload8.i, i64 1
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38": ; preds = %bb.v, %bb.u
  %.sroa.11.0.i39 = phi double [ %.sroa.69.0.copyload11.i, %bb.v ], [ %.sroa.11.24.copyload.i35, %bb.u ] ; 2 uses
  %.sroa.69.0.i = phi double [ %.sroa.69.0.copyload11.i, %bb.v ], [ %.sroa.69.0.copyload.i, %bb.u ] ; 2 uses
  %i.fq = phi <2 x double> [ %i.fo, %bb.v ], [ %i.fm, %bb.u ] ; 2 uses
  %i.fr = phi <2 x double> [ %i.fp, %bb.v ], [ %i.fl, %bb.u ] ; 2 uses
  %i.fs = fcmp olt <2 x double> %i.ff, %i.fq
  %i.ft = select <2 x i1> %i.fs, <2 x double> %i.ff, <2 x double> %i.fq ; 2 uses
  %i.fu = fcmp olt double %.sroa.9.020.i, %.sroa.69.0.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i45 = select i1 %i.fu, double %.sroa.9.020.i, double %.sroa.69.0.i ; 2 uses
  %i.fv = fcmp ogt <2 x double> %i.fg, %i.fr
  %i.fw = select <2 x i1> %i.fv, <2 x double> %i.fg, <2 x double> %i.fr ; 2 uses
  %i.fx = fcmp ogt double %.sroa.18.017.i, %.sroa.11.0.i39
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i48 = select i1 %i.fx, double %.sroa.18.017.i, double %.sroa.11.0.i39 ; 2 uses
  %i.fy = icmp eq ptr %i.fh, %i.fd
  br i1 %i.fy, label %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit, label %.lr.ph.i

_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit: ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit"
  %.sroa.18.0.lcssa.i = phi double [ f0xFFEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit" ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i48, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38" ]
  %.sroa.9.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit" ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i45, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38" ]
  %i.fz = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit" ], [ %i.ft, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38" ]
  %i.ga = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17hc5bdf9ca9bcfae97E.exit" ], [ %i.fw, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i38" ]
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x double> %i.fz, ptr %i.gb, align 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %.sroa.9.0.lcssa.i, ptr %.sroa.5161.0..sroa_idx, align 8
  %.sroa.6162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x double> %i.ga, ptr %.sroa.6162.0..sroa_idx, align 8
  %.sroa.8164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %.sroa.18.0.lcssa.i, ptr %.sroa.8164.0..sroa_idx, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 %i.ey
  br i1 %i.ez, label %"_ZN5rstar4node19ParentNode$LT$T$GT$10new_parent17h93988446d5550eb2E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i"
  %.sroa.02.023.i.i = phi ptr [ %i.gf, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i" ], [ %.sroa.10.0.i.i, %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit ] ; 9 uses
  %.sroa.9.020.i.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i" ], [ f0x7FEFFFFFFFFFFFFF, %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit ] ; 2 uses
  %.sroa.18.017.i.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i" ], [ f0xFFEFFFFFFFFFFFFF, %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit ] ; 2 uses
  %i.gd = phi <2 x double> [ %i.gr, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i" ], [ splat (double f0x7FEFFFFFFFFFFFFF), %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit ] ; 2 uses
  %i.ge = phi <2 x double> [ %i.gu, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i" ], [ splat (double f0xFFEFFFFFFFFFFFFF), %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179494)
  %i.gg = load i64, ptr %.sroa.02.023.i.i, align 8, !range !83, !alias.scope !179495, !noalias !179496, !noundef !57
  %.not.i.i.i = icmp eq i64 %i.gg, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 24
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 48
  %i.gj = load <2 x double>, ptr %i.gi, align 8, !alias.scope !179497, !noalias !179498
  %.sroa.11.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 64
  %.sroa.11.24.copyload.i.i = load double, ptr %.sroa.11.24..sroa_idx.i.i, align 8, !alias.scope !179497, !noalias !179498
  %i.gk = load <2 x double>, ptr %i.gh, align 8, !alias.scope !179497, !noalias !179498
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 40
  %.sroa.69.0.copyload.i.i = load double, ptr %.sroa.69.0..sroa_idx.i.i, align 8, !alias.scope !179497, !noalias !179498
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i"

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 8
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 16
  %.sroa.5.0.copyload8.i.i = load double, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !alias.scope !179499, !noalias !179498
  %i.gm = load <2 x double>, ptr %i.gl, align 8, !alias.scope !179499, !noalias !179498 ; 2 uses
  %.sroa.69.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 24
  %.sroa.69.0.copyload11.i.i = load double, ptr %.sroa.69.0..sroa_idx10.i.i, align 8, !alias.scope !179499, !noalias !179498 ; 2 uses
  %i.gn = insertelement <2 x double> %i.gm, double %.sroa.5.0.copyload8.i.i, i64 1
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i.i": ; preds = %bb.x, %bb.w
  %.sroa.11.0.i.i = phi double [ %.sroa.69.0.copyload11.i.i, %bb.x ], [ %.sroa.11.24.copyload.i.i, %bb.w ] ; 2 uses
  %.sroa.69.0.i.i = phi double [ %.sroa.69.0.copyload11.i.i, %bb.x ], [ %.sroa.69.0.copyload.i.i, %bb.w ] ; 2 uses
  %i.go = phi <2 x double> [ %i.gm, %bb.x ], [ %i.gk, %bb.w ] ; 2 uses
  %i.gp = phi <2 x double> [ %i.gn, %bb.x ], [ %i.gj, %bb.w ] ; 2 uses
  %i.gq = fcmp olt <2 x double> %i.gd, %i.go
  %i.gr = select <2 x i1> %i.gq, <2 x double> %i.gd, <2 x double> %i.go ; 2 uses
end_hunk_0
