Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 226
loop-unroll.NumUnrolled: 306
begin_hunk_0_@_ZN17meilisearch_types5tasks7network21NetworkTopologyChange10to_details17hfa1d461bd67671aaE:bb.a
"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit368": ; preds = %bb.cm, %bb.cl, %bb.ch
  %.pn = phi { ptr, i32 } [ %i.le, %bb.ch ], [ %i.lh, %bb.cl ], [ %i.lh, %bb.cm ] ; 2 uses
  %.val.i362 = load i64, ptr %i.o, align 8, !alias.scope !6983 ; 2 uses
  %i.ld = icmp eq i64 %.val.i362, 0
  br i1 %i.ld, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.sink.split"

bb.ch:                                            ; preds = %bb.cg
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit368"

bb.ci:                                            ; preds = %bb.cf
  store i64 0, ptr %i.m, align 8
  %.sroa.4518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4518.0..sroa_idx, align 8
  %.sroa.5519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.5519.0..sroa_idx, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.q, ptr %i.j, align 8
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb141650f598dd665E", ptr %.sroa.4205.0..sroa_idx, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.o, ptr %i.lf, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4209.0..sroa_idx, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.m, ptr %i.lg, align 8
  %.sroa.4213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.4213.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6984
  store ptr @823, ptr %i.a, align 8, !noalias !6985
  %.sroa.4433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.4433.0..sroa_idx, align 8, !noalias !6985
  %.sroa.5434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5434.0..sroa_idx, align 8, !noalias !6985
  %.sroa.6435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6435.0..sroa_idx, align 8, !noalias !6985
  %.sroa.7436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7436.0..sroa_idx, align 8, !noalias !6985
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.cn unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.cj

bb.cl:                                            ; preds = %bb.cj
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6986)
  %.val.i366 = load i64, ptr %i.m, align 8, !alias.scope !6986 ; 2 uses
  %i.li = icmp eq i64 %.val.i366, 0
  br i1 %i.li, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit368", label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i367 = load ptr, ptr %i.lj, align 8, !alias.scope !6986, !nonnull !22, !noundef !22
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i367, i64 noundef %.val.i366, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6986
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit368"

bb.cn:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !6987)
  %.val.i369 = load i64, ptr %i.m, align 8, !alias.scope !6987 ; 2 uses
  %i.lk = icmp eq i64 %.val.i369, 0
  br i1 %i.lk, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit371", label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ll = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i370 = load ptr, ptr %i.ll, align 8, !alias.scope !6987, !nonnull !22, !noundef !22
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i370, i64 noundef %.val.i369, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6987
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit371"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit371": ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !6988)
  %.val.i372 = load i64, ptr %i.o, align 8, !alias.scope !6988 ; 2 uses
  %i.lm = icmp eq i64 %.val.i372, 0
  br i1 %i.lm, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374", label %bb.cp

bb.cp:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit371"
  %i.ln = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val1.i373 = load ptr, ptr %i.ln, align 8, !alias.scope !6988, !nonnull !22, !noundef !22
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i373, i64 noundef %.val.i372, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6988
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit371", %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.0453.0.copyload459 = load i64, ptr %i.p, align 8
  %.sroa.10.0..sroa_idx470 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.10.0.copyload471 = load ptr, ptr %.sroa.10.0..sroa_idx470, align 8
  %.sroa.11.0..sroa_idx482 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.11.0.copyload483 = load i64, ptr %.sroa.11.0..sroa_idx482, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cq

bb.cq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit355"
  %.sroa.11.1 = phi i64 [ 53, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit355" ], [ %.sroa.11.0.copyload483, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374" ]
  %.sroa.10.1 = phi ptr [ %i.kz, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit355" ], [ %.sroa.10.0.copyload471, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374" ]
  %.sroa.0453.1 = phi i64 [ 53, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit355" ], [ %.sroa.0453.0.copyload459, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit374" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.l

bb.cr:                                            ; preds = %.loopexit540
  %i.lo = add i32 %i.iy, 1                        ; 2 uses
  store i32 %i.lo, ptr %i.r, align 4
  br label %select.unfold527

bb.cs:                                            ; preds = %.loopexit540
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i336, i64 8
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.lp, i64 %.sroa.6.sroa.4.0.ph.i.i.i334
  %.not220 = icmp eq ptr %.sroa.016.0567, null
  br i1 %.not220, label %select.unfold527, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lr = add i32 %i.iz, 1                        ; 2 uses
  store i32 %i.lr, ptr %i.s, align 4
  br label %select.unfold527

select.unfold527:                                 ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.ls = phi i32 [ %i.iz, %bb.cr ], [ %i.lr, %bb.ct ], [ %i.iz, %bb.cs ] ; 2 uses
  %i.lt = phi i32 [ %i.lo, %bb.cr ], [ %i.iy, %bb.ct ], [ %i.iy, %bb.cs ] ; 2 uses
  %.sroa.016.1 = phi ptr [ %.sroa.016.0567, %bb.cr ], [ %.sroa.016.0567, %bb.ct ], [ %i.lq, %bb.cs ] ; 3 uses
  %i.lu = icmp eq i64 %i.ja, 0
  br i1 %i.lu, label %select.unfold527._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_ZN17meilisearch_types5tasks7network21NetworkTopologyChange15name_for_export17h2337195a37f74c94E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(288) %0) unnamed_addr #12 personality ptr @rust_eh_personality !guid !6993 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !22
  %.not = icmp eq i64 %i.a, -9223372036854775808
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  br i1 %.not, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$7or_else17haceb095ceadd3b82E.exit"

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i64, ptr %i.f, align 8, !range !26, !alias.scope !6994, !noundef !22
  %.not.i.i = icmp eq i64 %i.g, -9223372036854775808 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !6994, !nonnull !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !6994
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
define void @_ZN17meilisearch_types5tasks7network21NetworkTopologyChange3new17h3ac08b2b94f3148eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !7418 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 13 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.0.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.5.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 11 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.7119.i.i.i.i = alloca i64, align 8       ; 7 uses
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
  %i.v = load i64, ptr %2, align 8, !range !26, !noundef !22
  %.not.not = icmp eq i64 %i.v, -9223372036854775808 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !22 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aa = load i64, ptr %1, align 8, !range !26, !noundef !22
  %.not118 = icmp eq i64 %i.aa, -9223372036854775808 ; 2 uses
  %.sroa.0.0 = select i1 %.not.not, ptr null, ptr %i.x
  %.sroa.8.0 = select i1 %.not.not, i64 undef, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !22
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8
  %.sink510 = select i1 %.not118, ptr %.sroa.0.0, ptr %i.ac ; 2 uses
  %.sink = select i1 %.not118, i64 %.sroa.8.0, i64 %i.ae
  store ptr %.sink510, ptr %i.u, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sink, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !noundef !22 ; 3 uses
  %.not120 = icmp ne ptr %i.ah, null              ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load i64, ptr %i.ak, align 8
  %.sroa.07.sroa.7.sroa.6.0 = select i1 %.not120, i64 %i.aj, i64 undef ; 2 uses
  %.sroa.07.sroa.0.0 = zext i1 %.not120 to i64    ; 2 uses
  %.sroa.5.0 = select i1 %.not120, i64 %i.al, i64 0
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !noundef !22 ; 3 uses
  %.not121 = icmp ne ptr %i.an, null              ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ar = load i64, ptr %i.aq, align 8
  %.sroa.039.sroa.7.sroa.6.0 = select i1 %.not121, i64 %i.ap, i64 undef ; 2 uses
  %.sroa.039.sroa.0.0 = zext i1 %.not121 to i64   ; 2 uses
  %.sroa.540.0 = select i1 %.not121, i64 %i.ar, i64 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7422
  store i64 %.sroa.07.sroa.0.0, ptr %i.r, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %.sroa.0187.sroa.4.0..sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.ah, ptr %.sroa.0187.sroa.5.0..sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.07.sroa.7.sroa.6.0, ptr %.sroa.0187.sroa.6.0..sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %.sroa.07.sroa.0.0, ptr %.sroa.0187.sroa.7.0..sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr null, ptr %.sroa.0187.sroa.8.0..sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.ah, ptr %.sroa.0187.sroa.9.0..sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 %.sroa.07.sroa.7.sroa.6.0, ptr %.sroa.0187.sroa.10.0..sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.0187.sroa.11.0..sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i64 %.sroa.039.sroa.0.0, ptr %.sroa.0187.sroa.12.0..sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.12.sroa.4.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store ptr null, ptr %.sroa.0187.sroa.12.sroa.4.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.12.sroa.5.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store ptr %i.an, ptr %.sroa.0187.sroa.12.sroa.5.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.12.sroa.6.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store i64 %.sroa.039.sroa.7.sroa.6.0, ptr %.sroa.0187.sroa.12.sroa.6.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.12.sroa.7.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store i64 %.sroa.039.sroa.0.0, ptr %.sroa.0187.sroa.12.sroa.7.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.12.sroa.8.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store ptr null, ptr %.sroa.0187.sroa.12.sroa.8.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.12.sroa.9.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store ptr %i.an, ptr %.sroa.0187.sroa.12.sroa.9.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.12.sroa.10.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  store i64 %.sroa.039.sroa.7.sroa.6.0, ptr %.sroa.0187.sroa.12.sroa.10.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.0187.sroa.12.sroa.11.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  store i64 %.sroa.540.0, ptr %.sroa.0187.sroa.12.sroa.11.0..sroa.0187.sroa.12.0..sroa_idx.sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7423, !noalias !7424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7426
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he1b8d10082029dddE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.r)
          to label %.noexc unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.t, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.as, align 8
  br label %bb.bq

.body:                                            ; preds = %bb.e, %.body.i.i.i.i.i.i, %.critedge.i.i.i.i, %bb.bm, %bb.bn, %bb.d, %.body183
  %.pn = phi { ptr, i32 } [ %eh.lpad-body184, %.body183 ], [ %i.at, %bb.d ], [ %i.pb, %bb.bm ], [ %i.az, %bb.e ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.bn ], [ %.pn.i.i.i.i, %.critedge.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$meilisearch_types..network..Network$GT$17hafcc73c9e03a113dE"(ptr noalias noundef align 8 dereferenceable(112) %2) #55
          to label %bb.eb unwind label %bb.ea

bb.d:                                             ; preds = %.noexc20.i.i.i.i.invoke, %.noexc4.i.i.i, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.av = load i64, ptr %i.au, align 8, !range !42, !noalias !7426, !noundef !22
  %.not.i.i.i.i.i.i = icmp eq i64 %i.av, 3
  br i1 %.not.i.i.i.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb56d1b11e0b4b084E.exit.i.i.thread.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !7427
  %i.aw = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, 9) 8) #52, !noalias !7427 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.f, label %bb.g

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb56d1b11e0b4b084E.exit.i.i.thread.i": ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7422
  store ptr null, ptr %i.t, align 8, !alias.scope !7428
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.ay, align 8, !alias.scope !7428
  br label %bb.bp

bb.e:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$RP$$GT$17h909f9ba9dabf63d5E"(ptr noalias noundef align 8 dereferenceable(64) %i.p) #55
          to label %.body unwind label %bb.j, !noalias !7426

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 256, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i unwind label %bb.e, !noalias !7426

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !noalias !7426
  store i64 4, ptr %i.q, align 8, !noalias !7426
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7426
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.o, ptr noundef nonnull align 8 dereferenceable(152) %i.r, i64 152, i1 false), !noalias !7429
  call void @llvm.experimental.noalias.scope.decl(metadata !7430)
  call void @llvm.experimental.noalias.scope.decl(metadata !7431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7432
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he1b8d10082029dddE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.o)
          to label %.noexc5.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !7426

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !42, !noalias !7433, !noundef !22
  %.not1.i.i.i.i.i.i.i.i = icmp eq i64 %i.bb, 3
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha05532a68b341919E.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc5.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i
  %i.bc = phi ptr [ %i.bh, %.noexc6.i.i.i.i.i.i ], [ %i.aw, %.noexc5.i.i.i.i.i.i ]
  %i.bd = phi i64 [ %i.bj, %.noexc6.i.i.i.i.i.i ], [ 1, %.noexc5.i.i.i.i.i.i ] ; 5 uses
  %i.be = icmp samesign ult i64 %i.bd, 144115188075855872
  call void @llvm.assume(i1 %i.be)
  %i.bf = load i64, ptr %i.q, align 8, !range !23, !alias.scope !7434, !noalias !7426, !noundef !22
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i.i.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i.i.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.bd, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 64)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.h, !noalias !7435

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !7434, !noalias !7426
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i_crit_edge.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i
  %i.bh = phi ptr [ %.pre.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.bh, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !noalias !7433
  %i.bj = add nuw nsw i64 %i.bd, 1                ; 2 uses
  store i64 %i.bj, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !7434, !noalias !7426
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he1b8d10082029dddE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.o)
          to label %.noexc6.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !7426

.noexc6.i.i.i.i.i.i:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i.i.i.i.i.i.i"
  %i.bk = load i64, ptr %i.ba, align 8, !range !42, !noalias !7433, !noundef !22
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bk, 3
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha05532a68b341919E.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e41859c8c0e027eE.exit.i.i.i.i.i.i.i.i"
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..InRemote$RP$$GT$17h909f9ba9dabf63d5E"(ptr noalias noundef align 8 dereferenceable(64) %i.n) #55
          to label %.body.i.i.i.i.i.i unwind label %bb.i, !noalias !7433

bb.i:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !7433
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbd2ccf4f3b42d0acE.exit.i.i.i.i.i.i.i.i", %bb.g
  %lpad.loopexit.split-lp1021 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bl, %bb.h ], [ %lpad.loopexit.split-lp1021, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
end_hunk_0
begin_hunk_1_@_ZN17meilisearch_types5tasks7network21NetworkTopologyChange3new17h3ac08b2b94f3148eE:bb.a
  br i1 %i.qu, label %.loopexit.us.i.i.i.i.us, label %.new1055

.new1055:                                         ; preds = %.prol.loopexit1054, %.new1055
  %.pn30.in.i.i.i.i.i.us.i.i.i.i.us = phi ptr [ %i.rd, %.new1055 ], [ %.pn30.in.i.i.i.i.i.us.i.i.i.i.us.unr, %.prol.loopexit1054 ]
  %.pn28.in.i.i.i.i.i.us.i.i.i.i.us = phi i64 [ %.pn28.i.i.i.i.i.us.i.i.i.i.us.7, %.new1055 ], [ %.pn28.in.i.i.i.i.i.us.i.i.i.i.us.unr, %.prol.loopexit1054 ]
  %.pn30.i.i.i.i.i.us.i.i.i.i.us = load ptr, ptr %.pn30.in.i.i.i.i.i.us.i.i.i.i.us, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.qv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.us, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.us.1 = load ptr, ptr %i.qv, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.qw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.us.1, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.us.2 = load ptr, ptr %i.qw, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.qx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.us.2, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.us.3 = load ptr, ptr %i.qx, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.qy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.us.3, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.us.4 = load ptr, ptr %i.qy, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.qz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.us.4, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.us.5 = load ptr, ptr %i.qz, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.ra = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.us.5, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.us.6 = load ptr, ptr %i.ra, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.rb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.us.6, i64 1160
  %.pn28.i.i.i.i.i.us.i.i.i.i.us.7 = add i64 %.pn28.in.i.i.i.i.i.us.i.i.i.i.us, -8 ; 2 uses
  %.pn30.i.i.i.i.i.us.i.i.i.i.us.7 = load ptr, ptr %i.rb, align 8, !noalias !7523, !nonnull !22, !noundef !22 ; 2 uses
  %i.rc = icmp eq i64 %.pn28.i.i.i.i.i.us.i.i.i.i.us.7, 0
  %i.rd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.us.7, i64 1160
  br i1 %i.rc, label %.loopexit.us.i.i.i.i.us, label %.new1055

.loopexit.us.i.i.i.i.us:                          ; preds = %.prol.loopexit1054, %.new1055, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.us", %bb.bv
  %.sroa.0.0.ph.i.i.i.i.us.i.i.i.i.us577 = phi ptr [ %i.qg, %bb.bv ], [ %.sroa.05.0.copyload.i.i.i.us.i.i.i.i.us, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.us" ], [ %i.qg, %.new1055 ], [ %i.qg, %.prol.loopexit1054 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i.us576 = phi i64 [ %i.qn, %bb.bv ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.us" ], [ %i.qn, %.new1055 ], [ %i.qn, %.prol.loopexit1054 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.us.i.i.i.i.us = phi i64 [ %i.qp, %bb.bv ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.us" ], [ 0, %.new1055 ], [ 0, %.prol.loopexit1054 ]
  %.sroa.07.0.i.i.i.i.us.i.i.i.i.us = phi ptr [ %i.qg, %bb.bv ], [ %.sroa.05.0.copyload.i.i.i.us.i.i.i.i.us, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.us" ], [ %.pn30.i.i.i.i.i.us.i.i.i.i.us.lcssa.unr, %.prol.loopexit1054 ], [ %.pn30.i.i.i.i.i.us.i.i.i.i.us.7, %.new1055 ]
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.us.i.i.i.i.us577, i64 888
  %i.rf = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i.us576, 11
  call void @llvm.assume(i1 %i.rf), !noalias !7522
  %i.rg = getelementptr inbounds nuw [24 x i8], ptr %i.re, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i.us576
  call void @llvm.experimental.noalias.scope.decl(metadata !7524)
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.us.i.i.i.i": ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.us.i.i.i.i"
  %i.rh = icmp eq i64 %i.ri, 0
  br i1 %i.rh, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.thread.i", label %bb.bx

bb.bx:                                            ; preds = %.lr.ph, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.us.i.i.i.i"
  %.sroa.5.0.us.i.i.i.i861 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i.i.us.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.us.i.i.i.i" ] ; 2 uses
  %.sroa.8.0.us.i.i.i.i860 = phi i64 [ %i.pn, %.lr.ph ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.us.i.i.i.i" ] ; 2 uses
  %.sroa.12.0.us.i.i.i.i859 = phi i64 [ %i.pj, %.lr.ph ], [ %.sroa.7.0.i.i.i.i.us.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.us.i.i.i.i" ] ; 6 uses
  %.sroa.161.0.us.i.i.i.i858 = phi i64 [ %i.pl, %.lr.ph ], [ %i.ri, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.us.i.i.i.i" ]
  %i.ri = add i64 %.sroa.161.0.us.i.i.i.i858, -1  ; 4 uses
  %.not.i.i.i1.us.i.i.i.i = icmp eq ptr %.sroa.5.0.us.i.i.i.i861, null
  br i1 %.not.i.i.i1.us.i.i.i.i, label %bb.by, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i"

bb.by:                                            ; preds = %bb.bx
  %i.rj = inttoptr i64 %.sroa.8.0.us.i.i.i.i860 to ptr ; 3 uses
  %i.rk = icmp eq i64 %.sroa.12.0.us.i.i.i.i859, 0
  br i1 %i.rk, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i", label %.lr.ph.i.i.i.us.i.i.i.i.preheader

.lr.ph.i.i.i.us.i.i.i.i.preheader:                ; preds = %bb.by
  %xtraiter1041 = and i64 %.sroa.12.0.us.i.i.i.i859, 7 ; 2 uses
  %lcmp.mod1042.not = icmp eq i64 %xtraiter1041, 0
  br i1 %lcmp.mod1042.not, label %.lr.ph.i.i.i.us.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.us.i.i.i.i.prol

.lr.ph.i.i.i.us.i.i.i.i.prol:                     ; preds = %.lr.ph.i.i.i.us.i.i.i.i.preheader, %.lr.ph.i.i.i.us.i.i.i.i.prol
  %.sroa.012.015.i.i.i.us.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.us.i.i.i.i.prol, %.lr.ph.i.i.i.us.i.i.i.i.prol ], [ %i.rj, %.lr.ph.i.i.i.us.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.us.i.i.i.i.prol = phi i64 [ %i.rm, %.lr.ph.i.i.i.us.i.i.i.i.prol ], [ %.sroa.12.0.us.i.i.i.i859, %.lr.ph.i.i.i.us.i.i.i.i.preheader ]
  %prol.iter1043 = phi i64 [ %prol.iter1043.next, %.lr.ph.i.i.i.us.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.us.i.i.i.i.preheader ]
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.us.i.i.i.i.prol, i64 1160
  %i.rm = add i64 %.sroa.011.014.i.i.i.us.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.us.i.i.i.i.prol = load ptr, ptr %i.rl, align 8, !noalias !7519, !nonnull !22, !noundef !22 ; 3 uses
  %prol.iter1043.next = add i64 %prol.iter1043, 1 ; 2 uses
  %prol.iter1043.cmp.not = icmp eq i64 %prol.iter1043.next, %xtraiter1041
  br i1 %prol.iter1043.cmp.not, label %.lr.ph.i.i.i.us.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.us.i.i.i.i.prol, !llvm.loop !7250

.lr.ph.i.i.i.us.i.i.i.i.prol.loopexit:            ; preds = %.lr.ph.i.i.i.us.i.i.i.i.prol, %.lr.ph.i.i.i.us.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.us.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.us.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.us.i.i.i.i.prol, %.lr.ph.i.i.i.us.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.us.i.i.i.i.unr = phi ptr [ %i.rj, %.lr.ph.i.i.i.us.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.us.i.i.i.i.prol, %.lr.ph.i.i.i.us.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.us.i.i.i.i.unr = phi i64 [ %.sroa.12.0.us.i.i.i.i859, %.lr.ph.i.i.i.us.i.i.i.i.preheader ], [ %i.rm, %.lr.ph.i.i.i.us.i.i.i.i.prol ]
  %i.rn = icmp ult i64 %.sroa.12.0.us.i.i.i.i859, 8
  br i1 %i.rn, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i", label %.lr.ph.i.i.i.us.i.i.i.i

.lr.ph.i.i.i.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.us.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.us.i.i.i.i
  %.sroa.012.015.i.i.i.us.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.us.i.i.i.i.7, %.lr.ph.i.i.i.us.i.i.i.i ], [ %.sroa.012.015.i.i.i.us.i.i.i.i.unr, %.lr.ph.i.i.i.us.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.us.i.i.i.i = phi i64 [ %i.rw, %.lr.ph.i.i.i.us.i.i.i.i ], [ %.sroa.011.014.i.i.i.us.i.i.i.i.unr, %.lr.ph.i.i.i.us.i.i.i.i.prol.loopexit ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.us.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.us.i.i.i.i = load ptr, ptr %i.ro, align 8, !noalias !7519, !nonnull !22, !noundef !22
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.us.i.i.i.i, i64 1160
  %.sroa.012.0.i.i.i.us.i.i.i.i.1 = load ptr, ptr %i.rp, align 8, !noalias !7519, !nonnull !22, !noundef !22
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.us.i.i.i.i.1, i64 1160
  %.sroa.012.0.i.i.i.us.i.i.i.i.2 = load ptr, ptr %i.rq, align 8, !noalias !7519, !nonnull !22, !noundef !22
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.us.i.i.i.i.2, i64 1160
  %.sroa.012.0.i.i.i.us.i.i.i.i.3 = load ptr, ptr %i.rr, align 8, !noalias !7519, !nonnull !22, !noundef !22
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.us.i.i.i.i.3, i64 1160
  %.sroa.012.0.i.i.i.us.i.i.i.i.4 = load ptr, ptr %i.rs, align 8, !noalias !7519, !nonnull !22, !noundef !22
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.us.i.i.i.i.4, i64 1160
  %.sroa.012.0.i.i.i.us.i.i.i.i.5 = load ptr, ptr %i.rt, align 8, !noalias !7519, !nonnull !22, !noundef !22
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.us.i.i.i.i.5, i64 1160
  %.sroa.012.0.i.i.i.us.i.i.i.i.6 = load ptr, ptr %i.ru, align 8, !noalias !7519, !nonnull !22, !noundef !22
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.us.i.i.i.i.6, i64 1160
  %i.rw = add i64 %.sroa.011.014.i.i.i.us.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.us.i.i.i.i.7 = load ptr, ptr %i.rv, align 8, !noalias !7519, !nonnull !22, !noundef !22 ; 2 uses
  %i.rx = icmp eq i64 %i.rw, 0
  br i1 %i.rx, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i", label %.lr.ph.i.i.i.us.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i": ; preds = %.lr.ph.i.i.i.us.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.us.i.i.i.i, %bb.by, %bb.bx
  %.sroa.37.0.copyload.i.i.i.us.i.i.i.i = phi i64 [ 0, %bb.by ], [ %.sroa.12.0.us.i.i.i.i859, %bb.bx ], [ 0, %.lr.ph.i.i.i.us.i.i.i.i ], [ 0, %.lr.ph.i.i.i.us.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.us.i.i.i.i = phi i64 [ 0, %bb.by ], [ %.sroa.8.0.us.i.i.i.i860, %bb.bx ], [ 0, %.lr.ph.i.i.i.us.i.i.i.i ], [ 0, %.lr.ph.i.i.i.us.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.us.i.i.i.i = phi ptr [ %i.rj, %bb.by ], [ %.sroa.5.0.us.i.i.i.i861, %bb.bx ], [ %.sroa.012.0.i.i.i.us.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.us.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.us.i.i.i.i.7, %.lr.ph.i.i.i.us.i.i.i.i ] ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.us.i.i.i.i, i64 1154
  %i.rz = load i16, ptr %i.ry, align 2, !noalias !7520, !noundef !22
  %i.sa = zext i16 %i.rz to i64
  %i.sb = icmp ult i64 %.sroa.37.0.copyload.i.i.i.us.i.i.i.i, %i.sa
  br i1 %i.sb, label %bb.ca, label %.lr.ph.i.i.i.i.i.us.i.i.i.i

.lr.ph.i.i.i.i.i.us.i.i.i.i:                      ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i", %bb.bz
  %.sroa.0.038.i.i.i.i.i.us.i.i.i.i = phi ptr [ %i.sd, %bb.bz ], [ %.sroa.05.0.copyload.i.i.i.us.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.us.i.i.i.i = phi i64 [ %i.se, %bb.bz ], [ %.sroa.26.0.copyload.i.i.i.us.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i" ]
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.us.i.i.i.i, i64 880
  %i.sd = load ptr, ptr %i.sc, align 8, !noalias !7521, !noundef !22 ; 4 uses
  %.not.i.i.i.i.i.i.us.i.i.i.i = icmp eq ptr %i.sd, null
  br i1 %.not.i.i.i.i.i.i.us.i.i.i.i, label %.split27.us.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i
  %i.se = add i64 %.sroa.5.037.i.i.i.i.i.us.i.i.i.i, 1 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.us.i.i.i.i, i64 1152
  %i.sg = load i16, ptr %i.sf, align 8, !noalias !7521 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sd, i64 1154
  %i.si = load i16, ptr %i.sh, align 2, !noalias !7520, !noundef !22
  %i.sj = icmp ult i16 %i.sg, %i.si
  br i1 %i.sj, label %._crit_edge.loopexit.i.i.i.i.i.us.i.i.i.i, label %.lr.ph.i.i.i.i.i.us.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i.us.i.i.i.i:        ; preds = %bb.bz
  %i.sk = zext i16 %i.sg to i64
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.us.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.us.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i" ], [ %i.sk, %._crit_edge.loopexit.i.i.i.i.i.us.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.us.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.us.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i" ], [ %i.se, %._crit_edge.loopexit.i.i.i.i.i.us.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.us.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.us.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i" ], [ %i.sd, %._crit_edge.loopexit.i.i.i.i.i.us.i.i.i.i ] ; 3 uses
  %i.sl = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.us.i.i.i.i, 0
  %i.sm = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i, 1 ; 2 uses
  br i1 %i.sl, label %.loopexit.us.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.us.i.i.i.i, i64 1160
  %i.so = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i, 11
  call void @llvm.assume(i1 %i.so), !noalias !7522
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.sm ; 2 uses
  %xtraiter1047 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.us.i.i.i.i, 7 ; 2 uses
  %lcmp.mod1048.not = icmp eq i64 %xtraiter1047, 0
  br i1 %lcmp.mod1048.not, label %.prol.loopexit1045, label %.prol.preheader1044

.prol.preheader1044:                              ; preds = %bb.cb, %.prol.preheader1044
  %.pn30.in.i.i.i.i.i.us.i.i.i.i.prol = phi ptr [ %i.sq, %.prol.preheader1044 ], [ %i.sp, %bb.cb ]
  %.pn28.in.i.i.i.i.i.us.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.us.i.i.i.i.prol, %.prol.preheader1044 ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.us.i.i.i.i, %bb.cb ]
  %prol.iter1049 = phi i64 [ %prol.iter1049.next, %.prol.preheader1044 ], [ 0, %bb.cb ]
  %.pn28.i.i.i.i.i.us.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.us.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.us.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.us.i.i.i.i.prol, align 8, !noalias !7523, !nonnull !22, !noundef !22 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter1049.next = add i64 %prol.iter1049, 1 ; 2 uses
  %prol.iter1049.cmp.not = icmp eq i64 %prol.iter1049.next, %xtraiter1047
  br i1 %prol.iter1049.cmp.not, label %.prol.loopexit1045, label %.prol.preheader1044, !llvm.loop !7251

.prol.loopexit1045:                               ; preds = %.prol.preheader1044, %bb.cb
  %.pn30.i.i.i.i.i.us.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cb ], [ %.pn30.i.i.i.i.i.us.i.i.i.i.prol, %.prol.preheader1044 ]
  %.pn30.in.i.i.i.i.i.us.i.i.i.i.unr = phi ptr [ %i.sp, %bb.cb ], [ %i.sq, %.prol.preheader1044 ]
  %.pn28.in.i.i.i.i.i.us.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.us.i.i.i.i, %bb.cb ], [ %.pn28.i.i.i.i.i.us.i.i.i.i.prol, %.prol.preheader1044 ]
  %i.sr = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.us.i.i.i.i, 8
  br i1 %i.sr, label %.loopexit.us.i.i.i.i, label %.new1046

.new1046:                                         ; preds = %.prol.loopexit1045, %.new1046
  %.pn30.in.i.i.i.i.i.us.i.i.i.i = phi ptr [ %i.ta, %.new1046 ], [ %.pn30.in.i.i.i.i.i.us.i.i.i.i.unr, %.prol.loopexit1045 ]
  %.pn28.in.i.i.i.i.i.us.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.us.i.i.i.i.7, %.new1046 ], [ %.pn28.in.i.i.i.i.i.us.i.i.i.i.unr, %.prol.loopexit1045 ]
  %.pn30.i.i.i.i.i.us.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.us.i.i.i.i, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.ss = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.1 = load ptr, ptr %i.ss, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.st = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.2 = load ptr, ptr %i.st, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.su = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.3 = load ptr, ptr %i.su, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.sv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.4 = load ptr, ptr %i.sv, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.sw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.5 = load ptr, ptr %i.sw, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.sx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.6 = load ptr, ptr %i.sx, align 8, !noalias !7523, !nonnull !22, !noundef !22
  %i.sy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.us.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.us.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.us.i.i.i.i.7 = load ptr, ptr %i.sy, align 8, !noalias !7523, !nonnull !22, !noundef !22 ; 2 uses
  %i.sz = icmp eq i64 %.pn28.i.i.i.i.i.us.i.i.i.i.7, 0
  %i.ta = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.7, i64 1160
  br i1 %i.sz, label %.loopexit.us.i.i.i.i, label %.new1046

.loopexit.us.i.i.i.i:                             ; preds = %.prol.loopexit1045, %.new1046, %bb.ca
  %.sroa.7.0.i.i.i.i.us.i.i.i.i = phi i64 [ %i.sm, %bb.ca ], [ 0, %.new1046 ], [ 0, %.prol.loopexit1045 ] ; 3 uses
  %.sroa.07.0.i.i.i.i.us.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.us.i.i.i.i, %bb.ca ], [ %.pn30.i.i.i.i.i.us.i.i.i.i.lcssa.unr, %.prol.loopexit1045 ], [ %.pn30.i.i.i.i.i.us.i.i.i.i.7, %.new1046 ] ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.us.i.i.i.i, i64 888
  %i.tc = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i, 11
  call void @llvm.assume(i1 %i.tc), !noalias !7522
  %i.td = getelementptr inbounds nuw [24 x i8], ptr %i.tb, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7524)
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tf = load i64, ptr %i.te, align 8, !alias.scope !7524, !noalias !7525, !noundef !22
  %.not3.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i = icmp eq i64 %i.tf, %i.z
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.us.i.i.i.i", label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.us.i.i.i.i": ; preds = %.loopexit.us.i.i.i.i
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !alias.scope !7524, !noalias !7525, !nonnull !22, !noundef !22
  %bcmp.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i = call i32 @bcmp(ptr nonnull %i.th, ptr nonnull %i.x, i64 %i.z), !noalias !7526
  %bcmp.i.i.fr.i.i.i.i.i.i.i.i.us.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.us.i.i.i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i.i.i.i.us.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.us.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.us.i.i.i.i", label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7529
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.thread.i"

.split27.us.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.us
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i180 unwind label %bb.cc, !noalias !7530

.noexc.i.i.i.i.i.i.i180:                          ; preds = %.split27.us.i.i.i.i
  unreachable

bb.cc:                                            ; preds = %.split27.us.i.i.i.i
  %i.ti = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !7522
  unreachable

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i": ; preds = %.loopexit.us.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.us.i.i.i.i", %.loopexit.us.i.i.i.i.us
  %.us-phi = phi i64 [ %.sroa.7.0.i.i.i.i.us.i.i.i.i.us, %.loopexit.us.i.i.i.i.us ], [ %.sroa.7.0.i.i.i.i.us.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.us.i.i.i.i" ], [ %.sroa.7.0.i.i.i.i.us.i.i.i.i, %.loopexit.us.i.i.i.i ]
  %.us-phi362 = phi ptr [ %.sroa.07.0.i.i.i.i.us.i.i.i.i.us, %.loopexit.us.i.i.i.i.us ], [ %.sroa.07.0.i.i.i.i.us.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.us.i.i.i.i" ], [ %.sroa.07.0.i.i.i.i.us.i.i.i.i, %.loopexit.us.i.i.i.i ]
  %.us-phi363 = phi ptr [ %i.rg, %.loopexit.us.i.i.i.i.us ], [ %i.td, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.us.i.i.i.i" ], [ %i.td, %.loopexit.us.i.i.i.i ]
  %.us-phi364 = phi i64 [ %i.po, %.loopexit.us.i.i.i.i.us ], [ %i.ri, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.i.i.us.i.i.i.i" ], [ %i.ri, %.loopexit.us.i.i.i.i ]
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.us-phi363, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
          to label %.noexc182 unwind label %bb.dy

.noexc182:                                        ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.i.i.i.i.i.i"
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !7518 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.thread.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i129"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.thread.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.us.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.us.i.i.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.us.i.i.i.i.us", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.i.i.i.i.i.i", %.noexc182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7517
  br label %.loopexit

bb.cd:                                            ; preds = %bb.cf
  %i.tj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tk = icmp eq i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.tk, label %.body183, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7531
  br label %.body183

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i129": ; preds = %.noexc182
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !7532 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !7532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7518
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !7533
  %i.tl = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 9) 8) #52, !noalias !7533 ; 7 uses
  %i.tm = icmp eq ptr %i.tl, null
  br i1 %i.tm, label %bb.cf, label %.split.us.lr.ph.i.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i129"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i.i.i179 unwind label %bb.cd, !noalias !7517

.noexc.i.i.i.i.i.i179:                            ; preds = %bb.cf
  unreachable

.split.us.lr.ph.i.i.i.i.i.i.i.i:                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i129"
  store i64 %.pr.i.i.i.i.i.i.i, ptr %i.tl, align 8, !noalias !7517
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7517
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7517
  %.sroa.6.0..sroa_idx13.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  store i8 2, ptr %.sroa.6.0..sroa_idx13.i.i.i.i.i.i, align 8, !noalias !7517
  store i64 4, ptr %i.f, align 8, !noalias !7517
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i130 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.tl, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i130, align 8, !noalias !7517
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i131 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i131, align 8, !noalias !7517
  call void @llvm.experimental.noalias.scope.decl(metadata !7534)
  call void @llvm.experimental.noalias.scope.decl(metadata !7535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7536
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.split.us.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i", %.split.us.lr.ph.i.i.i.i.i.i.i.i
  %i.tn = phi ptr [ %i.tl, %.split.us.lr.ph.i.i.i.i.i.i.i.i ], [ %i.wr, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i" ]
  %i.to = phi i64 [ 1, %.split.us.lr.ph.i.i.i.i.i.i.i.i ], [ %i.wt, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i" ] ; 5 uses
  %i.tp = phi i64 [ %.us-phi364, %.split.us.lr.ph.i.i.i.i.i.i.i.i ], [ %.us-phi368, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.07.0.i.i.i.i.us3945.i.i.i.i.i.i.i.i = phi ptr [ %.us-phi362, %.split.us.lr.ph.i.i.i.i.i.i.i.i ], [ %.us-phi366, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i" ] ; 5 uses
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted4144.i.i.i.i.i.i.i.i = phi i64 [ %.us-phi, %.split.us.lr.ph.i.i.i.i.i.i.i.i ], [ %.us-phi365, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i" ] ; 4 uses
  %i.tq = icmp eq i64 %i.tp, 0                    ; 2 uses
  br i1 %.not.not, label %.split.us.i.i.i.i.i.i.i.i.split.us, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader": ; preds = %.split.us.i.i.i.i.i.i.i.i
  br i1 %i.tq, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i"

.split.us.i.i.i.i.i.i.i.i.split.us:               ; preds = %.split.us.i.i.i.i.i.i.i.i
  br i1 %i.tq, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i.us"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i.us": ; preds = %.split.us.i.i.i.i.i.i.i.i.split.us
  %i.tr = add i64 %i.tp, -1
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.us3945.i.i.i.i.i.i.i.i, i64 1154
  %i.tt = load i16, ptr %i.ts, align 2, !noalias !7537, !noundef !22
  %i.tu = zext i16 %i.tt to i64
  %i.tv = icmp ult i64 %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted4144.i.i.i.i.i.i.i.i, %i.tu
  br i1 %i.tv, label %.thread.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us:           ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i.us", %bb.cg
  %.sroa.0.038.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us = phi ptr [ %i.tx, %bb.cg ], [ %.sroa.07.0.i.i.i.i.us3945.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i.us" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us = phi i64 [ %i.ty, %bb.cg ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i.us" ] ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us, i64 880
  %i.tx = load ptr, ptr %i.tw, align 8, !noalias !7538, !noundef !22 ; 8 uses
  %.not.i.i.i.i.i.i6.us.i.i.i.i.i.i.i.i.us = icmp eq ptr %i.tx, null
  br i1 %.not.i.i.i.i.i.i6.us.i.i.i.i.i.i.i.i.us, label %.split29.us.i.i.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us
  %i.ty = add i64 %.sroa.5.037.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us, 1 ; 5 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us, i64 1152
  %i.ua = load i16, ptr %i.tz, align 8, !noalias !7538 ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 1154
  %i.uc = load i16, ptr %i.ub, align 2, !noalias !7537, !noundef !22
  %i.ud = icmp ult i16 %i.ua, %i.uc
  br i1 %i.ud, label %bb.ch, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us

bb.ch:                                            ; preds = %bb.cg
  %i.ue = zext i16 %i.ua to i64                   ; 4 uses
  %i.uf = icmp eq i64 %i.ty, 0
  %i.ug = add nuw nsw i64 %i.ue, 1                ; 2 uses
  br i1 %i.uf, label %.loopexit.us.i.i.i.i.i.i.i.i.us, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tx, i64 1160
  %i.ui = icmp ult i16 %i.ua, 11
  call void @llvm.assume(i1 %i.ui), !noalias !7539
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.ug ; 2 uses
  %xtraiter1071 = and i64 %i.ty, 7                ; 2 uses
  %lcmp.mod1072.not = icmp eq i64 %xtraiter1071, 0
  br i1 %lcmp.mod1072.not, label %.prol.loopexit1068, label %.prol.preheader1067

.prol.preheader1067:                              ; preds = %bb.ci, %.prol.preheader1067
  %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.prol = phi ptr [ %i.uk, %.prol.preheader1067 ], [ %i.uj, %bb.ci ]
  %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.prol, %.prol.preheader1067 ], [ %i.ty, %bb.ci ]
  %prol.iter1073 = phi i64 [ %prol.iter1073.next, %.prol.preheader1067 ], [ 0, %bb.ci ]
  %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.prol = add i64 %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.prol, align 8, !noalias !7540, !nonnull !22, !noundef !22 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.prol, i64 1160 ; 2 uses
  %prol.iter1073.next = add i64 %prol.iter1073, 1 ; 2 uses
  %prol.iter1073.cmp.not = icmp eq i64 %prol.iter1073.next, %xtraiter1071
  br i1 %prol.iter1073.cmp.not, label %.prol.loopexit1068, label %.prol.preheader1067, !llvm.loop !7300

.prol.loopexit1068:                               ; preds = %.prol.preheader1067, %bb.ci
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.lcssa.unr = phi ptr [ poison, %bb.ci ], [ %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.prol, %.prol.preheader1067 ]
  %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.unr = phi ptr [ %i.uj, %bb.ci ], [ %i.uk, %.prol.preheader1067 ]
  %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %i.ty, %bb.ci ], [ %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.prol, %.prol.preheader1067 ]
  %i.ul = icmp ult i64 %.sroa.5.037.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us, 7
  br i1 %i.ul, label %.loopexit.us.i.i.i.i.i.i.i.i.us, label %.new1069

.new1069:                                         ; preds = %.prol.loopexit1068, %.new1069
  %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us = phi ptr [ %i.uu, %.new1069 ], [ %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.unr, %.prol.loopexit1068 ]
  %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us = phi i64 [ %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.7, %.new1069 ], [ %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.unr, %.prol.loopexit1068 ]
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us = load ptr, ptr %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.um = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.1 = load ptr, ptr %i.um, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.un = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.1, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.2 = load ptr, ptr %i.un, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.uo = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.2, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.3 = load ptr, ptr %i.uo, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.up = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.3, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.4 = load ptr, ptr %i.up, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.uq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.4, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.5 = load ptr, ptr %i.uq, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.ur = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.5, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.6 = load ptr, ptr %i.ur, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.us = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.6, i64 1160
  %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.7 = add i64 %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us, -8 ; 2 uses
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.7 = load ptr, ptr %i.us, align 8, !noalias !7540, !nonnull !22, !noundef !22 ; 2 uses
  %i.ut = icmp eq i64 %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.7, 0
  %i.uu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.7, i64 1160
  br i1 %i.ut, label %.loopexit.us.i.i.i.i.i.i.i.i.us, label %.new1069

.thread.i.i.i.i.us:                               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i.us"
  %i.uv = add nuw nsw i64 %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted4144.i.i.i.i.i.i.i.i, 1
  br label %.loopexit.us.i.i.i.i.i.i.i.i.us

.loopexit.us.i.i.i.i.i.i.i.i.us:                  ; preds = %.prol.loopexit1068, %.new1069, %.thread.i.i.i.i.us, %bb.ch
  %.sroa.0.0.ph.i.i.i.i.us.i.i.i.i12.i.i.i.i.us = phi ptr [ %i.tx, %bb.ch ], [ %.sroa.07.0.i.i.i.i.us3945.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.us ], [ %i.tx, %.new1069 ], [ %i.tx, %.prol.loopexit1068 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i11.i.i.i.i.us = phi i64 [ %i.ue, %bb.ch ], [ %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted4144.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.us ], [ %i.ue, %.new1069 ], [ %i.ue, %.prol.loopexit1068 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.us.i.i.i.i.i.i.i.i.us = phi i64 [ %i.ug, %bb.ch ], [ %i.uv, %.thread.i.i.i.i.us ], [ 0, %.new1069 ], [ 0, %.prol.loopexit1068 ]
  %.sroa.07.0.i.i.i.i.us.i.i.i.i.i.i.i.i.us = phi ptr [ %i.tx, %bb.ch ], [ %.sroa.07.0.i.i.i.i.us3945.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.us ], [ %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.lcssa.unr, %.prol.loopexit1068 ], [ %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us.7, %.new1069 ]
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.us.i.i.i.i12.i.i.i.i.us, i64 888
  %i.ux = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i11.i.i.i.i.us, 11
  call void @llvm.assume(i1 %i.ux), !noalias !7539
  %i.uy = getelementptr inbounds nuw [24 x i8], ptr %i.uw, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i11.i.i.i.i.us
  call void @llvm.experimental.noalias.scope.decl(metadata !7541)
  br label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.split.us.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i"
  %i.uz = icmp eq i64 %i.vb, 0
  br i1 %i.uz, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i"
  %i.va = phi i64 [ %i.vb, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i" ], [ %i.tp, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader" ]
  %.sroa.07.0.i.i.i.i26.us.i.i.i.i.i.i.i.i863 = phi ptr [ %.sroa.07.0.i.i.i.i.us.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i" ], [ %.sroa.07.0.i.i.i.i.us3945.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader" ] ; 4 uses
  %.sroa.37.0.copyload.i.pre.i.i27.us.i.i.i.i.i.i.i.i862 = phi i64 [ %.sroa.7.0.i.i.i.i.us.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i" ], [ %.sroa.37.0..sroa_idx.i.phi.trans.insert.i.i.promoted4144.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader" ] ; 3 uses
  %i.vb = add i64 %i.va, -1                       ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i26.us.i.i.i.i.i.i.i.i863, i64 1154
  %i.vd = load i16, ptr %i.vc, align 2, !noalias !7537, !noundef !22
  %i.ve = zext i16 %i.vd to i64
  %i.vf = icmp ult i64 %.sroa.37.0.copyload.i.pre.i.i27.us.i.i.i.i.i.i.i.i862, %i.ve
  br i1 %i.vf, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i"
  %i.vg = add nuw nsw i64 %.sroa.37.0.copyload.i.pre.i.i27.us.i.i.i.i.i.i.i.i862, 1
  br label %.loopexit.us.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i:              ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i", %bb.cj
  %.sroa.0.038.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi ptr [ %i.vi, %bb.cj ], [ %.sroa.07.0.i.i.i.i26.us.i.i.i.i.i.i.i.i863, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.vj, %bb.cj ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h721ad2c1c9843003E.exit.i.i.us.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.us.i.i.i.i.i.i.i.i, i64 880
  %i.vi = load ptr, ptr %i.vh, align 8, !noalias !7538, !noundef !22 ; 8 uses
  %.not.i.i.i.i.i.i6.us.i.i.i.i.i.i.i.i = icmp eq ptr %i.vi, null
  br i1 %.not.i.i.i.i.i.i6.us.i.i.i.i.i.i.i.i, label %.split29.us.i.i.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.vj = add i64 %.sroa.5.037.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.us.i.i.i.i.i.i.i.i, i64 1152
  %i.vl = load i16, ptr %i.vk, align 8, !noalias !7538 ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 1154
  %i.vn = load i16, ptr %i.vm, align 2, !noalias !7537, !noundef !22
  %i.vo = icmp ult i16 %i.vl, %i.vn
  br i1 %i.vo, label %bb.ck, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.vp = zext i16 %i.vl to i64                   ; 4 uses
  %i.vq = icmp eq i64 %i.vj, 0
  %i.vr = add nuw nsw i64 %i.vp, 1                ; 2 uses
  br i1 %i.vq, label %.loopexit.us.i.i.i.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vi, i64 1160
  %i.vt = icmp ult i16 %i.vl, 11
  call void @llvm.assume(i1 %i.vt), !noalias !7539
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %i.vr ; 2 uses
  %xtraiter1064 = and i64 %i.vj, 7                ; 2 uses
  %lcmp.mod1065.not = icmp eq i64 %xtraiter1064, 0
  br i1 %lcmp.mod1065.not, label %.prol.loopexit1061, label %.prol.preheader1060

.prol.preheader1060:                              ; preds = %bb.cl, %.prol.preheader1060
  %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.vv, %.prol.preheader1060 ], [ %i.vu, %bb.cl ]
  %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %.prol.preheader1060 ], [ %i.vj, %bb.cl ]
  %prol.iter1066 = phi i64 [ %prol.iter1066.next, %.prol.preheader1060 ], [ 0, %bb.cl ]
  %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, align 8, !noalias !7540, !nonnull !22, !noundef !22 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, i64 1160 ; 2 uses
  %prol.iter1066.next = add i64 %prol.iter1066, 1 ; 2 uses
  %prol.iter1066.cmp.not = icmp eq i64 %prol.iter1066.next, %xtraiter1064
  br i1 %prol.iter1066.cmp.not, label %.prol.loopexit1061, label %.prol.preheader1060, !llvm.loop !7303

.prol.loopexit1061:                               ; preds = %.prol.preheader1060, %bb.cl
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.cl ], [ %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %.prol.preheader1060 ]
  %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.vu, %bb.cl ], [ %i.vv, %.prol.preheader1060 ]
  %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.vj, %bb.cl ], [ %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %.prol.preheader1060 ]
  %i.vw = icmp ult i64 %.sroa.5.037.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 7
  br i1 %i.vw, label %.loopexit.us.i.i.i.i.i.i.i.i, label %.new1062

.new1062:                                         ; preds = %.prol.loopexit1061, %.new1062
  %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi ptr [ %i.wf, %.new1062 ], [ %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1061 ]
  %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.7, %.new1062 ], [ %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1061 ]
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.vx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.vx, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.vy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.1, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.vy, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.vz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.2, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.vz, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.wa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.wa, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.wb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.4, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.wb, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.wc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.5, i64 1160
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.wc, align 8, !noalias !7540, !nonnull !22, !noundef !22
  %i.wd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.6, i64 1160
  %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.us.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.wd, align 8, !noalias !7540, !nonnull !22, !noundef !22 ; 2 uses
  %i.we = icmp eq i64 %.pn28.i.i.i.i.i.us.i.i.i.i.i.i.i.i.7, 0
  %i.wf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.7, i64 1160
  br i1 %i.we, label %.loopexit.us.i.i.i.i.i.i.i.i, label %.new1062

.loopexit.us.i.i.i.i.i.i.i.i:                     ; preds = %.prol.loopexit1061, %.new1062, %bb.ck, %.thread.i.i.i.i
  %.sroa.0.0.ph.i.i.i.i.us.i.i.i.i12.i.i.i.i = phi ptr [ %i.vi, %bb.ck ], [ %.sroa.07.0.i.i.i.i26.us.i.i.i.i.i.i.i.i863, %.thread.i.i.i.i ], [ %i.vi, %.new1062 ], [ %i.vi, %.prol.loopexit1061 ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i11.i.i.i.i = phi i64 [ %i.vp, %bb.ck ], [ %.sroa.37.0.copyload.i.pre.i.i27.us.i.i.i.i.i.i.i.i862, %.thread.i.i.i.i ], [ %i.vp, %.new1062 ], [ %i.vp, %.prol.loopexit1061 ] ; 2 uses
  %.sroa.7.0.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.vr, %bb.ck ], [ %i.vg, %.thread.i.i.i.i ], [ 0, %.new1062 ], [ 0, %.prol.loopexit1061 ] ; 3 uses
  %.sroa.07.0.i.i.i.i.us.i.i.i.i.i.i.i.i = phi ptr [ %i.vi, %bb.ck ], [ %.sroa.07.0.i.i.i.i26.us.i.i.i.i.i.i.i.i863, %.thread.i.i.i.i ], [ %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit1061 ], [ %.pn30.i.i.i.i.i.us.i.i.i.i.i.i.i.i.7, %.new1062 ] ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.us.i.i.i.i12.i.i.i.i, i64 888
  %i.wh = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i11.i.i.i.i, 11
  call void @llvm.assume(i1 %i.wh), !noalias !7539
  %i.wi = getelementptr inbounds nuw [24 x i8], ptr %i.wg, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.us.i.i.i.i11.i.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7541)
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wk = load i64, ptr %i.wj, align 8, !alias.scope !7541, !noalias !7542, !noundef !22
  %.not3.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i = icmp eq i64 %i.wk, %i.z
  br i1 %.not3.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i", label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.split.us.i.i.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i": ; preds = %.loopexit.us.i.i.i.i.i.i.i.i
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wm = load ptr, ptr %i.wl, align 8, !alias.scope !7541, !noalias !7542, !nonnull !22, !noundef !22
  %bcmp.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.wm, ptr nonnull %i.x, i64 %i.z), !noalias !7543
  %bcmp.i.i.fr.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i", label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.split.us.i.i.i.i.i.i.i.i"

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.split.us.i.i.i.i.i.i.i.i": ; preds = %.loopexit.us.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i", %.loopexit.us.i.i.i.i.i.i.i.i.us
  %.us-phi365 = phi i64 [ %.sroa.7.0.i.i.i.i.us.i.i.i.i.i.i.i.i.us, %.loopexit.us.i.i.i.i.i.i.i.i.us ], [ %.sroa.7.0.i.i.i.i.us.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.i.i.i.i.us.i.i.i.i.i.i.i.i, %.loopexit.us.i.i.i.i.i.i.i.i ]
  %.us-phi366 = phi ptr [ %.sroa.07.0.i.i.i.i.us.i.i.i.i.i.i.i.i.us, %.loopexit.us.i.i.i.i.i.i.i.i.us ], [ %.sroa.07.0.i.i.i.i.us.i.i.i.i.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i" ], [ %.sroa.07.0.i.i.i.i.us.i.i.i.i.i.i.i.i, %.loopexit.us.i.i.i.i.i.i.i.i ]
  %.us-phi367 = phi ptr [ %i.uy, %.loopexit.us.i.i.i.i.i.i.i.i.us ], [ %i.wi, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i" ], [ %i.wi, %.loopexit.us.i.i.i.i.i.i.i.i ]
  %.us-phi368 = phi i64 [ %i.tr, %.loopexit.us.i.i.i.i.i.i.i.i.us ], [ %i.vb, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h270c08e4b65db64cE.exit.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i" ], [ %i.vb, %.loopexit.us.i.i.i.i.i.i.i.i ]
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.us-phi367, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !7517

.noexc7.i.i.i.i.i.i:                              ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.split.us.i.i.i.i.i.i.i.i"
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !7544 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i136 = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i136, label %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i, label %bb.cn

.split29.us.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1126) #57
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cm, !noalias !7545

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.split29.us.i.i.i.i.i.i.i.i
  unreachable

bb.cm:                                            ; preds = %.split29.us.i.i.i.i.i.i.i.i
  %i.wn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !7539
  unreachable

bb.cn:                                            ; preds = %.noexc7.i.i.i.i.i.i
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !noalias !7546 ; 3 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7544
  %i.wo = icmp samesign ult i64 %i.to, 288230376151711744
  call void @llvm.assume(i1 %i.wo)
  %i.wp = load i64, ptr %i.f, align 8, !range !23, !alias.scope !7547, !noalias !7517, !noundef !22
  %i.wq = icmp eq i64 %i.to, %i.wp
  br i1 %i.wq, label %bb.cq, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.cn
  %i.wr = phi ptr [ %.pre.i.i.i.i.i.i137, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.tn, %bb.cn ] ; 2 uses
  %i.ws = getelementptr inbounds nuw [32 x i8], ptr %i.wr, i64 %i.to ; 4 uses
  store i64 %.pr.i.i.i.i.i.i.i.i.i, ptr %i.ws, align 8, !noalias !7548
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7548
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7548
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ws, i64 24
  store i8 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7548
  %i.wt = add nuw nsw i64 %i.to, 1                ; 2 uses
  store i64 %i.wt, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i131, align 8, !alias.scope !7547, !noalias !7517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7549
  br label %.split.us.i.i.i.i.i.i.i.i

bb.co:                                            ; preds = %bb.cq
  %i.wu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wv = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.wv, label %.body.i.i.i.i.i.i132, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7550
  br label %.body.i.i.i.i.i.i132

bb.cq:                                            ; preds = %bb.cn
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.to, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 32)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.co, !noalias !7551

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.cq
  %.pre.i.i.i.i.i.i137 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i130, align 8, !alias.scope !7547, !noalias !7517
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8f4c456da70365b4E.exit.i.i.i.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i: ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h471827927bf63457E.exit.i.split.us.i.i.i.i.i.i.i.i"
  %lpad.loopexit.split-lp9.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i132

.body.i.i.i.i.i.i132:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, %bb.cp, %bb.co
  %eh.lpad-body.i.i.i.i.i.i133 = phi { ptr, i32 } [ %i.wu, %bb.co ], [ %i.wu, %bb.cp ], [ %lpad.loopexit.split-lp9.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$$GT$17ha3d2b483673e3479E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #55, !noalias !7517
  br label %.body183

_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i: ; preds = %.noexc7.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.split.us, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf2b4d0abee32cc2cE.exit.i.i.i.i.i.us.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !7552
  %.phi.trans.insert.i.i138 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre.i.i139 = load i64, ptr %.phi.trans.insert.i.i138, align 8, !noalias !7516 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7517
  %i.ww = icmp ult i64 %.pre.i.i139, 288230376151711744
  call void @llvm.assume(i1 %i.ww)
  %i.wx = icmp eq i64 %.pre.i.i139, 0
  br i1 %i.wx, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.i", label %bb.cs

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i
  %.val2.i.i.pr.i = load i64, ptr %i.g, align 8, !alias.scope !7553, !noalias !7516 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7553)
  %i.wy = icmp eq i64 %.val2.i.i.pr.i, 0
  br i1 %i.wy, label %.loopexit, label %bb.cr

bb.cr:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ff924941dd1ab2E.exit.i.i.i"
  %i.wz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i178 = load ptr, ptr %i.wz, align 8, !alias.scope !7553, !noalias !7516, !nonnull !22, !noundef !22
  %i.xa = shl nuw i64 %.val2.i.i.pr.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i178, i64 noundef %i.xa, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7554
  br label %.loopexit

bb.cs:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h5cd67a0702d4a8f5E.exit.i.i
  %i.xb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8, !noalias !7516, !nonnull !22, !noundef !22 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7555
  %i.xd = icmp eq i64 %.pre.i.i139, 1
  br i1 %i.xd, label %bb.cw, label %bb.ct, !prof !50

bb.ct:                                            ; preds = %bb.cs
  %i.xe = icmp samesign ult i64 %.pre.i.i139, 21
  br i1 %i.xe, label %bb.cv, label %bb.cu, !prof !50

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h7a03a7b0a9d61826E(ptr noalias noundef nonnull align 8 %i.xc, i64 noundef range(i64 1, 288230376151711744) %.pre.i.i139, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cw unwind label %bb.dx, !noalias !7516

bb.cv:                                            ; preds = %bb.ct
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9fd2fdaebaaab0ffE(ptr noalias noundef nonnull align 8 %i.xc, i64 noundef range(i64 1, 288230376151711744) %.pre.i.i139)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7555
  %.sroa.02.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !7516 ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !7556
  %i.xf = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !7556 ; 5 uses
  %i.xg = icmp eq ptr %i.xf, null
  br i1 %i.xg, label %bb.cx, label %.loopexit87.i.i.i.i, !prof !24

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #57
          to label %.noexc.i.i.i177 unwind label %bb.dw, !noalias !7556

.noexc.i.i.i177:                                  ; preds = %bb.cx
  unreachable

.loopexit87.i.i.i.i:                              ; preds = %bb.cw
  store ptr null, ptr %i.xf, align 8, !noalias !7556
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 274
  store i16 0, ptr %i.xh, align 2, !noalias !7556
  %i.xi = getelementptr inbounds nuw [32 x i8], ptr %i.xc, i64 %.pre.i.i139 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7557
  %.sroa.4.0..sroa_idx.i2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.494.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.xc, ptr %.sroa.494.0..sroa_idx.i.i.i, align 8, !noalias !7558
  %.sroa.5.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.xc, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !noalias !7558
  %.sroa.6.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.02.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i4.i.i, align 8, !noalias !7558
  %.sroa.7.0..sroa_idx95.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.xi, ptr %.sroa.7.0..sroa_idx95.i.i.i, align 8, !noalias !7558
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i141 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.cy

bb.cy:                                            ; preds = %.loopexit.i.i.i.i161, %.loopexit87.i.i.i.i
  %.promoted75.i.i100.i.i.i = phi ptr [ %i.xc, %.loopexit87.i.i.i.i ], [ %.promoted75.i.i97.i.i.i, %.loopexit.i.i.i.i161 ]
  %.sroa.012.0.i.i.i142 = phi i64 [ 0, %.loopexit87.i.i.i.i ], [ %i.aeu, %.loopexit.i.i.i.i161 ] ; 4 uses
  %.sroa.8.0.i.i.i143 = phi i64 [ 0, %.loopexit87.i.i.i.i ], [ %.sroa.8.2.i.i.i162, %.loopexit.i.i.i.i161 ] ; 7 uses
  %.sroa.0.0.i.i.i144 = phi ptr [ %i.xf, %.loopexit87.i.i.i.i ], [ %.sroa.0.2.i.i.i163, %.loopexit.i.i.i.i161 ] ; 10 uses
  %.promoted.i.i.i.i.i = phi i64 [ -9223372036854775807, %.loopexit87.i.i.i.i ], [ %.promoted.i.pre145.i96.i.i.i, %.loopexit.i.i.i.i161 ]
  %.sroa.0.070.i.i.i.i = phi ptr [ %i.xf, %.loopexit87.i.i.i.i ], [ %.sroa.0.1.i.i.i.i164, %.loopexit.i.i.i.i161 ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7559)
  %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i2.i.i, align 8, !alias.scope !7559, !noalias !7557
  %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !7559, !noalias !7557
  br label %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"

"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i": ; preds = %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge", %bb.cy
  %.promoted75.i.i99.i.i.i = phi ptr [ %.promoted75.i.i100.i.i.i, %bb.cy ], [ %i.xm, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ] ; 7 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i, %bb.cy ], [ %.sroa.835.sroa.6.0.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ]
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i145 = phi ptr [ %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i, %bb.cy ], [ %.val12.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ]
  %.sroa.0.0.copyload5.i74.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i, %bb.cy ], [ %.sroa.0.0.copyload5.i.i.i.i.i.i, %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i.backedge" ] ; 2 uses
  %.sroa.5.sroa.5.0.copyload.i.i.i.i.i146 = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i141, align 8, !alias.scope !7559, !noalias !7557
  store i64 -9223372036854775807, ptr %i.b, align 8, !alias.scope !7559, !noalias !7557
  %.not.i.i.i.i.i147 = icmp eq i64 %.sroa.0.0.copyload5.i74.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i.i147, label %bb.cz, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"

bb.cz:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$GT$17hba6689b54925ff7cE.exit18.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !7560)
  %i.xj = icmp eq ptr %.promoted75.i.i99.i.i.i, %i.xi
  br i1 %i.xj, label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$alloc..string..String$C$meilisearch_types..tasks..network..OutRemote$RP$$u5d$$GT$17h2bdfe137256ef869E.exit.i.i.i.i.i.i.i.i", label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.xk = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 32 ; 2 uses
  store ptr %i.xk, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !alias.scope !7561, !noalias !7557
  %.sroa.033.0.copyload34.i.i.i.i.i = load i64, ptr %.promoted75.i.i99.i.i.i, align 8, !noalias !7562
  %.sroa.835.0..sroa_idx36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 8
  %.sroa.835.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.835.0..sroa_idx36.i.i.i.i.i, align 8, !noalias !7562
  %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 16
  %.sroa.835.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.835.sroa.6.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i, align 8, !noalias !7562
  %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.promoted75.i.i99.i.i.i, i64 24
  %.sroa.835.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.835.sroa.7.0..sroa.835.0..sroa_idx36.sroa_idx.i.i.i.i.i, align 8, !noalias !7562
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h51d2b68ebbb1f1deE.exit.i.i.i.i.i"

end_hunk_1
