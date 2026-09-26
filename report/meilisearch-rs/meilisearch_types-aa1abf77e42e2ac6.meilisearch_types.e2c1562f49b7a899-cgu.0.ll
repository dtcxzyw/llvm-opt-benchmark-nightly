Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@_ZN17meilisearch_types5tasks7network21NetworkTopologyChange10to_details17hfa1d461bd67671aaE:bb.a
"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit368": ; preds = %bb.cm, %bb.cl, %bb.ch
  %.pn = phi { ptr, i32 } [ %i.lc, %bb.ch ], [ %i.lf, %bb.cl ], [ %i.lf, %bb.cm ] ; 2 uses
  %.val.i362 = load i64, ptr %i.o, align 8, !alias.scope !7081 ; 2 uses
  %i.lb = icmp eq i64 %.val.i362, 0
  br i1 %i.lb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.sink.split"

bb.ch:                                            ; preds = %bb.cg
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit368"

bb.ci:                                            ; preds = %bb.cf
  store i64 0, ptr %i.m, align 8
  %.sroa.4517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4517.0..sroa_idx, align 8
  %.sroa.5518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.5518.0..sroa_idx, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.q, ptr %i.j, align 8
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb141650f598dd665E", ptr %.sroa.4205.0..sroa_idx, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.o, ptr %i.ld, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4209.0..sroa_idx, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.m, ptr %i.le, align 8
  %.sroa.4213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4213.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7082
  store ptr @823, ptr %i.a, align 8, !noalias !7083
  %.sroa.4432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.4432.0..sroa_idx, align 8, !noalias !7083
  %.sroa.5433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5433.0..sroa_idx, align 8, !noalias !7083
  %.sroa.6434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6434.0..sroa_idx, align 8, !noalias !7083
  %.sroa.7435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7435.0..sroa_idx, align 8, !noalias !7083
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.cn unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.cj

bb.cl:                                            ; preds = %bb.cj
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7084)
  %.val.i366 = load i64, ptr %i.m, align 8, !alias.scope !7084 ; 2 uses
  %i.lg = icmp eq i64 %.val.i366, 0
  br i1 %i.lg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit368", label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i367 = load ptr, ptr %i.lh, align 8, !alias.scope !7084, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i367, i64 noundef %.val.i366, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7084
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit368"

bb.cn:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !7085)
  %.val.i369 = load i64, ptr %i.m, align 8, !alias.scope !7085 ; 2 uses
  %i.li = icmp eq i64 %.val.i369, 0
  br i1 %i.li, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit371", label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i370 = load ptr, ptr %i.lj, align 8, !alias.scope !7085, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i370, i64 noundef %.val.i369, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7085
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit371"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit371": ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !7086)
  %.val.i372 = load i64, ptr %i.o, align 8, !alias.scope !7086 ; 2 uses
  %i.lk = icmp eq i64 %.val.i372, 0
  br i1 %i.lk, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374", label %bb.cp

bb.cp:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit371"
  %i.ll = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val1.i373 = load ptr, ptr %i.ll, align 8, !alias.scope !7086, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i373, i64 noundef %.val.i372, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7086
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit371", %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.0452.0.copyload458 = load i64, ptr %i.p, align 8
  %.sroa.10.0..sroa_idx469 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.10.0.copyload470 = load ptr, ptr %.sroa.10.0..sroa_idx469, align 8
  %.sroa.11.0..sroa_idx481 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.11.0.copyload482 = load i64, ptr %.sroa.11.0..sroa_idx481, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cq

bb.cq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit355"
  %.sroa.11.1 = phi i64 [ 53, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit355" ], [ %.sroa.11.0.copyload482, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374" ]
  %.sroa.10.1 = phi ptr [ %i.kx, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit355" ], [ %.sroa.10.0.copyload470, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374" ]
  %.sroa.0452.1 = phi i64 [ 53, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit355" ], [ %.sroa.0452.0.copyload458, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.j

bb.cr:                                            ; preds = %.loopexit540
  %i.lm = add i32 %i.iw, 1                        ; 2 uses
  store i32 %i.lm, ptr %i.r, align 4
  br label %bb.cu

bb.cs:                                            ; preds = %.loopexit540
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i336, i64 8
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %.sroa.6.sroa.4.0.ph.i.i.i334
  %.not220 = icmp eq ptr %.sroa.016.0569, null
  br i1 %.not220, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lp = add i32 %i.ix, 1                        ; 2 uses
  store i32 %i.lp, ptr %i.s, align 4
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.lq = phi i32 [ %i.ix, %bb.cr ], [ %i.lp, %bb.ct ], [ %i.ix, %bb.cs ] ; 2 uses
  %i.lr = phi i32 [ %i.lm, %bb.cr ], [ %i.iw, %bb.ct ], [ %i.iw, %bb.cs ] ; 2 uses
  %.sroa.016.1 = phi ptr [ %.sroa.016.0569, %bb.cr ], [ %.sroa.016.0569, %bb.ct ], [ %i.lo, %bb.cs ] ; 3 uses
  %i.ls = icmp eq i64 %i.iy, 0
  br i1 %i.ls, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_ZN17meilisearch_types5tasks7network21NetworkTopologyChange15name_for_export17h2337195a37f74c94E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(288) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !21
  %.not = icmp eq i64 %i.a, -9223372036854775808
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  br i1 %.not, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$7or_else17haceb095ceadd3b82E.exit"

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i64, ptr %i.f, align 8, !range !25, !alias.scope !7092, !noalias !7093, !noundef !21
  %.not.i.i = icmp eq i64 %i.g, -9223372036854775808 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !7092, !noalias !7093, !nonnull !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7092, !noalias !7093
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 undef, i64 %i.k
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr null, ptr %i.i
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17haceb095ceadd3b82E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17haceb095ceadd3b82E.exit": ; preds = %bb.a, %bb.b
  %.pn5.i = phi ptr [ %.sroa.0.0.i.i, %bb.b ], [ %i.c, %bb.a ]
  %.pn3.i = phi i64 [ %.sroa.3.0.i.i, %bb.b ], [ %i.e, %bb.a ]
  %.pn.i = insertvalue { ptr, i64 } poison, ptr %.pn5.i, 0
  %.merged.i = insertvalue { ptr, i64 } %.pn.i, i64 %.pn3.i, 1
  ret { ptr, i64 } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types5tasks7network21NetworkTopologyChange3new17h3ac08b2b94f3148eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 13 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.0.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.5.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 11 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.7121.i.i.i.i = alloca i64, align 8       ; 7 uses
  %.sroa.15.i.i.i.i = alloca i64, align 8         ; 5 uses
  %i.l = alloca [96 x i8], align 8                ; 17 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  %i.n = alloca [64 x i8], align 8                ; 7 uses
  %i.o = alloca [152 x i8], align 8               ; 5 uses
  %i.p = alloca [64 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [152 x i8], align 8               ; 24 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = load i64, ptr %2, align 8, !range !25, !noundef !21
  %.not.not = icmp eq i64 %i.v, -9223372036854775808 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !21 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aa = load i64, ptr %1, align 8, !range !25, !noundef !21
  %.not118 = icmp eq i64 %i.aa, -9223372036854775808 ; 2 uses
  %.sroa.0.0 = select i1 %.not.not, ptr null, ptr %i.x
  %.sroa.8.0 = select i1 %.not.not, i64 undef, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !21
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8
  %.sink514 = select i1 %.not118, ptr %.sroa.0.0, ptr %i.ac ; 2 uses
  %.sink = select i1 %.not118, i64 %.sroa.8.0, i64 %i.ae
  store ptr %.sink514, ptr %i.u, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sink, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !noundef !21 ; 3 uses
  %.not120 = icmp ne ptr %i.ah, null              ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load i64, ptr %i.ak, align 8
  %.sroa.07.sroa.7.sroa.6.0 = select i1 %.not120, i64 %i.aj, i64 undef ; 2 uses
  %.sroa.07.sroa.0.0 = zext i1 %.not120 to i64    ; 2 uses
  %.sroa.5.0 = select i1 %.not120, i64 %i.al, i64 0
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !noundef !21 ; 3 uses
  %.not121 = icmp ne ptr %i.an, null              ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ar = load i64, ptr %i.aq, align 8
  %.sroa.039.sroa.7.sroa.6.0 = select i1 %.not121, i64 %i.ap, i64 undef ; 2 uses
  %.sroa.039.sroa.0.0 = zext i1 %.not121 to i64   ; 2 uses
  %.sroa.540.0 = select i1 %.not121, i64 %i.ar, i64 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7517
  store i64 %.sroa.07.sroa.0.0, ptr %i.r, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %.sroa.0189.sroa.4.0..sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.ah, ptr %.sroa.0189.sroa.5.0..sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.07.sroa.7.sroa.6.0, ptr %.sroa.0189.sroa.6.0..sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %.sroa.07.sroa.0.0, ptr %.sroa.0189.sroa.7.0..sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr null, ptr %.sroa.0189.sroa.8.0..sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.ah, ptr %.sroa.0189.sroa.9.0..sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 %.sroa.07.sroa.7.sroa.6.0, ptr %.sroa.0189.sroa.10.0..sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.0189.sroa.11.0..sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i64 %.sroa.039.sroa.0.0, ptr %.sroa.0189.sroa.12.0..sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.12.sroa.4.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store ptr null, ptr %.sroa.0189.sroa.12.sroa.4.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.12.sroa.5.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store ptr %i.an, ptr %.sroa.0189.sroa.12.sroa.5.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.12.sroa.6.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store i64 %.sroa.039.sroa.7.sroa.6.0, ptr %.sroa.0189.sroa.12.sroa.6.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.12.sroa.7.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store i64 %.sroa.039.sroa.0.0, ptr %.sroa.0189.sroa.12.sroa.7.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.12.sroa.8.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store ptr null, ptr %.sroa.0189.sroa.12.sroa.8.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.12.sroa.9.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store ptr %i.an, ptr %.sroa.0189.sroa.12.sroa.9.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.12.sroa.10.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  store i64 %.sroa.039.sroa.7.sroa.6.0, ptr %.sroa.0189.sroa.12.sroa.10.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.0189.sroa.12.sroa.11.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  store i64 %.sroa.540.0, ptr %.sroa.0189.sroa.12.sroa.11.0..sroa.0189.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7518, !noalias !7519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7521
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he1b8d10082029dddE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.r)
          to label %.noexc unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.t, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.as, align 8
  br label %bb.bq

.body:                                            ; preds = %bb.e, %.body.i.i.i.i.i.i, %.critedge.i.i.i.i, %bb.bm, %bb.bn, %bb.d, %.body185
  %.pn = phi { ptr, i32 } [ %eh.lpad-body186, %.body185 ], [ %i.at, %bb.d ], [ %i.pb, %bb.bm ], [ %i.az, %bb.e ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.bn ], [ %.pn.i.i.i.i, %.critedge.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$meilisearch_types..network..Network$GT$17hafcc73c9e03a113dE"(ptr noalias noundef align 8 dereferenceable(112) %2) #55
          to label %bb.ef unwind label %bb.ee

bb.d:                                             ; preds = %.noexc20.i.i.i.i.invoke, %.noexc4.i.i.i, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.av = load i64, ptr %i.au, align 8, !range !41, !noalias !7521, !noundef !21
  %.not.i.i.i.i.i.i = icmp eq i64 %i.av, 3
  br i1 %.not.i.i.i.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb56d1b11e0b4b084E.exit.i.i.thread.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !7522
  %i.aw = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, 9) 8) #52, !noalias !7522 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.f, label %bb.g

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb56d1b11e0b4b084E.exit.i.i.thread.i": ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7517
  store ptr null, ptr %i.t, align 8, !alias.scope !7523, !noalias !7524
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.ay, align 8, !alias.scope !7523, !noalias !7524
  br label %bb.bp

bb.e:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$RP$$GT$17h909f9ba9dabf63d5E"(ptr noalias noundef align 8 dereferenceable(64) %i.p) #55
          to label %.body unwind label %bb.j, !noalias !7521

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 256, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.e, !noalias !7521

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !noalias !7521
  store i64 4, ptr %i.q, align 8, !noalias !7521
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7521
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.o, ptr noundef nonnull align 8 dereferenceable(152) %i.r, i64 152, i1 false), !noalias !7525
  call void @llvm.experimental.noalias.scope.decl(metadata !7526)
  call void @llvm.experimental.noalias.scope.decl(metadata !7527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7528
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he1b8d10082029dddE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.o)
          to label %.noexc5.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !7521

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !41, !noalias !7529, !noundef !21
  %.not1.i.i.i.i.i.i.i.i = icmp eq i64 %i.bb, 3
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha05532a68b341919E.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc5.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i
  %i.bc = phi ptr [ %i.bh, %.noexc6.i.i.i.i.i.i ], [ %i.aw, %.noexc5.i.i.i.i.i.i ]
  %i.bd = phi i64 [ %i.bj, %.noexc6.i.i.i.i.i.i ], [ 1, %.noexc5.i.i.i.i.i.i ] ; 5 uses
  %i.be = icmp samesign ult i64 %i.bd, 144115188075855872
  call void @llvm.assume(i1 %i.be)
  %i.bf = load i64, ptr %i.q, align 8, !range !22, !alias.scope !7530, !noalias !7531, !noundef !21
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i.i.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i.i.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.bd, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 64)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.h, !noalias !7531

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !7530, !noalias !7531
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i_crit_edge.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i
  %i.bh = phi ptr [ %.pre.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.bh, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !noalias !7529
  %i.bj = add nuw nsw i64 %i.bd, 1                ; 2 uses
  store i64 %i.bj, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !7530, !noalias !7531
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he1b8d10082029dddE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.o)
          to label %.noexc6.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !7521

.noexc6.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i.i.i.i.i.i.i"
  %i.bk = load i64, ptr %i.ba, align 8, !range !41, !noalias !7529, !noundef !21
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bk, 3
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha05532a68b341919E.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i.i.i.i.i.i.i"
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$RP$$GT$17h909f9ba9dabf63d5E"(ptr noalias noundef align 8 dereferenceable(64) %i.n) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.i, !noalias !7529

bb.i:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !7529
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN17meilisearch_types5tasks7network21NetworkTopologyChange3new17h3ac08b2b94f3148eE:bb.a

.loopexit.i.i.i.i133.us:                          ; preds = %.prol.loopexit1058, %.new1059, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.us", %bb.bv
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.us578 = phi ptr [ %i.qg, %bb.bv ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.us, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.us" ], [ %i.qg, %.new1059 ], [ %i.qg, %.prol.loopexit1058 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.us577 = phi i64 [ %i.qn, %bb.bv ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.us" ], [ %i.qn, %.new1059 ], [ %i.qn, %.prol.loopexit1058 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.us = phi i64 [ %i.qp, %bb.bv ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.us" ], [ 0, %.new1059 ], [ 0, %.prol.loopexit1058 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.us = phi ptr [ %i.qg, %bb.bv ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.us, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.us" ], [ %.pn30.i.i.i.i.i.i.i.i.i.us.lcssa.unr, %.prol.loopexit1058 ], [ %.pn30.i.i.i.i.i.i.i.i.i.us.7, %.new1059 ]
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.us578, i64 888
  %i.rf = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.us577, 11
  call void @llvm.assume(i1 %i.rf), !noalias !7623
  %i.rg = getelementptr inbounds nuw [24 x i8], ptr %i.re, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.us577
  call void @llvm.experimental.noalias.scope.decl(metadata !7625)
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.rh = icmp eq i64 %i.ri, 0
  br i1 %i.rh, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.thread.i", label %bb.bx

bb.bx:                                            ; preds = %.lr.ph, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i130865 = phi i1 [ %.not123, %.lr.ph ], [ true, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.6.0.i.i.i.i864 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.9.0.i.i.i.i863 = phi i64 [ %i.pn, %.lr.ph ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.13.0.i.i.i.i129862 = phi i64 [ %.sroa.078.sroa.5.sroa.6.0, %.lr.ph ], [ %.sroa.7.0.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.171.0.i.i.i.i861 = phi i64 [ %.sroa.579.0, %.lr.ph ], [ %i.ri, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.ri = add i64 %.sroa.171.0.i.i.i.i861, -1     ; 4 uses
  br i1 %.sroa.0.0.i.i.i.i130865, label %bb.by, label %.critedge.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %.sroa.6.0.i.i.i.i864, null
  br i1 %.not.i.i.i1.i.i.i.i, label %bb.bz, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i"

bb.bz:                                            ; preds = %bb.by
  %i.rj = inttoptr i64 %.sroa.9.0.i.i.i.i863 to ptr ; 3 uses
  %i.rk = icmp eq i64 %.sroa.13.0.i.i.i.i129862, 0
  br i1 %i.rk, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.bz
  %xtraiter1045 = and i64 %.sroa.13.0.i.i.i.i129862, 7 ; 2 uses
  %lcmp.mod1046.not = icmp eq i64 %xtraiter1045, 0
  br i1 %lcmp.mod1046.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.rj, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i.prol = phi i64 [ %i.rm, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.13.0.i.i.i.i129862, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %prol.iter1047 = phi i64 [ %prol.iter1047.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.prol, i64 1160
  %i.rm = add i64 %.sroa.011.014.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.prol = load ptr, ptr %i.rl, align 8, !noalias !7620, !nonnull !21, !noundef !21 ; 3 uses
  %prol.iter1047.next = add i64 %prol.iter1047, 1 ; 2 uses
  %prol.iter1047.cmp.not = icmp eq i64 %prol.iter1047.next, %xtraiter1045
  br i1 %prol.iter1047.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !7352

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.i.unr = phi ptr [ %i.rj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.13.0.i.i.i.i129862, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.rm, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.rn = icmp ult i64 %.sroa.13.0.i.i.i.i129862, 8
  br i1 %i.rn, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i.i = phi i64 [ %i.rw, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i = load ptr, ptr %i.ro, align 8, !noalias !7620, !nonnull !21, !noundef !21
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.1 = load ptr, ptr %i.rp, align 8, !noalias !7620, !nonnull !21, !noundef !21
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.1, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.2 = load ptr, ptr %i.rq, align 8, !noalias !7620, !nonnull !21, !noundef !21
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.2, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.3 = load ptr, ptr %i.rr, align 8, !noalias !7620, !nonnull !21, !noundef !21
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.3, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.4 = load ptr, ptr %i.rs, align 8, !noalias !7620, !nonnull !21, !noundef !21
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.4, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.5 = load ptr, ptr %i.rt, align 8, !noalias !7620, !nonnull !21, !noundef !21
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.5, i64 1160
  %.sroa.012.0.i.i.i.i.i.i.i.6 = load ptr, ptr %i.ru, align 8, !noalias !7620, !nonnull !21, !noundef !21
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.6, i64 1160
  %i.rw = add i64 %.sroa.011.014.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.7 = load ptr, ptr %i.rv, align 8, !noalias !7620, !nonnull !21, !noundef !21 ; 2 uses
  %i.rx = icmp eq i64 %i.rw, 0
  br i1 %i.rx, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.bz, %bb.by
  %.sroa.37.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.13.0.i.i.i.i129862, %bb.by ], [ 0, %bb.bz ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.9.0.i.i.i.i863, %bb.by ], [ 0, %bb.bz ], [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.0.i.i.i.i864, %bb.by ], [ %i.rj, %bb.bz ], [ %.sroa.012.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i, i64 1154
  %i.rz = load i16, ptr %i.ry, align 2, !noalias !7621, !noundef !21
  %i.sa = zext i16 %i.rz to i64
  %i.sb = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i.i.i.i, %i.sa
  br i1 %i.sb, label %bb.cb, label %.lr.ph.i.i.i.i.i.i.i.i.i131

.lr.ph.i.i.i.i.i.i.i.i.i131:                      ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i", %bb.ca
  %.sroa.0.038.i.i.i.i.i.i.i.i.i = phi ptr [ %i.sd, %bb.ca ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sf, %bb.ca ], [ %.sroa.26.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i" ]
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, i64 880
  %i.sd = load ptr, ptr %i.sc, align 8, !noalias !7622, !noundef !21 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i132 = icmp eq ptr %i.sd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i132, label %.split362.us, label %bb.ca

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ca
  %i.se = zext i16 %i.sh to i64
  br label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i131
  %i.sf = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, i64 1152
  %i.sh = load i16, ptr %i.sg, align 8, !noalias !7622 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sd, i64 1154
  %i.sj = load i16, ptr %i.si, align 2, !noalias !7621, !noundef !21
  %i.sk = icmp ult i16 %i.sh, %i.sj
  br i1 %i.sk, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i131

bb.cb:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i" ], [ %i.se, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i" ], [ %i.sf, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i" ], [ %i.sd, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.sl = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i, 0
  %i.sm = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.sl, label %.loopexit.i.i.i.i133, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i, i64 1160
  %i.so = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.so), !noalias !7623
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.sm ; 2 uses
  %xtraiter1051 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod1052.not = icmp eq i64 %xtraiter1051, 0
  br i1 %lcmp.mod1052.not, label %.prol.loopexit1049, label %.prol.preheader1048

.prol.preheader1048:                              ; preds = %bb.cc, %.prol.preheader1048
  %.pn30.in.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.sq, %.prol.preheader1048 ], [ %i.sp, %bb.cc ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1048 ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i, %bb.cc ]
  %prol.iter1053 = phi i64 [ %prol.iter1053.next, %.prol.preheader1048 ], [ 0, %bb.cc ]
  %.pn28.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !7624, !nonnull !21, !noundef !21 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter1053.next = add i64 %prol.iter1053, 1 ; 2 uses
  %prol.iter1053.cmp.not = icmp eq i64 %prol.iter1053.next, %xtraiter1051
  br i1 %prol.iter1053.cmp.not, label %.prol.loopexit1049, label %.prol.preheader1048, !llvm.loop !7353

.prol.loopexit1049:                               ; preds = %.prol.preheader1048, %bb.cc
  %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cc ], [ %.pn30.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1048 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.sp, %bb.cc ], [ %i.sq, %.prol.preheader1048 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i, %bb.cc ], [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1048 ]
  %i.sr = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i, 8
  br i1 %i.sr, label %.loopexit.i.i.i.i133, label %.new1050

.new1050:                                         ; preds = %.prol.loopexit1049, %.new1050
  %.pn30.in.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ta, %.new1050 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1049 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.7, %.new1050 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1049 ]
  %.pn30.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i, align 8, !noalias !7624, !nonnull !21, !noundef !21
  %i.ss = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ss, align 8, !noalias !7624, !nonnull !21, !noundef !21
  %i.st = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.st, align 8, !noalias !7624, !nonnull !21, !noundef !21
  %i.su = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.su, align 8, !noalias !7624, !nonnull !21, !noundef !21
  %i.sv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.sv, align 8, !noalias !7624, !nonnull !21, !noundef !21
  %i.sw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.sw, align 8, !noalias !7624, !nonnull !21, !noundef !21
  %i.sx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.sx, align 8, !noalias !7624, !nonnull !21, !noundef !21
  %i.sy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.sy, align 8, !noalias !7624, !nonnull !21, !noundef !21 ; 2 uses
  %i.sz = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.7, 0
  %i.ta = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.sz, label %.loopexit.i.i.i.i133, label %.new1050

.split362.us:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i131, %.lr.ph.i.i.i.i.i.i.i.i.i131.us
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i182 unwind label %bb.cd, !noalias !7626

.noexc.i.i.i.i.i.i.i182:                          ; preds = %.split362.us
  unreachable

bb.cd:                                            ; preds = %.split362.us
  %i.tb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !7623
  unreachable

.critedge.i.i.i.i.i.i:                            ; preds = %bb.bx, %bb.bs
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #57
          to label %.noexc183 unwind label %bb.ec

.noexc183:                                        ; preds = %.critedge.i.i.i.i.i.i
  unreachable

.loopexit.i.i.i.i133:                             ; preds = %.prol.loopexit1049, %.new1050, %bb.cb
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %i.sm, %bb.cb ], [ 0, %.new1050 ], [ 0, %.prol.loopexit1049 ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i, %bb.cb ], [ %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit1049 ], [ %.pn30.i.i.i.i.i.i.i.i.i.7, %.new1050 ] ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i, i64 888
  %i.td = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.td), !noalias !7623
  %i.te = getelementptr inbounds nuw [24 x i8], ptr %i.tc, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7625)
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.tg = load i64, ptr %i.tf, align 8, !alias.scope !7625, !noalias !7627, !noundef !21
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tg, %i.z
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i.i133
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !alias.scope !7625, !noalias !7627, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ti, ptr nonnull %i.x, i64 %i.z), !noalias !7628
  %bcmp.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i"

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i.i133, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.loopexit.i.i.i.i133.us
  %.us-phi = phi i64 [ %.sroa.7.0.i.i.i.i.i.i.i.i.us, %.loopexit.i.i.i.i133.us ], [ %.sroa.7.0.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i133 ]
  %.us-phi363 = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.us, %.loopexit.i.i.i.i133.us ], [ %.sroa.07.0.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.07.0.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i133 ]
  %.us-phi364 = phi ptr [ %i.rg, %.loopexit.i.i.i.i133.us ], [ %i.te, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.te, %.loopexit.i.i.i.i133 ]
  %.us-phi365 = phi i64 [ %i.po, %.loopexit.i.i.i.i133.us ], [ %i.ri, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ri, %.loopexit.i.i.i.i133 ]
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.us-phi364, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
          to label %.noexc184 unwind label %bb.ec

.noexc184:                                        ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i"
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !7619 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.thread.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i134"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.thread.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.us", %.noexc184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7618
  br label %.loopexit

bb.ce:                                            ; preds = %bb.cg
  %i.tj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tk = icmp eq i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.tk, label %.body185, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7629
  br label %.body185

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i134": ; preds = %.noexc184
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !7630 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !7630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7619
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !7631
  %i.tl = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 9) 8) #52, !noalias !7631 ; 7 uses
  %i.tm = icmp eq ptr %i.tl, null
  br i1 %i.tm, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i134"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i181 unwind label %bb.ce, !noalias !7618

.noexc.i.i.i.i.i.i181:                            ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i134"
  store i64 %.pr.i.i.i.i.i.i.i, ptr %i.tl, align 8, !noalias !7618
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7618
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7618
  %.sroa.6.0..sroa_idx13.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  store i8 2, ptr %.sroa.6.0..sroa_idx13.i.i.i.i.i.i, align 8, !noalias !7618
  store i64 4, ptr %i.f, align 8, !noalias !7618
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i135 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.tl, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i135, align 8, !noalias !7618
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i136 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i136, align 8, !noalias !7618
  call void @llvm.experimental.noalias.scope.decl(metadata !7632)
  call void @llvm.experimental.noalias.scope.decl(metadata !7633)
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.ci

bb.ci:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i", %bb.ch
  %i.tn = phi ptr [ %i.tl, %bb.ch ], [ %i.wq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i" ]
  %i.to = phi i64 [ 1, %bb.ch ], [ %i.ws, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i" ] ; 5 uses
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted37.i.i.i.i.i.i.i.i = phi i64 [ %.us-phi, %bb.ch ], [ %.us-phi369, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.promoted2635.i.i.i.i.i.i.i.i = phi ptr [ %.us-phi363, %bb.ch ], [ %.us-phi370, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i" ] ; 5 uses
  %.promoted30.i.i.i.i.i.i.i.i = phi i64 [ %.us-phi365, %bb.ch ], [ %.us-phi372, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7634
  %i.tp = icmp eq i64 %.promoted30.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %.not.not, label %.split366.us, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader": ; preds = %bb.ci
  br i1 %i.tp, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i"

.split366.us:                                     ; preds = %bb.ci
  br i1 %i.tp, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i.us"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i.us": ; preds = %.split366.us
  %i.tq = add i64 %.promoted30.i.i.i.i.i.i.i.i, -1
  %i.tr = getelementptr inbounds nuw i8, ptr %.promoted2635.i.i.i.i.i.i.i.i, i64 1154
  %i.ts = load i16, ptr %i.tr, align 2, !noalias !7635, !noundef !21
  %i.tt = zext i16 %i.ts to i64
  %i.tu = icmp ult i64 %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted37.i.i.i.i.i.i.i.i, %i.tt
  br i1 %i.tu, label %.thread.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.us:              ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i.us", %bb.cj
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi ptr [ %i.tw, %bb.cj ], [ %.promoted2635.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i.us" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.tx, %bb.cj ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i.us" ] ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.us, i64 880
  %i.tw = load ptr, ptr %i.tv, align 8, !noalias !7636, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.us = icmp eq ptr %i.tw, null
  br i1 %.not.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.us, label %.split368.us, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.tx = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.us, 1 ; 5 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i.us, i64 1152
  %i.tz = load i16, ptr %i.ty, align 8, !noalias !7636 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 1154
  %i.ub = load i16, ptr %i.ua, align 2, !noalias !7635, !noundef !21
  %i.uc = icmp ult i16 %i.tz, %i.ub
  br i1 %i.uc, label %bb.ck, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.us

bb.ck:                                            ; preds = %bb.cj
  %i.ud = zext i16 %i.tz to i64                   ; 4 uses
  %i.ue = icmp eq i64 %i.tx, 0
  %i.uf = add nuw nsw i64 %i.ud, 1                ; 2 uses
  br i1 %i.ue, label %.loopexit.i.i.i.i.i.i.i.i.us, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tw, i64 1160
  %i.uh = icmp ult i16 %i.tz, 11
  call void @llvm.assume(i1 %i.uh), !noalias !7637
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.uf ; 2 uses
  %xtraiter1075 = and i64 %i.tx, 7                ; 2 uses
  %lcmp.mod1076.not = icmp eq i64 %xtraiter1075, 0
  br i1 %lcmp.mod1076.not, label %.prol.loopexit1072, label %.prol.preheader1071

.prol.preheader1071:                              ; preds = %bb.cl, %.prol.preheader1071
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol = phi ptr [ %i.uj, %.prol.preheader1071 ], [ %i.ui, %bb.cl ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol, %.prol.preheader1071 ], [ %i.tx, %bb.cl ]
  %prol.iter1077 = phi i64 [ %prol.iter1077.next, %.prol.preheader1071 ], [ 0, %bb.cl ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol, align 8, !noalias !7638, !nonnull !21, !noundef !21 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol, i64 1160 ; 2 uses
  %prol.iter1077.next = add i64 %prol.iter1077, 1 ; 2 uses
  %prol.iter1077.cmp.not = icmp eq i64 %prol.iter1077.next, %xtraiter1075
  br i1 %prol.iter1077.cmp.not, label %.prol.loopexit1072, label %.prol.preheader1071, !llvm.loop !7396

.prol.loopexit1072:                               ; preds = %.prol.preheader1071, %bb.cl
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.lcssa.unr = phi ptr [ poison, %bb.cl ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol, %.prol.preheader1071 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us.unr = phi ptr [ %i.ui, %bb.cl ], [ %i.uj, %.prol.preheader1071 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %i.tx, %bb.cl ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol, %.prol.preheader1071 ]
  %i.uk = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i.us, 7
  br i1 %i.uk, label %.loopexit.i.i.i.i.i.i.i.i.us, label %.new1073

.new1073:                                         ; preds = %.prol.loopexit1072, %.new1073
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi ptr [ %i.ut, %.new1073 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us.unr, %.prol.loopexit1072 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.us.7, %.new1073 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us.unr, %.prol.loopexit1072 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.ul = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.1 = load ptr, ptr %i.ul, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.um = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.1, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.2 = load ptr, ptr %i.um, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.un = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.2, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.3 = load ptr, ptr %i.un, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.uo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.3, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.4 = load ptr, ptr %i.uo, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.up = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.4, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.5 = load ptr, ptr %i.up, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.uq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.5, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.6 = load ptr, ptr %i.uq, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.ur = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.6, i64 1160
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.us.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.us, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.7 = load ptr, ptr %i.ur, align 8, !noalias !7638, !nonnull !21, !noundef !21 ; 2 uses
  %i.us = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.us.7, 0
  %i.ut = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.7, i64 1160
  br i1 %i.us, label %.loopexit.i.i.i.i.i.i.i.i.us, label %.new1073

.thread.i.i.i.i.us:                               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i.us"
  %i.uu = add nuw nsw i64 %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted37.i.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i.i.i.us

.loopexit.i.i.i.i.i.i.i.i.us:                     ; preds = %.prol.loopexit1072, %.new1073, %.thread.i.i.i.i.us, %bb.ck
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i13.i.i.i.i.us = phi ptr [ %i.tw, %bb.ck ], [ %.promoted2635.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.us ], [ %i.tw, %.new1073 ], [ %i.tw, %.prol.loopexit1072 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i12.i.i.i.i.us = phi i64 [ %i.ud, %bb.ck ], [ %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted37.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.us ], [ %i.ud, %.new1073 ], [ %i.ud, %.prol.loopexit1072 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.uf, %bb.ck ], [ %i.uu, %.thread.i.i.i.i.us ], [ 0, %.new1073 ], [ 0, %.prol.loopexit1072 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.us = phi ptr [ %i.tw, %bb.ck ], [ %.promoted2635.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.us ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.lcssa.unr, %.prol.loopexit1072 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.us.7, %.new1073 ]
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i13.i.i.i.i.us, i64 888
  %i.uw = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i12.i.i.i.i.us, 11
  call void @llvm.assume(i1 %i.uw), !noalias !7637
  %i.ux = getelementptr inbounds nuw [24 x i8], ptr %i.uv, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i12.i.i.i.i.us
  call void @llvm.experimental.noalias.scope.decl(metadata !7639)
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.uy = icmp eq i64 %i.va, 0
  br i1 %i.uy, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.uz = phi i64 [ %i.va, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted30.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader" ]
  %.sroa.07.0.i.i.i.i27.i.i.i.i.i.i.i.i867 = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted2635.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader" ] ; 4 uses
  %.sroa.37.0.copyload.i.pre.i.i28.i.i.i.i.i.i.i.i866 = phi i64 [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted37.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader" ] ; 3 uses
  %i.va = add i64 %i.uz, -1                       ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i27.i.i.i.i.i.i.i.i867, i64 1154
  %i.vc = load i16, ptr %i.vb, align 2, !noalias !7635, !noundef !21
  %i.vd = zext i16 %i.vc to i64
  %i.ve = icmp ult i64 %.sroa.37.0.copyload.i.pre.i.i28.i.i.i.i.i.i.i.i866, %i.vd
  br i1 %i.ve, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.vf = add nuw nsw i64 %.sroa.37.0.copyload.i.pre.i.i28.i.i.i.i.i.i.i.i866, 1
  br label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i", %bb.cm
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vh, %bb.cm ], [ %.sroa.07.0.i.i.i.i27.i.i.i.i.i.i.i.i867, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.vi, %bb.cm ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 880
  %i.vh = load ptr, ptr %i.vg, align 8, !noalias !7636, !noundef !21 ; 8 uses
  %.not.i.i.i.i.i.i6.i.i.i.i.i.i.i.i = icmp eq ptr %i.vh, null
  br i1 %.not.i.i.i.i.i.i6.i.i.i.i.i.i.i.i, label %.split368.us, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vi = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1152
  %i.vk = load i16, ptr %i.vj, align 8, !noalias !7636 ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vh, i64 1154
  %i.vm = load i16, ptr %i.vl, align 2, !noalias !7635, !noundef !21
  %i.vn = icmp ult i16 %i.vk, %i.vm
  br i1 %i.vn, label %bb.cn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.vo = zext i16 %i.vk to i64                   ; 4 uses
  %i.vp = icmp eq i64 %i.vi, 0
  %i.vq = add nuw nsw i64 %i.vo, 1                ; 2 uses
  br i1 %i.vp, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vh, i64 1160
  %i.vs = icmp ult i16 %i.vk, 11
  call void @llvm.assume(i1 %i.vs), !noalias !7637
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %i.vq ; 2 uses
  %xtraiter1068 = and i64 %i.vi, 7                ; 2 uses
  %lcmp.mod1069.not = icmp eq i64 %xtraiter1068, 0
  br i1 %lcmp.mod1069.not, label %.prol.loopexit1065, label %.prol.preheader1064

.prol.preheader1064:                              ; preds = %bb.co, %.prol.preheader1064
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.vu, %.prol.preheader1064 ], [ %i.vt, %bb.co ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1064 ], [ %i.vi, %bb.co ]
  %prol.iter1070 = phi i64 [ %prol.iter1070.next, %.prol.preheader1064 ], [ 0, %bb.co ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !7638, !nonnull !21, !noundef !21 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter1070.next = add i64 %prol.iter1070, 1 ; 2 uses
  %prol.iter1070.cmp.not = icmp eq i64 %prol.iter1070.next, %xtraiter1068
  br i1 %prol.iter1070.cmp.not, label %.prol.loopexit1065, label %.prol.preheader1064, !llvm.loop !7399

.prol.loopexit1065:                               ; preds = %.prol.preheader1064, %bb.co
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.co ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1064 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.vt, %bb.co ], [ %i.vu, %.prol.preheader1064 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.vi, %bb.co ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader1064 ]
  %i.vv = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.vv, label %.loopexit.i.i.i.i.i.i.i.i, label %.new1066

.new1066:                                         ; preds = %.prol.loopexit1065, %.new1066
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.we, %.new1066 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1065 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new1066 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1065 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.vw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.vw, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.vx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.vx, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.vy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.vy, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.vz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.vz, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.wa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.wa, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.wb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.wb, align 8, !noalias !7638, !nonnull !21, !noundef !21
  %i.wc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.wc, align 8, !noalias !7638, !nonnull !21, !noundef !21 ; 2 uses
  %i.wd = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.we = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.wd, label %.loopexit.i.i.i.i.i.i.i.i, label %.new1066

.split368.us:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cp, !noalias !7640

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split368.us
  unreachable

bb.cp:                                            ; preds = %.split368.us
  %i.wf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !7637
  unreachable

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.prol.loopexit1065, %.new1066, %bb.cn, %.thread.i.i.i.i
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i13.i.i.i.i = phi ptr [ %i.vh, %bb.cn ], [ %.sroa.07.0.i.i.i.i27.i.i.i.i.i.i.i.i867, %.thread.i.i.i.i ], [ %i.vh, %.new1066 ], [ %i.vh, %.prol.loopexit1065 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i12.i.i.i.i = phi i64 [ %i.vo, %bb.cn ], [ %.sroa.37.0.copyload.i.pre.i.i28.i.i.i.i.i.i.i.i866, %.thread.i.i.i.i ], [ %i.vo, %.new1066 ], [ %i.vo, %.prol.loopexit1065 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.vq, %bb.cn ], [ %i.vf, %.thread.i.i.i.i ], [ 0, %.new1066 ], [ 0, %.prol.loopexit1065 ] ; 3 uses
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vh, %bb.cn ], [ %.sroa.07.0.i.i.i.i27.i.i.i.i.i.i.i.i867, %.thread.i.i.i.i ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit1065 ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new1066 ] ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i13.i.i.i.i, i64 888
  %i.wh = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i12.i.i.i.i, 11
  call void @llvm.assume(i1 %i.wh), !noalias !7637
  %i.wi = getelementptr inbounds nuw [24 x i8], ptr %i.wg, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i12.i.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7639)
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wk = load i64, ptr %i.wj, align 8, !alias.scope !7639, !noalias !7641, !noundef !21
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.wk, %i.z
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wm = load ptr, ptr %i.wl, align 8, !alias.scope !7639, !noalias !7641, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.wm, ptr nonnull %i.x, i64 %i.z), !noalias !7642
  %bcmp.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i8.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i.i.i"

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i.i.i.i.us
  %.us-phi369 = phi i64 [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.us, %.loopexit.i.i.i.i.i.i.i.i.us ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ]
  %.us-phi370 = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.us, %.loopexit.i.i.i.i.i.i.i.i.us ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ]
  %.us-phi371 = phi ptr [ %i.ux, %.loopexit.i.i.i.i.i.i.i.i.us ], [ %i.wi, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.wi, %.loopexit.i.i.i.i.i.i.i.i ]
  %.us-phi372 = phi i64 [ %i.tq, %.loopexit.i.i.i.i.i.i.i.i.us ], [ %i.va, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.va, %.loopexit.i.i.i.i.i.i.i.i ]
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.us-phi371, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
          to label %.noexc10.i.i.i.i.i.i unwind label %.loopexit23.i.i.i.i.i.i, !noalias !7618

.noexc10.i.i.i.i.i.i:                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i.i.i"
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !7634 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i142 = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i142, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %.noexc10.i.i.i.i.i.i
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !noalias !7643 ; 3 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7634
  %i.wn = icmp samesign ult i64 %i.to, 288230376151711744
  call void @llvm.assume(i1 %i.wn)
  %i.wo = load i64, ptr %i.f, align 8, !range !22, !alias.scope !7644, !noalias !7645, !noundef !21
  %i.wp = icmp eq i64 %i.to, %i.wo
  br i1 %i.wp, label %bb.ct, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.cq
  %i.wq = phi ptr [ %.pre.i.i.i.i.i.i143, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.tn, %bb.cq ] ; 2 uses
  %i.wr = getelementptr inbounds nuw [32 x i8], ptr %i.wq, i64 %i.to ; 4 uses
  store i64 %.pr.i.i.i.i.i.i.i.i.i, ptr %i.wr, align 8, !noalias !7646
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7646
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7646
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  store i8 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7646
  %i.ws = add nuw nsw i64 %i.to, 1                ; 2 uses
  store i64 %i.ws, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i136, align 8, !alias.scope !7644, !noalias !7645
  br label %bb.ci

bb.cr:                                            ; preds = %bb.ct
  %i.wt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wu = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wu, label %.body.i.i.i.i.i.i138, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7647
  br label %.body.i.i.i.i.i.i138

bb.ct:                                            ; preds = %bb.cq
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.to, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 32)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.cr, !noalias !7645

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.ct
  %.pre.i.i.i.i.i.i143 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i135, align 8, !alias.scope !7644, !noalias !7645
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i"

.loopexit23.i.i.i.i.i.i:                          ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i.i137 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i138

.body.i.i.i.i.i.i138:                             ; preds = %.loopexit23.i.i.i.i.i.i, %bb.cs, %bb.cr
  %eh.lpad-body.i.i.i.i.i.i139 = phi { ptr, i32 } [ %i.wt, %bb.cr ], [ %i.wt, %bb.cs ], [ %lpad.loopexit.i.i.i.i.i.i137, %.loopexit23.i.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$17ha3d2b483673e3479E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #55, !noalias !7618
  br label %.body185

_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i: ; preds = %.noexc10.i.i.i.i.i.i, %.split366.us, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !7648
  %.phi.trans.insert.i.i144 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre.i.i145 = load i64, ptr %.phi.trans.insert.i.i144, align 8, !noalias !7617 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7618
  %i.wv = icmp ult i64 %.pre.i.i145, 288230376151711744
  call void @llvm.assume(i1 %i.wv)
  %i.ww = icmp eq i64 %.pre.i.i145, 0
  br i1 %i.ww, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.i", label %bb.cv

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i
  %.val2.i.i.pr.i = load i64, ptr %i.g, align 8, !alias.scope !7649, !noalias !7617 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7649)
  %i.wx = icmp eq i64 %.val2.i.i.pr.i, 0
  br i1 %i.wx, label %.loopexit, label %bb.cu

bb.cu:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.i"
  %i.wy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i180 = load ptr, ptr %i.wy, align 8, !alias.scope !7649, !noalias !7617, !nonnull !21, !noundef !21
  %i.wz = shl nuw i64 %.val2.i.i.pr.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i180, i64 noundef %i.wz, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7650
  br label %.loopexit

bb.cv:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i
  %i.xa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8, !noalias !7617, !nonnull !21, !noundef !21 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7651
  %i.xc = icmp eq i64 %.pre.i.i145, 1
  br i1 %i.xc, label %bb.cz, label %bb.cw, !prof !49

bb.cw:                                            ; preds = %bb.cv
  %i.xd = icmp samesign ult i64 %.pre.i.i145, 21
  br i1 %i.xd, label %bb.cy, label %bb.cx, !prof !49

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h7a03a7b0a9d61826E(ptr noalias noundef nonnull align 8 %i.xb, i64 noundef range(i64 1, 288230376151711744) %.pre.i.i145, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cz unwind label %bb.eb, !noalias !7617

bb.cy:                                            ; preds = %bb.cw
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9fd2fdaebaaab0ffE(ptr noalias noundef nonnull align 8 %i.xb, i64 noundef range(i64 1, 288230376151711744) %.pre.i.i145)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7651
  %.sroa.02.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !7617 ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !7652
  %i.xe = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7652 ; 5 uses
  %i.xf = icmp eq ptr %i.xe, null
  br i1 %i.xf, label %bb.da, label %.loopexit87.i.i.i.i, !prof !23

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #57
          to label %.noexc.i.i.i179 unwind label %bb.ea, !noalias !7652

.noexc.i.i.i179:                                  ; preds = %bb.da
  unreachable

.loopexit87.i.i.i.i:                              ; preds = %bb.cz
  store ptr null, ptr %i.xe, align 8, !noalias !7652
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 274
  store i16 0, ptr %i.xg, align 2, !noalias !7652
  %i.xh = getelementptr inbounds nuw [32 x i8], ptr %i.xb, i64 %.pre.i.i145 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7653
  %.sroa.4.0..sroa_idx.i2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.494.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.xb, ptr %.sroa.494.0..sroa_idx.i.i.i, align 8, !noalias !7654
  %.sroa.5.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.xb, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !noalias !7654
  %.sroa.6.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.02.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i4.i.i, align 8, !noalias !7654
  %.sroa.7.0..sroa_idx95.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.xh, ptr %.sroa.7.0..sroa_idx95.i.i.i, align 8, !noalias !7654
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.db

bb.db:                                            ; preds = %.loopexit.i.i7.i.i, %.loopexit87.i.i.i.i
  %.promoted75.i.i100.i.i.i = phi ptr [ %i.xb, %.loopexit87.i.i.i.i ], [ %.promoted75.i.i97.i.i.i, %.loopexit.i.i7.i.i ]
  %.sroa.012.0.i.i.i148 = phi i64 [ 0, %.loopexit87.i.i.i.i ], [ %i.aet, %.loopexit.i.i7.i.i ] ; 4 uses
  %.sroa.8.0.i.i.i149 = phi i64 [ 0, %.loopexit87.i.i.i.i ], [ %.sroa.8.2.i.i.i165, %.loopexit.i.i7.i.i ] ; 7 uses
  %.sroa.0.0.i.i.i150 = phi ptr [ %i.xe, %.loopexit87.i.i.i.i ], [ %.sroa.0.2.i.i.i166, %.loopexit.i.i7.i.i ] ; 10 uses
  %.promoted.i.i.i.i.i = phi i64 [ -9223372036854775807, %.loopexit87.i.i.i.i ], [ %.promoted.i.pre145.i96.i.i.i, %.loopexit.i.i7.i.i ]
  %.sroa.0.070.i.i.i.i = phi ptr [ %i.xe, %.loopexit87.i.i.i.i ], [ %.sroa.0.1.i.i.i.i167, %.loopexit.i.i7.i.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7655)
  %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i2.i.i, align 8, !alias.scope !7655, !noalias !7656
  %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !7655, !noalias !7656
  br label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"

"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i": ; preds = %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge", %bb.db
  %.promoted75.i.i99.i.i.i = phi ptr [ %.promoted75.i.i100.i.i.i, %bb.db ], [ %i.xl, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ] ; 7 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i, %bb.db ], [ %.sroa.835.sroa.6.0.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ]
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i151 = phi ptr [ %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i, %bb.db ], [ %.val12.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ]
  %.sroa.0.0.copyload5.i74.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i, %bb.db ], [ %.sroa.0.0.copyload5.i.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ] ; 2 uses
  %.sroa.5.sroa.5.0.copyload.i.i.i.i.i152 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i147, align 8, !alias.scope !7655, !noalias !7656
  store i64 -9223372036854775807, ptr %i.b, align 8, !alias.scope !7655, !noalias !7656
  %.not.i.i.i.i.i153 = icmp eq i64 %.sroa.0.0.copyload5.i74.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i.i153, label %bb.dc, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"

bb.dc:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7657)
  %i.xi = icmp eq ptr %.promoted75.i.i99.i.i.i, %i.xh
  br i1 %i.xi, label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i", label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.xj = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 32 ; 2 uses
  store ptr %i.xj, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !alias.scope !7658, !noalias !7659
  %.sroa.033.0.copyload34.i.i.i.i.i = load i64, ptr %.promoted75.i.i99.i.i.i, align 8, !noalias !7660
  %.sroa.835.0..sroa_idx36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 8
  %.sroa.835.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.835.0..sroa_idx36.i.i.i.i.i, align 8, !noalias !7660
  %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 16
  %.sroa.835.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i, align 8, !noalias !7660
  %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 24
  %.sroa.835.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i, align 8, !noalias !7660
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i": ; preds = %bb.dd, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"
  %.promoted75.i.i98.i.i.i = phi ptr [ %.promoted75.i.i99.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %i.xj, %bb.dd ] ; 7 uses
  %.sroa.835.sroa.6.0.i.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.835.sroa.6.0.copyload.i.i.i.i.i, %bb.dd ] ; 5 uses
  %.sroa.835.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i.i.i.i.i151, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.835.sroa.0.0.copyload.i.i.i.i.i, %bb.dd ] ; 7 uses
  %.sroa.835.sroa.7.0.i.i.i.i.i = phi i64 [ %.sroa.5.sroa.5.0.copyload.i.i.i.i.i152, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.835.sroa.7.0.copyload.i.i.i.i.i, %bb.dd ]
  %.sroa.033.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload5.i74.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i" ], [ %.sroa.033.0.copyload34.i.i.i.i.i, %bb.dd ] ; 8 uses
  %.not9.i.i.i.i.i = icmp eq i64 %.sroa.033.0.i.i.i.i.i, -9223372036854775808
  br i1 %.not9.i.i.i.i.i, label %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae616e213cf35653E.exit.i.i.i.i", label %bb.de

bb.de:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7661)
  call void @llvm.experimental.noalias.scope.decl(metadata !7662)
  call void @llvm.experimental.noalias.scope.decl(metadata !7663)
  call void @llvm.experimental.noalias.scope.decl(metadata !7664)
end_hunk_1
