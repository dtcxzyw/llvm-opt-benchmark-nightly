Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN5rstar9algorithm5rstar16recursive_insert17he9f45dc2b61ef8a2E:bb.a
  tail call fastcc void @_ZN5rstar9algorithm5rstar16resolve_overflow17h4d60f262a8cc3895E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(72) %1, i64 noundef %3)
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, %bb.x, %bb.t
  ret void

bb.z:                                             ; preds = %.thread61
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable

_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit: ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i", %bb.q
  %.sroa.18.0.lcssa.i = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.q ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
  %.sroa.9.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.q ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
  %i.cz = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %bb.q ], [ %i.cn, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
  %i.da = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %bb.q ], [ %i.cq, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
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
  store i64 %i.df, ptr %i.ag, align 8, !alias.scope !42808, !noalias !42809
  tail call fastcc void @_ZN5rstar9algorithm5rstar16resolve_overflow17h4d60f262a8cc3895E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(72) %1, i64 noundef %3)
  br label %bb.y

.thread57:                                        ; preds = %bb.v, %bb.h, %.thread61
  %.pn552 = phi { ptr, i32 } [ %i.an, %bb.h ], [ %lpad.thr_comm, %.thread61 ], [ %i.ct, %bb.v ]
  resume { ptr, i32 } %.pn552
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5rstar9algorithm5rstar16resolve_overflow17h4d60f262a8cc3895E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !16 ; 6 uses
  %i.f = icmp ult i64 %i.e, 128102389400760776
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 6
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42895)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !42896
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42898)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42902)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !alias.scope !42903, !noalias !42904, !noundef !16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !alias.scope !42905, !noalias !42906, !noundef !16
  %i.n = fadd double %i.k, %i.m
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = load <2 x double>, ptr %i.h, align 8, !alias.scope !42903, !noalias !42907
  %i.q = load <2 x double>, ptr %i.i, align 8, !alias.scope !42905, !noalias !42908
  %i.r = fadd <2 x double> %i.p, %i.q
  %i.s = fmul <2 x double> %i.r, splat (double 5.000000e-01)
  store <2 x double> %i.s, ptr %i.c, align 16, !alias.scope !42909, !noalias !42910
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double %i.o, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 16, !alias.scope !42909, !noalias !42910
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !42895, !noalias !42911, !nonnull !16, !noundef !16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42896
  store ptr %i.c, ptr %i.b, align 8, !noalias !42912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42912
  store ptr %i.b, ptr %i.a, align 8, !noalias !42912
  %i.v = icmp samesign ult i64 %i.e, 21
  br i1 %i.v, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core5slice4sort8unstable7ipnsort17h6addb3350f829546E(ptr noalias noundef nonnull align 8 %i.u, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !42896
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h00187622ee117aa8E(ptr noalias noundef nonnull align 8 %i.u, i64 noundef %i.e, ptr nonnull %i.b)
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42896
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !42913
  %i.w = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, 9) 8) #65, !noalias !42913 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit.i"

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 144, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @898) #66, !noalias !42914
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.y = add nsw i64 %i.e, -2                     ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !42915, !noalias !42916
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.w, ptr noundef nonnull align 8 dereferenceable(144) %i.z, i64 144, i1 false), !noalias !42917
  %.idx.i.i = mul nuw nsw i64 %i.y, 72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit.i", %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i"
  %.sroa.02.023.i.i = phi ptr [ %i.ad, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ %i.u, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit.i" ] ; 9 uses
  %.sroa.9.020.i.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ f0x7FEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit.i" ] ; 2 uses
  %.sroa.18.017.i.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ f0xFFEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit.i" ] ; 2 uses
  %i.ab = phi <2 x double> [ %i.ap, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ splat (double f0x7FEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit.i" ] ; 2 uses
  %i.ac = phi <2 x double> [ %i.as, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ splat (double f0xFFEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit.i" ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42918)
  %i.ae = load i64, ptr %.sroa.02.023.i.i, align 8, !range !52, !alias.scope !42919, !noalias !42920, !noundef !16
  %.not.i.i.i = icmp eq i64 %i.ae, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 48
  %i.ah = load <2 x double>, ptr %i.ag, align 8, !alias.scope !42921, !noalias !42922
  %.sroa.11.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 64
  %.sroa.11.24.copyload.i.i = load double, ptr %.sroa.11.24..sroa_idx.i.i, align 8, !alias.scope !42921, !noalias !42922
  %i.ai = load <2 x double>, ptr %i.af, align 8, !alias.scope !42921, !noalias !42922
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 40
  %.sroa.69.0.copyload.i.i = load double, ptr %.sroa.69.0..sroa_idx.i.i, align 8, !alias.scope !42921, !noalias !42922
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i"

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 8
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 16
  %.sroa.5.0.copyload8.i.i = load double, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !alias.scope !42923, !noalias !42922
  %i.ak = load <2 x double>, ptr %i.aj, align 8, !alias.scope !42923, !noalias !42922 ; 2 uses
  %.sroa.69.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 24
  %.sroa.69.0.copyload11.i.i = load double, ptr %.sroa.69.0..sroa_idx10.i.i, align 8, !alias.scope !42923, !noalias !42922 ; 2 uses
  %i.al = insertelement <2 x double> %i.ak, double %.sroa.5.0.copyload8.i.i, i64 1
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i": ; preds = %bb.g, %bb.f
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
  br i1 %i.au, label %_ZN5rstar9algorithm5rstar25get_nodes_for_reinsertion17h46a6803c0f4c2461E.exit, label %.lr.ph.i.i

_ZN5rstar9algorithm5rstar25get_nodes_for_reinsertion17h46a6803c0f4c2461E.exit: ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i"
  store <2 x double> %i.ap, ptr %i.h, align 8, !alias.scope !42895, !noalias !42911
  store double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !alias.scope !42895, !noalias !42911
  store <2 x double> %i.as, ptr %i.i, align 8, !alias.scope !42895, !noalias !42911
  store double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i.i, ptr %i.l, align 8, !alias.scope !42895, !noalias !42911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42896
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.av, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %.sroa.3.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.aw, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN5rstar9algorithm5rstar25get_nodes_for_reinsertion17h46a6803c0f4c2461E.exit
  %storemerge = phi i64 [ -9223372036854775807, %_ZN5rstar9algorithm5rstar25get_nodes_for_reinsertion17h46a6803c0f4c2461E.exit ], [ -9223372036854775806, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5rstar9algorithm5rstar5split17hc54316ab57d98fb9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 35 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val27 = load i64, ptr %i.h, align 8, !noundef !16 ; 22 uses
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
  br i1 %i.k, label %.loopexit99.i, label %.split.split.preheader.i, !prof !19

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
  store i64 %.sroa.018.0173.i, ptr %i.f, align 8, !noalias !43104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43104
  store ptr %i.f, ptr %i.e, align 8, !noalias !43105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !43105
  store ptr %i.e, ptr %i.d, align 8, !noalias !43105
  br i1 %i.l, label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.i", label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.thread.i", !prof !19

"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.thread.i": ; preds = %.split.split.i
  call void @_ZN4core5slice4sort8unstable7ipnsort17h8364740d76b9fb81E(ptr noalias noundef nonnull align 8 %.val26, i64 noundef %.val27, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !43105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.i": ; preds = %.split.split.i
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd6ef2da2fe844777E(ptr noalias noundef nonnull align 8 %.val26, i64 noundef %.val27, ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !43105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.not.i, label %.loopexit99.i, label %bb.b, !prof !43

.loopexit99.i:                                    ; preds = %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.i", %bb.a
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 3, i64 noundef %.val27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @887) #66
  unreachable

bb.b:                                             ; preds = %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.i", %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.thread.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !43106)
  %i.ag = load i64, ptr %.val26, align 8, !range !52, !alias.scope !43107, !noalias !43106, !noundef !16
  %.not.i.i = icmp eq i64 %i.ag, -9223372036854775808
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.24.copyload.i = load double, ptr %i.q, align 8, !alias.scope !43108
  %.sroa.08.0.copyload.i = load double, ptr %i.p, align 8, !alias.scope !43108
  %i.ah = load <2 x double>, ptr %.sroa.10.24..sroa_idx.i, align 8, !alias.scope !43108
  %i.ai = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !43108
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i"

bb.d:                                             ; preds = %bb.b
  %.sroa.08.0.copyload9.i = load double, ptr %i.r, align 8, !alias.scope !43109 ; 2 uses
  %i.aj = load <2 x double>, ptr %.sroa.5.0..sroa_idx10.i, align 8, !alias.scope !43109 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i": ; preds = %bb.d, %bb.c
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
  call void @llvm.experimental.noalias.scope.decl(metadata !43110)
  %i.as = load i64, ptr %.sroa.020.0.ptr.i, align 8, !range !52, !alias.scope !43107, !noalias !43110, !noundef !16
  %.not.i.1.i = icmp eq i64 %i.as, -9223372036854775808
  br i1 %.not.i.1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i"
  %.sroa.7.24.copyload.1.i = load double, ptr %i.t, align 8, !alias.scope !43111
  %.sroa.08.0.copyload.1.i = load double, ptr %i.s, align 8, !alias.scope !43111
  %i.at = load <2 x double>, ptr %.sroa.10.24..sroa_idx.1.i, align 8, !alias.scope !43111
  %i.au = load <2 x double>, ptr %.sroa.5.0..sroa_idx.1.i, align 8, !alias.scope !43111
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.1.i"

bb.f:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i"
  %.sroa.08.0.copyload9.1.i = load double, ptr %i.u, align 8, !alias.scope !43112 ; 2 uses
  %i.av = load <2 x double>, ptr %.sroa.5.0..sroa_idx10.1.i, align 8, !alias.scope !43112 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.1.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.1.i": ; preds = %bb.f, %bb.e
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
  call void @llvm.experimental.noalias.scope.decl(metadata !43113)
  %i.be = load i64, ptr %.sroa.020.0.ptr.1.i, align 8, !range !52, !alias.scope !43107, !noalias !43113, !noundef !16
  %.not.i.2.i = icmp eq i64 %i.be, -9223372036854775808
  br i1 %.not.i.2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.1.i"
  %.sroa.7.24.copyload.2.i = load double, ptr %i.w, align 8, !alias.scope !43114
  %.sroa.08.0.copyload.2.i = load double, ptr %i.v, align 8, !alias.scope !43114
  %i.bf = load <2 x double>, ptr %.sroa.10.24..sroa_idx.2.i, align 8, !alias.scope !43114
  %i.bg = load <2 x double>, ptr %.sroa.5.0..sroa_idx.2.i, align 8, !alias.scope !43114
  br label %.lr.ph.preheader.i

bb.h:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.1.i"
  %.sroa.08.0.copyload9.2.i = load double, ptr %i.x, align 8, !alias.scope !43115 ; 2 uses
  %i.bh = load <2 x double>, ptr %.sroa.5.0..sroa_idx10.2.i, align 8, !alias.scope !43115 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !43116)
  %i.bq = load i64, ptr %i.m, align 8, !range !52, !alias.scope !43117, !noalias !43116, !noundef !16
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
  %.sroa.728.24.copyload.i = load double, ptr %i.z, align 8, !alias.scope !43118
end_hunk_0
begin_hunk_1_@_ZN5rstar9algorithm5rstar5split17hc54316ab57d98fb9E:bb.a
  %i.ce = fcmp ogt <2 x double> %i.cd, splat (double f0x7FEFFFFFFFFFFFFF)
  %i.cf = fcmp ogt double %.sroa.020.0.i, f0x7FEFFFFFFFFFFFFF
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.i = select i1 %i.cf, double f0x7FEFFFFFFFFFFFFF, double %.sroa.020.0.i ; 2 uses
  %i.cg = select <2 x i1> %i.ce, <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), <2 x double> %i.cd ; 2 uses
  %i.ch = fcmp olt <2 x double> %i.cc, splat (double f0xFFEFFFFFFFFFFFFF)
  %i.ci = fcmp olt double %.sroa.728.0.i, f0xFFEFFFFFFFFFFFFF
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.i = select i1 %i.ci, double f0xFFEFFFFFFFFFFFFF, double %.sroa.728.0.i ; 2 uses
  %i.cj = select <2 x i1> %i.ch, <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), <2 x double> %i.cc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43120)
  %i.ck = load i64, ptr %.sroa.021.1114.i, align 8, !range !52, !alias.scope !43117, !noalias !43120, !noundef !16
  %.not.i40.1.i = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not.i40.1.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit41.i"
  %.sroa.728.24.copyload.1.i = load double, ptr %i.ac, align 8, !alias.scope !43121
  %.sroa.020.0.copyload.1.i = load double, ptr %i.ab, align 8, !alias.scope !43121
  %i.cl = load <2 x double>, ptr %.sroa.1030.24..sroa_idx.1.i, align 8, !alias.scope !43121
  %i.cm = load <2 x double>, ptr %.sroa.522.0..sroa_idx.1.i, align 8, !alias.scope !43121
  br label %.preheader.i

bb.l:                                             ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit41.i"
  %.sroa.020.0.copyload21.1.i = load double, ptr %i.ad, align 8, !alias.scope !43122 ; 2 uses
  %i.cn = load <2 x double>, ptr %.sroa.522.0..sroa_idx23.1.i, align 8, !alias.scope !43122 ; 2 uses
  br label %.preheader.i

.lr.ph169.i:                                      ; preds = %.preheader.i, %._crit_edge157.i
  %.sroa.022.1168.i = phi i64 [ %.sroa.022.1.i, %._crit_edge157.i ], [ 4, %.preheader.i ] ; 3 uses
  %.sroa.0.1167.i = phi i64 [ %.sroa.0.2.i, %._crit_edge157.i ], [ %.sroa.0.0174.i, %.preheader.i ]
  %.sroa.022.0166.i = phi i64 [ %.sroa.022.1168.i, %._crit_edge157.i ], [ 3, %.preheader.i ] ; 2 uses
  %.sroa.0.193165.i = phi double [ %.sroa.0.294.i, %._crit_edge157.i ], [ %.sroa.0.092172.i, %.preheader.i ] ; 2 uses
  %.idx.i = mul nuw nsw i64 %.sroa.022.0166.i, 72
  %i.co = getelementptr inbounds nuw i8, ptr %.val26, i64 %.idx.i ; 3 uses
  br label %.lr.ph138.i

.lr.ph138.i:                                      ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i", %.lr.ph169.i
  %.sroa.024.1137.i = phi ptr [ %.sroa.024.1.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %.sroa.020.0.ptr.i, %.lr.ph169.i ] ; 3 uses
  %.sroa.024.0136.i = phi ptr [ %.sroa.024.1137.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %.val26, %.lr.ph169.i ] ; 7 uses
  %.sroa.036.0135.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2.i, %.lr.ph169.i ] ; 2 uses
  %.sroa.14.0132.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i54.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.2.i, %.lr.ph169.i ] ; 2 uses
  %i.cp = phi <2 x double> [ %i.df, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %i.bp, %.lr.ph169.i ] ; 2 uses
  %i.cq = phi <2 x double> [ %i.dc, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i" ], [ %i.bm, %.lr.ph169.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43123)
  %i.cr = load i64, ptr %.sroa.024.0136.i, align 8, !range !52, !alias.scope !43124, !noalias !43123, !noundef !16
  %.not.i48.i = icmp eq i64 %i.cr, -9223372036854775808
  br i1 %.not.i48.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph138.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 48
  %.sroa.765.24.copyload.i = load double, ptr %i.ct, align 8, !alias.scope !43125
  %.sroa.1067.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 56
  %.sroa.057.0.copyload.i = load double, ptr %i.cs, align 8, !alias.scope !43125
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 32
  %i.cu = load <2 x double>, ptr %.sroa.1067.24..sroa_idx.i, align 8, !alias.scope !43125
  %i.cv = load <2 x double>, ptr %.sroa.559.0..sroa_idx.i, align 8, !alias.scope !43125
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i"

bb.n:                                             ; preds = %.lr.ph138.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 8
  %.sroa.057.0.copyload58.i = load double, ptr %i.cw, align 8, !alias.scope !43126 ; 2 uses
  %.sroa.559.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %.sroa.024.0136.i, i64 16
  %i.cx = load <2 x double>, ptr %.sroa.559.0..sroa_idx60.i, align 8, !alias.scope !43126 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i": ; preds = %bb.n, %bb.m
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

._crit_edge.i:                                    ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit49.i"
  %i.dh = icmp eq i64 %.sroa.022.0166.i, %.val27
  br i1 %i.dh, label %._crit_edge157.i, label %.lr.ph156.preheader.i

.lr.ph156.preheader.i:                            ; preds = %._crit_edge.i
  %.sroa.025.1146.i = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  br label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i", %.lr.ph156.preheader.i
  %.sroa.025.1154.i = phi ptr [ %.sroa.025.1.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %.sroa.025.1146.i, %.lr.ph156.preheader.i ] ; 3 uses
  %.sroa.025.0153.i = phi ptr [ %.sroa.025.1154.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %i.co, %.lr.ph156.preheader.i ] ; 7 uses
  %.sroa.045.0152.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i59.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.1.i, %.lr.ph156.preheader.i ] ; 2 uses
  %.sroa.1451.0149.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i62.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.1.i, %.lr.ph156.preheader.i ] ; 2 uses
  %i.di = phi <2 x double> [ %i.dy, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %i.by, %.lr.ph156.preheader.i ] ; 2 uses
  %i.dj = phi <2 x double> [ %i.dv, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ], [ %i.bv, %.lr.ph156.preheader.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43127)
  %i.dk = load i64, ptr %.sroa.025.0153.i, align 8, !range !52, !alias.scope !43128, !noalias !43127, !noundef !16
  %.not.i56.i = icmp eq i64 %i.dk, -9223372036854775808
  br i1 %.not.i56.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph156.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 48
  %.sroa.781.24.copyload.i = load double, ptr %i.dm, align 8, !alias.scope !43129
  %.sroa.1083.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 56
  %.sroa.073.0.copyload.i = load double, ptr %i.dl, align 8, !alias.scope !43129
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 32
  %i.dn = load <2 x double>, ptr %.sroa.1083.24..sroa_idx.i, align 8, !alias.scope !43129
  %i.do = load <2 x double>, ptr %.sroa.575.0..sroa_idx.i, align 8, !alias.scope !43129
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i"

bb.p:                                             ; preds = %.lr.ph156.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 8
  %.sroa.073.0.copyload74.i = load double, ptr %i.dp, align 8, !alias.scope !43130 ; 2 uses
  %.sroa.575.0..sroa_idx76.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0153.i, i64 16
  %i.dq = load <2 x double>, ptr %.sroa.575.0..sroa_idx76.i, align 8, !alias.scope !43130 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i": ; preds = %bb.p, %bb.o
  %.sroa.781.0.i = phi double [ %.sroa.073.0.copyload74.i, %bb.p ], [ %.sroa.781.24.copyload.i, %bb.o ] ; 2 uses
  %.sroa.073.0.i = phi double [ %.sroa.073.0.copyload74.i, %bb.p ], [ %.sroa.073.0.copyload.i, %bb.o ] ; 2 uses
  %i.dr = phi <2 x double> [ %i.dq, %bb.p ], [ %i.dn, %bb.o ] ; 2 uses
  %i.ds = phi <2 x double> [ %i.dq, %bb.p ], [ %i.do, %bb.o ] ; 2 uses
  %i.dt = fcmp olt <2 x double> %i.dj, %i.ds
  %i.du = fcmp olt double %.sroa.045.0152.i, %.sroa.073.0.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i59.i = select i1 %i.du, double %.sroa.045.0152.i, double %.sroa.073.0.i ; 2 uses
  %i.dv = select <2 x i1> %i.dt, <2 x double> %i.dj, <2 x double> %i.ds ; 2 uses
  %i.dw = fcmp ogt <2 x double> %i.di, %i.dr
  %i.dx = fcmp ogt double %.sroa.1451.0149.i, %.sroa.781.0.i
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i62.i = select i1 %i.dx, double %.sroa.1451.0149.i, double %.sroa.781.0.i ; 2 uses
  %i.dy = select <2 x i1> %i.dw, <2 x double> %i.di, <2 x double> %i.dr ; 2 uses
  %i.dz = icmp eq ptr %.sroa.025.1154.i, %i.o     ; 2 uses
  %.sroa.025.1.idx.i = select i1 %i.dz, i64 0, i64 72
  %.sroa.025.1.i = getelementptr inbounds nuw i8, ptr %.sroa.025.1154.i, i64 %.sroa.025.1.idx.i
  br i1 %i.dz, label %._crit_edge157.i, label %.lr.ph156.i

._crit_edge157.i:                                 ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i", %._crit_edge.i
  %.sroa.1451.0.lcssa.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i46.1.i, %._crit_edge.i ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i62.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ]
  %.sroa.045.0.lcssa.i = phi double [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.1.i, %._crit_edge.i ], [ %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i59.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ]
  %i.ea = phi <2 x double> [ %i.by, %._crit_edge.i ], [ %i.dy, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ]
  %i.eb = phi <2 x double> [ %i.bv, %._crit_edge.i ], [ %i.dv, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit57.i" ]
  %i.ec = fsub <2 x double> %i.df, %i.dc          ; 2 uses
  %i.ed = insertelement <2 x double> poison, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i2.i54.i, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %.sroa.1451.0.lcssa.i, i64 1
  %i.ef = insertelement <2 x double> poison, double %..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i51.i, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %.sroa.045.0.lcssa.i, i64 1
  %i.eh = fsub <2 x double> %i.ee, %i.eg
  %i.ei = fsub <2 x double> %i.ea, %i.eb          ; 2 uses
  %i.ej = fadd <2 x double> %i.eh, zeroinitializer
  %i.ek = shufflevector <2 x double> %i.ec, <2 x double> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.el = fadd <2 x double> %i.ek, %i.ej
  %i.em = shufflevector <2 x double> %i.ec, <2 x double> %i.ei, <2 x i32> <i32 1, i32 3>
  %i.en = fadd <2 x double> %i.em, %i.el          ; 2 uses
  %i.eo = fcmp ogt <2 x double> %i.en, zeroinitializer
  %i.ep = select <2 x i1> %i.eo, <2 x double> %i.en, <2 x double> zeroinitializer ; 2 uses
  %shift = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ep, %shift
  %i.eq = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.er = fcmp ogt double %.sroa.0.193165.i, %i.eq ; 2 uses
  %.sroa.0.294.i = select i1 %i.er, double %i.eq, double %.sroa.0.193165.i ; 2 uses
  %.sroa.0.2.i = select i1 %i.er, i64 %.sroa.018.0173.i, i64 %.sroa.0.1167.i ; 2 uses
  %i.es = icmp ult i64 %.sroa.022.1168.i, %i.j    ; 2 uses
  %i.et = zext i1 %i.es to i64
  %.sroa.022.1.i = add nuw i64 %.sroa.022.1168.i, %i.et
  br i1 %i.es, label %.lr.ph169.i, label %.loopexit.i

bb.q:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.1.lcssa.i, ptr %i.c, align 8, !noalias !43131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43131
  store ptr %i.c, ptr %i.b, align 8, !noalias !43132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43132
  store ptr %i.b, ptr %i.a, align 8, !noalias !43132
  %i.eu = add nsw i64 %.val27, -3                 ; 3 uses
  br i1 %i.l, label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit", label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.thread", !prof !19

"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.thread": ; preds = %bb.q
  call void @_ZN4core5slice4sort8unstable7ipnsort17h8364740d76b9fb81E(ptr noalias noundef nonnull align 8 %.val26, i64 noundef %.val27, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.lr.ph240.preheader

"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit": ; preds = %bb.q
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd6ef2da2fe844777E(ptr noalias noundef nonnull align 8 %.val26, i64 noundef %.val27, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i28235 = icmp ult i64 %i.eu, 3
  br i1 %.not.i28235, label %._crit_edge241, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit.thread", %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit"
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %._crit_edge228
  %.sroa.0.0239 = phi i64 [ %.sroa.0.1, %._crit_edge228 ], [ 3, %.lr.ph240.preheader ]
  %.sroa.0.0180238 = phi double [ %.sroa.0.1181, %._crit_edge228 ], [ 0.000000e+00, %.lr.ph240.preheader ] ; 3 uses
  %.sroa.5.0237 = phi double [ %.sroa.5.1, %._crit_edge228 ], [ 0.000000e+00, %.lr.ph240.preheader ] ; 2 uses
  %.sroa.075.0236 = phi i64 [ %spec.select189, %._crit_edge228 ], [ 3, %.lr.ph240.preheader ] ; 9 uses
  %i.ev = icmp uge i64 %.sroa.075.0236, %i.eu     ; 2 uses
  %not. = xor i1 %i.ev, true
  %i.ew = zext i1 %not. to i64
  %spec.select189 = add nuw i64 %.sroa.075.0236, %i.ew ; 2 uses
  %i.ex = add i64 %.sroa.075.0236, -1             ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %.val27
  br i1 %i.ey, label %bb.y, label %bb.ab

._crit_edge241:                                   ; preds = %._crit_edge228, %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit"
  %.sroa.0.0.lcssa = phi i64 [ 3, %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$14sort_envelopes17hb161179fd9292f95E.exit" ], [ %.sroa.0.1, %._crit_edge228 ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43133)
  %i.ez = icmp ugt i64 %.sroa.0.0.lcssa, %.val27
  br i1 %i.ez, label %bb.t, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !18

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %._crit_edge241
  %i.fa = sub nuw nsw i64 %.val27, %.sroa.0.0.lcssa ; 3 uses
  %i.fb = mul nuw nsw i64 %i.fa, 72               ; 4 uses
  %i.fc = icmp eq i64 %.val27, %.sroa.0.0.lcssa   ; 2 uses
  br i1 %i.fc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit", label %bb.r

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !43134
  %i.fd = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fb, i64 noundef range(i64 1, 9) 8) #65, !noalias !43134 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.s, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit"

bb.s:                                             ; preds = %bb.r
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.fb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @900) #66, !noalias !43135
  unreachable

bb.t:                                             ; preds = %._crit_edge241
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off13assert_failed17h76342509ab517cd0E"(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.val27, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @900) #66, !noalias !43135
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.r
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.fd, %bb.r ] ; 4 uses
  store i64 %.sroa.0.0.lcssa, ptr %i.h, align 8, !alias.scope !43133, !noalias !43136
  %i.ff = getelementptr inbounds nuw [72 x i8], ptr %.val26, i64 %.sroa.0.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i, ptr nonnull align 8 %i.ff, i64 %i.fb, i1 false), !noalias !43137
  %.idx.i29 = mul nuw nsw i64 %.sroa.0.0.lcssa, 72
  %i.fg = getelementptr inbounds nuw i8, ptr %.val26, i64 %.idx.i29
  %i.fh = icmp eq i64 %.sroa.0.0.lcssa, 0
  br i1 %i.fh, label %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit", %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38"
  %.sroa.02.023.i = phi ptr [ %i.fk, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ], [ %.val26, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ] ; 9 uses
  %.sroa.9.020.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i45, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ], [ f0x7FEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ] ; 2 uses
  %.sroa.18.017.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i48, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ], [ f0xFFEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ] ; 2 uses
  %i.fi = phi <2 x double> [ %i.fw, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ], [ splat (double f0x7FEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ] ; 2 uses
  %i.fj = phi <2 x double> [ %i.fz, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ], [ splat (double f0xFFEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43138)
  %i.fl = load i64, ptr %.sroa.02.023.i, align 8, !range !52, !alias.scope !43139, !noalias !43140, !noundef !16
  %.not.i.i30 = icmp eq i64 %i.fl, -9223372036854775808
  br i1 %.not.i.i30, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 48
  %i.fo = load <2 x double>, ptr %i.fn, align 8, !alias.scope !43141, !noalias !43142
  %.sroa.11.24..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 64
  %.sroa.11.24.copyload.i35 = load double, ptr %.sroa.11.24..sroa_idx.i34, align 8, !alias.scope !43141, !noalias !43142
  %i.fp = load <2 x double>, ptr %i.fm, align 8, !alias.scope !43141, !noalias !43142
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 40
  %.sroa.69.0.copyload.i = load double, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !43141, !noalias !43142
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38"

bb.v:                                             ; preds = %.lr.ph.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 8
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 16
  %.sroa.5.0.copyload8.i = load double, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !43143, !noalias !43142
  %i.fr = load <2 x double>, ptr %i.fq, align 8, !alias.scope !43143, !noalias !43142 ; 2 uses
  %.sroa.69.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 24
  %.sroa.69.0.copyload11.i = load double, ptr %.sroa.69.0..sroa_idx10.i, align 8, !alias.scope !43143, !noalias !43142 ; 2 uses
  %i.fs = insertelement <2 x double> %i.fr, double %.sroa.5.0.copyload8.i, i64 1
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38": ; preds = %bb.v, %bb.u
  %.sroa.11.0.i39 = phi double [ %.sroa.69.0.copyload11.i, %bb.v ], [ %.sroa.11.24.copyload.i35, %bb.u ] ; 2 uses
  %.sroa.69.0.i = phi double [ %.sroa.69.0.copyload11.i, %bb.v ], [ %.sroa.69.0.copyload.i, %bb.u ] ; 2 uses
  %i.ft = phi <2 x double> [ %i.fr, %bb.v ], [ %i.fp, %bb.u ] ; 2 uses
  %i.fu = phi <2 x double> [ %i.fs, %bb.v ], [ %i.fo, %bb.u ] ; 2 uses
  %i.fv = fcmp olt <2 x double> %i.fi, %i.ft
  %i.fw = select <2 x i1> %i.fv, <2 x double> %i.fi, <2 x double> %i.ft ; 2 uses
  %i.fx = fcmp olt double %.sroa.9.020.i, %.sroa.69.0.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i45 = select i1 %i.fx, double %.sroa.9.020.i, double %.sroa.69.0.i ; 2 uses
  %i.fy = fcmp ogt <2 x double> %i.fj, %i.fu
  %i.fz = select <2 x i1> %i.fy, <2 x double> %i.fj, <2 x double> %i.fu ; 2 uses
  %i.ga = fcmp ogt double %.sroa.18.017.i, %.sroa.11.0.i39
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i48 = select i1 %i.ga, double %.sroa.18.017.i, double %.sroa.11.0.i39 ; 2 uses
  %i.gb = icmp eq ptr %i.fk, %i.fg
  br i1 %i.gb, label %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, label %.lr.ph.i

_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit: ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit"
  %.sroa.18.0.lcssa.i = phi double [ f0xFFEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i48, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ]
  %.sroa.9.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i45, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ]
  %i.gc = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ], [ %i.fw, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ]
  %i.gd = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$9split_off17h51b9c8a631cb2e92E.exit" ], [ %i.fz, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i38" ]
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x double> %i.gc, ptr %i.ge, align 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %.sroa.9.0.lcssa.i, ptr %.sroa.5161.0..sroa_idx, align 8
  %.sroa.6162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x double> %i.gd, ptr %.sroa.6162.0..sroa_idx, align 8
  %.sroa.8164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %.sroa.18.0.lcssa.i, ptr %.sroa.8164.0..sroa_idx, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 %i.fb
  br i1 %i.fc, label %"_ZN5rstar4node19ParentNode$LT$T$GT$10new_parent17h9548047a08813715E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i"
  %.sroa.02.023.i.i = phi ptr [ %i.gi, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ %.sroa.10.0.i.i, %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ] ; 9 uses
  %.sroa.9.020.i.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ f0x7FEFFFFFFFFFFFFF, %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ] ; 2 uses
  %.sroa.18.017.i.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ f0xFFEFFFFFFFFFFFFF, %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ] ; 2 uses
  %i.gg = phi <2 x double> [ %i.gu, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ splat (double f0x7FEFFFFFFFFFFFFF), %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ] ; 2 uses
  %i.gh = phi <2 x double> [ %i.gx, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ], [ splat (double f0xFFEFFFFFFFFFFFFF), %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43144)
  %i.gj = load i64, ptr %.sroa.02.023.i.i, align 8, !range !52, !alias.scope !43145, !noalias !43146, !noundef !16
  %.not.i.i.i = icmp eq i64 %i.gj, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 48
  %i.gm = load <2 x double>, ptr %i.gl, align 8, !alias.scope !43147, !noalias !43148
  %.sroa.11.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 64
  %.sroa.11.24.copyload.i.i = load double, ptr %.sroa.11.24..sroa_idx.i.i, align 8, !alias.scope !43147, !noalias !43148
  %i.gn = load <2 x double>, ptr %i.gk, align 8, !alias.scope !43147, !noalias !43148
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 40
  %.sroa.69.0.copyload.i.i = load double, ptr %.sroa.69.0..sroa_idx.i.i, align 8, !alias.scope !43147, !noalias !43148
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i"

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 8
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 16
  %.sroa.5.0.copyload8.i.i = load double, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !alias.scope !43149, !noalias !43148
  %i.gp = load <2 x double>, ptr %i.go, align 8, !alias.scope !43149, !noalias !43148 ; 2 uses
  %.sroa.69.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i.i, i64 24
  %.sroa.69.0.copyload11.i.i = load double, ptr %.sroa.69.0..sroa_idx10.i.i, align 8, !alias.scope !43149, !noalias !43148 ; 2 uses
  %i.gq = insertelement <2 x double> %i.gp, double %.sroa.5.0.copyload8.i.i, i64 1
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i": ; preds = %bb.x, %bb.w
  %.sroa.11.0.i.i = phi double [ %.sroa.69.0.copyload11.i.i, %bb.x ], [ %.sroa.11.24.copyload.i.i, %bb.w ] ; 2 uses
  %.sroa.69.0.i.i = phi double [ %.sroa.69.0.copyload11.i.i, %bb.x ], [ %.sroa.69.0.copyload.i.i, %bb.w ] ; 2 uses
  %i.gr = phi <2 x double> [ %i.gp, %bb.x ], [ %i.gn, %bb.w ] ; 2 uses
  %i.gs = phi <2 x double> [ %i.gq, %bb.x ], [ %i.gm, %bb.w ] ; 2 uses
  %i.gt = fcmp olt <2 x double> %i.gg, %i.gr
  %i.gu = select <2 x i1> %i.gt, <2 x double> %i.gg, <2 x double> %i.gr ; 2 uses
  %i.gv = fcmp olt double %.sroa.9.020.i.i, %.sroa.69.0.i.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i = select i1 %i.gv, double %.sroa.9.020.i.i, double %.sroa.69.0.i.i ; 2 uses
  %i.gw = fcmp ogt <2 x double> %i.gh, %i.gs
  %i.gx = select <2 x i1> %i.gw, <2 x double> %i.gh, <2 x double> %i.gs ; 2 uses
  %i.gy = fcmp ogt double %.sroa.18.017.i.i, %.sroa.11.0.i.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i.i = select i1 %i.gy, double %.sroa.18.017.i.i, double %.sroa.11.0.i.i ; 2 uses
  %i.gz = icmp eq ptr %i.gi, %i.gf
  br i1 %i.gz, label %"_ZN5rstar4node19ParentNode$LT$T$GT$10new_parent17h9548047a08813715E.exit", label %.lr.ph.i.i

"_ZN5rstar4node19ParentNode$LT$T$GT$10new_parent17h9548047a08813715E.exit": ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i", %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit
  %.sroa.18.0.lcssa.i.i = phi double [ f0xFFEFFFFFFFFFFFFF, %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ]
  %.sroa.9.0.lcssa.i.i = phi double [ f0x7FEFFFFFFFFFFFFF, %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ]
  %i.ha = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ], [ %i.gu, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ]
  %i.hb = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit ], [ %i.gx, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i.i" ]
  store i64 %i.fa, ptr %0, align 8
  %.sroa.0165.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.0165.sroa.4.0..sroa_idx, align 8
  %.sroa.0165.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fa, ptr %.sroa.0165.sroa.5.0..sroa_idx, align 8
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.ha, ptr %.sroa.4166.0..sroa_idx, align 8
  %.sroa.6168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.9.0.lcssa.i.i, ptr %.sroa.6168.0..sroa_idx, align 8
  %.sroa.7169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %i.hb, ptr %.sroa.7169.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sroa.18.0.lcssa.i.i, ptr %.sroa.9.0..sroa_idx, align 8
  ret void

bb.y:                                             ; preds = %.lr.ph240
  %i.hc = getelementptr inbounds nuw [72 x i8], ptr %.val26, i64 %i.ex ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43150)
  %i.hd = load i64, ptr %i.hc, align 8, !range !52, !alias.scope !43151, !noalias !43150, !noundef !16
  %.not.i55 = icmp eq i64 %i.hd, -9223372036854775808
  br i1 %.not.i55, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %.sroa.26.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %.sroa.26.24.copyload = load double, ptr %.sroa.26.24..sroa_idx, align 8, !alias.scope !43152
  %i.hg = load <2 x double>, ptr %i.hf, align 8, !alias.scope !43152
  %i.hh = load <2 x double>, ptr %i.he, align 8, !alias.scope !43152
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %.sroa.12.0.copyload = load double, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !43152
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit"

bb.aa:                                            ; preds = %bb.y
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hj = load <2 x double>, ptr %i.hi, align 8, !alias.scope !43153 ; 2 uses
  %.sroa.12.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %.sroa.12.0.copyload86 = load double, ptr %.sroa.12.0..sroa_idx85, align 8, !alias.scope !43153 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit": ; preds = %bb.z, %bb.aa
  %.sroa.26.1 = phi double [ %.sroa.12.0.copyload86, %bb.aa ], [ %.sroa.26.24.copyload, %bb.z ]
  %.sroa.12.1 = phi double [ %.sroa.12.0.copyload86, %bb.aa ], [ %.sroa.12.0.copyload, %bb.z ]
  %i.hk = phi <2 x double> [ %i.hj, %bb.aa ], [ %i.hg, %bb.z ]
  %i.hl = phi <2 x double> [ %i.hj, %bb.aa ], [ %i.hh, %bb.z ]
  %i.hm = icmp samesign ult i64 %.sroa.075.0236, %.val27
  br i1 %i.hm, label %bb.ac, label %bb.af

bb.ab:                                            ; preds = %.lr.ph240
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ex, i64 noundef %.val27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @901) #66
  unreachable

bb.ac:                                            ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit"
  %.idx = mul nuw nsw i64 %.sroa.075.0236, 72
  %i.hn = getelementptr inbounds nuw i8, ptr %.val26, i64 %.idx ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43154)
  %i.ho = load i64, ptr %i.hn, align 8, !range !52, !alias.scope !43155, !noalias !43154, !noundef !16
  %.not.i56 = icmp eq i64 %i.ho, -9223372036854775808
  br i1 %.not.i56, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %.sroa.26123.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %.sroa.26123.24.copyload = load double, ptr %.sroa.26123.24..sroa_idx, align 8, !alias.scope !43156
  %i.hr = load <2 x double>, ptr %i.hq, align 8, !alias.scope !43156
  %i.hs = load <2 x double>, ptr %i.hp, align 8, !alias.scope !43156
  %.sroa.12109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %.sroa.12109.0.copyload = load double, ptr %.sroa.12109.0..sroa_idx, align 8, !alias.scope !43156
  br label %.lr.ph.preheader

bb.ae:                                            ; preds = %bb.ac
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hu = load <2 x double>, ptr %i.ht, align 8, !alias.scope !43157 ; 2 uses
  %.sroa.12109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %.sroa.12109.0.copyload111 = load double, ptr %.sroa.12109.0..sroa_idx110, align 8, !alias.scope !43157 ; 2 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ae, %bb.ad
  %.sroa.26123.1 = phi double [ %.sroa.12109.0.copyload111, %bb.ae ], [ %.sroa.26123.24.copyload, %bb.ad ] ; 2 uses
  %.sroa.12109.1 = phi double [ %.sroa.12109.0.copyload111, %bb.ae ], [ %.sroa.12109.0.copyload, %bb.ad ] ; 2 uses
  %i.hv = phi <2 x double> [ %i.hu, %bb.ae ], [ %i.hr, %bb.ad ] ; 2 uses
  %i.hw = phi <2 x double> [ %i.hu, %bb.ae ], [ %i.hs, %bb.ad ] ; 2 uses
  br label %.lr.ph

bb.af:                                            ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.075.0236, i64 noundef %.val27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @902) #66
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59"
  %.sroa.014.1210 = phi ptr [ %.sroa.014.1, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %.sroa.020.0.ptr.i, %.lr.ph.preheader ] ; 3 uses
  %.sroa.014.0209 = phi ptr [ %.sroa.014.1210, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %.val26, %.lr.ph.preheader ] ; 7 uses
  %.sroa.12.0206 = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %.sroa.12.1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.26.0203 = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %.sroa.26.1, %.lr.ph.preheader ] ; 2 uses
  %i.hx = phi <2 x double> [ %i.im, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %i.hk, %.lr.ph.preheader ] ; 2 uses
  %i.hy = phi <2 x double> [ %i.ij, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59" ], [ %i.hl, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43158)
  %i.hz = load i64, ptr %.sroa.014.0209, align 8, !range !52, !alias.scope !43159, !noalias !43158, !noundef !16
  %.not.i58 = icmp eq i64 %i.hz, -9223372036854775808
  br i1 %.not.i58, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 24
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 48
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 64
  %.sroa.11.24.copyload = load double, ptr %.sroa.11.24..sroa_idx, align 8, !alias.scope !43160
  %i.ic = load <2 x double>, ptr %i.ib, align 8, !alias.scope !43160
  %i.id = load <2 x double>, ptr %i.ia, align 8, !alias.scope !43160
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 40
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !43160
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59"

bb.ah:                                            ; preds = %.lr.ph
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 8
  %i.if = load <2 x double>, ptr %i.ie, align 8, !alias.scope !43161 ; 2 uses
  %.sroa.6.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %.sroa.014.0209, i64 24
  %.sroa.6.0.copyload134 = load double, ptr %.sroa.6.0..sroa_idx133, align 8, !alias.scope !43161 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59": ; preds = %bb.ag, %bb.ah
  %.sroa.11.0 = phi double [ %.sroa.6.0.copyload134, %bb.ah ], [ %.sroa.11.24.copyload, %bb.ag ] ; 2 uses
  %.sroa.6.0 = phi double [ %.sroa.6.0.copyload134, %bb.ah ], [ %.sroa.6.0.copyload, %bb.ag ] ; 2 uses
  %i.ig = phi <2 x double> [ %i.if, %bb.ah ], [ %i.ic, %bb.ag ] ; 2 uses
  %i.ih = phi <2 x double> [ %i.if, %bb.ah ], [ %i.id, %bb.ag ] ; 2 uses
  %i.ii = fcmp olt <2 x double> %i.hy, %i.ih
  %i.ij = select <2 x i1> %i.ii, <2 x double> %i.hy, <2 x double> %i.ih ; 4 uses
  %i.ik = fcmp olt double %.sroa.12.0206, %.sroa.6.0
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i = select i1 %i.ik, double %.sroa.12.0206, double %.sroa.6.0 ; 4 uses
  %i.il = fcmp ogt <2 x double> %i.hx, %i.ig
  %i.im = select <2 x i1> %i.il, <2 x double> %i.hx, <2 x double> %i.ig ; 4 uses
  %i.in = fcmp ogt double %.sroa.26.0203, %.sroa.11.0
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i = select i1 %i.in, double %.sroa.26.0203, double %.sroa.11.0 ; 4 uses
  %i.io = icmp eq ptr %.sroa.014.1210, %i.hn      ; 2 uses
  %.sroa.014.1.idx = select i1 %i.io, i64 0, i64 72
  %.sroa.014.1 = getelementptr inbounds nuw i8, ptr %.sroa.014.1210, i64 %.sroa.014.1.idx
  br i1 %i.io, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit59"
  %2 = icmp eq i64 %.sroa.075.0236, %.val27
  br i1 %2, label %._crit_edge228, label %.lr.ph227.preheader

.lr.ph227.preheader:                              ; preds = %._crit_edge
  %.sroa.015.1217 = getelementptr inbounds nuw i8, ptr %i.hn, i64 72
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61"
  %.sroa.015.1225 = phi ptr [ %.sroa.015.1, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %.sroa.015.1217, %.lr.ph227.preheader ] ; 3 uses
  %.sroa.015.0224 = phi ptr [ %.sroa.015.1225, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %i.hn, %.lr.ph227.preheader ] ; 7 uses
  %.sroa.12109.0221 = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i64, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %.sroa.12109.1, %.lr.ph227.preheader ] ; 2 uses
  %.sroa.26123.0218 = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i67, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %.sroa.26123.1, %.lr.ph227.preheader ] ; 2 uses
  %i.ip = phi <2 x double> [ %i.je, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %i.hv, %.lr.ph227.preheader ] ; 2 uses
  %i.iq = phi <2 x double> [ %i.jb, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ], [ %i.hw, %.lr.ph227.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43162)
  %i.ir = load i64, ptr %.sroa.015.0224, align 8, !range !52, !alias.scope !43163, !noalias !43162, !noundef !16
  %.not.i60 = icmp eq i64 %i.ir, -9223372036854775808
  br i1 %.not.i60, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph227
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 48
  %.sroa.11155.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 64
  %.sroa.11155.24.copyload = load double, ptr %.sroa.11155.24..sroa_idx, align 8, !alias.scope !43164
  %i.iu = load <2 x double>, ptr %i.it, align 8, !alias.scope !43164
  %i.iv = load <2 x double>, ptr %i.is, align 8, !alias.scope !43164
  %.sroa.6147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 40
  %.sroa.6147.0.copyload = load double, ptr %.sroa.6147.0..sroa_idx, align 8, !alias.scope !43164
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61"

bb.aj:                                            ; preds = %.lr.ph227
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 8
  %i.ix = load <2 x double>, ptr %i.iw, align 8, !alias.scope !43165 ; 2 uses
  %.sroa.6147.0..sroa_idx148 = getelementptr inbounds nuw i8, ptr %.sroa.015.0224, i64 24
  %.sroa.6147.0.copyload149 = load double, ptr %.sroa.6147.0..sroa_idx148, align 8, !alias.scope !43165 ; 2 uses
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61": ; preds = %bb.ai, %bb.aj
  %.sroa.11155.0 = phi double [ %.sroa.6147.0.copyload149, %bb.aj ], [ %.sroa.11155.24.copyload, %bb.ai ] ; 2 uses
  %.sroa.6147.0 = phi double [ %.sroa.6147.0.copyload149, %bb.aj ], [ %.sroa.6147.0.copyload, %bb.ai ] ; 2 uses
  %i.iy = phi <2 x double> [ %i.ix, %bb.aj ], [ %i.iu, %bb.ai ] ; 2 uses
  %i.iz = phi <2 x double> [ %i.ix, %bb.aj ], [ %i.iv, %bb.ai ] ; 2 uses
  %i.ja = fcmp olt <2 x double> %i.iq, %i.iz
  %i.jb = select <2 x i1> %i.ja, <2 x double> %i.iq, <2 x double> %i.iz ; 2 uses
  %i.jc = fcmp olt double %.sroa.12109.0221, %.sroa.6147.0
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i64 = select i1 %i.jc, double %.sroa.12109.0221, double %.sroa.6147.0 ; 2 uses
  %i.jd = fcmp ogt <2 x double> %i.ip, %i.iy
  %i.je = select <2 x i1> %i.jd, <2 x double> %i.ip, <2 x double> %i.iy ; 2 uses
  %i.jf = fcmp ogt double %.sroa.26123.0218, %.sroa.11155.0
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i67 = select i1 %i.jf, double %.sroa.26123.0218, double %.sroa.11155.0 ; 2 uses
  %i.jg = icmp eq ptr %.sroa.015.1225, %i.o       ; 2 uses
  %.sroa.015.1.idx = select i1 %i.jg, i64 0, i64 72
  %.sroa.015.1 = getelementptr inbounds nuw i8, ptr %.sroa.015.1225, i64 %.sroa.015.1.idx
  br i1 %i.jg, label %._crit_edge228, label %.lr.ph227

._crit_edge228:                                   ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61", %._crit_edge
  %.sroa.26123.0.lcssa = phi double [ %.sroa.26123.1, %._crit_edge ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i67, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ] ; 3 uses
  %.sroa.12109.0.lcssa = phi double [ %.sroa.12109.1, %._crit_edge ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i64, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ] ; 3 uses
  %3 = phi <2 x double> [ %i.hv, %._crit_edge ], [ %i.je, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ] ; 3 uses
  %4 = phi <2 x double> [ %i.hw, %._crit_edge ], [ %i.jb, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit61" ] ; 3 uses
  %i.jh = fcmp ogt double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i, %.sroa.12109.0.lcssa
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i70 = select i1 %i.jh, double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i, double %.sroa.12109.0.lcssa
  %i.ji = fcmp olt double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i, %.sroa.26123.0.lcssa
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i4.i = select i1 %i.ji, double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i, double %.sroa.26123.0.lcssa
  %i.jj = fsub double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i4.i, %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i70 ; 2 uses
  %i.jk = fcmp ogt <2 x double> %i.ij, %4
  %i.jl = select <2 x i1> %i.jk, <2 x double> %i.ij, <2 x double> %4
  %i.jm = fcmp olt <2 x double> %i.im, %3
  %i.jn = select <2 x i1> %i.jm, <2 x double> %i.im, <2 x double> %3
  %i.jo = fsub <2 x double> %i.jn, %i.jl          ; 2 uses
  %i.jp = fcmp ogt <2 x double> %i.jo, zeroinitializer
  %i.jq = select <2 x i1> %i.jp, <2 x double> %i.jo, <2 x double> zeroinitializer ; 2 uses
  %shift265 = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop266 = fmul <2 x double> %shift265, %i.jq
  %i.jr = extractelement <2 x double> %foldExtExtBinop266, i64 0
  %i.js = fcmp ogt double %i.jj, 0.000000e+00
  %..i.i.2.i.i.i.i = select i1 %i.js, double %i.jj, double 0.000000e+00
  %i.jt = fmul double %..i.i.2.i.i.i.i, %i.jr     ; 3 uses
  %i.ju = fsub <2 x double> %i.im, %i.ij          ; 2 uses
  %i.jv = insertelement <2 x double> poison, double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i, i64 0
  %i.jw = insertelement <2 x double> %i.jv, double %.sroa.26123.0.lcssa, i64 1
  %i.jx = insertelement <2 x double> poison, double %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %.sroa.12109.0.lcssa, i64 1
  %i.jz = fsub <2 x double> %i.jw, %i.jy          ; 2 uses
  %i.ka = fcmp ogt <2 x double> %i.ju, zeroinitializer
  %i.kb = select <2 x i1> %i.ka, <2 x double> %i.ju, <2 x double> zeroinitializer ; 2 uses
  %i.kc = fsub <2 x double> %3, %4                ; 2 uses
  %i.kd = fcmp ogt <2 x double> %i.kc, zeroinitializer
  %i.ke = select <2 x i1> %i.kd, <2 x double> %i.kc, <2 x double> zeroinitializer ; 2 uses
  %i.kf = shufflevector <2 x double> %i.kb, <2 x double> %i.ke, <2 x i32> <i32 1, i32 3>
  %i.kg = shufflevector <2 x double> %i.kb, <2 x double> %i.ke, <2 x i32> <i32 0, i32 2>
  %i.kh = fmul <2 x double> %i.kf, %i.kg
  %i.ki = fcmp ogt <2 x double> %i.jz, zeroinitializer
  %i.kj = select <2 x i1> %i.ki, <2 x double> %i.jz, <2 x double> zeroinitializer
  %i.kk = fmul <2 x double> %i.kj, %i.kh          ; 2 uses
  %shift268 = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop269 = fadd <2 x double> %i.kk, %shift268
  %i.kl = extractelement <2 x double> %foldExtExtBinop269, i64 0 ; 2 uses
  %i.km = fcmp oeq double %i.jt, %.sroa.0.0180238
  %i.kn = fcmp olt double %i.jt, %.sroa.0.0180238
  %i.ko = fcmp olt double %i.kl, %.sroa.5.0237
  %.sroa.08.0 = select i1 %i.km, i1 %i.ko, i1 %i.kn
  %i.kp = icmp eq i64 %.sroa.075.0236, 3
  %or.cond = or i1 %i.kp, %.sroa.08.0             ; 3 uses
  %.sroa.5.1 = select i1 %or.cond, double %i.kl, double %.sroa.5.0237
  %.sroa.0.1181 = select i1 %or.cond, double %i.jt, double %.sroa.0.0180238
  %.sroa.0.1 = select i1 %or.cond, i64 %.sroa.075.0236, i64 %.sroa.0.0239 ; 2 uses
  %.not.i28 = icmp ugt i64 %spec.select189, %i.eu
  %or.cond192 = select i1 %i.ev, i1 true, i1 %.not.i28
  br i1 %or.cond192, label %._crit_edge241, label %.lr.ph240
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5rstar9algorithm7removal35DrainIterator$LT$T$C$R$C$Params$GT$8pop_node17h7a3286da7bf1c546E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, i1 noundef zeroext %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @905) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -1                     ; 4 uses
  store i64 %i.f, ptr %i.c, align 8
  %i.g = load i64, ptr %1, align 8, !range !17, !noundef !16
  %i.h = icmp samesign ult i64 %i.f, %i.g
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !16, !noundef !16
  %i.k = icmp ult i64 %i.d, 104811045873349727
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %i.f ; 7 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false)
  %.not = icmp eq i64 %.sroa.49.0.copyload, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, %bb.c
  %.not16 = icmp eq i64 %i.f, 0
  br i1 %.not16, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !16 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.p, 72
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i"
  %.sroa.02.023.i = phi ptr [ %i.u, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ], [ %i.n, %bb.e ] ; 9 uses
  %.sroa.9.020.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ], [ f0x7FEFFFFFFFFFFFFF, %bb.e ] ; 2 uses
  %.sroa.18.017.i = phi double [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ], [ f0xFFEFFFFFFFFFFFFF, %bb.e ] ; 2 uses
  %i.s = phi <2 x double> [ %i.ag, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ], [ splat (double f0x7FEFFFFFFFFFFFFF), %bb.e ] ; 2 uses
  %i.t = phi <2 x double> [ %i.aj, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ], [ splat (double f0xFFEFFFFFFFFFFFFF), %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43190)
  %i.v = load i64, ptr %.sroa.02.023.i, align 8, !range !52, !alias.scope !43191, !noalias !43192, !noundef !16
  %.not.i.i = icmp eq i64 %i.v, -9223372036854775808
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 48
  %i.y = load <2 x double>, ptr %i.x, align 8, !alias.scope !43193, !noalias !43194
  %.sroa.11.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 64
  %.sroa.11.24.copyload.i = load double, ptr %.sroa.11.24..sroa_idx.i, align 8, !alias.scope !43193, !noalias !43194
  %i.z = load <2 x double>, ptr %i.w, align 8, !alias.scope !43193, !noalias !43194
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 40
  %.sroa.69.0.copyload.i = load double, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !43193, !noalias !43194
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i"

bb.g:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 8
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 16
  %.sroa.5.0.copyload8.i = load double, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !43195, !noalias !43194
  %i.ab = load <2 x double>, ptr %i.aa, align 8, !alias.scope !43195, !noalias !43194 ; 2 uses
  %.sroa.69.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 24
  %.sroa.69.0.copyload11.i = load double, ptr %.sroa.69.0..sroa_idx10.i, align 8, !alias.scope !43195, !noalias !43194 ; 2 uses
  %i.ac = insertelement <2 x double> %i.ab, double %.sroa.5.0.copyload8.i, i64 1
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i": ; preds = %bb.g, %bb.f
  %.sroa.11.0.i = phi double [ %.sroa.69.0.copyload11.i, %bb.g ], [ %.sroa.11.24.copyload.i, %bb.f ] ; 2 uses
  %.sroa.69.0.i = phi double [ %.sroa.69.0.copyload11.i, %bb.g ], [ %.sroa.69.0.copyload.i, %bb.f ] ; 2 uses
  %i.ad = phi <2 x double> [ %i.ab, %bb.g ], [ %i.z, %bb.f ] ; 2 uses
  %i.ae = phi <2 x double> [ %i.ac, %bb.g ], [ %i.y, %bb.f ] ; 2 uses
  %i.af = fcmp olt <2 x double> %i.s, %i.ad
  %i.ag = select <2 x i1> %i.af, <2 x double> %i.s, <2 x double> %i.ad ; 2 uses
  %i.ah = fcmp olt double %.sroa.9.020.i, %.sroa.69.0.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i = select i1 %i.ah, double %.sroa.9.020.i, double %.sroa.69.0.i ; 2 uses
  %i.ai = fcmp ogt <2 x double> %i.t, %i.ae
  %i.aj = select <2 x i1> %i.ai, <2 x double> %i.t, <2 x double> %i.ae ; 2 uses
  %i.ak = fcmp ogt double %.sroa.18.017.i, %.sroa.11.0.i
  %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i = select i1 %i.ak, double %.sroa.18.017.i, double %.sroa.11.0.i ; 2 uses
  %i.al = icmp eq ptr %i.u, %i.q
  br i1 %i.al, label %_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit, label %.lr.ph.i

_ZN5rstar4node21envelope_for_children17h42c51f49c90f4724E.exit: ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i", %bb.e
  %.sroa.18.0.lcssa.i = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.e ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i3.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
  %.sroa.9.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.e ], [ %..i.i.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
  %i.am = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %bb.e ], [ %i.ag, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
  %i.an = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %bb.e ], [ %i.aj, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb51705d4db01ce66E.exit.i" ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <2 x double> %i.am, ptr %i.ao, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double %.sroa.9.0.lcssa.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <2 x double> %i.an, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store double %.sroa.18.0.lcssa.i, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.49.0.copyload, ptr %.sroa.43.0..sroa_idx, align 8
  br label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit"

bb.i:                                             ; preds = %bb.d
  %i.ap = getelementptr i8, ptr %i.l, i64 -16     ; 3 uses
  %i.aq = getelementptr i8, ptr %i.l, i64 -8      ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !16
  %i.as = add i64 %i.ar, %.sroa.49.0.copyload
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !16 ; 2 uses
  %i.av = icmp ult i64 %i.au, 128102389400760776
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h88ca1caf4a8dcee1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b)
          to label %bb.m unwind label %bb.k, !inline_history !99

bb.k:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.b, align 8, !range !17, !noundef !16 ; 2 uses
  %i.ay = icmp eq i64 %.val2.i, 0
  br i1 %i.ay, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.az, align 8, !nonnull !16, !noundef !16
  %i.ba = mul nuw i64 %.val2.i, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !43196, !inline_history !99
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %.val.i = load i64, ptr %i.b, align 8, !range !17, !noundef !16 ; 2 uses
  %i.bb = icmp eq i64 %.val.i, 0
  br i1 %i.bb, label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.bc, align 8, !nonnull !16, !noundef !16
  %i.bd = mul nuw i64 %.val.i, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !43196, !inline_history !99
  br label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h1f49e28a247a36f3E.exit"

common.resume:                                    ; preds = %bb.q, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.ax, %bb.l ], [ %i.bj, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.i
  %i.be = getelementptr i8, ptr %i.l, i64 -88     ; 2 uses
  %i.bf = getelementptr i8, ptr %i.l, i64 -72     ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !43197, !noalias !43198, !noundef !16 ; 3 uses
  %i.bh = load i64, ptr %i.be, align 8, !range !17, !alias.scope !43197, !noalias !43198, !noundef !16
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0a19f77da45ba799E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @906)
          to label %bb.s unwind label %bb.q, !noalias !43199

end_hunk_1
