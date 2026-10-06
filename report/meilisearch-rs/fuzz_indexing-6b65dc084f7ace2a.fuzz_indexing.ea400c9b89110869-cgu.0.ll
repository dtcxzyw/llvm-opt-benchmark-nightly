Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$7to_kstr17hc4bebde52d43f1c9E":bb.a
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !9869
  store ptr %i.d, ptr %i.c, align 8, !noalias !9869
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @389, ptr %i.g, align 8, !noalias !9869
  %i.h = invoke noundef zeroext i1 @"_ZN86_$LT$liquid_core..model..array..ArrayRender$LT$T$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h8c10dfb9e60bc193E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !9870

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9871)
  call void @llvm.experimental.noalias.scope.decl(metadata !9872)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !17, !alias.scope !9873, !noalias !9869, !noundef !16 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.j, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !9873, !noalias !9869, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !9874
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h341c9715e46bf0d4E.exit", !prof !18

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @390, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @392) #66
          to label %.noexc.i unwind label %bb.b, !noalias !9869

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %.body.i ], [ %i.i, %bb.c ], [ %i.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h341c9715e46bf0d4E.exit": ; preds = %bb.d
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !9875 ; 5 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9875 ; 7 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !9875 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = icmp sgt i64 %.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %.sroa.5.0.copyload, 16
  br i1 %i.l, label %bb.i, label %bb.f

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h341c9715e46bf0d4E.exit"
  %i.m = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.5.0.copyload
  br i1 %i.m, label %bb.g, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h61e7cc8e1a89560bE.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.n = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, 9) 1, i64 noundef range(i64 1, 0) %.sroa.5.0.copyload) #65, !noalias !9876 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h61e7cc8e1a89560bE.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1836) #66
          to label %.noexc.i.i unwind label %.body.i, !noalias !9877

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !9878
  br label %common.resume

bb.i:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h341c9715e46bf0d4E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !9879
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.3.0.copyload, i64 %.sroa.5.0.copyload, i1 false), !noalias !9879
  %.0..0..0..sroa.04.1.copyload = load i56, ptr %i.b, align 8, !noalias !9880
  %.sroa.04.1.insert.ext = zext i56 %.0..0..0..sroa.04.1.copyload to i64
  %.sroa.04.1.insert.shift = shl nuw i64 %.sroa.04.1.insert.ext, 8
  %.sroa.04.1.insert.insert = or disjoint i64 %.sroa.04.1.insert.shift, %.sroa.5.0.copyload
  %i.q = inttoptr i64 %.sroa.04.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !9880 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.r, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h61e7cc8e1a89560bE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !9881
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h61e7cc8e1a89560bE.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h61e7cc8e1a89560bE.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.04.0 = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %i.n, %bb.g ], [ %.sroa.3.0.copyload, %bb.f ]
  %.sroa.75.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.i ], [ %.7..7..7..sroa.6.1.copyload, %bb.j ], [ %.sroa.5.0.copyload, %bb.g ], [ %.sroa.5.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.75.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_array17h24106be8ac3405b3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @201, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_array17h84342dc11b1ccfcfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @47, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_debug17h5e3cdf8c8452769fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @202, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_debug17hc4bf56bd21b5997bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @203, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8to_value17h25576119f8fd5a96E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 10 uses
  %i.e = mul i64 %i.d, 56                         ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.d, 164703072086692425
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !9913
  %i.g = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #65, !noalias !9913 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66, !noalias !9914
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = icmp samesign ule i64 %i.d, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign eq i64 %i.d, 0
  br i1 %i.j, label %_ZN4core4iter6traits8iterator8Iterator7collect17h77a6659d25c94e5aE.exit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i"
  %xtraiter = and i64 %i.d, 1
  %i.k = icmp eq i64 %i.d, 1
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.d, 288230376151711742
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %i.l = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.r, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l
  %.val21.i.i.i.i.i.i.i.i.i = load i8, ptr %i.m, align 1, !range !33, !alias.scope !9915, !noalias !9916, !noundef !16
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.l ; 3 uses
  store i8 0, ptr %i.n, align 8, !noalias !9917
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 4, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9917
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %.val21.i.i.i.i.i.i.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9917
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  %.val21.i.i.i.i.i.i.i.i.i.1 = load i8, ptr %i.p, align 1, !range !33, !alias.scope !9915, !noalias !9916, !noundef !16
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.o ; 3 uses
  store i8 0, ptr %i.q, align 8, !noalias !9917
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 4, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !9917
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i8 %.val21.i.i.i.i.i.i.i.i.i.1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !9917
  %i.r = add nuw nsw i64 %i.l, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core4iter6traits8iterator8Iterator7collect17h77a6659d25c94e5aE.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h77a6659d25c94e5aE.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h77a6659d25c94e5aE.exit, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h77a6659d25c94e5aE.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.r, %_ZN4core4iter6traits8iterator8Iterator7collect17h77a6659d25c94e5aE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %.epil.init
  %.val21.i.i.i.i.i.i.i.i.i.epil = load i8, ptr %i.s, align 1, !range !33, !alias.scope !9915, !noalias !9916, !noundef !16
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.epil.init ; 3 uses
  store i8 0, ptr %i.t, align 8, !noalias !9917
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 4, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !9917
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i8 %.val21.i.i.i.i.i.i.i.i.i.epil, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !9917
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h77a6659d25c94e5aE.exit

_ZN4core4iter6traits8iterator8Iterator7collect17h77a6659d25c94e5aE.exit: ; preds = %.preheader.i.i.i.i.i.i.epil.preheader, %_ZN4core4iter6traits8iterator8Iterator7collect17h77a6659d25c94e5aE.exit.loopexit.unr-lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.i.i.i.i"
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.u, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8to_value17hd476f3876ce19a11E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9947
  %.idx = mul nuw nsw i64 %i.f, 56                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.thread.i.i.i.i", label %bb.a

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store i64 0, ptr %i.b, align 8, !noalias !9947
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !9947
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h8da801670b225a11E.exit

bb.a:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !9948
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 9) 8) #65, !noalias !9948 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %.preheader.i.i.preheader.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %.idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66, !noalias !9947
  unreachable

.preheader.i.i.preheader.i.i.i.i:                 ; preds = %bb.a
  store i64 %i.f, ptr %i.b, align 8, !noalias !9947
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !9947
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9950)
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.c, %.preheader.i.i.preheader.i.i.i.i
  %.val20.i.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ 0, %.preheader.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9951
  invoke void @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h18705804cd257f94E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n)
          to label %bb.c unwind label %.body.i.i.i.i, !noalias !9952

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !9953
  %i.p = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9951
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %_ZN4core4iter6traits8iterator8Iterator7collect17h8da801670b225a11E.exit, label %.preheader.i.i.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.preheader.i.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !alias.scope !9954, !noalias !9955
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h8e1b4debb1a53930E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #67
          to label %bb.e unwind label %bb.d, !noalias !9947

bb.d:                                             ; preds = %.body.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !9947
  unreachable

bb.e:                                             ; preds = %.body.i.i.i.i
  resume { ptr, i32 } %i.r

_ZN4core4iter6traits8iterator8Iterator7collect17h8da801670b225a11E.exit: ; preds = %bb.c, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.thread.i.i.i.i"
  %i.t = phi ptr [ %i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af4399e7f8b30d1E.exit.i.i.thread.i.i.i.i" ], [ %i.m, %bb.c ]
  store i64 %i.f, ptr %i.t, align 8, !alias.scope !9954, !noalias !9955
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9947
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9type_name17h6eebbdf5da6b7e53E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @45, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9type_name17hb691ece44b35a87aE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @45, i64 5 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17h3d82cb80d13aeab3E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17h19738e33584dfcd4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17h4ca16f6134726dbbE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17h192d77bd3ef628eaE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17hc9159be41f5c531aE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9958, !noundef !16 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9958, !nonnull !16
  %i.f = getelementptr i8, ptr %i.e, i64 %i.b
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.g
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @30, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17hdbbc1cfb139bbc2fE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17hc89fb3ca5828a7eeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17hee452ddbe53863e2E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9961, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9961, !nonnull !16
  %i.f = getelementptr [56 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr i8, ptr %i.f, i64 -56
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.g
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @27, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17hfa33bc622efc5701E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN96_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17hf28d197d6941cea9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView5first17h273f2e0f90fb0615E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9964, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9964, !nonnull !16
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.e
end_hunk_0
begin_hunk_1_@"_ZN12thread_local20ThreadLocal$LT$T$GT$13with_capacity17hc52a529471d201bdE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12thread_local20ThreadLocal$LT$T$GT$13with_capacity17hf449c896164aba05E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [504 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.a, i8 0, i64 504, i1 false)
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #66
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.b, 3
  %.idx = sub nuw nsw i64 512, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit
  %.sroa.0.014 = phi ptr [ %i.f, %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.7.013 = phi i64 [ %i.g, %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit ], [ 0, %bb.c ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.7.013, 1
  %i.h = shl nuw i64 1, %.sroa.7.013              ; 2 uses
  %i.i = shl i64 144, %.sroa.7.013                ; 2 uses
  %exitcond = icmp eq i64 %.sroa.7.013, 56
  br i1 %exitcond, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10424
  %i.j = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10424 ; 11 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.h, 7
  %i.l = icmp samesign ult i64 %.sroa.7.013, 3
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, %.lr.ph
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66, !noalias !10425
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.m = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10426
  %i.o = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10426
  %i.p = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.p, i64 424
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10426
  %i.q = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.q, i64 568
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10426
  %i.r = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.r, i64 712
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10426
  %i.s = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.s, i64 856
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10426
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.t, i64 1000
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10426
  %i.u = add nuw nsw i64 %i.m, 8
  %i.v = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.v, i64 1144
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10426
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod21 = icmp samesign ult i64 %.sroa.7.013, 3
  call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.w = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.x = add nuw nsw i64 %i.w, 1
  %i.y = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.w
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10426
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10423

_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.j, ptr %.sroa.0.014, align 8
  %i.z = icmp eq ptr %i.f, %i.d
  br i1 %i.z, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h52202c1082ceb930E.exit, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %i.a, i64 504, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h08fcb93e8eb50795E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 10 uses
  %i.i = shl i64 %i.h, 5                          ; 5 uses
  %i.j = icmp ugt i64 %i.h, 576460752303423487
  %i.k = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h97f569ebbf05e71eE.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10458
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10458 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h97f569ebbf05e71eE.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h97f569ebbf05e71eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.o = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h97f569ebbf05e71eE.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.p = icmp ult i64 %i.h, 8
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 576460752303423480
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.q = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10459
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10459
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10459
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10459
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10459
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10459
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10459
  %i.y = add nuw nsw i64 %i.q, 8                  ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10459
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.thread.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h97f569ebbf05e71eE.exit.i.i.i.i.i.i.i.i"
  %i.aa = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ab = extractvalue { ptr, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.e

.loopexit.thread.unr-lcssa:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.thread.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %.loopexit.thread.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ac = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ac
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10459
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10455

.loopexit.thread:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.thread.unr-lcssa
  %i.af = icmp samesign ult i64 %i.h, 288230376151711744
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  %i.ai = extractvalue { ptr, i1 } %i.ag, 0
  br i1 %i.ah, label %bb.g, label %.lr.ph.i.i

bb.e:                                             ; preds = %.loopexit
  %i.aj = extractvalue { ptr, i1 } %i.aa, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10460)
  br label %bb.g

.lr.ph.i.i:                                       ; preds = %.loopexit.thread, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i"
  %.sroa.0.010.i.i = phi i64 [ %i.al, %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i" ], [ 0, %.loopexit.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.0.010.i.i, 1     ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %.val9.i.i = load i8, ptr %i.am, align 8, !range !33, !alias.scope !10460, !noundef !16
  %i.an = trunc nuw i8 %.val9.i.i to i1
  br i1 %i.an, label %bb.f, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr i8, ptr %i.ak, i64 16
  %.val8.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !10460, !nonnull !16, !noundef !16 ; 2 uses
  %i.ap = icmp eq ptr %.val8.i.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ap, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val8.i.i, %bb.f ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !10460, !nonnull !16, !noundef !16 ; 2 uses
  %i.as = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, align 16, !noalias !10460, !nonnull !16, !noundef !16
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 16, !noalias !10460, !noundef !16
  %i.aw = load i64, ptr %i.at, align 8, !range !36, !noalias !10460, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.av, i64 noundef %i.aw) #65, !noalias !10460
  %i.ax = icmp eq ptr %i.ar, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ax, label %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i
  %i.ay = icmp eq i64 %i.al, %i.h
  br i1 %i.ay, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr171drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h0ce3a30e707854c5E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #65
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.loopexit.thread, %bb.a, %.loopexit, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.aj, %bb.e ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit.thread ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !noundef !16
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0, i64 %i.ba ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store atomic i8 1, ptr %i.bc release, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.be = atomicrmw add ptr %i.bd, i64 1 release, align 8 ; 0 uses
  ret ptr %i.bb

bb.h:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.bg, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @"_ZN4core3ptr144drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$bumpalo..Bump$GT$$GT$$GT$17h2c8845d04f23e965E"(ptr nonnull %.val) #67
  resume { ptr, i32 } %i.bf
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 1 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h0c774b5ed934fb59E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN4core3ptr150drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$$LP$$RP$$GT$$GT$$u5d$$GT$$GT$17had78b101f25d13e8E.exit"

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 6 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit.thread, label %bb.c

_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit.thread: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %i.k = cmpxchg ptr %i.d, ptr null, ptr inttoptr (i64 1 to ptr) acq_rel acquire, align 8 ; 2 uses
  %i.l = extractvalue { ptr, i1 } %i.k, 1
  %i.m = extractvalue { ptr, i1 } %i.k, 0
  %.sroa.5.0.i.i.i.i.i.i.mux13 = select i1 %i.l, ptr inttoptr (i64 1 to ptr), ptr %i.m
  br label %"_ZN4core3ptr150drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$$LP$$RP$$GT$$GT$$u5d$$GT$$GT$17had78b101f25d13e8E.exit"

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10489
  %i.n = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 1) #65, !noalias !10489 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66, !noalias !10490
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit: ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.h, i1 false), !noalias !10491
  %i.p = cmpxchg ptr %i.d, ptr null, ptr %i.n acq_rel acquire, align 8 ; 2 uses
  %i.q = extractvalue { ptr, i1 } %i.p, 1         ; 2 uses
  %i.r = extractvalue { ptr, i1 } %i.p, 0         ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.mux = select i1 %i.q, ptr %i.n, ptr %i.r
  br i1 %i.q, label %"_ZN4core3ptr150drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$$LP$$RP$$GT$$GT$$u5d$$GT$$GT$17had78b101f25d13e8E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.h, i64 noundef 1) #65
  br label %"_ZN4core3ptr150drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$$LP$$RP$$GT$$GT$$u5d$$GT$$GT$17had78b101f25d13e8E.exit"

"_ZN4core3ptr150drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$$LP$$RP$$GT$$GT$$u5d$$GT$$GT$17had78b101f25d13e8E.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit.thread, %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", %bb.a
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.5.0.i.i.i.i.i.i.mux, %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit ], [ %i.r, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %.sroa.5.0.i.i.i.i.i.i.mux13, %_ZN4core4iter6traits8iterator8Iterator7collect17h583958f8bdcc1701E.exit.thread ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !16
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.t ; 2 uses
  store atomic i8 1, ptr %i.u release, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.x = atomicrmw add ptr %i.w, i64 1 release, align 8 ; 0 uses
  ret ptr %i.v
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h239a681e21363319E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 10 uses
  %i.i = shl i64 %i.h, 6                          ; 5 uses
  %i.j = icmp ugt i64 %i.h, 288230376151711743
  %i.k = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7dd901ae1399556E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10533
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10533 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7dd901ae1399556E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7dd901ae1399556E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.o = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7dd901ae1399556E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.p = icmp ult i64 %i.h, 8
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 288230376151711736
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.q = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10534
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10534
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10534
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10534
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.v, i64 312
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10534
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10534
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.x, i64 440
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10534
  %i.y = add nuw nsw i64 %i.q, 8                  ; 2 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.z, i64 504
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10534
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.thread.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7dd901ae1399556E.exit.i.i.i.i.i.i.i.i"
  %i.aa = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ab = extractvalue { ptr, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.i, label %bb.e

.loopexit.thread.unr-lcssa:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.thread.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %.loopexit.thread.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ac = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ac
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10534
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10520

.loopexit.thread:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.thread.unr-lcssa
  %i.af = icmp samesign ult i64 %i.h, 144115188075855872
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  %i.ai = extractvalue { ptr, i1 } %i.ag, 0
  br i1 %i.ah, label %bb.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %.loopexit
  %i.aj = extractvalue { ptr, i1 } %i.aa, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10535)
  br label %bb.i

.lr.ph.i.i:                                       ; preds = %.loopexit.thread, %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.al, %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i" ], [ 0, %.loopexit.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.07.i.i ; 5 uses
  %i.al = add nuw nsw i64 %.sroa.0.07.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10537)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.an = load i8, ptr %i.am, align 8, !range !33, !alias.scope !10538, !noundef !16
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.f, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10539)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10541)
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !10542 ; 2 uses
  %i.aq = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !10542, !nonnull !16, !noundef !16
  %i.as = shl nuw i64 %.val4.i.i.i.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !10542
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i": ; preds = %bb.g, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !10542 ; 2 uses
  %i.au = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.au, label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i"
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !10542, !nonnull !16, !noundef !16
  %i.aw = shl nuw i64 %.val.i.i.i.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !10542
  br label %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i"

"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i": ; preds = %bb.h, %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$GT$17h1a395269511b8132E.exit.i.i.i.i.i.i.i", %.lr.ph.i.i
  %i.ax = icmp eq i64 %i.al, %i.h
  br i1 %i.ax, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr186drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$$GT$17h8795b29f913a3fc0E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #65
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %.loopexit.thread, %bb.a, %.loopexit, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.aj, %bb.e ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit.thread ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !noundef !16
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0, i64 %i.az ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store atomic i8 1, ptr %i.bb release, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bd = atomicrmw add ptr %i.bc, i64 1 release, align 8 ; 0 uses
  ret ptr %i.ba

bb.j:                                             ; preds = %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..cell..RefCell$LT$$LP$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$C$alloc..vec..Vec$LT$h3o..index..cell..CellIndex$GT$$RP$$GT$$GT$17ha393a8d364539aabE"(ptr noalias noundef align 8 dereferenceable(56) %2) #67
  resume { ptr, i32 } %i.be
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h32551dc1c5e6a14bE"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(136) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 9 uses
  %i.i = mul i64 %i.h, 144                        ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.h, 64051194700380387
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ee7390bb3089fbfE.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10572
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10572 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ee7390bb3089fbfE.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ee7390bb3089fbfE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 12 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.m = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.m)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ee7390bb3089fbfE.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.n = icmp ult i64 %i.h, 8
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 72057594037927928
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.o = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10573
  %i.q = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10573
  %i.r = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.r, i64 424
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10573
  %i.s = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.s, i64 568
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10573
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.t, i64 712
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10573
  %i.u = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.u, i64 856
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10573
  %i.v = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.v, i64 1000
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10573
  %i.w = add nuw nsw i64 %i.o, 8                  ; 2 uses
  %i.x = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.x, i64 1144
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10573
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.w, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.y = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.z = add nuw nsw i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw [144 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.y
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10573
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10571

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8ee7390bb3089fbfE.exit.i.i.i.i.i.i.i.i"
  %i.ab = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ad = extractvalue { ptr, i1 } %i.ab, 0
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$$u5d$$GT$$GT$17h8676580a1f34c951E"(ptr nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.h)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.a, %.loopexit, %bb.e
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ad, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !16
  %i.ag = getelementptr inbounds nuw [144 x i8], ptr %.sroa.0.0, i64 %i.af ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ag, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  store atomic i8 1, ptr %i.ah release, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aj = atomicrmw add ptr %i.ai, i64 1 release, align 8 ; 0 uses
  ret ptr %i.ag

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$17h3882b6daf7e8174cE"(ptr noalias noundef nonnull align 8 dereferenceable(136) %2)
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h51e7717f82f393d3E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(664) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 9 uses
  %i.i = mul i64 %i.h, 672                        ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.h, 13725256007224368
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3635788cb0e5f4c5E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10603
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10603 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3635788cb0e5f4c5E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3635788cb0e5f4c5E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 12 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.m = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.m)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3635788cb0e5f4c5E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.n = icmp ult i64 %i.h, 8
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 18014398509481976
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.o = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 664
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10604
  %i.q = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 1336
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10604
  %i.r = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.r, i64 2008
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10604
  %i.s = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.s, i64 2680
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10604
  %i.t = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.t, i64 3352
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10604
  %i.u = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.u, i64 4024
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10604
  %i.v = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.v, i64 4696
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10604
  %i.w = add nuw nsw i64 %i.o, 8                  ; 2 uses
  %i.x = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.x, i64 5368
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10604
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.w, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.y = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.z = add nuw nsw i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw [672 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.y
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.aa, i64 664
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10604
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10602

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3635788cb0e5f4c5E.exit.i.i.i.i.i.i.i.i"
  %i.ab = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ad = extractvalue { ptr, i1 } %i.ab, 0
  invoke fastcc void @"_ZN4core3ptr283drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h82db87730f8d298fE"(ptr nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.h)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.a, %.loopexit, %bb.e
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ad, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !16
  %i.ag = getelementptr inbounds nuw [672 x i8], ptr %.sroa.0.0, i64 %i.af ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.ag, ptr noundef nonnull align 8 dereferenceable(664) %2, i64 664, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 664
  store atomic i8 1, ptr %i.ah release, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aj = atomicrmw add ptr %i.ai, i64 1 release, align 8 ; 0 uses
  ret ptr %i.ag

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h67927a68750f4444E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.al)
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h592c1fb22aab1e44E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(128) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 9 uses
  %i.i = mul i64 %i.h, 136                        ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.h, 67818912035696880
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h40834a8e893120c7E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10634
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10634 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h40834a8e893120c7E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h40834a8e893120c7E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 12 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.m = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.m)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h40834a8e893120c7E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.n = icmp ult i64 %i.h, 8
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 72057594037927928
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.o = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw [136 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10635
  %i.q = getelementptr inbounds nuw [136 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10635
  %i.r = getelementptr inbounds nuw [136 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.r, i64 400
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10635
  %i.s = getelementptr inbounds nuw [136 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.s, i64 536
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10635
  %i.t = getelementptr inbounds nuw [136 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.t, i64 672
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10635
  %i.u = getelementptr inbounds nuw [136 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.u, i64 808
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10635
  %i.v = getelementptr inbounds nuw [136 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.v, i64 944
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10635
  %i.w = add nuw nsw i64 %i.o, 8                  ; 2 uses
  %i.x = getelementptr inbounds nuw [136 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.x, i64 1080
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10635
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.w, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.y = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.z = add nuw nsw i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw [136 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.y
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10635
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10633

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h40834a8e893120c7E.exit.i.i.i.i.i.i.i.i"
  %i.ab = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ad = extractvalue { ptr, i1 } %i.ab, 0
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..cache..BalancedCaches$GT$$GT$$GT$$u5d$$GT$$GT$17hc6405519d793fa18E"(ptr nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.h)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.a, %.loopexit, %bb.e
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ad, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !16
  %i.ag = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0, i64 %i.af ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ag, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  store atomic i8 1, ptr %i.ah release, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aj = atomicrmw add ptr %i.ai, i64 1 release, align 8 ; 0 uses
  ret ptr %i.ag

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17he3a7f8715677bab2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.al)
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h853164f648f0ade3E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 10 uses
  %i.i = shl i64 %i.h, 6                          ; 5 uses
  %i.j = icmp ugt i64 %i.h, 288230376151711743
  %i.k = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf73fb8bd1d9800f9E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10671
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10671 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf73fb8bd1d9800f9E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf73fb8bd1d9800f9E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.o = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf73fb8bd1d9800f9E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.p = icmp ult i64 %i.h, 8
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 288230376151711736
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.thread:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf73fb8bd1d9800f9E.exit.i.i.i.i.i.i.i.i"
  %i.q = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.r = extractvalue { ptr, i1 } %i.q, 1
  %i.s = extractvalue { ptr, i1 } %i.q, 0
  %.sroa.10.0.i.i.i.i.i.i.i.mux14 = select i1 %i.r, ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.s
  br label %bb.f

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.t = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10672
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10672
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10672
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10672
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.y, i64 312
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10672
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.z, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10672
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.aa, i64 440
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10672
  %i.ab = add nuw nsw i64 %i.t, 8                 ; 2 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.t
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.ac, i64 504
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10672
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.unr-lcssa:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ad = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ae = add nuw nsw i64 %i.ad, 1
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ad
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10672
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10664

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.unr-lcssa
  %i.ag = icmp samesign ult i64 %i.h, 144115188075855872
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1       ; 2 uses
  %i.aj = extractvalue { ptr, i1 } %i.ah, 0       ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i.i.mux = select i1 %i.ai, ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.aj
  br i1 %i.ai, label %bb.f, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit, %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i"
  %.sroa.0.08.i.i = phi i64 [ %i.al, %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i" ], [ 0, %.loopexit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.08.i.i ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.0.08.i.i, 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.an = load i8, ptr %i.am, align 8, !range !33, !alias.scope !10673, !noundef !16
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call fastcc void @"_ZN4core3ptr167drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$17h2814927e1f6ea1ccE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ak)
  br label %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i"

"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i": ; preds = %bb.e, %.lr.ph.i.i
  %i.ap = icmp eq i64 %i.al, %i.h
  br i1 %i.ap, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr194drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$$GT$17h4574804cc3d7e0c6E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #65
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.thread, %.loopexit, %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux, %.loopexit ], [ %i.aj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux14, %.loopexit.thread ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !16
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0, i64 %i.ar ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store atomic i8 1, ptr %i.at release, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.av = atomicrmw add ptr %i.au, i64 1 release, align 8 ; 0 uses
  ret ptr %i.as

bb.g:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr167drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$17h2814927e1f6ea1ccE"(ptr noalias noundef align 8 dereferenceable(56) %2) #67
  resume { ptr, i32 } %i.aw
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17h8c5cab08a52070abE"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 9 uses
  %i.i = mul i64 %i.h, 112                        ; 4 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.h, 82351536043346212
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb9ff64c3ef31347E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10709
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10709 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb9ff64c3ef31347E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb9ff64c3ef31347E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.m = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.m)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb9ff64c3ef31347E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.n = icmp ult i64 %i.h, 8
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 144115188075855864
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.thread:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hcb9ff64c3ef31347E.exit.i.i.i.i.i.i.i.i"
  %i.o = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.p = extractvalue { ptr, i1 } %i.o, 1
  %i.q = extractvalue { ptr, i1 } %i.o, 0
  %.sroa.10.0.i.i.i.i.i.i.i.mux14 = select i1 %i.p, ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.q
  br label %bb.f

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.r = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10710
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10710
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.u, i64 328
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10710
  %i.v = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.v, i64 440
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10710
  %i.w = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.w, i64 552
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10710
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.x, i64 664
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10710
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.y, i64 776
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10710
  %i.z = add nuw nsw i64 %i.r, 8                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.aa, i64 888
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10710
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.unr-lcssa:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.z, %.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ab = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ab
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10710
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10702

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.unr-lcssa
  %i.ae = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.af = extractvalue { ptr, i1 } %i.ae, 1       ; 2 uses
  %i.ag = extractvalue { ptr, i1 } %i.ae, 0       ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i.i.mux = select i1 %i.af, ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.ag
  br i1 %i.af, label %bb.f, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit, %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h44ca3e98c4e2d0c1E.exit.i.i"
  %.sroa.0.08.i.i = phi i64 [ %i.ai, %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h44ca3e98c4e2d0c1E.exit.i.i" ], [ 0, %.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [112 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.08.i.i ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.0.08.i.i, 1      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !range !33, !alias.scope !10711, !noundef !16
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.e, label %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h44ca3e98c4e2d0c1E.exit.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  tail call fastcc void @"_ZN4core3ptr240drop_in_place$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$17h6553be1d09442cacE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.am)
  br label %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h44ca3e98c4e2d0c1E.exit.i.i"

"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h44ca3e98c4e2d0c1E.exit.i.i": ; preds = %bb.e, %.lr.ph.i.i
  %i.an = icmp eq i64 %i.ai, %i.h
  br i1 %i.an, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr294drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$$GT$$GT$17h44ca3e98c4e2d0c1E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #65
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.thread, %.loopexit, %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux, %.loopexit ], [ %i.ag, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux14, %.loopexit.thread ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !16
  %i.aq = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0, i64 %i.ap ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aq, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  store atomic i8 1, ptr %i.ar release, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.at = atomicrmw add ptr %i.as, i64 1 release, align 8 ; 0 uses
  ret ptr %i.aq

bb.g:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call fastcc void @"_ZN4core3ptr240drop_in_place$LT$$LP$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$C$std..collections..hash..map..HashMap$LT$h3o..index..cell..CellIndex$C$roaring..bitmap..RoaringBitmap$GT$$RP$$GT$17h6553be1d09442cacE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.av)
  resume { ptr, i32 } %i.au
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17hdc15164ce98c6764E"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 10 uses
  %i.i = shl i64 %i.h, 5                          ; 5 uses
  %i.j = icmp ugt i64 %i.h, 576460752303423487
  %i.k = icmp ugt i64 %i.i, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h69a2f8a3f202e172E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10743
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10743 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h69a2f8a3f202e172E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h69a2f8a3f202e172E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.o = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h69a2f8a3f202e172E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.p = icmp ult i64 %i.h, 8
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 576460752303423480
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.q = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10744
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10744
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10744
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10744
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10744
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10744
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10744
  %i.y = add nuw nsw i64 %i.q, 8                  ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.q
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10744
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.thread.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h69a2f8a3f202e172E.exit.i.i.i.i.i.i.i.i"
  %i.aa = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ab = extractvalue { ptr, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.e

.loopexit.thread.unr-lcssa:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.thread.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %.loopexit.thread.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ac = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ac
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10744
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10740

.loopexit.thread:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.thread.unr-lcssa
  %i.af = icmp samesign ult i64 %i.h, 288230376151711744
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ah = extractvalue { ptr, i1 } %i.ag, 1
  %i.ai = extractvalue { ptr, i1 } %i.ag, 0
  br i1 %i.ah, label %bb.g, label %.lr.ph.i.i

bb.e:                                             ; preds = %.loopexit
  %i.aj = extractvalue { ptr, i1 } %i.aa, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10745)
  br label %bb.g

.lr.ph.i.i:                                       ; preds = %.loopexit.thread, %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i"
  %.sroa.0.010.i.i = phi i64 [ %i.al, %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i" ], [ 0, %.loopexit.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.0.010.i.i, 1     ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  %.val9.i.i = load i8, ptr %i.am, align 8, !range !33, !alias.scope !10745, !noundef !16
  %i.an = trunc nuw i8 %.val9.i.i to i1
  br i1 %i.an, label %bb.f, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr i8, ptr %i.ak, i64 16
  %.val8.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !10745, !nonnull !16, !noundef !16 ; 2 uses
  %i.ap = icmp eq ptr %.val8.i.i, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ap, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.val8.i.i, %bb.f ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !10745, !nonnull !16, !noundef !16 ; 2 uses
  %i.as = load ptr, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !10745, !nonnull !16, !noundef !16
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 16, !noalias !10745, !noundef !16
  %i.aw = load i64, ptr %i.at, align 8, !range !36, !noalias !10745, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.av, i64 noundef %i.aw) #65, !noalias !10745
  %i.ax = icmp eq ptr %i.ar, @_ZN7bumpalo11EMPTY_CHUNK17h8006d241046b45ffE
  br i1 %i.ax, label %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i
  %i.ay = icmp eq i64 %i.al, %i.h
  br i1 %i.ay, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr195drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$$GT$17h62bfbc1ed79aa9fbE.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #65
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.loopexit.thread, %bb.a, %.loopexit, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.aj, %bb.e ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit.thread ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !noundef !16
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0, i64 %i.ba ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store atomic i8 1, ptr %i.bc release, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.be = atomicrmw add ptr %i.bd, i64 1 release, align 8 ; 0 uses
  ret ptr %i.bb

bb.h:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.bg, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @"_ZN4core3ptr168drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..Cell$LT$bumpalo..Bump$GT$$GT$$GT$$GT$17h82d7d1b48f8230f3E"(ptr nonnull %.val) #67
  resume { ptr, i32 } %i.bf
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17hfe958db46c78074fE"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 9 uses
  %i.i = mul i64 %i.h, 96                         ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.h, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha2a685fd0d8c4c31E.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10775
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10775 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha2a685fd0d8c4c31E.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha2a685fd0d8c4c31E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 12 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.m = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.m)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha2a685fd0d8c4c31E.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.n = icmp ult i64 %i.h, 8
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 144115188075855864
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.o = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10776
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10776
  %i.r = getelementptr inbounds nuw [96 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.r, i64 280
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10776
  %i.s = getelementptr inbounds nuw [96 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.s, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10776
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10776
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.u, i64 568
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10776
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.v, i64 664
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10776
  %i.w = add nuw nsw i64 %i.o, 8                  ; 2 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.x, i64 760
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10776
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.w, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.y = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.z = add nuw nsw i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw [96 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.y
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10776
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10774

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha2a685fd0d8c4c31E.exit.i.i.i.i.i.i.i.i"
  %i.ab = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.ac = extractvalue { ptr, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ad = extractvalue { ptr, i1 } %i.ab, 0
  invoke fastcc void @"_ZN4core3ptr269drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..fields_ids_map..global..GlobalFieldsIdsMap$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h1520864a00012fe7E"(ptr nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.h)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.a, %.loopexit, %bb.e
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i, %.loopexit ], [ %i.ad, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !16
  %i.ag = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0, i64 %i.af ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store atomic i8 1, ptr %i.ah release, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aj = atomicrmw add ptr %i.ai, i64 1 release, align 8 ; 0 uses
  ret ptr %i.ag

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$milli..fields_ids_map..global..GlobalFieldsIdsMap$GT$17h326daec8e6a13420E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.al)
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12thread_local20ThreadLocal$LT$T$GT$6insert17hfe9d75765adbe61dE"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = icmp ult i64 %i.b, 63
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !16 ; 9 uses
  %i.i = mul i64 %i.h, 104                        ; 4 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.h, 88686269585142075
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h77c5f03894c3903fE.exit.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !10812
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #65, !noalias !10812 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h77c5f03894c3903fE.exit.i.i.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h77c5f03894c3903fE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 15 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.h, %bb.c ]
  %i.m = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.m)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h77c5f03894c3903fE.exit.i.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.n = icmp ult i64 %i.h, 8
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 144115188075855864
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.thread:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h77c5f03894c3903fE.exit.i.i.i.i.i.i.i.i"
  %i.o = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.p = extractvalue { ptr, i1 } %i.o, 1
  %i.q = extractvalue { ptr, i1 } %i.o, 0
  %.sroa.10.0.i.i.i.i.i.i.i.mux14 = select i1 %i.p, ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.q
  br label %bb.f

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.r = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw [104 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !10813
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !10813
  %i.u = getelementptr inbounds nuw [104 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !10813
  %i.v = getelementptr inbounds nuw [104 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.v, i64 408
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !10813
  %i.w = getelementptr inbounds nuw [104 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.w, i64 512
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !10813
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.x, i64 616
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !10813
  %i.y = getelementptr inbounds nuw [104 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.y, i64 720
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !10813
  %i.z = add nuw nsw i64 %i.r, 8                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [104 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.r
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.aa, i64 824
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !10813
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.loopexit.unr-lcssa:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.z, %.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ab = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw [104 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ab
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !10813
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !10805

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.loopexit.unr-lcssa
  %i.ae = cmpxchg ptr %i.d, ptr null, ptr %.sroa.10.0.i.i.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.af = extractvalue { ptr, i1 } %i.ae, 1       ; 2 uses
  %i.ag = extractvalue { ptr, i1 } %i.ae, 0       ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i.i.mux = select i1 %i.af, ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.ag
  br i1 %i.af, label %bb.f, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit, %"_ZN4core3ptr246drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17haa8395c04b13eecbE.exit.i.i"
  %.sroa.0.08.i.i = phi i64 [ %i.ai, %"_ZN4core3ptr246drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17haa8395c04b13eecbE.exit.i.i" ], [ 0, %.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.08.i.i ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.0.08.i.i, 1      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.ak = load i8, ptr %i.aj, align 8, !range !33, !alias.scope !10814, !noundef !16
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.e, label %"_ZN4core3ptr246drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17haa8395c04b13eecbE.exit.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call fastcc void @"_ZN4core3ptr219drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$17h3352509c2b80af98E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.ah)
  br label %"_ZN4core3ptr246drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17haa8395c04b13eecbE.exit.i.i"

"_ZN4core3ptr246drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17haa8395c04b13eecbE.exit.i.i": ; preds = %bb.e, %.lr.ph.i.i
  %i.am = icmp eq i64 %i.ai, %i.h
  br i1 %i.am, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr246drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17haa8395c04b13eecbE.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8) #65
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.thread, %.loopexit, %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %.sroa.0.0 = phi ptr [ %i.e, %bb.a ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux, %.loopexit ], [ %i.ag, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i.mux14, %.loopexit.thread ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !noundef !16
  %i.ap = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %i.ao ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ap, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store atomic i8 1, ptr %i.aq release, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.as = atomicrmw add ptr %i.ar, i64 1 release, align 8 ; 0 uses
  ret ptr %i.ap

bb.g:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr219drop_in_place$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$17h3352509c2b80af98E"(ptr noalias noundef align 8 dereferenceable(96) %2) #67
  resume { ptr, i32 } %i.at
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN12tracing_core10dispatcher11get_default17h68c63690205e6a72E(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 4 uses
  %i.f = load atomic i64, ptr @_ZN12tracing_core10dispatcher12SCOPED_COUNT17h69b30b7e1ce41d2cE acquire, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i64, ptr @_ZN12tracing_core10dispatcher11GLOBAL_INIT17h05c27f98ff567685E seq_cst, align 8
  %.not = icmp eq i64 %i.h, 2
  %.sroa.0.0 = select i1 %.not, ptr @_ZN12tracing_core10dispatcher15GLOBAL_DISPATCH17hf12541b9bb3728d3E, ptr @_ZN12tracing_core10dispatcher4NONE17hedaa4392ce88cb68E
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10840)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !10840, !noalias !10841, !noundef !16 ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  %..i = select i1 %.not.i, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10842
  store i64 %..i, ptr %i.e, align 8, !noalias !10842
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !10842
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load <2 x ptr>, ptr %1, align 8, !alias.scope !10840, !noalias !10841
  %i.l = load ptr, ptr %1, align 8, !alias.scope !10840, !noalias !10841, !nonnull !16, !align !21, !noundef !16
  store <2 x ptr> %i.k, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !10842
  call void @_ZN7tracing4span4Span9make_with17h9f0bb4a9b48c8367E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0), !noalias !10840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10842
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10843)
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN12tracing_core10dispatcher13CURRENT_STATE29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h4527d513e435cb79E") ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !range !23, !noalias !10844, !noundef !16
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h5988edffedec9cb1E.exit.thread"
  ], !prof !37

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17he2f634dc7dfc9337E), !noalias !10844
  store i8 1, ptr %i.n, align 8, !noalias !10844
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10844
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10845)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.q = load i8, ptr %i.p, align 8, !range !33, !noalias !10846, !noundef !16
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8, !noalias !10846
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10847)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !10848, !noalias !10849, !noundef !16 ; 2 uses
  store i64 0, ptr %i.s, align 8, !alias.scope !10848, !noalias !10849
  %i.u = load ptr, ptr %1, align 8, !alias.scope !10848, !noalias !10849, !nonnull !16, !align !21, !noundef !16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !10848, !noalias !10849, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.t, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10850
  store i64 %..i.i.i, ptr %i.c, align 8, !noalias !10850
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.t, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !10850
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !10850
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.w, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !10850
  call void @_ZN7tracing4span4Span9make_with17h9f0bb4a9b48c8367E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_ZN12tracing_core10dispatcher4NONE17hedaa4392ce88cb68E), !noalias !10851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10850
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h5988edffedec9cb1E.exit"

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.m, align 8, !noalias !10846, !noundef !16 ; 2 uses
  %i.y = icmp ult i64 %i.x, 9223372036854775807
  br i1 %i.y, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #66
          to label %.noexc.i.i unwind label %bb.k, !noalias !10846

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = add nuw nsw i64 %i.x, 1
  store i64 %i.z, ptr %i.m, align 8, !noalias !10846
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10852)
  %i.ab = load i64, ptr %i.aa, align 8, !range !25, !alias.scope !10852, !noalias !10846, !noundef !16
  %.not.i.i.i.i.i = icmp eq i64 %i.ab, 2
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = load atomic i64, ptr @_ZN12tracing_core10dispatcher11GLOBAL_INIT17h05c27f98ff567685E seq_cst, align 8, !noalias !10853
  %.not2.i.i.i.i.i = icmp eq i64 %i.ac, 2
  %_ZN12tracing_core10dispatcher15GLOBAL_DISPATCH17hf12541b9bb3728d3E._ZN12tracing_core10dispatcher4NONE17hedaa4392ce88cb68E.i.i.i.i.i = select i1 %.not2.i.i.i.i.i, ptr @_ZN12tracing_core10dispatcher15GLOBAL_DISPATCH17hf12541b9bb3728d3E, ptr @_ZN12tracing_core10dispatcher4NONE17hedaa4392ce88cb68E
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %_ZN12tracing_core10dispatcher15GLOBAL_DISPATCH17hf12541b9bb3728d3E._ZN12tracing_core10dispatcher4NONE17hedaa4392ce88cb68E.i.i.i.i.i, %bb.j ], [ %i.aa, %bb.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10854)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !10855, !noalias !10856, !noundef !16 ; 2 uses
  store i64 0, ptr %i.ae, align 8, !alias.scope !10855, !noalias !10856
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !10855, !noalias !10856, !nonnull !16, !align !21, !noundef !16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !10855, !noalias !10856, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  %.not.i7.i.i = icmp eq i64 %i.af, 0
  %..i8.i.i = select i1 %.not.i7.i.i, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10857
end_hunk_1
begin_hunk_2_@"_ZN6grenad6reader13reader_cursor21ReaderCursor$LT$R$GT$12move_on_next17hffb70bb1fd1666adE":bb.a
  %.val1.i.i.i.i.i86 = load ptr, ptr %i.sv, align 8, !alias.scope !44750, !noalias !44744, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i86, i64 noundef %.val.i.i.i.i.i85, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !44751
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2471038444ecc65eE.exit.i.i.i.i87"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2471038444ecc65eE.exit.i.i.i.i87": ; preds = %bb.eb, %bb.ea
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i88 = load i64, ptr %i.sw, align 8, !alias.scope !44752, !noalias !44744 ; 2 uses
  %i.sx = icmp eq i64 %.val.i.i.i.i88, 0
  br i1 %i.sx, label %"_ZN4core6option15Option$LT$T$GT$6insert17h16743ce1771e15cdE.exit", label %bb.ec

bb.ec:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2471038444ecc65eE.exit.i.i.i.i87"
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val1.i.i.i.i89 = load ptr, ptr %i.sy, align 8, !alias.scope !44752, !noalias !44744, !nonnull !16, !noundef !16
  %i.sz = shl nuw i64 %.val.i.i.i.i88, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i89, i64 noundef %i.sz, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !44753
  br label %"_ZN4core6option15Option$LT$T$GT$6insert17h16743ce1771e15cdE.exit"

"_ZN4core6option15Option$LT$T$GT$6insert17h16743ce1771e15cdE.exit": ; preds = %bb.dz, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2471038444ecc65eE.exit.i.i.i.i87", %bb.ec
  store i64 0, ptr %1, align 8, !alias.scope !44754
  %.sroa.294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 %.sroa.0.1108, ptr %.sroa.294.0..sroa_idx, align 8, !alias.scope !44754
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.8.1107, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !44754
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.sroa.12.1106, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !44754
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.16, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !44755)
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.tb = load i64, ptr %i.ta, align 8, !alias.scope !44755, !noalias !44756, !noundef !16
  %.not.i91 = icmp eq i64 %i.tb, 0
  br i1 %.not.i91, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6insert17h16743ce1771e15cdE.exit"
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.td = load ptr, ptr %i.tc, align 8, !alias.scope !44755, !noalias !44756, !nonnull !16, !noundef !16
  %i.te = load i64, ptr %i.td, align 8, !noalias !44757, !noundef !16 ; 2 uses
  store i64 1, ptr %1, align 8, !alias.scope !44755, !noalias !44756
  store i64 %i.te, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !44755, !noalias !44756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44758
  call void @_ZN6grenad5block5Block8entry_at17hfdd34c738526eb46E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.294.0..sroa_idx, i64 noundef %i.te), !noalias !44759
  %i.tf = load ptr, ptr %i.b, align 8, !noalias !44758, !noundef !16 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.tf, null           ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.th = load i64, ptr %i.tg, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8, !nonnull !16, !align !22
  %i.tk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.tl = load i64, ptr %i.tk, align 8
  %.sroa.596.0 = select i1 %.not.i.i92, i64 undef, i64 %i.th
  %.sroa.6.0 = select i1 %.not.i.i92, ptr undef, ptr %i.tj
  %.sroa.7.0 = select i1 %.not.i.i92, i64 undef, i64 %i.tl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44758
  br label %"_ZN6grenad5block20BlockCursor$LT$B$GT$13move_on_first17h319f01aad825c339E.exit"

bb.ee:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6insert17h16743ce1771e15cdE.exit"
  store i64 0, ptr %1, align 8, !alias.scope !44755, !noalias !44756
  br label %"_ZN6grenad5block20BlockCursor$LT$B$GT$13move_on_first17h319f01aad825c339E.exit"

"_ZN6grenad5block20BlockCursor$LT$B$GT$13move_on_first17h319f01aad825c339E.exit": ; preds = %bb.ee, %bb.ed
  %.sroa.095.0 = phi ptr [ null, %bb.ee ], [ %i.tf, %bb.ed ]
  %.sroa.596.1 = phi i64 [ undef, %bb.ee ], [ %.sroa.596.0, %bb.ed ]
  %.sroa.6.1 = phi ptr [ undef, %bb.ee ], [ %.sroa.6.0, %bb.ed ]
  %.sroa.7.1 = phi i64 [ undef, %bb.ee ], [ %.sroa.7.0, %bb.ed ]
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.095.0, ptr %i.tm, align 8
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.596.1, ptr %.sroa.596.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.eg

bb.ef:                                            ; preds = %"_ZN6grenad6reader13reader_cursor21ReaderCursor$LT$R$GT$21next_block_from_index17hc0119c27209b7144E.exit.thread102"
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.tn, align 8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %"_ZN6grenad5block20BlockCursor$LT$B$GT$13move_on_first17h319f01aad825c339E.exit"
  store i64 0, ptr %0, align 8
  br label %bb.eh

bb.eh:                                            ; preds = %"_ZN6grenad6reader13reader_cursor21ReaderCursor$LT$R$GT$13move_on_first17h99fd4a88b0e5bb7fE.exit", %bb.bf, %bb.eg, %"_ZN6grenad6reader13reader_cursor21ReaderCursor$LT$R$GT$21next_block_from_index17hc0119c27209b7144E.exit.thread"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6intmap19IntMap$LT$K$C$V$GT$14increase_cache17h67718a83ac81a5d9E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i.i = alloca [144 x i8], align 8       ; 8 uses
  %.sroa.5.sroa.5 = alloca [144 x i8], align 8    ; 2 uses
  %i.a = alloca [96 x i8], align 8                ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !noundef !16
  %i.d = add i32 %i.c, 1                          ; 3 uses
  store i32 %i.d, ptr %i.b, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread", label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.a, %bb.c
  %.sroa.016.0.i = phi i64 [ %.sroa.016.1.i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  %.sroa.09.0.i = phi i64 [ %i.j, %bb.c ], [ 2, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %i.i, %bb.c ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = and i32 %.sroa.0.0.i, 1
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader22.i
  %i.g = mul i64 %.sroa.09.0.i, %.sroa.016.0.i    ; 5 uses
  %i.h = icmp eq i32 %.sroa.0.0.i, 1
  br i1 %i.h, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader22.i
  %.sroa.016.1.i = phi i64 [ %i.g, %bb.b ], [ %.sroa.016.0.i, %.preheader22.i ]
  %i.i = lshr i32 %.sroa.0.0.i, 1
  %i.j = mul i64 %.sroa.09.0.i, %.sroa.09.0.i
  br label %.preheader22.i

"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread": ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 -1, ptr %i.k, align 8
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i

"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit": ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = add i64 %i.g, -1
  store i64 %i.m, ptr %i.l, align 8
  %i.n = mul i64 %i.g, 24                         ; 2 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.g, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !45

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread", %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit"
  %i.o = phi i64 [ 0, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread" ], [ %i.n, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit" ] ; 3 uses
  %i.p = phi ptr [ %i.k, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread" ], [ %i.l, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit" ]
  %.sroa.0.068 = phi i64 [ 0, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit.thread" ], [ %i.g, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit" ] ; 8 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4cb9ab572f32a486E.exit.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !44820
  %i.r = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 9) 8) #65, !noalias !44820 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4cb9ab572f32a486E.exit.i.i.i.i.i.i"

bb.e:                                             ; preds = %bb.d, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit"
  %i.t = phi i64 [ %i.o, %bb.d ], [ %i.n, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit" ]
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %"_ZN4core3num23_$LT$impl$u20$usize$GT$3pow17h8c35332695047191E.exit" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #66, !noalias !44821
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4cb9ab572f32a486E.exit.i.i.i.i.i.i": ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.r, %bb.d ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.068, %bb.d ] ; 2 uses
  %i.u = icmp samesign ule i64 %.sroa.0.068, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.u)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.068, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4cb9ab572f32a486E.exit.i.i.i.i.i.i"
  %xtraiter = and i64 %.sroa.0.068, 3             ; 3 uses
  %i.v = icmp samesign ult i64 %.sroa.0.068, 4
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.0.068, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new
  %i.w = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.w ; 3 uses
  store i64 0, ptr %i.x, align 8, !noalias !44822
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !44822
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !44822
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.w ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !44822
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !44822
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !44822
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.w ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 0, ptr %i.ab, align 8, !noalias !44822
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !44822
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !44822
  %i.ac = add nuw nsw i64 %i.w, 4                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.w ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i64 0, ptr %i.ae, align 8, !noalias !44822
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !44822
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !44822
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ac, %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit.loopexit.unr-lcssa ]
  %lcmp.mod202 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.af = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ag = add nuw nsw i64 %i.af, 1
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.af ; 3 uses
  store i64 0, ptr %i.ah, align 8, !noalias !44822
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !44822
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !44822
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !44788

_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4cb9ab572f32a486E.exit.i.i.i.i.i.i"
  %i.ai = ptrtoint ptr %.sroa.10.0.i.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !44823, !noalias !44824
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %0, align 8, !alias.scope !44823, !noalias !44824
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.aj, align 8, !alias.scope !44825, !noalias !44826
  store i64 %i.ai, ptr %i.aj, align 8, !alias.scope !44825, !noalias !44826
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.2.i.i = load i64, ptr %i.ak, align 8, !alias.scope !44827, !noalias !44828 ; 2 uses
  store i64 %.sroa.0.068, ptr %i.ak, align 8, !alias.scope !44827, !noalias !44828
  %.sroa.0.0.copyload.i.i.i.1.i.i.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.1.i.i ; 2 uses
  %i.al = inttoptr i64 %.sroa.0.0.copyload.i.i.i.1.i.i.fr to ptr ; 4 uses
  %i.am = icmp ult i64 %.sroa.0.0.copyload.i.i.i.2.i.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.sroa.0.0.copyload.i.i.i.2.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.al, ptr %i.a, align 8
  %.sroa.012.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %.sroa.012.sroa.2.0..sroa_idx, align 8
  %.sroa.012.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.012.sroa.3.0..sroa_idx, align 8
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.an, ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.not.i3.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i.fr, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.p, %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit
  %i.ar = phi i64 [ %i.bd, %bb.p ], [ %.sroa.0.068, %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit ]
  %.promoted63.i65 = phi ptr [ %.promoted63.i62, %bb.p ], [ %i.al, %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit ] ; 2 uses
  %.promoted59.i45 = phi ptr [ %.promoted59.i42, %bb.p ], [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit ] ; 3 uses
  %.promoted61.i40 = phi i64 [ %.promoted61.i37, %bb.p ], [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit ] ; 4 uses
  %.promoted60.i34 = phi ptr [ %.promoted60.i35, %bb.p ], [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit ] ; 6 uses
  %i.as = phi ptr [ %i.be, %bb.p ], [ null, %_ZN4core4iter6traits8iterator8Iterator7collect17ha0805acf44408656E.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44829)
  br i1 %.not.i3.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44830)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.not.i.us.i = icmp eq ptr %i.as, null
  br i1 %.not.i.us.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hdab87dc3502ea28aE.exit.thread.split.us.i", label %bb.g

bb.g:                                             ; preds = %.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44832)
  %i.at = icmp eq ptr %.promoted60.i34, %.promoted59.i45
  br i1 %i.at, label %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.thread.i.us.i, label %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i

_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.promoted60.i34, i64 160 ; 2 uses
  store ptr %i.au, ptr %i.ap, align 8, !alias.scope !44833, !noalias !44834
  %.sroa.0.0.copyload8.i.us.i = load i64, ptr %.promoted60.i34, align 8, !noalias !44835
  %.sroa.5.0..sroa_idx9.i.us.i = getelementptr inbounds nuw i8, ptr %.promoted60.i34, i64 8
  %.sroa.5.0.copyload10.i.us.i = load i64, ptr %.sroa.5.0..sroa_idx9.i.us.i, align 8, !noalias !44835 ; 2 uses
  %.sroa.7.0..sroa_idx11.i.us.i = getelementptr inbounds nuw i8, ptr %.promoted60.i34, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.0..sroa_idx11.i.us.i, i64 144, i1 false), !noalias !44835
  %.not6.i.us.i = icmp eq i64 %.sroa.5.0.copyload10.i.us.i, 7
  br i1 %.not6.i.us.i, label %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.thread.i.us.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread"

_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.thread.i.us.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i, %bb.g
  %i.av = icmp eq i64 %.promoted61.i40, 0
  br i1 %i.av, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread46.us.i, label %bb.h

bb.h:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.thread.i.us.i
  %i.aw = mul nuw i64 %.promoted61.i40, 160
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !44836
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread46.us.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread46.us.i: ; preds = %bb.h, %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.thread.i.us.i
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !44837, !noalias !44838
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hdab87dc3502ea28aE.exit.thread.split.us.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hdab87dc3502ea28aE.exit.thread.split.us.i": ; preds = %.split.us.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread46.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44839)
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hdab87dc3502ea28aE.exit.thread.i"

.split.i:                                         ; preds = %bb.f, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit.i"
  %.promoted63.i64 = phi ptr [ %i.bl, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit.i" ], [ %.promoted63.i65, %bb.f ] ; 6 uses
  %.promoted59.i44 = phi ptr [ %i.bn, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit.i" ], [ %.promoted59.i45, %bb.f ] ; 2 uses
  %.promoted61.i39 = phi i64 [ %.sroa.024.0.copyload25.i, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit.i" ], [ %.promoted61.i40, %bb.f ] ; 3 uses
  %.promoted60.i31 = phi ptr [ %.sroa.826.sroa.0.0.copyload.i, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit.i" ], [ %.promoted60.i34, %bb.f ] ; 6 uses
  %i.ax = phi ptr [ %.sroa.826.sroa.0.0.copyload.i, %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit.i" ], [ %i.as, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44830)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44832)
  %i.ay = icmp eq ptr %.promoted60.i31, %.promoted59.i44
  br i1 %i.ay, label %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.i

_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.i: ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.promoted60.i31, i64 160
  store ptr %i.az, ptr %i.ap, align 8, !alias.scope !44833, !noalias !44834
  %.sroa.0.0.copyload8.i.i = load i64, ptr %.promoted60.i31, align 8, !noalias !44835
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %.promoted60.i31, i64 8
  %.sroa.5.0.copyload10.i.i = load i64, ptr %.sroa.5.0..sroa_idx9.i.i, align 8, !noalias !44835 ; 2 uses
  %.sroa.7.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.promoted60.i31, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.0..sroa_idx11.i.i, i64 144, i1 false), !noalias !44835
  %.not6.i.i = icmp eq i64 %.sroa.5.0.copyload10.i.i, 7
  br i1 %.not6.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.thread.i.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread.loopexit"

_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.thread.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.i, %bb.i
  %i.ba = icmp eq i64 %.promoted61.i39, 0
  br i1 %i.ba, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread46.i, label %bb.j

bb.j:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.thread.i.i
  %i.bb = mul nuw i64 %.promoted61.i39, 160
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !44836
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread46.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread46.i: ; preds = %bb.j, %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.thread.i.i
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !44837, !noalias !44838
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread.i

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread.loopexit": ; preds = %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.promoted60.i31, i64 160
  %.pre = load i64, ptr %i.ak, align 8
  br label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread"

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread": ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread.loopexit", %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i
  %i.bd = phi i64 [ %i.ar, %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i ], [ %.pre, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread.loopexit" ] ; 3 uses
  %.promoted63.i62 = phi ptr [ %.promoted63.i65, %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i ], [ %.promoted63.i64, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread.loopexit" ]
  %.promoted59.i42 = phi ptr [ %.promoted59.i45, %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i ], [ %.promoted59.i44, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread.loopexit" ]
  %.promoted61.i37 = phi i64 [ %.promoted61.i40, %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i ], [ %.promoted61.i39, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread.loopexit" ]
  %.promoted60.i35 = phi ptr [ %i.au, %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i ], [ %i.bc, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread.loopexit" ]
  %i.be = phi ptr [ %i.as, %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i ], [ %i.ax, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread.loopexit" ]
  %.us-phi.i = phi i64 [ %.sroa.0.0.copyload8.i.us.i, %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i ], [ %.sroa.0.0.copyload8.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread.loopexit" ] ; 3 uses
  %.us-phi58.i = phi i64 [ %.sroa.5.0.copyload10.i.us.i, %_ZN4core3ops8function6FnOnce9call_once17h53b9f4dc2abd7c45E.exit.i.us.i ], [ %.sroa.5.0.copyload10.i.i, %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4e7aa60da7d003dfE.exit.thread.loopexit" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.5.sroa.5, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.i.i, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.046.sroa.0.0.extract.trunc = trunc i64 %.us-phi.i to i32
  %.sroa.046.sroa.6.0.extract.shift = lshr i64 %.us-phi.i, 32
  %.sroa.046.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.046.sroa.6.0.extract.shift to i32
  %i.bf = load i64, ptr %i.p, align 8, !noundef !16
  %i.bg = mul i64 %.us-phi.i, 4294967291
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = and i64 %i.bf, %i.bh                    ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.bd
  br i1 %i.bj, label %bb.l, label %bb.n

_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread.i: ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread46.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44840)
  %i.bk = icmp eq ptr %.promoted63.i64, %i.an
  br i1 %i.bk, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hdab87dc3502ea28aE.exit.thread.i", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hdab87dc3502ea28aE.exit.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hdab87dc3502ea28aE.exit.i": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17hcd360412d3b0ea36E.exit.thread.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.promoted63.i64, i64 24 ; 2 uses
  store ptr %i.bl, ptr %.sroa.012.sroa.2.0..sroa_idx, align 8, !alias.scope !44841, !noalias !44842
  %.sroa.024.0.copyload25.i = load i64, ptr %.promoted63.i64, align 8, !noalias !44843 ; 3 uses
  %.not1.i = icmp eq i64 %.sroa.024.0.copyload25.i, -9223372036854775808
  br i1 %.not1.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hdab87dc3502ea28aE.exit.thread.i", label %"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit.i"

"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u32$C$zerometry..Zerometry$RP$$GT$$GT$$GT$17h853e39c848ba81baE.exit.i": ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hdab87dc3502ea28aE.exit.i"
  %.sroa.826.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %.promoted63.i64, i64 8
  %.sroa.826.sroa.0.0.copyload.i = load ptr, ptr %.sroa.826.0..sroa_idx27.i, align 8, !noalias !44843, !nonnull !16, !noundef !16 ; 5 uses
  %.sroa.826.sroa.5.0..sroa.826.0..sroa_idx27.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.promoted63.i64, i64 16
  %.sroa.826.sroa.5.0.copyload.i = load i64, ptr %.sroa.826.sroa.5.0..sroa.826.0..sroa_idx27.sroa_idx.i, align 8, !noalias !44843 ; 2 uses
  %i.bm = icmp ult i64 %.sroa.826.sroa.5.0.copyload.i, 57646075230342349
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [160 x i8], ptr %.sroa.826.sroa.0.0.copyload.i, i64 %.sroa.826.sroa.5.0.copyload.i ; 2 uses
end_hunk_2
