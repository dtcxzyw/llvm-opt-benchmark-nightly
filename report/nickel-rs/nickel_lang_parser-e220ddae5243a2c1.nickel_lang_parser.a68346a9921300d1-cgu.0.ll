Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h70f199374a6624afE":bb.a
  %i.h = phi i64 [ %.sroa.08.099, %.lr.ph.split.i ], [ %i.u, %bb.f ] ; 5 uses
  %i.i = sub nuw nsw i64 %2, %i.h                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  %i.k = icmp ult i64 %i.i, 16
  br i1 %i.k, label %.preheader.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i

.preheader.i.i:                                   ; preds = %bb.d
  %.not.i.i = icmp eq i64 %2, %i.h
  br i1 %.not.i.i, label %.critedge23, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %.sroa.01.05.i.i = phi i64 [ %i.o, %bb.e ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.05.i.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !498081, !noalias !498082, !noundef !19
  %i.n = icmp eq i8 %i.m, %.sroa.13.32.extract.trunc
  br i1 %i.n, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.o = add nuw nsw i64 %.sroa.01.05.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i, label %.critedge23, label %.lr.ph.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i: ; preds = %bb.d
  %i.p = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.sroa.13.32.extract.trunc, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %i.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  %i.s = trunc nuw i64 %i.q to i1
  br i1 %i.s, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i, label %.critedge23

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i: ; preds = %.lr.ph.i.i, %.noexc
  %.sroa.4.0.i27.i = phi i64 [ %i.r, %.noexc ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.t = add nuw i64 %i.h, 1
  %i.u = add i64 %i.t, %.sroa.4.0.i27.i           ; 4 uses
  %.not21.i = icmp ugt i64 %i.u, %2               ; 2 uses
  %i.v = add i64 %.sroa.4.0.i27.i, %i.h           ; 3 uses
  %or.cond.i.not = icmp ult i64 %i.v, %2
  br i1 %or.cond.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  br i1 %.not21.i, label %.critedge23, label %bb.d

bb.g:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %lhsc = load i8, ptr %i.w, align 1
  %i.x = icmp eq i8 %lhsc, %.sroa.13.32.extract.trunc
  br i1 %i.x, label %bb.i, label %bb.f

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i, %bb.j, %bb.n, %bb.k
  %lpad.loopexit.split-lp21 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498083)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !498083 ; 2 uses
  %i.y = icmp eq i64 %.val.i, 0
  br i1 %i.y, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498083, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !498083
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.099
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498084)
  %gepdiff = sub nuw nsw i64 %i.v, %.sroa.08.099  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498085)
  %i.aa = load i64, ptr %i.a, align 8, !range !38, !alias.scope !498086, !noundef !19 ; 2 uses
  %i.ab = sub i64 %i.aa, %i.g
  %i.ac = icmp ugt i64 %gepdiff, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.m, !prof !20

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.g, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.j
  %.pre.i.i = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498087
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498087
  %.pre121 = load i64, ptr %i.a, align 8, !range !38, !alias.scope !498088
  br label %bb.m

.critedge23:                                      ; preds = %bb.o, %bb.f, %.preheader.i.i, %.noexc, %bb.e
  %i.ad = phi i64 [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %.noexc ], [ %i.g, %.preheader.i.i ], [ %i.ba, %bb.o ] ; 3 uses
  %.sroa.08.085 = phi i64 [ %.sroa.08.099, %bb.f ], [ %.sroa.08.099, %bb.e ], [ %.sroa.08.099, %.noexc ], [ %.sroa.08.099, %.preheader.i.i ], [ %i.u, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498089)
  %gepdiff71 = sub nuw nsw i64 %2, %.sroa.08.085  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498090)
  %i.ae = load i64, ptr %i.a, align 8, !range !38, !alias.scope !498091, !noundef !19
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ugt i64 %gepdiff71, %i.af
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !20

bb.k:                                             ; preds = %.critedge23
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ad, i64 noundef %gepdiff71, i64 noundef 1, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.k
  %.pre.i.i30 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498092
  br label %bb.l

bb.l:                                             ; preds = %.noexc31, %.critedge23
  %i.ah = phi i64 [ %i.ad, %.critedge23 ], [ %.pre.i.i30, %.noexc31 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.085
  %i.aj = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498092, !nonnull !19, !noundef !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %i.ai, i64 %gepdiff71, i1 false), !noalias !498092
  %i.am = add nuw i64 %i.ah, %gepdiff71
  store i64 %i.am, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %.noexc29, %bb.i
  %i.an = phi ptr [ %i.f, %bb.i ], [ %.pre, %.noexc29 ] ; 2 uses
  %i.ao = phi i64 [ %i.aa, %bb.i ], [ %.pre121, %.noexc29 ]
  %i.ap = phi i64 [ %i.g, %bb.i ], [ %.pre.i.i, %.noexc29 ] ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %i.z, i64 %gepdiff, i1 false), !noalias !498087
  %i.as = add nuw i64 %i.ap, %gepdiff             ; 4 uses
  store i64 %i.as, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498094)
  %i.at = sub i64 %i.ao, %i.as
  %i.au = icmp ult i64 %i.at, 2
  br i1 %i.au, label %bb.n, label %bb.o, !prof !20

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.as, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.n
  %.pre.i.i33 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498095
  %.pre122 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498095
  br label %bb.o

bb.o:                                             ; preds = %.noexc34, %bb.m
  %i.av = phi ptr [ %i.an, %bb.m ], [ %.pre122, %.noexc34 ] ; 2 uses
  %i.aw = phi i64 [ %i.as, %bb.m ], [ %.pre.i.i33, %.noexc34 ] ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.az = load i16, ptr %4, align 1, !noalias !498095
  store i16 %i.az, ptr %i.ay, align 1, !noalias !498095
  %i.ba = add nuw i64 %i.aw, 2                    ; 3 uses
  store i64 %i.ba, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498095
  br i1 %.not21.i, label %.critedge23, label %.lr.ph.split.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit": ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp21
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hfd249acd81853ca9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef range(i64 1, 4) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 21 uses
  %.not18 = icmp samesign ult i64 %5, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %.not18, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %2, 0
  br i1 %i.c, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !73

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.b
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !498145
  %i.e = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #54, !noalias !498145 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10218) #52
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit": ; preds = %bb.a, %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.06.0134137 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %2, %bb.c ], [ 0, %bb.a ]
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.e, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 5 uses
  store i64 %.sroa.06.0134137, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 15 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef 2)
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit" unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"
  %.sroa.0114.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4115.0.copyload = load i64, ptr %.sroa.4115.0..sroa_idx, align 8 ; 26 uses
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6117.0.copyload = load i64, ptr %.sroa.6117.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7118.0.copyload = load i64, ptr %.sroa.7118.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.8119.0.copyload = load i64, ptr %.sroa.8119.0..sroa_idx, align 8
  %.sroa.10121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.10121.0.copyload = load i64, ptr %.sroa.10121.0..sroa_idx, align 8
  %.sroa.12123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.12123.0.copyload = load ptr, ptr %.sroa.12123.0..sroa_idx, align 8 ; 17 uses
  %.sroa.13124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.13124.0.copyload = load i64, ptr %.sroa.13124.0..sroa_idx, align 8 ; 42 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = trunc nuw i64 %.sroa.0114.0.copyload to i1
  %i.h = add i64 %.sroa.15.0.copyload, -1         ; 3 uses
  br i1 %i.g, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12123.0.copyload), "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.i = sub i64 %.sroa.15.0.copyload, %.sroa.6117.0.copyload
  %umax50.i.us = call i64 @llvm.umax.i64(i64 %.sroa.4115.0.copyload, i64 %.sroa.15.0.copyload)
  %i.j = add i64 %.sroa.4115.0.copyload, -1       ; 2 uses
  %.first_iter = icmp ult i64 %i.j, %.sroa.15.0.copyload
  %.first_iter.fr = freeze i1 %.first_iter
  %.not147.us = icmp eq i64 %.sroa.4115.0.copyload, 0
  %invariant.op = sub i64 1, %.sroa.4115.0.copyload
  %exitcond.not.i.us63.not = icmp ult i64 %.sroa.4115.0.copyload, %.sroa.15.0.copyload
  %invariant.op188 = sub i64 1, %.sroa.4115.0.copyload
  %.not147.us66 = icmp eq i64 %.sroa.4115.0.copyload, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us"
  %i.k = phi ptr [ %.sroa.10.0.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %i.cl, %bb.z ] ; 5 uses
  %i.l = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %i.cn, %bb.z ] ; 7 uses
  %.sroa.3079.0.us = phi i64 [ %.sroa.10121.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %.sroa.3079.1.us, %bb.z ] ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.8119.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %.sroa.11127.1.us, %bb.z ] ; 3 uses
  %.sroa.08.0.us = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %.sroa.11127.1.us, %bb.z ] ; 6 uses
  %i.m = icmp eq i64 %.sroa.3079.0.us, -1
  %i.n = add i64 %.sroa.18.0.us, %i.h             ; 3 uses
  %i.o = icmp ult i64 %i.n, %.sroa.13124.0.copyload ; 2 uses
  br i1 %i.m, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !498146)
  call void @llvm.experimental.noalias.scope.decl(metadata !498147)
  br i1 %i.o, label %.lr.ph.i51.us, label %.critedge25

.lr.ph.i51.us:                                    ; preds = %bb.f, %.sink.split.i.us
  %i.p = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3079.0.us, %bb.f ] ; 3 uses
  %i.q = phi i64 [ %i.at, %.sink.split.i.us ], [ %i.n, %bb.f ]
  %i.r = phi i64 [ %.ph72.i.us, %.sink.split.i.us ], [ %.sroa.18.0.us, %bb.f ] ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !498146, !noundef !19
  %i.u = and i8 %i.t, 63
  %i.v = zext nneg i8 %i.u to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.w, %.sroa.7118.0.copyload
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.n, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i51.us
  %.sroa.0.0.i.i53.us = call i64 @llvm.umax.i64(i64 %i.p, i64 %.sroa.4115.0.copyload) ; 4 uses
  %umax50.i54.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i53.us, i64 %.sroa.15.0.copyload)
  %exitcond.not.i56.us58.not = icmp ult i64 %.sroa.0.0.i.i53.us, %.sroa.15.0.copyload
  br i1 %exitcond.not.i56.us58.not, label %.lr.ph, label %.preheader149.us.preheader

bb.h:                                             ; preds = %bb.i
  %i.z = add nuw i64 %.sroa.02.0.i55.us59, 1      ; 2 uses
  %exitcond.not.i56.us = icmp eq i64 %i.z, %umax50.i54.us
  br i1 %exitcond.not.i56.us, label %.preheader149.us.preheader, label %.lr.ph

.preheader149.us.preheader:                       ; preds = %bb.h, %bb.g
  %i.aa = icmp ult i64 %i.p, %.sroa.4115.0.copyload
  br i1 %i.aa, label %.lr.ph61, label %.loopexit.i.us

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.02.0.i55.us59 = phi i64 [ %i.z, %bb.h ], [ %.sroa.0.0.i.i53.us, %bb.g ] ; 4 uses
  %i.ab = add i64 %.sroa.02.0.i55.us59, %i.r      ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %.sroa.13124.0.copyload
  br i1 %i.ac, label %bb.i, label %.split.us

bb.i:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i55.us59
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !498147, !noundef !19
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.ab
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !498146, !noundef !19
  %.not22.i58.us = icmp eq i8 %i.ae, %i.ag
  br i1 %.not22.i58.us, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.reass.reass = add i64 %i.r, %invariant.op
  %i.ah = add i64 %.reass.reass, %.sroa.02.0.i55.us59
  br label %.sink.split.i.us

.preheader149.us:                                 ; preds = %bb.l
  %i.ai = icmp ult i64 %i.p, %i.aj
  br i1 %i.ai, label %.lr.ph61, label %.loopexit.i.us

.lr.ph61:                                         ; preds = %.preheader149.us.preheader, %.preheader149.us
  %.sroa.57.0.i59.us60 = phi i64 [ %i.aj, %.preheader149.us ], [ %.sroa.4115.0.copyload, %.preheader149.us.preheader ]
  %i.aj = add i64 %.sroa.57.0.i59.us60, -1        ; 6 uses
  %i.ak = icmp ult i64 %i.aj, %.sroa.15.0.copyload
  br i1 %i.ak, label %bb.k, label %.split.us.invoke

bb.k:                                             ; preds = %.lr.ph61
  %i.al = add i64 %i.aj, %i.r                     ; 3 uses
  %i.am = icmp ult i64 %i.al, %.sroa.13124.0.copyload
  br i1 %i.am, label %bb.l, label %.split.us.invoke

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.aj
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !498147, !noundef !19
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !498146, !noundef !19
  %.not.i60.us = icmp eq i8 %i.ao, %i.aq
  br i1 %.not.i60.us, label %.preheader149.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add i64 %i.r, %.sroa.6117.0.copyload
  br label %.sink.split.i.us

bb.n:                                             ; preds = %.lr.ph.i51.us
  %i.as = add i64 %i.r, %.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.n, %bb.m, %bb.j
  %.sink.i.us = phi i64 [ %i.i, %bb.m ], [ 0, %bb.j ], [ 0, %bb.n ]
  %.ph72.i.us = phi i64 [ %i.ar, %bb.m ], [ %i.ah, %bb.j ], [ %i.as, %bb.n ] ; 2 uses
  %i.at = add i64 %.ph72.i.us, %i.h               ; 2 uses
  %i.au = icmp ult i64 %i.at, %.sroa.13124.0.copyload
  br i1 %i.au, label %.lr.ph.i51.us, label %.critedge25

bb.o:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !498148)
  call void @llvm.experimental.noalias.scope.decl(metadata !498149)
  br i1 %i.o, label %.lr.ph.i44.us, label %.critedge25

.lr.ph.i44.us:                                    ; preds = %bb.o, %bb.v
  %i.av = phi i64 [ %i.bv, %bb.v ], [ %i.n, %bb.o ]
  %i.aw = phi i64 [ %i.bu, %bb.v ], [ %.sroa.18.0.us, %bb.o ] ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !498148, !noundef !19
  %i.az = and i8 %i.ay, 63
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = and i64 %i.bb, %.sroa.7118.0.copyload
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.u, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i44.us
  br i1 %exitcond.not.i.us63.not, label %bb.r, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.s
  %i.be = add nuw i64 %.sroa.02.0.i.us68, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.be, %umax50.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %bb.r

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.first_iter.fr, label %.preheader.us.us.preheader, label %.lr.ph68

.preheader.us.us.preheader:                       ; preds = %.preheader.us.preheader
  br i1 %.not147.us66, label %.loopexit.i.us, label %.lr.ph65

.preheader.us.preheader.a:                        ; preds = %bb.p
  %.not147.us.us = icmp eq i64 %6, 0
  br i1 %.not147.us.us, label %.loopexit.i.us, label %.lr.ph65

.lr.ph65:                                         ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a
  %.sroa.02.0.i.us64 = phi i64 [ %6, %.preheader.us.preheader.a ], [ %.sroa.4115.0.copyload, %.preheader.us.us.preheader ]
  %6 = add i64 %.sroa.02.0.i.us64, -1             ; 4 uses
  %i.bf = add i64 %6, %i.aw                       ; 3 uses
  %i.bg = icmp ult i64 %i.bf, %.sroa.13124.0.copyload
  br i1 %i.bg, label %bb.p, label %.split.us.invoke

bb.p:                                             ; preds = %.lr.ph65
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %6
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !498149, !noundef !19
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.bf
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !498148, !noundef !19
  %.not22.i.us.a = icmp eq i8 %i.bi, %i.bk
  br i1 %.not22.i.us.a, label %.preheader.us.preheader.a, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = add i64 %.sroa.6117.0.copyload, %i.aw
  br label %bb.v

.lr.ph68:                                         ; preds = %.preheader.us.preheader
  br i1 %.not147.us, label %.loopexit.i.us, label %.split.us.invoke

bb.r:                                             ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us68 = phi i64 [ %i.be, %.preheader ], [ %.sroa.4115.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.bm = add i64 %.sroa.02.0.i.us68, %i.aw       ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %.sroa.13124.0.copyload
  br i1 %i.bn, label %bb.s, label %.split213.us

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i.us68
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !498149, !noundef !19
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.bm
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !498148, !noundef !19
  %.not.i.us = icmp eq i8 %i.bp, %i.br
  br i1 %.not.i.us, label %.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.reass380.reass = add i64 %i.aw, %invariant.op188
  %i.bs = add i64 %.reass380.reass, %.sroa.02.0.i.us68
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i44.us
  %i.bt = add i64 %i.aw, %.sroa.15.0.copyload
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q, %bb.t
  %i.bu = phi i64 [ %i.bs, %bb.t ], [ %i.bl, %bb.q ], [ %i.bt, %bb.u ] ; 2 uses
  %i.bv = add i64 %i.bu, %i.h                     ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %.sroa.13124.0.copyload
  br i1 %i.bw, label %.lr.ph.i44.us, label %.critedge25

.loopexit.i.us:                                   ; preds = %.preheader149.us.preheader, %.preheader.us.us.preheader, %.preheader149.us, %.preheader.us.preheader.a, %.lr.ph68
  %.sroa.7126.1.us = phi i64 [ %i.aw, %.preheader.us.preheader.a ], [ %i.aw, %.lr.ph68 ], [ %i.r, %.preheader149.us ], [ %i.aw, %.preheader.us.us.preheader ], [ %i.r, %.preheader149.us.preheader ] ; 2 uses
  %.sroa.3079.1.us = phi i64 [ -1, %.preheader.us.preheader.a ], [ -1, %.lr.ph68 ], [ 0, %.preheader149.us ], [ -1, %.preheader.us.us.preheader ], [ 0, %.preheader149.us.preheader ]
  %.sroa.11127.1.us = add i64 %.sroa.7126.1.us, %.sroa.15.0.copyload ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.0.us
  call void @llvm.experimental.noalias.scope.decl(metadata !498150)
  %gepdiff.us = sub nuw nsw i64 %.sroa.7126.1.us, %.sroa.08.0.us ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !498151)
  %i.by = load i64, ptr %i.b, align 8, !range !38, !alias.scope !498152, !noundef !19
  %i.bz = sub i64 %i.by, %i.l
  %i.ca = icmp ugt i64 %gepdiff.us, %i.bz
  br i1 %i.ca, label %bb.w, label %bb.x, !prof !20

bb.w:                                             ; preds = %.loopexit.i.us
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.l, i64 noundef %gepdiff.us, i64 noundef 1, i64 noundef 1)
          to label %.noexc35.us unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc35.us:                                      ; preds = %bb.w
  %.pre.i.i.us = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498153
  %.pre282 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498153
  br label %bb.x

bb.x:                                             ; preds = %.noexc35.us, %.loopexit.i.us
  %i.cb = phi ptr [ %i.k, %.loopexit.i.us ], [ %.pre282, %.noexc35.us ]
  %i.cc = phi i64 [ %i.l, %.loopexit.i.us ], [ %.pre.i.i.us, %.noexc35.us ] ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull readonly align 1 %i.bx, i64 %gepdiff.us, i1 false), !noalias !498153
  %i.cf = add i64 %i.cc, %gepdiff.us              ; 4 uses
  store i64 %i.cf, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498153
  call void @llvm.experimental.noalias.scope.decl(metadata !498154)
  call void @llvm.experimental.noalias.scope.decl(metadata !498155)
  %i.cg = load i64, ptr %i.b, align 8, !range !38, !alias.scope !498156, !noundef !19
  %i.ch = sub i64 %i.cg, %i.cf
  %i.ci = icmp ugt i64 %5, %i.ch
  br i1 %i.ci, label %bb.y, label %bb.z, !prof !20

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cf, i64 noundef %5, i64 noundef 1, i64 noundef 1)
          to label %.noexc40.us unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc40.us:                                      ; preds = %bb.y
  %.pre.i.i39.us = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498157
  br label %bb.z

bb.z:                                             ; preds = %.noexc40.us, %bb.x
  %i.cj = phi i64 [ %i.cf, %bb.x ], [ %.pre.i.i39.us, %.noexc40.us ] ; 3 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  call void @llvm.assume(i1 %i.ck)
  %i.cl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498157, !nonnull !19, !noundef !19 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cm, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %5, i1 false), !noalias !498157
  %i.cn = add nuw i64 %i.cj, %5                   ; 2 uses
  store i64 %i.cn, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498157
  br label %bb.e

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit"
  %i.co = and i64 %.sroa.6117.0.copyload, 65536
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %.lr.ph.i.lr.ph, label %.critedge25

.lr.ph.i.lr.ph:                                   ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12123.0.copyload) ]
  %i.cp = trunc i64 %.sroa.6117.0.copyload to i1  ; 2 uses
  %i.cq = icmp eq i64 %.sroa.4115.0.copyload, 0
  br i1 %i.cq, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.lr.ph
  %.not.i.i.i.peel.peel = icmp ult i64 %.sroa.4115.0.copyload, %.sroa.13124.0.copyload
  br i1 %.not.i.i.i.peel.peel, label %bb.ab, label %.split.i.i.i.peel.peel

.split.i.i.i.peel.peel:                           ; preds = %bb.aa
  %i.cr = icmp eq i64 %.sroa.4115.0.copyload, %.sroa.13124.0.copyload
  br i1 %i.cr, label %bb.ac, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %.sroa.4115.0.copyload
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !498158, !noalias !498159, !noundef !19
  %i.cu = icmp sgt i8 %i.ct, -65
  br i1 %i.cu, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab, %.split.i.i.i.peel.peel, %.lr.ph.i.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %.sroa.4115.0.copyload ; 4 uses
  %i.cw = icmp samesign eq i64 %.sroa.4115.0.copyload, %.sroa.13124.0.copyload
  br i1 %i.cw, label %.loopexit279.peel, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = load i8, ptr %i.cv, align 1, !noalias !498160, !noundef !19 ; 5 uses
  %i.cy = icmp sgt i8 %i.cx, -1
  br i1 %i.cy, label %bb.ae, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel.peel": ; preds = %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.da = and i8 %i.cx, 31
  %i.db = zext nneg i8 %i.da to i32               ; 3 uses
  %i.dc = add nuw nsw i64 %.sroa.4115.0.copyload, 1
  %i.dd = icmp samesign ne i64 %i.dc, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.dd)
  %i.de = load i8, ptr %i.cz, align 1, !noalias !498160, !noundef !19
  %i.df = shl nuw nsw i32 %i.db, 6
  %i.dg = and i8 %i.de, 63
  %i.dh = zext nneg i8 %i.dg to i32               ; 2 uses
  %i.di = or disjoint i32 %i.df, %i.dh
  %i.dj = icmp samesign ugt i8 %i.cx, -33
  br i1 %i.dj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel.peel", label %bb.af

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel.peel"
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.dl = add nuw nsw i64 %.sroa.4115.0.copyload, 2
  %i.dm = icmp samesign ne i64 %i.dl, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.dm)
  %i.dn = load i8, ptr %i.dk, align 1, !noalias !498160, !noundef !19
  %i.do = shl nuw nsw i32 %i.dh, 6
  %i.dp = and i8 %i.dn, 63
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.do, %i.dq            ; 2 uses
  %i.ds = shl nuw nsw i32 %i.db, 12
  %i.dt = or disjoint i32 %i.dr, %i.ds
  %i.du = icmp samesign ugt i8 %i.cx, -17
  br i1 %i.du, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i.peel.peel", label %bb.af

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel.peel"
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.dw = add nuw nsw i64 %.sroa.4115.0.copyload, 3
  %i.dx = icmp samesign ne i64 %i.dw, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.dx)
  %i.dy = load i8, ptr %i.dv, align 1, !noalias !498160, !noundef !19
  %i.dz = shl nuw nsw i32 %i.db, 18
  %i.ea = and i32 %i.dz, 1835008
  %i.eb = shl nuw nsw i32 %i.dr, 6
  %i.ec = and i8 %i.dy, 63
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = or disjoint i32 %i.eb, %i.ed
  %i.ef = or disjoint i32 %i.ee, %i.ea
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eg = zext nneg i8 %i.cx to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel.peel"
  %.sroa.4.0.i.ph.i.i.peel.peel = phi i32 [ %i.dt, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel.peel" ], [ %i.ef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i.peel.peel" ], [ %i.di, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel.peel" ], [ %i.eg, %bb.ae ] ; 4 uses
  %i.eh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 1114112
  call void @llvm.assume(i1 %i.eh)
  br i1 %i.cp, label %.loopexit.i.peel, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 128
  br i1 %i.ei, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ej = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 2048
  br i1 %i.ej, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ek = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 65536
  %..i.i.peel.peel = select i1 %i.ek, i64 3, i64 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.01.0.i.i.peel.peel = phi i64 [ 2, %bb.ah ], [ %..i.i.peel.peel, %bb.ai ], [ 1, %bb.ag ]
  %i.el = add i64 %.sroa.01.0.i.i.peel.peel, %.sroa.4115.0.copyload ; 15 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.peel133 = icmp ult i64 %i.el, %.sroa.13124.0.copyload
  br i1 %.not.i.i.i.peel133, label %bb.al, label %.split.i.i.i.peel134

.split.i.i.i.peel134:                             ; preds = %bb.ak
  %i.en = icmp eq i64 %i.el, %.sroa.13124.0.copyload
  br i1 %i.en, label %bb.am, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.el
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !498158, !noalias !498159, !noundef !19
  %i.eq = icmp sgt i8 %i.ep, -65
  br i1 %i.eq, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al, %.split.i.i.i.peel134, %bb.aj
  %i.er = icmp samesign eq i64 %i.el, %.sroa.13124.0.copyload
  br i1 %i.er, label %.loopexit.i.peel, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.el
  %i.et = load i8, ptr %i.es, align 1, !noalias !498160, !noundef !19 ; 3 uses
  %i.eu = icmp sgt i8 %i.et, -1
  br i1 %i.eu, label %.loopexit.i.peel, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel135"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel135": ; preds = %bb.an
  %i.ev = add nuw nsw i64 %i.el, 1
  %i.ew = icmp samesign ne i64 %i.ev, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp samesign ugt i8 %i.et, -33
  br i1 %i.ex, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel136", label %.loopexit.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel136": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel135"
  %i.ey = add nuw nsw i64 %i.el, 2
  %i.ez = icmp samesign ne i64 %i.ey, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp samesign ugt i8 %i.et, -17
  br i1 %i.fa, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i.peel137", label %.loopexit.i.peel
end_hunk_0
begin_hunk_1_@"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hfd249acd81853ca9E":bb.a

.noexc35.peel:                                    ; preds = %bb.ao
  %.pre.i.i.peel = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498164
  %.pre.peel = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498164
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc35.peel, %.loopexit.i.peel
  %i.ff = phi ptr [ %.sroa.10.0.i, %.loopexit.i.peel ], [ %.pre.peel, %.noexc35.peel ]
  %i.fg = phi i64 [ 0, %.loopexit.i.peel ], [ %.pre.i.i.peel, %.noexc35.peel ] ; 3 uses
  %i.fh = icmp sgt i64 %i.fg, -1
  call void @llvm.assume(i1 %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr nonnull readonly align 1 %1, i64 %.sroa.472.1277.peel, i1 false), !noalias !498164
  %i.fj = add i64 %i.fg, %.sroa.472.1277.peel     ; 4 uses
  store i64 %i.fj, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498164
  call void @llvm.experimental.noalias.scope.decl(metadata !498165)
  call void @llvm.experimental.noalias.scope.decl(metadata !498166)
  %i.fk = load i64, ptr %i.b, align 8, !range !38, !alias.scope !498167, !noundef !19
  %i.fl = sub i64 %i.fk, %i.fj
  %i.fm = icmp ugt i64 %5, %i.fl
  br i1 %i.fm, label %bb.aq, label %.preheader.i.peel, !prof !20

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.fj, i64 noundef %5, i64 noundef 1, i64 noundef 1)
          to label %.noexc40.peel unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc40.peel:                                    ; preds = %bb.aq
  %.pre.i.i39.peel = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498168
  br label %.preheader.i.peel

.preheader.i.peel:                                ; preds = %.noexc40.peel, %bb.ap
  %i.fn = phi i64 [ %i.fj, %bb.ap ], [ %.pre.i.i39.peel, %.noexc40.peel ] ; 3 uses
  %i.fo = icmp sgt i64 %i.fn, -1
  call void @llvm.assume(i1 %i.fo)
  %i.fp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498168, !nonnull !19, !noundef !19 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fq, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %5, i1 false), !noalias !498168
  %i.fr = add nuw i64 %i.fn, %5                   ; 2 uses
  store i64 %i.fr, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498168
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.preheader.i.peel
  %i.fs = phi ptr [ %i.fp, %.preheader.i.peel ], [ %i.jm, %.preheader.i ] ; 2 uses
  %i.ft = phi i64 [ %i.fr, %.preheader.i.peel ], [ %i.jo, %.preheader.i ] ; 4 uses
  %.sroa.472.0227 = phi i64 [ %.sroa.472.1277.peel, %.preheader.i.peel ], [ %.sroa.472.1277, %.preheader.i ] ; 15 uses
  %i.fu = icmp eq i64 %.sroa.472.0227, 0
  br i1 %i.fu, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.sroa.472.0227, %.sroa.13124.0.copyload
  br i1 %.not.i.i.i.peel, label %bb.as, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.ar
  %i.fv = icmp eq i64 %.sroa.472.0227, %.sroa.13124.0.copyload
  br i1 %i.fv, label %bb.at, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %.sroa.472.0227
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !498158, !noalias !498159, !noundef !19
  %i.fy = icmp sgt i8 %i.fx, -65
  br i1 %i.fy, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as, %.split.i.i.i.peel, %.lr.ph.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %.sroa.472.0227 ; 4 uses
  %i.ga = icmp samesign eq i64 %.sroa.472.0227, %.sroa.13124.0.copyload
  br i1 %i.ga, label %.critedge25, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gb = load i8, ptr %i.fz, align 1, !noalias !498160, !noundef !19 ; 5 uses
  %i.gc = icmp sgt i8 %i.gb, -1
  br i1 %i.gc, label %bb.av, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel": ; preds = %bb.au
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.ge = and i8 %i.gb, 31
  %i.gf = zext nneg i8 %i.ge to i32               ; 3 uses
  %i.gg = add nuw nsw i64 %.sroa.472.0227, 1
  %i.gh = icmp samesign ne i64 %i.gg, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.gh)
  %i.gi = load i8, ptr %i.gd, align 1, !noalias !498160, !noundef !19
  %i.gj = shl nuw nsw i32 %i.gf, 6
  %i.gk = and i8 %i.gi, 63
  %i.gl = zext nneg i8 %i.gk to i32               ; 2 uses
  %i.gm = or disjoint i32 %i.gj, %i.gl
  %i.gn = icmp samesign ugt i8 %i.gb, -33
  br i1 %i.gn, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel", label %bb.aw

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel"
  %i.go = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gp = add nuw nsw i64 %.sroa.472.0227, 2
  %i.gq = icmp samesign ne i64 %i.gp, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.gq)
  %i.gr = load i8, ptr %i.go, align 1, !noalias !498160, !noundef !19
  %i.gs = shl nuw nsw i32 %i.gl, 6
  %i.gt = and i8 %i.gr, 63
  %i.gu = zext nneg i8 %i.gt to i32
  %i.gv = or disjoint i32 %i.gs, %i.gu            ; 2 uses
  %i.gw = shl nuw nsw i32 %i.gf, 12
  %i.gx = or disjoint i32 %i.gv, %i.gw
  %i.gy = icmp samesign ugt i8 %i.gb, -17
  br i1 %i.gy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i.peel", label %bb.aw

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel"
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fz, i64 3
  %i.ha = add nuw nsw i64 %.sroa.472.0227, 3
  %i.hb = icmp samesign ne i64 %i.ha, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.hb)
  %i.hc = load i8, ptr %i.gz, align 1, !noalias !498160, !noundef !19
  %i.hd = shl nuw nsw i32 %i.gf, 18
  %i.he = and i32 %i.hd, 1835008
  %i.hf = shl nuw nsw i32 %i.gv, 6
  %i.hg = and i8 %i.hc, 63
  %i.hh = zext nneg i8 %i.hg to i32
  %i.hi = or disjoint i32 %i.hf, %i.hh
  %i.hj = or disjoint i32 %i.hi, %i.he
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hk = zext nneg i8 %i.gb to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.gx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i.peel" ], [ %i.hj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i.peel" ], [ %i.gm, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i.peel" ], [ %i.hk, %bb.av ] ; 4 uses
  %i.hl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.hl)
  %i.hm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.hm, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.hn, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ho = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.ho, i64 3, i64 4
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ax, %bb.ay
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.ax ], [ %..i.i.peel, %bb.ay ], [ 1, %bb.aw ]
  %i.hp = add i64 %.sroa.01.0.i.i.peel, %.sroa.472.0227 ; 15 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i = icmp ult i64 %i.hp, %.sroa.13124.0.copyload
  br i1 %.not.i.i.i, label %bb.bb, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ba
  %i.hr = icmp eq i64 %i.hp, %.sroa.13124.0.copyload
  br i1 %i.hr, label %bb.bc, label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.hp
  %i.ht = load i8, ptr %i.hs, align 1, !alias.scope !498158, !noalias !498159, !noundef !19
  %i.hu = icmp sgt i8 %i.ht, -65
  br i1 %i.hu, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb, %.split.i.i.i, %bb.az
  %i.hv = icmp samesign eq i64 %i.hp, %.sroa.13124.0.copyload
  br i1 %i.hv, label %.loopexit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.hp
  %i.hx = load i8, ptr %i.hw, align 1, !noalias !498160, !noundef !19 ; 3 uses
  %i.hy = icmp sgt i8 %i.hx, -1
  br i1 %i.hy, label %.loopexit.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i": ; preds = %bb.bd
  %i.hz = add nuw nsw i64 %i.hp, 1
  %i.ia = icmp samesign ne i64 %i.hz, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.ia)
  %i.ib = icmp samesign ugt i8 %i.hx, -33
  br i1 %i.ib, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i"
  %i.ic = add nuw nsw i64 %i.hp, 2
  %i.id = icmp samesign ne i64 %i.ic, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.id)
  %i.ie = icmp samesign ugt i8 %i.hx, -17
  br i1 %i.ie, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i"
  %i.if = add nuw nsw i64 %i.hp, 3
  %i.ig = icmp samesign ne i64 %i.if, %.sroa.13124.0.copyload
  call void @llvm.assume(i1 %i.ig)
  br label %.loopexit.i

.loopexit:                                        ; preds = %bb.as, %.split.i.i.i.peel, %bb.bb, %.split.i.i.i, %bb.al, %.split.i.i.i.peel134, %bb.ab, %.split.i.i.i.peel.peel
  %.sroa.472.1.lcssa = phi i64 [ %.sroa.4115.0.copyload, %.split.i.i.i.peel.peel ], [ %.sroa.4115.0.copyload, %bb.ab ], [ %i.el, %.split.i.i.i.peel134 ], [ %i.el, %bb.al ], [ %.sroa.472.0227, %bb.as ], [ %.sroa.472.0227, %.split.i.i.i.peel ], [ %i.hp, %.split.i.i.i ], [ %i.hp, %bb.bb ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.12123.0.copyload, i64 noundef %.sroa.13124.0.copyload, i64 noundef %.sroa.472.1.lcssa, i64 noundef %.sroa.13124.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10553) #52
          to label %.noexc unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.ih = add i64 %i.r, %.sroa.0.0.i.i53.us
  %umax.i57 = call i64 @llvm.umax.i64(i64 %.sroa.13124.0.copyload, i64 %i.ih)
  br label %.split.us.invoke

.split.us.invoke:                                 ; preds = %.lr.ph68, %bb.k, %.lr.ph61, %.lr.ph65, %.split213.us, %.split.us
  %i.ii = phi i64 [ %umax.i57, %.split.us ], [ %i.aj, %.lr.ph61 ], [ %i.bf, %.lr.ph65 ], [ %umax.i, %.split213.us ], [ %i.al, %bb.k ], [ %i.j, %.lr.ph68 ]
  %i.ij = phi i64 [ %.sroa.13124.0.copyload, %.split.us ], [ %.sroa.15.0.copyload, %.lr.ph61 ], [ %.sroa.13124.0.copyload, %.lr.ph65 ], [ %.sroa.13124.0.copyload, %.split213.us ], [ %.sroa.13124.0.copyload, %bb.k ], [ %.sroa.15.0.copyload, %.lr.ph68 ]
  %i.ik = phi ptr [ @10205, %.split.us ], [ @10203, %.lr.ph61 ], [ @10204, %.lr.ph65 ], [ @10205, %.split213.us ], [ @10204, %bb.k ], [ @10203, %.lr.ph68 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ii, i64 noundef %i.ij, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ik) #52
          to label %.split.us.cont unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

.split213.us:                                     ; preds = %bb.r
  %i.il = add i64 %i.aw, %.sroa.4115.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.13124.0.copyload, i64 %i.il)
  br label %.split.us.invoke

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.y, %bb.w, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit", %.loopexit, %bb.bg, %.split.us.invoke, %bb.bf, %bb.bj, %bb.ao, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !498169)
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !498169 ; 2 uses
  %i.im = icmp eq i64 %.val.i, 0
  br i1 %i.im, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.be

bb.be:                                            ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498169, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !498169
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

.loopexit.i:                                      ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i", %bb.bd, %bb.bc
  %.sroa.472.1277 = phi i64 [ %i.hp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit14.i.i.i" ], [ %.sroa.13124.0.copyload, %bb.bc ], [ %i.hp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit16.i.i.i" ], [ %i.hp, %bb.bd ], [ %i.hp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf21491b6bba59467E.exit12.i.i.i" ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.472.0227
  call void @llvm.experimental.noalias.scope.decl(metadata !498150)
  %gepdiff = sub nuw nsw i64 %.sroa.472.1277, %.sroa.472.0227 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !498151)
  %i.io = load i64, ptr %i.b, align 8, !range !38, !alias.scope !498152, !noundef !19
  %i.ip = sub i64 %i.io, %i.ft
  %i.iq = icmp ugt i64 %gepdiff, %i.ip
  br i1 %i.iq, label %bb.bf, label %bb.bi, !prof !20

bb.bf:                                            ; preds = %.loopexit.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ft, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %.noexc35 unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc35:                                         ; preds = %bb.bf
  %.pre.i.i = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498153
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498153
  br label %bb.bi

.critedge25:                                      ; preds = %.loopexit279.peel, %bb.at, %bb.o, %bb.f, %.sink.split.i.us, %bb.v, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split"
  %i.ir = phi ptr [ %i.k, %bb.o ], [ %.sroa.10.0.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split" ], [ %i.k, %.sink.split.i.us ], [ %i.k, %bb.v ], [ %i.k, %bb.f ], [ %.sroa.10.0.i, %.loopexit279.peel ], [ %i.fs, %bb.at ]
  %i.is = phi i64 [ %i.l, %bb.o ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split" ], [ %i.l, %.sink.split.i.us ], [ %i.l, %bb.v ], [ %i.l, %bb.f ], [ 0, %.loopexit279.peel ], [ %i.ft, %bb.at ] ; 3 uses
  %.sroa.08.0192 = phi i64 [ %.sroa.08.0.us, %bb.o ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split" ], [ %.sroa.08.0.us, %.sink.split.i.us ], [ %.sroa.08.0.us, %bb.v ], [ %.sroa.08.0.us, %bb.f ], [ 0, %.loopexit279.peel ], [ %.sroa.472.0227, %bb.at ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !498170)
  %gepdiff148 = sub nuw nsw i64 %2, %.sroa.08.0192 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !498171)
  %i.it = load i64, ptr %i.b, align 8, !range !38, !alias.scope !498172, !noundef !19
  %i.iu = sub i64 %i.it, %i.is
  %i.iv = icmp ugt i64 %gepdiff148, %i.iu
  br i1 %i.iv, label %bb.bg, label %bb.bh, !prof !20

bb.bg:                                            ; preds = %.critedge25
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.is, i64 noundef %gepdiff148, i64 noundef 1, i64 noundef 1)
          to label %.noexc37 unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc37:                                         ; preds = %bb.bg
  %.pre.i.i36 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498173
  %.pre283 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498173
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc37, %.critedge25
  %i.iw = phi ptr [ %i.ir, %.critedge25 ], [ %.pre283, %.noexc37 ]
  %i.ix = phi i64 [ %i.is, %.critedge25 ], [ %.pre.i.i36, %.noexc37 ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.0192
  %i.iz = icmp sgt i64 %i.ix, -1
  call void @llvm.assume(i1 %i.iz)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ix
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ja, ptr nonnull readonly align 1 %i.iy, i64 %gepdiff148, i1 false), !noalias !498173
  %i.jb = add i64 %i.ix, %gepdiff148
  store i64 %i.jb, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.bi:                                            ; preds = %.noexc35, %.loopexit.i
  %i.jc = phi ptr [ %i.fs, %.loopexit.i ], [ %.pre, %.noexc35 ]
  %i.jd = phi i64 [ %i.ft, %.loopexit.i ], [ %.pre.i.i, %.noexc35 ] ; 3 uses
  %i.je = icmp sgt i64 %i.jd, -1
  call void @llvm.assume(i1 %i.je)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jf, ptr nonnull readonly align 1 %i.in, i64 %gepdiff, i1 false), !noalias !498153
  %i.jg = add i64 %i.jd, %gepdiff                 ; 4 uses
  store i64 %i.jg, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498153
  call void @llvm.experimental.noalias.scope.decl(metadata !498154)
  call void @llvm.experimental.noalias.scope.decl(metadata !498155)
  %i.jh = load i64, ptr %i.b, align 8, !range !38, !alias.scope !498156, !noundef !19
  %i.ji = sub i64 %i.jh, %i.jg
  %i.jj = icmp ugt i64 %5, %i.ji
  br i1 %i.jj, label %bb.bj, label %.preheader.i, !prof !20

bb.bj:                                            ; preds = %bb.bi
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.jg, i64 noundef %5, i64 noundef 1, i64 noundef 1)
          to label %.noexc40 unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc40:                                         ; preds = %bb.bj
  %.pre.i.i39 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498157
  br label %.preheader.i

.preheader.i:                                     ; preds = %.noexc40, %bb.bi
  %i.jk = phi i64 [ %i.jg, %bb.bi ], [ %.pre.i.i39, %.noexc40 ] ; 3 uses
  %i.jl = icmp sgt i64 %i.jk, -1
  call void @llvm.assume(i1 %i.jl)
  %i.jm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !498157, !nonnull !19, !noundef !19 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jn, ptr noundef nonnull readonly align 1 dereferenceable(1) %4, i64 %5, i1 false), !noalias !498157
  %i.jo = add nuw i64 %i.jk, %5                   ; 2 uses
  store i64 %i.jo, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !498157
  br label %.lr.ph.i, !llvm.loop !498144

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit": ; preds = %bb.be, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h035db530c0402b0eE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(304) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !38, !noundef !19
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h33e9b1ad35546a93E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !noundef !19
  %i.g = getelementptr inbounds nuw [304 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.g, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 304, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr84drop_in_place$LT$nickel_lang_parser..grammar..__parse__StaticFieldPath..__Symbol$GT$17h6850774a541a75ceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %1)
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0f4d0473142ee59eE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(304) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !38, !noundef !19
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2e4560b3566bfcbbE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !noundef !19
  %i.g = getelementptr inbounds nuw [304 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.g, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 304, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr87drop_in_place$LT$nickel_lang_parser..grammar..__parse__CliFieldAssignment..__Symbol$GT$17h0730e20f1eb5faddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %1)
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h1a7ed1633d7a59c7E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !38, !noundef !19
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2d3afeb2be43ed2eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !noundef !19
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h80af4524bd6993baE"(ptr noalias noundef align 8 dereferenceable(56) %1) #53
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h341a9ca56f42259fE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(304) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_1
