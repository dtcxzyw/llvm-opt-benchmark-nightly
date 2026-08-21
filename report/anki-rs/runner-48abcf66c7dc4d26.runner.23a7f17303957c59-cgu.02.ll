Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/runner-48abcf66c7dc4d26.runner.23a7f17303957c59-cgu.02?download=true
inline.NumInlined: 413
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN4core3ptr97drop_in_place$LT$tower_http..follow_redirect..BodyRepr$LT$reqwest..async_impl..body..Body$GT$$GT$17h1673dc627e080305E":bb.a

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.r) #23, !noalias !699
  br label %"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E.exit"

bb.h:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !131, !invariant.load !5, !noalias !699 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !132, !invariant.load !5, !noalias !699 ; 2 uses
  %i.z = icmp ult i64 %i.y, -9223372036854775807
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29851dc33d6b0cbfE.exit4.i.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.y) #23, !noalias !699
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29851dc33d6b0cbfE.exit4.i.i.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29851dc33d6b0cbfE.exit4.i.i.i.i.i": ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.u

"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E.exit": ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr98drop_in_place$LT$which..finder..WhichFindIterator$LT$$RF$which..sys..RealSys$C$which..Noop$GT$$GT$17h49b04b00fa00e9e7E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4272e7ab86cb2e75E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$17ha5d5d67601fda1a6E.exit.i" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$$GT$17h12683d6b033cceefE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) #21
          to label %.body.i unwind label %bb.j

"_ZN4core3ptr78drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$17ha5d5d67601fda1a6E.exit.i": ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !range !46, !alias.scope !708, !noundef !5
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$$GT$17h12683d6b033cceefE.exit.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$17ha5d5d67601fda1a6E.exit.i"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %"_ZN4core3ptr55drop_in_place$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$17h4a4a95ffce1d3040E.exit.i.i" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr55drop_in_place$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$17h4a4a95ffce1d3040E.exit.i.i": ; preds = %bb.c
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$$GT$17h12683d6b033cceefE.exit.i" unwind label %bb.f

.body.i:                                          ; preds = %bb.f, %bb.d, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %bb.f ], [ %i.e, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$alloc..string..String$u5d$$GT$$GT$17h0c12215bdb3f876bE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #21
          to label %common.resume.i unwind label %bb.j

bb.f:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$17h4a4a95ffce1d3040E.exit.i.i"
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$$GT$17h12683d6b033cceefE.exit.i": ; preds = %"_ZN4core3ptr55drop_in_place$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$17h4a4a95ffce1d3040E.exit.i.i", %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$17ha5d5d67601fda1a6E.exit.i"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !range !46, !alias.scope !713, !noundef !5
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %"_ZN4core3ptr110drop_in_place$LT$which..finder..PathsIter$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$$GT$17h3190dcd066790601E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$$GT$17h12683d6b033cceefE.exit.i"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ce67b1f34c199dcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hba754eb787bb2573E.exit.i.i" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37c250d496d4ca1dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

common.resume.i:                                  ; preds = %bb.h, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hba754eb787bb2573E.exit.i.i": ; preds = %bb.g
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37c250d496d4ca1dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %"_ZN4core3ptr110drop_in_place$LT$which..finder..PathsIter$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$$GT$17h3190dcd066790601E.exit"

bb.j:                                             ; preds = %.body.i, %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr110drop_in_place$LT$which..finder..PathsIter$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$$GT$17h3190dcd066790601E.exit": ; preds = %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$$GT$17h12683d6b033cceefE.exit.i", %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hba754eb787bb2573E.exit.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h109a5d59e205386bE(ptr noalias noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.b, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit
  %.sroa.0.06 = phi ptr [ %i.l, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit ], [ %i.d, %.lr.ph.preheader ] ; 5 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -32 ; 4 uses
  %i.f = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.06, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  br i1 %i.f, label %bb.d, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.06, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.06, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.g = icmp eq ptr %i.e, %0
  br i1 %i.g, label %._crit_edge17, label %.lr.ph16

bb.e:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i14, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.h = icmp eq ptr %i.i, %0
  br i1 %i.h, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i14 = phi ptr [ %i.i, %bb.e ], [ %i.e, %bb.d ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i14, i64 -32 ; 4 uses
  %i.j = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph16
  br i1 %i.j, label %bb.e, label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i14, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit

bb.g:                                             ; preds = %.lr.ph16
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i14, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !721
  resume { ptr, i32 } %i.k

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h23694e3eaea1a2bcE(ptr noalias noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = icmp ult i64 %1, 2
  br i1 %i.b, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h922926ab634e7f76E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, 16
  %i.d = icmp ult i64 %3, %i.c
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %1, 1                           ; 10 uses
  %i.f = icmp ugt i64 %1, 7
  br i1 %i.f, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j) ; 2 uses
  %i.l = zext i1 %i.h to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.n = xor i1 %i.h, true
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.o ; 4 uses
  %i.q = select i1 %i.k, i64 3, i64 2
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.q ; 4 uses
  %i.s = select i1 %i.k, i64 2, i64 3
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m) ; 3 uses
  %i.v = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) ; 3 uses
  %i.w = select i1 %i.u, ptr %i.r, ptr %i.m, !unpredictable !5
  %i.x = select i1 %i.v, ptr %i.p, ptr %i.t, !unpredictable !5
  %i.y = select i1 %i.v, ptr %i.r, ptr %i.p, !unpredictable !5
  %i.z = select i1 %i.u, ptr %i.m, ptr %i.y, !unpredictable !5 ; 3 uses
  %i.aa = select i1 %i.u, ptr %i.p, ptr %i.r, !unpredictable !5
  %i.ab = select i1 %i.v, ptr %i.t, ptr %i.aa, !unpredictable !5 ; 3 uses
  %i.ac = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z) ; 2 uses
  %i.ad = select i1 %i.ac, ptr %i.ab, ptr %i.z, !unpredictable !5
  %i.ae = select i1 %i.ac, ptr %i.z, ptr %i.ab, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e ; 8 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.al = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ao = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an) ; 2 uses
  %i.ap = zext i1 %i.al to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.ap ; 3 uses
  %i.ar = xor i1 %i.al, true
  %i.as = zext i1 %i.ar to i64
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.as ; 4 uses
  %i.au = select i1 %i.ao, i64 3, i64 2
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.au ; 4 uses
  %i.aw = select i1 %i.ao, i64 2, i64 3
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.aw ; 3 uses
  %i.ay = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq) ; 3 uses
  %i.az = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at) ; 3 uses
  %i.ba = select i1 %i.ay, ptr %i.av, ptr %i.aq, !unpredictable !5
  %i.bb = select i1 %i.az, ptr %i.at, ptr %i.ax, !unpredictable !5
  %i.bc = select i1 %i.az, ptr %i.av, ptr %i.at, !unpredictable !5
  %i.bd = select i1 %i.ay, ptr %i.aq, ptr %i.bc, !unpredictable !5 ; 3 uses
  %i.be = select i1 %i.ay, ptr %i.at, ptr %i.av, !unpredictable !5
  %i.bf = select i1 %i.az, ptr %i.ax, ptr %i.be, !unpredictable !5 ; 3 uses
  %i.bg = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bd) ; 2 uses
  %i.bh = select i1 %i.bg, ptr %i.bf, ptr %i.bd, !unpredictable !5
  %i.bi = select i1 %i.bg, ptr %i.bd, ptr %i.bf, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 6 uses
  %5 = sub i64 %1, %i.e                           ; 2 uses
  %6 = icmp samesign ult i64 %.sroa.0.0, %i.e
  br i1 %6, label %.noexc33.preheader, label %.loopexit37

.loopexit37:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit, %bb.g
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %7 = getelementptr [32 x i8], ptr %2, i64 %i.e  ; 6 uses
  %8 = icmp ult i64 %.sroa.0.0, %5
  br i1 %8, label %.noexc33.preheader.1, label %.loopexit37.1

.noexc33.preheader.1:                             ; preds = %.loopexit37
  %.sroa.08.143.1 = add nuw nsw i64 %.sroa.0.0, 1
  br label %.noexc33.1

.noexc33.1:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit.1, %.noexc33.preheader.1
  %.sroa.08.145.1 = phi i64 [ %.sroa.08.1.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit.1 ], [ %.sroa.08.143.1, %.noexc33.preheader.1 ] ; 3 uses
  %.sroa.08.044.1 = phi i64 [ %.sroa.08.145.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit.1 ], [ %.sroa.0.0, %.noexc33.preheader.1 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %.sroa.08.044.1
  %.idx85 = shl nuw nsw i64 %.sroa.08.044.1, 5
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 %.idx85 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false)
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -32 ; 3 uses
  %i.bs = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br)
  br i1 %i.bs, label %bb.h, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit.1

bb.h:                                             ; preds = %.noexc33.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false)
  %i.bt = icmp eq i64 %.sroa.08.044.1, 1
  br i1 %i.bt, label %._crit_edge81, label %.lr.ph80

bb.i:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i32.178, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false)
  %i.bu = icmp eq ptr %i.bv, %7
  br i1 %i.bu, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i32.178 = phi ptr [ %i.bv, %bb.i ], [ %i.br, %bb.h ] ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.0.i32.178, i64 -32 ; 4 uses
  %i.bw = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bv)
          to label %bb.j unwind label %.loopexit.split-lp52

bb.j:                                             ; preds = %.lr.ph80
  br i1 %i.bw, label %bb.i, label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.0.0.i32.lcssa.1 = phi ptr [ %7, %bb.h ], [ %7, %bb.i ], [ %.sroa.0.0.i32.178, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i32.lcssa.1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit.1: ; preds = %._crit_edge81, %.noexc33.1
  %i.bx = icmp ult i64 %.sroa.08.145.1, %5        ; 2 uses
  %i.by = zext i1 %i.bx to i64
  %.sroa.08.1.1 = add nuw i64 %.sroa.08.145.1, %i.by
  br i1 %i.bx, label %.noexc33.1, label %.loopexit37.1

.loopexit37.1:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit.1, %.loopexit37
  %i.bz = add i64 %1, -1                          ; 2 uses
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.bz
  %i.cc = getelementptr i8, ptr %7, i64 -32
  br label %.lr.ph.i

.noexc33.preheader:                               ; preds = %bb.g
  %.sroa.08.143 = add nuw nsw i64 %.sroa.0.0, 1
  br label %.noexc33

._crit_edge.i:                                    ; preds = %.noexc30
  %i.cd = getelementptr i8, ptr %i.cs, i64 32     ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cr, i64 32
  %i.cf = and i64 %1, 1
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %.noexc30, %.loopexit37.1
  %.sroa.0.010.i = phi ptr [ %i.ck, %.noexc30 ], [ %0, %.loopexit37.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.ch, %.noexc30 ], [ 0, %.loopexit37.1 ]
  %.sroa.06.08.i = phi ptr [ %i.cn, %.noexc30 ], [ %2, %.loopexit37.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.cp, %.noexc30 ], [ %7, %.loopexit37.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.cs, %.noexc30 ], [ %i.cc, %.loopexit37.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.cr, %.noexc30 ], [ %i.cb, %.loopexit37.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.ct, %.noexc30 ], [ %i.ca, %.loopexit37.1 ] ; 2 uses
  %i.ch = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.ci = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.011.07.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.06.08.i)
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.lr.ph.i
  %..i23.i = select i1 %i.ci, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(32) %..i23.i, i64 32, i1 false), !noalias !731
  %i.cj = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.017.05.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.015.06.i)
          to label %.noexc30 unwind label %.loopexit ; 3 uses

.noexc30:                                         ; preds = %.noexc
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 32 ; 2 uses
  %i.cl = xor i1 %i.ci, true
  %i.cm = zext i1 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.08.i, i64 %i.cm ; 5 uses
  %i.co = zext i1 %i.ci to i64
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.07.i, i64 %i.co ; 4 uses
  %..i.i = select i1 %i.cj, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.cq = xor i1 %i.cj, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !noalias !735
  %.neg.i.i = sext i1 %i.cq to i64
  %i.cr = getelementptr [32 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg15.i.i = sext i1 %i.cj to i64
  %i.cs = getelementptr [32 x i8], ptr %.sroa.015.06.i, i64 %.neg15.i.i ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -32
  %exitcond.not.i = icmp eq i64 %i.ch, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.cu = icmp ult ptr %i.cn, %i.cd               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.cu, ptr %i.cn, ptr %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i, i64 32, i1 false)
  %i.cv = zext i1 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.cv
  %i.cx = xor i1 %i.cu, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.cy
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.cp, %._crit_edge.i ], [ %i.cz, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.cn, %._crit_edge.i ], [ %i.cw, %bb.k ]
  %i.da = icmp ne ptr %.sroa.06.1.i, %i.cd
  %i.db = icmp ne ptr %.sroa.011.1.i, %i.ce
  %or.cond.i = select i1 %i.da, i1 true, i1 %i.db, !prof !60
  br i1 %or.cond.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h922926ab634e7f76E.exit, !prof !60

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #20
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.m
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dc = shl i64 %1, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dc, i1 false), !noalias !739
  br label %.body

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h922926ab634e7f76E.exit: ; preds = %bb.l, %bb.a
  ret void

.body:                                            ; preds = %20, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %lpad.phi56, %20 ]
  resume { ptr, i32 } %.pn

.noexc33:                                         ; preds = %.noexc33.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit
  %.sroa.08.145 = phi i64 [ %.sroa.08.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit ], [ %.sroa.08.143, %.noexc33.preheader ] ; 3 uses
  %.sroa.08.044 = phi i64 [ %.sroa.08.145, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit ], [ %.sroa.0.0, %.noexc33.preheader ] ; 3 uses
  %9 = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.08.044
  %.idx = shl nuw nsw i64 %.sroa.08.044, 5
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %11 = getelementptr inbounds i8, ptr %10, i64 -32 ; 3 uses
  %12 = call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %11)
  br i1 %12, label %13, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit

13:                                               ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %14 = icmp eq i64 %.sroa.08.044, 1
  br i1 %14, label %._crit_edge, label %.lr.ph

15:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i3275, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false)
  %16 = icmp eq ptr %17, %2
  br i1 %16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %13, %15
  %.sroa.0.0.i3275 = phi ptr [ %17, %15 ], [ %11, %13 ] ; 4 uses
  %17 = getelementptr inbounds i8, ptr %.sroa.0.0.i3275, i64 -32 ; 4 uses
  %18 = invoke fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %17)
          to label %19 unwind label %.loopexit51

19:                                               ; preds = %.lr.ph
  br i1 %18, label %15, label %._crit_edge

._crit_edge:                                      ; preds = %15, %19, %13
  %.sroa.0.0.i32.lcssa = phi ptr [ %2, %13 ], [ %2, %15 ], [ %.sroa.0.0.i3275, %19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i32.lcssa, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit

.loopexit51:                                      ; preds = %.lr.ph
  %lpad.loopexit54 = landingpad { ptr, i32 }
          cleanup
  br label %20

.loopexit.split-lp52:                             ; preds = %.lr.ph80
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  br label %20

20:                                               ; preds = %.loopexit.split-lp52, %.loopexit51
  %.sroa.0.0.i32.lcssa50 = phi ptr [ %.sroa.0.0.i3275, %.loopexit51 ], [ %.sroa.0.0.i32.178, %.loopexit.split-lp52 ]
  %lpad.phi56 = phi { ptr, i32 } [ %lpad.loopexit54, %.loopexit51 ], [ %lpad.loopexit.split-lp55, %.loopexit.split-lp52 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i32.lcssa50, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !744
  br label %.body

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf0e08eb25bb4a280E.exit: ; preds = %.noexc33, %._crit_edge
  %21 = icmp ult i64 %.sroa.08.145, %i.e          ; 2 uses
  %22 = zext i1 %21 to i64
  %.sroa.08.1 = add nuw i64 %.sroa.08.145, %22
  br i1 %21, label %.noexc33, label %.loopexit37
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17h18f0262b76626d5aE"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN3std9backtrace9Backtrace7capture17h7feb9ff6f8afe076E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %i.d = call noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$22construct_from_context17h45ef665ec61a4a72E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$anki_process..Error$GT$17hdb36fa88b02cc549E"(ptr noalias noundef align 8 dereferenceable(80) %0) #21
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3abe543741224523E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3abe543741224523E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$16extract_internal28_$u7b$$u7b$closure$u7d$$u7d$17h5c92c430206dcda7E.exit" unwind label %bb.b

.body:                                            ; preds = %bb.e, %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.e, %bb.b ], [ %i.l, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume unwind label %bb.i

bb.b:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i", %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$16extract_internal28_$u7b$$u7b$closure$u7d$$u7d$17h5c92c430206dcda7E.exit": ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val2 = load i64, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val3 = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val4 = load i64, ptr %i.i, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN3std4path4Path10components17h7a18f4a611d5e6edE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val3, i64 noundef %.val4)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$16extract_internal28_$u7b$$u7b$closure$u7d$$u7d$17h5c92c430206dcda7E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_ZN3std4path4Path10components17h7a18f4a611d5e6edE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val2)
          to label %.noexc5 unwind label %bb.c

.noexc5:                                          ; preds = %.noexc
  %i.j = invoke noundef range(i8 -1, 2) i8 @_ZN3std4path18compare_components17hde56beecf8bddcb4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc5, %.noexc, %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$16extract_internal28_$u7b$$u7b$closure$u7d$$u7d$17h5c92c430206dcda7E.exit"
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #21
          to label %.body unwind label %bb.i

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i": ; preds = %bb.d
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit" unwind label %bb.b

"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit10" unwind label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit"
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit10": ; preds = %"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit"
  %i.p = icmp slt i8 %i.j, 0
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.p

bb.i:                                             ; preds = %bb.c, %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN5tokio7runtime4park16CachedParkThread8block_on17h099be56fcb00d2f5E(ptr noalias noundef nonnull align 1 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = invoke { ptr, ptr } @_ZN5tokio7runtime4park16CachedParkThread5waker17he5c1161fbd4ceee1E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0)
          to label %bb.b unwind label %bb.t       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call fastcc void @"_ZN4core3ptr129drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$runner..archive..archive_command..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h1909f3e09011549dE"(ptr nonnull %1)
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.e, 1
  store ptr %i.f, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.l = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17hc2f01d98451612efE") ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 68 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 69 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.n, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !749
  %i.q = load i8, ptr %i.m, align 8, !range !74, !noundef !5 ; 2 uses
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %.noexc
  ], !prof !753

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17hbb5a66be6bac0b71E(ptr noundef nonnull align 8 %i.l, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h99a19051bd1e9c2fE)
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!532 = !{!530, !390, !385, !387}
!533 = !{!534, !536, !530}
!534 = distinct !{!534, !535, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08f8cf48eb34511aE: argument 0"}
!535 = distinct !{!535, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08f8cf48eb34511aE"}
!536 = distinct !{!536, !537, !"_ZN4core3ptr60drop_in_place$LT$alloc..sync..Arc$LT$std..path..Path$GT$$GT$17h0ff4fa4c035ecb76E: argument 0"}
!537 = distinct !{!537, !"_ZN4core3ptr60drop_in_place$LT$alloc..sync..Arc$LT$std..path..Path$GT$$GT$17h0ff4fa4c035ecb76E"}
!538 = !{!539}
!539 = distinct !{!539, !540, !"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..Path$GT$$GT$$GT$17hdc5a0d271575bbb1E: argument 0"}
!540 = distinct !{!540, !"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..Path$GT$$GT$$GT$17hdc5a0d271575bbb1E"}
!541 = !{!539, !390, !385, !387}
!542 = !{!543, !545, !539}
!543 = distinct !{!543, !544, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08f8cf48eb34511aE: argument 0"}
!544 = distinct !{!544, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08f8cf48eb34511aE"}
!545 = distinct !{!545, !546, !"_ZN4core3ptr60drop_in_place$LT$alloc..sync..Arc$LT$std..path..Path$GT$$GT$17h0ff4fa4c035ecb76E: argument 0"}
!546 = distinct !{!546, !"_ZN4core3ptr60drop_in_place$LT$alloc..sync..Arc$LT$std..path..Path$GT$$GT$17h0ff4fa4c035ecb76E"}
!547 = !{!548}
!548 = distinct !{!548, !549, !"_ZN4core3ptr51drop_in_place$LT$hyper_util..common..exec..Exec$GT$17h244c29cbc434d726E: argument 0"}
!549 = distinct !{!549, !"_ZN4core3ptr51drop_in_place$LT$hyper_util..common..exec..Exec$GT$17h244c29cbc434d726E"}
!550 = !{!551}
!551 = distinct !{!551, !552, !"_ZN4core3ptr266drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$hyper..rt..Executor$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h36db4d128c66fdffE: argument 0"}
!552 = distinct !{!552, !"_ZN4core3ptr266drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$hyper..rt..Executor$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h36db4d128c66fdffE"}
!553 = !{!554}
!554 = distinct !{!554, !555, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h737d5c26f2850671E: argument 0"}
!555 = distinct !{!555, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h737d5c26f2850671E"}
!556 = !{!554, !551, !548, !387}
!557 = !{!554, !551, !548}
!558 = !{!559}
!559 = distinct !{!559, !560, !"_ZN4core3ptr51drop_in_place$LT$hyper_util..common..exec..Exec$GT$17h244c29cbc434d726E: argument 0"}
!560 = distinct !{!560, !"_ZN4core3ptr51drop_in_place$LT$hyper_util..common..exec..Exec$GT$17h244c29cbc434d726E"}
!561 = !{!562}
!562 = distinct !{!562, !563, !"_ZN4core3ptr266drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$hyper..rt..Executor$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h36db4d128c66fdffE: argument 0"}
!563 = distinct !{!563, !"_ZN4core3ptr266drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$hyper..rt..Executor$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h36db4d128c66fdffE"}
!564 = !{!565}
!565 = distinct !{!565, !566, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h737d5c26f2850671E: argument 0"}
!566 = distinct !{!566, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h737d5c26f2850671E"}
!567 = !{!565, !562, !559, !387}
!568 = !{!565, !562, !559}
!569 = !{!570}
!570 = distinct !{!570, !571, !"_ZN4core3ptr222drop_in_place$LT$hyper_util..client..legacy..pool..Pool$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$17h5091bd28b4e302ccE: argument 0"}
!571 = distinct !{!571, !"_ZN4core3ptr222drop_in_place$LT$hyper_util..client..legacy..pool..Pool$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$17h5091bd28b4e302ccE"}
!572 = !{!573}
!573 = distinct !{!573, !574, !"_ZN4core3ptr318drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$hyper_util..client..legacy..pool..PoolInner$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$$GT$$GT$$GT$17ha0c681ed0afa235cE: argument 0"}
!574 = distinct !{!574, !"_ZN4core3ptr318drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$hyper_util..client..legacy..pool..PoolInner$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$$GT$$GT$$GT$17ha0c681ed0afa235cE"}
!575 = !{!573, !570, !387}
!576 = !{!577, !579, !573, !570}
!577 = distinct !{!577, !578, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he903c9bf1388ed0aE: argument 0"}
!578 = distinct !{!578, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he903c9bf1388ed0aE"}
!579 = distinct !{!579, !580, !"_ZN4core3ptr290drop_in_place$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$hyper_util..client..legacy..pool..PoolInner$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$$GT$$GT$17h3f070e9aabcb9584E: argument 0"}
!580 = distinct !{!580, !"_ZN4core3ptr290drop_in_place$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$hyper_util..client..legacy..pool..PoolInner$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$$GT$$GT$17h3f070e9aabcb9584E"}
!581 = !{!582}
!582 = distinct !{!582, !583, !"_ZN4core3ptr222drop_in_place$LT$hyper_util..client..legacy..pool..Pool$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$17h5091bd28b4e302ccE: argument 0"}
!583 = distinct !{!583, !"_ZN4core3ptr222drop_in_place$LT$hyper_util..client..legacy..pool..Pool$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$17h5091bd28b4e302ccE"}
!584 = !{!585}
!585 = distinct !{!585, !586, !"_ZN4core3ptr318drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$hyper_util..client..legacy..pool..PoolInner$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$$GT$$GT$$GT$17ha0c681ed0afa235cE: argument 0"}
!586 = distinct !{!586, !"_ZN4core3ptr318drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$hyper_util..client..legacy..pool..PoolInner$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$$GT$$GT$$GT$17ha0c681ed0afa235cE"}
!587 = !{!585, !582, !387}
!588 = !{!589, !591, !585, !582}
!589 = distinct !{!589, !590, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he903c9bf1388ed0aE: argument 0"}
!590 = distinct !{!590, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he903c9bf1388ed0aE"}
!591 = distinct !{!591, !592, !"_ZN4core3ptr290drop_in_place$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$hyper_util..client..legacy..pool..PoolInner$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$$GT$$GT$17h3f070e9aabcb9584E: argument 0"}
!592 = distinct !{!592, !"_ZN4core3ptr290drop_in_place$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$hyper_util..client..legacy..pool..PoolInner$LT$hyper_util..client..legacy..client..PoolClient$LT$reqwest..async_impl..body..Body$GT$$C$$LP$http..uri..scheme..Scheme$C$http..uri..authority..Authority$RP$$GT$$GT$$GT$$GT$17h3f070e9aabcb9584E"}
!593 = !{!594, !596}
!594 = distinct !{!594, !595, !"_ZN4core3ptr436drop_in_place$LT$futures_util..future..either..Either$LT$tower..retry..future..ResponseFuture$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$C$http..request..Request$LT$reqwest..async_impl..body..Body$GT$$GT$$C$tower..util..oneshot..Oneshot$LT$tower..retry..Retry$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$GT$$C$http..request..Request$LT$reqwest..async_impl..body..Body$GT$$GT$$GT$$GT$17h230b1c63ceb4f24aE: argument 0"}
!595 = distinct !{!595, !"_ZN4core3ptr436drop_in_place$LT$futures_util..future..either..Either$LT$tower..retry..future..ResponseFuture$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$C$http..request..Request$LT$reqwest..async_impl..body..Body$GT$$GT$$C$tower..util..oneshot..Oneshot$LT$tower..retry..Retry$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$GT$$C$http..request..Request$LT$reqwest..async_impl..body..Body$GT$$GT$$GT$$GT$17h230b1c63ceb4f24aE"}
!596 = distinct !{!596, !597, !"_ZN4core3ptr240drop_in_place$LT$tower_http..follow_redirect..ResponseFuture$LT$tower..retry..Retry$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$GT$$C$reqwest..async_impl..body..Body$C$reqwest..redirect..TowerRedirectPolicy$GT$$GT$17h21d168af7cd04dfdE: argument 0"}
!597 = distinct !{!597, !"_ZN4core3ptr240drop_in_place$LT$tower_http..follow_redirect..ResponseFuture$LT$tower..retry..Retry$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$GT$$C$reqwest..async_impl..body..Body$C$reqwest..redirect..TowerRedirectPolicy$GT$$GT$17h21d168af7cd04dfdE"}
!598 = !{!599, !601, !594, !596}
!599 = distinct !{!599, !600, !"_ZN4core3ptr213drop_in_place$LT$tower..util..oneshot..State$LT$tower..retry..Retry$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$GT$$C$http..request..Request$LT$reqwest..async_impl..body..Body$GT$$GT$$GT$17h207b56eb443b3e9aE: argument 0"}
!600 = distinct !{!600, !"_ZN4core3ptr213drop_in_place$LT$tower..util..oneshot..State$LT$tower..retry..Retry$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$GT$$C$http..request..Request$LT$reqwest..async_impl..body..Body$GT$$GT$$GT$17h207b56eb443b3e9aE"}
!601 = distinct !{!601, !602, !"_ZN4core3ptr215drop_in_place$LT$tower..util..oneshot..Oneshot$LT$tower..retry..Retry$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$GT$$C$http..request..Request$LT$reqwest..async_impl..body..Body$GT$$GT$$GT$17h062994f118defffbE: argument 0"}
!602 = distinct !{!602, !"_ZN4core3ptr215drop_in_place$LT$tower..util..oneshot..Oneshot$LT$tower..retry..Retry$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$GT$$C$http..request..Request$LT$reqwest..async_impl..body..Body$GT$$GT$$GT$17h062994f118defffbE"}
!603 = !{!604}
!604 = distinct !{!604, !605, !"_ZN4core3ptr371drop_in_place$LT$tower..retry..future..State$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$http..response..Response$LT$hyper..body..incoming..Incoming$GT$$C$reqwest..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$$C$core..future..ready..Ready$LT$$LP$$RP$$GT$$GT$$GT$17hbb8d7146eafbbf57E: argument 0"}
!605 = distinct !{!605, !"_ZN4core3ptr371drop_in_place$LT$tower..retry..future..State$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$http..response..Response$LT$hyper..body..incoming..Incoming$GT$$C$reqwest..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$$C$core..future..ready..Ready$LT$$LP$$RP$$GT$$GT$$GT$17hbb8d7146eafbbf57E"}
!606 = !{!604, !607}
!607 = distinct !{!607, !608, !"_ZN4core3ptr195drop_in_place$LT$tower..retry..future..ResponseFuture$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$C$http..request..Request$LT$reqwest..async_impl..body..Body$GT$$GT$$GT$17h1407756b263694afE: argument 0"}
!608 = distinct !{!608, !"_ZN4core3ptr195drop_in_place$LT$tower..retry..future..ResponseFuture$LT$reqwest..retry..Policy$C$reqwest..async_impl..client..HyperService$C$http..request..Request$LT$reqwest..async_impl..body..Body$GT$$GT$$GT$17h1407756b263694afE"}
!609 = !{!610}
!610 = distinct !{!610, !611, !"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hbb878bb1b4be5334E: argument 0"}
!611 = distinct !{!611, !"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hbb878bb1b4be5334E"}
!612 = !{!613}
!613 = distinct !{!613, !614, !"_ZN4core3ptr40drop_in_place$LT$http..method..Inner$GT$17h686cb44f794a8063E: argument 0"}
!614 = distinct !{!614, !"_ZN4core3ptr40drop_in_place$LT$http..method..Inner$GT$17h686cb44f794a8063E"}
!615 = !{!613, !610, !596}
!616 = !{!613, !610}
!617 = !{!618}
!618 = distinct !{!618, !619, !"_ZN4core3ptr97drop_in_place$LT$tower_http..follow_redirect..BodyRepr$LT$reqwest..async_impl..body..Body$GT$$GT$17h1673dc627e080305E: argument 0"}
!619 = distinct !{!619, !"_ZN4core3ptr97drop_in_place$LT$tower_http..follow_redirect..BodyRepr$LT$reqwest..async_impl..body..Body$GT$$GT$17h1673dc627e080305E"}
!620 = !{!618, !596}
!621 = !{!622}
!622 = distinct !{!622, !623, !"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E: argument 0"}
!623 = distinct !{!623, !"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E"}
!624 = !{!625}
!625 = distinct !{!625, !626, !"_ZN4core3ptr53drop_in_place$LT$reqwest..async_impl..body..Inner$GT$17he8929ec7e36f89adE: argument 0"}
!626 = distinct !{!626, !"_ZN4core3ptr53drop_in_place$LT$reqwest..async_impl..body..Inner$GT$17he8929ec7e36f89adE"}
!627 = !{!625, !622, !618, !596}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE: argument 0"}
!630 = distinct !{!630, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!633 = distinct !{!633, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!634 = !{!632, !629, !625, !622, !618}
!635 = !{!632, !629, !625, !622, !618, !596}
!636 = distinct !{null, ptr @"_ZN4core3ptr97drop_in_place$LT$tower_http..follow_redirect..BodyRepr$LT$reqwest..async_impl..body..Body$GT$$GT$17h1673dc627e080305E", ptr @"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E", null, null, null}
!637 = !{!625, !622, !618}
!638 = !{!639}
!639 = distinct !{!639, !640, !"_ZN4core3ptr70drop_in_place$LT$http_body..frame..Kind$LT$bytes..bytes..Bytes$GT$$GT$17h211b3277df13468aE: argument 0"}
!640 = distinct !{!640, !"_ZN4core3ptr70drop_in_place$LT$http_body..frame..Kind$LT$bytes..bytes..Bytes$GT$$GT$17h211b3277df13468aE"}
!641 = !{!642}
!642 = distinct !{!642, !643, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE: argument 0"}
!643 = distinct !{!643, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE"}
!644 = !{!645}
!645 = distinct !{!645, !646, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!646 = distinct !{!646, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!647 = !{!645, !642, !639}
!648 = distinct !{null, null, null}
!649 = !{!650}
!650 = distinct !{!650, !651, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E: argument 0"}
!651 = distinct !{!651, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E"}
!652 = !{!653}
!653 = distinct !{!653, !654, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE: argument 0"}
!654 = distinct !{!654, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE"}
!655 = !{!656}
!656 = distinct !{!656, !657, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E: argument 0"}
!657 = distinct !{!657, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E"}
!658 = !{!656, !653, !650}
!659 = !{!660}
!660 = distinct !{!660, !661, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E: argument 0"}
!661 = distinct !{!661, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E"}
!662 = !{!663}
!663 = distinct !{!663, !664, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE: argument 0"}
!664 = distinct !{!664, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE"}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E: argument 0"}
!667 = distinct !{!667, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E"}
!668 = !{!666, !663, !660}
!669 = !{!670}
!670 = distinct !{!670, !671, !"_ZN4core3ptr49drop_in_place$LT$runner..archive..ArchiveArgs$GT$17h97003381da6c07b9E: argument 0"}
!671 = distinct !{!671, !"_ZN4core3ptr49drop_in_place$LT$runner..archive..ArchiveArgs$GT$17h97003381da6c07b9E"}
!672 = !{i8 0, i8 5}
!673 = !{!674}
!674 = distinct !{!674, !675, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E: argument 0"}
!675 = distinct !{!675, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E"}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE: argument 0"}
!678 = distinct !{!678, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE"}
!679 = !{!680}
!680 = distinct !{!680, !681, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E: argument 0"}
!681 = distinct !{!681, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E"}
!682 = !{!680, !677, !674}
!683 = !{!684}
!684 = distinct !{!684, !685, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E: argument 0"}
!685 = distinct !{!685, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E"}
!686 = !{!687}
!687 = distinct !{!687, !688, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE: argument 0"}
!688 = distinct !{!688, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE"}
!689 = !{!690}
!690 = distinct !{!690, !691, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E: argument 0"}
!691 = distinct !{!691, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E"}
!692 = !{!690, !687, !684}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E: argument 0"}
!695 = distinct !{!695, !"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E"}
!696 = !{!697}
!697 = distinct !{!697, !698, !"_ZN4core3ptr53drop_in_place$LT$reqwest..async_impl..body..Inner$GT$17he8929ec7e36f89adE: argument 0"}
!698 = distinct !{!698, !"_ZN4core3ptr53drop_in_place$LT$reqwest..async_impl..body..Inner$GT$17he8929ec7e36f89adE"}
!699 = !{!697, !694}
!700 = !{!701}
!701 = distinct !{!701, !702, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE: argument 0"}
!702 = distinct !{!702, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE"}
!703 = !{!704}
!704 = distinct !{!704, !705, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!705 = distinct !{!705, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!706 = !{!704, !701, !697, !694}
!707 = distinct !{ptr @"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E", null, null, null}
!708 = !{!709, !711}
!709 = distinct !{!709, !710, !"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$$GT$17h12683d6b033cceefE: argument 0"}
!710 = distinct !{!710, !"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$usize$RP$$GT$$GT$17h12683d6b033cceefE"}
!711 = distinct !{!711, !712, !"_ZN4core3ptr110drop_in_place$LT$which..finder..PathsIter$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$$GT$17h3190dcd066790601E: argument 0"}
!712 = distinct !{!712, !"_ZN4core3ptr110drop_in_place$LT$which..finder..PathsIter$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$$GT$17h3190dcd066790601E"}
!713 = !{!714, !711}
!714 = distinct !{!714, !715, !"_ZN4core3ptr78drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$alloc..string..String$u5d$$GT$$GT$17h0c12215bdb3f876bE: argument 0"}
!715 = distinct !{!715, !"_ZN4core3ptr78drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$alloc..string..String$u5d$$GT$$GT$17h0c12215bdb3f876bE"}
!716 = !{!717, !719}
!717 = distinct !{!717, !718, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcd7ba2f7bd113546E: argument 0"}
!718 = distinct !{!718, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcd7ba2f7bd113546E"}
!719 = distinct !{!719, !720, !"_ZN4core3ptr109drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17h06f7200b9539742cE: argument 0"}
!720 = distinct !{!720, !"_ZN4core3ptr109drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17h06f7200b9539742cE"}
!721 = !{!722, !724}
!722 = distinct !{!722, !723, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcd7ba2f7bd113546E: argument 0"}
!723 = distinct !{!723, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcd7ba2f7bd113546E"}
!724 = distinct !{!724, !725, !"_ZN4core3ptr109drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17h06f7200b9539742cE: argument 0"}
!725 = distinct !{!725, !"_ZN4core3ptr109drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17h06f7200b9539742cE"}
!726 = !{!727, !729}
!727 = distinct !{!727, !728, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcd7ba2f7bd113546E: argument 0"}
!728 = distinct !{!728, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcd7ba2f7bd113546E"}
!729 = distinct !{!729, !730, !"_ZN4core3ptr109drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17h06f7200b9539742cE: argument 0"}
!730 = distinct !{!730, !"_ZN4core3ptr109drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17h06f7200b9539742cE"}
!731 = !{!732, !734}
!732 = distinct !{!732, !733, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdd53db86eca70ef6E: argument 0"}
!733 = distinct !{!733, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdd53db86eca70ef6E"}
!734 = distinct !{!734, !733, !"_ZN4core5slice4sort6shared9smallsort8merge_up17hdd53db86eca70ef6E: argument 1"}
!735 = !{!736, !738}
!736 = distinct !{!736, !737, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h64ce176f681c9a86E: argument 0"}
!737 = distinct !{!737, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h64ce176f681c9a86E"}
!738 = distinct !{!738, !737, !"_ZN4core5slice4sort6shared9smallsort10merge_down17h64ce176f681c9a86E: argument 1"}
!739 = !{!740, !742}
!740 = distinct !{!740, !741, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcd7ba2f7bd113546E: argument 0"}
!741 = distinct !{!741, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcd7ba2f7bd113546E"}
!742 = distinct !{!742, !743, !"_ZN4core3ptr109drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17h06f7200b9539742cE: argument 0"}
!743 = distinct !{!743, !"_ZN4core3ptr109drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17h06f7200b9539742cE"}
!744 = !{!745, !747}
!745 = distinct !{!745, !746, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcd7ba2f7bd113546E: argument 0"}
!746 = distinct !{!746, !"_ZN99_$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcd7ba2f7bd113546E"}
!747 = distinct !{!747, !748, !"_ZN4core3ptr109drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17h06f7200b9539742cE: argument 0"}
!748 = distinct !{!748, !"_ZN4core3ptr109drop_in_place$LT$core..slice..sort..shared..smallsort..CopyOnDrop$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17h06f7200b9539742cE"}
!749 = !{!750, !752}
!750 = distinct !{!750, !751, !"_ZN5tokio4task4coop11with_budget17h8e012748e0cc07a2E: argument 0"}
!751 = distinct !{!751, !"_ZN5tokio4task4coop11with_budget17h8e012748e0cc07a2E"}
!752 = distinct !{!752, !751, !"_ZN5tokio4task4coop11with_budget17h8e012748e0cc07a2E: argument 1"}
!753 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!754 = !{i8 0, i8 2}
!755 = !{!756}
!756 = distinct !{!756, !757, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E: argument 0"}
!757 = distinct !{!757, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E"}
!758 = !{!759}
!759 = distinct !{!759, !760, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E: argument 0"}
!760 = distinct !{!760, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E"}
!761 = distinct !{null}
!762 = !{!763, !765}
!763 = distinct !{!763, !764, !"_ZN5tokio4task4coop11with_budget17h3aeee35180c100ecE: argument 0"}
!764 = distinct !{!764, !"_ZN5tokio4task4coop11with_budget17h3aeee35180c100ecE"}
!765 = distinct !{!765, !764, !"_ZN5tokio4task4coop11with_budget17h3aeee35180c100ecE: argument 1"}
!766 = !{!767}
!767 = distinct !{!767, !768, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E: argument 0"}
!768 = distinct !{!768, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E"}
!769 = !{!770}
!770 = distinct !{!770, !771, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E: argument 0"}
!771 = distinct !{!771, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E"}
!772 = distinct !{null, null}
!773 = !{!774}
!774 = distinct !{!774, !775, !"_ZN4core3ptr49drop_in_place$LT$runner..archive..ArchiveArgs$GT$17h97003381da6c07b9E: argument 0"}
!775 = distinct !{!775, !"_ZN4core3ptr49drop_in_place$LT$runner..archive..ArchiveArgs$GT$17h97003381da6c07b9E"}
!776 = !{!777, !779}
!777 = distinct !{!777, !778, !"_ZN5tokio4task4coop11with_budget17h4cf5beaf68a629b9E: argument 0"}
!778 = distinct !{!778, !"_ZN5tokio4task4coop11with_budget17h4cf5beaf68a629b9E"}
!779 = distinct !{!779, !778, !"_ZN5tokio4task4coop11with_budget17h4cf5beaf68a629b9E: argument 1"}
!780 = !{!781, !783}
!781 = distinct !{!781, !782, !"_ZN6runner7archive15archive_command28_$u7b$$u7b$closure$u7d$$u7d$17h0fc8628ac28a646dE: argument 0"}
!782 = distinct !{!782, !"_ZN6runner7archive15archive_command28_$u7b$$u7b$closure$u7d$$u7d$17h0fc8628ac28a646dE"}
!783 = distinct !{!783, !784, !"_ZN5tokio7runtime4park16CachedParkThread8block_on28_$u7b$$u7b$closure$u7d$$u7d$17hdf7a2462dab5dd27E: argument 0"}
!784 = distinct !{!784, !"_ZN5tokio7runtime4park16CachedParkThread8block_on28_$u7b$$u7b$closure$u7d$$u7d$17hdf7a2462dab5dd27E"}
!785 = !{!786, !781, !783}
!786 = distinct !{!786, !787, !"_ZN6runner7archive18download_and_check28_$u7b$$u7b$closure$u7d$$u7d$17h30f7e3dfd579ea26E: argument 0"}
!787 = distinct !{!787, !"_ZN6runner7archive18download_and_check28_$u7b$$u7b$closure$u7d$$u7d$17h30f7e3dfd579ea26E"}
!788 = !{!789, !786, !781, !783}
!789 = distinct !{!789, !790, !"_ZN3std4path4Path6exists17h8702714075785fa1E: argument 0"}
!790 = distinct !{!790, !"_ZN3std4path4Path6exists17h8702714075785fa1E"}
!791 = !{!792}
!792 = distinct !{!792, !793, !"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h834515e945c228fdE: argument 0"}
!793 = distinct !{!793, !"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h834515e945c228fdE"}
!794 = !{!795}
!795 = distinct !{!795, !793, !"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h834515e945c228fdE: argument 1"}
!796 = !{!792, !786, !781, !783}
!797 = !{!792, !795}
!798 = !{!799, !801, !786, !781, !783}
!799 = distinct !{!799, !800, !"_ZN7reqwest3get28_$u7b$$u7b$closure$u7d$$u7d$17h3c3a4966f55688feE: argument 0"}
!800 = distinct !{!800, !"_ZN7reqwest3get28_$u7b$$u7b$closure$u7d$$u7d$17h3c3a4966f55688feE"}
!801 = distinct !{!801, !800, !"_ZN7reqwest3get28_$u7b$$u7b$closure$u7d$$u7d$17h3c3a4966f55688feE: argument 1"}
!802 = !{!799, !801}
!803 = !{!804}
!804 = distinct !{!804, !805, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E: argument 0"}
!805 = distinct !{!805, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E"}
!806 = !{!807}
!807 = distinct !{!807, !808, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE: argument 0"}
!808 = distinct !{!808, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE"}
!809 = !{!810}
!810 = distinct !{!810, !811, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E: argument 0"}
!811 = distinct !{!811, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E"}
!812 = !{!810, !807, !804}
!813 = !{!810, !807, !804, !799}
!814 = !{!799}
!815 = !{!816}
!816 = distinct !{!816, !817, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E: argument 0"}
!817 = distinct !{!817, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E"}
!818 = !{!819}
!819 = distinct !{!819, !820, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE: argument 0"}
!820 = distinct !{!820, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE"}
!821 = !{!822}
!822 = distinct !{!822, !823, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E: argument 0"}
!823 = distinct !{!823, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E"}
!824 = !{!822, !819, !816}
!825 = !{!822, !819, !816, !799}
!826 = !{!827}
!827 = distinct !{!827, !828, !"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb048fef9cb5b9f17E: argument 0"}
!828 = distinct !{!828, !"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb048fef9cb5b9f17E"}
!829 = !{!830}
!830 = distinct !{!830, !828, !"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb048fef9cb5b9f17E: argument 1"}
!831 = !{!827, !786, !781, !783}
!832 = !{!830, !827}
!833 = !{!834, !836, !786, !781, !783}
!834 = distinct !{!834, !835, !"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$17hc9ee56927bde1fa6E: argument 0"}
!835 = distinct !{!835, !"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$17hc9ee56927bde1fa6E"}
!836 = distinct !{!836, !835, !"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$17hc9ee56927bde1fa6E: argument 1"}
!837 = !{!838}
!838 = distinct !{!838, !839, !"_ZN4http8response17Response$LT$T$GT$9into_body17hf169602267db7704E: argument 0"}
!839 = distinct !{!839, !"_ZN4http8response17Response$LT$T$GT$9into_body17hf169602267db7704E"}
!840 = !{!834, !836}
!841 = !{!842, !838}
!842 = distinct !{!842, !843, !"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17ha60777213028cdacE: argument 0"}
!843 = distinct !{!843, !"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17ha60777213028cdacE"}
!844 = !{!834}
!845 = !{i64 0, i64 6}
!846 = !{!847}
!847 = distinct !{!847, !848, !"_ZN4core6result19Result$LT$T$C$E$GT$3map17h5943d2bccace59b8E: argument 0"}
!848 = distinct !{!848, !"_ZN4core6result19Result$LT$T$C$E$GT$3map17h5943d2bccace59b8E"}
!849 = !{!850, !834, !836, !786, !781, !783}
!850 = distinct !{!850, !848, !"_ZN4core6result19Result$LT$T$C$E$GT$3map17h5943d2bccace59b8E: argument 1"}
!851 = !{!847, !850, !834, !836, !786, !781, !783}
!852 = !{!847, !834, !836, !786, !781, !783}
!853 = !{!836, !786, !781, !783}
!854 = !{!855}
!855 = distinct !{!855, !856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17he8084c7f0a5a5ca7E: argument 0"}
!856 = distinct !{!856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17he8084c7f0a5a5ca7E"}
!857 = !{!858}
!858 = distinct !{!858, !859, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4612f2b58dbf60dfE: argument 0"}
!859 = distinct !{!859, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4612f2b58dbf60dfE"}
!860 = !{!858, !861, !855, !862, !786, !781, !783}
!861 = distinct !{!861, !859, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4612f2b58dbf60dfE: argument 1"}
!862 = distinct !{!862, !856, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17he8084c7f0a5a5ca7E: argument 1"}
!863 = !{!864}
!864 = distinct !{!864, !865, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE: argument 0"}
!865 = distinct !{!865, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE"}
!866 = !{!867}
!867 = distinct !{!867, !868, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!868 = distinct !{!868, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!869 = !{!867, !864}
!870 = distinct !{null}
!871 = !{!858, !855}
!872 = !{!861, !862, !786, !781, !783}
!873 = !{!874}
!874 = distinct !{!874, !875, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE: argument 0"}
!875 = distinct !{!875, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE"}
!876 = !{!877}
!877 = distinct !{!877, !878, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!878 = distinct !{!878, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!879 = !{!877, !874}
!880 = !{!881}
!881 = distinct !{!881, !882, !"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117ha43ec64b72f968a5E: argument 0"}
!882 = distinct !{!882, !"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117ha43ec64b72f968a5E"}
!883 = !{!884, !786, !781, !783}
!884 = distinct !{!884, !882, !"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117ha43ec64b72f968a5E: argument 1"}
!885 = !{!886}
!886 = distinct !{!886, !887, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E: argument 0"}
!887 = distinct !{!887, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E"}
!888 = !{!889}
!889 = distinct !{!889, !890, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E: argument 0"}
!890 = distinct !{!890, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E"}
!891 = !{!892}
!892 = distinct !{!892, !893, !"_ZN4core3ptr49drop_in_place$LT$runner..archive..ArchiveArgs$GT$17h97003381da6c07b9E: argument 0"}
!893 = distinct !{!893, !"_ZN4core3ptr49drop_in_place$LT$runner..archive..ArchiveArgs$GT$17h97003381da6c07b9E"}
!894 = !{!895, !897}
!895 = distinct !{!895, !896, !"_ZN5tokio4task4coop11with_budget17h3e854000f2590ed3E: argument 0"}
!896 = distinct !{!896, !"_ZN5tokio4task4coop11with_budget17h3e854000f2590ed3E"}
!897 = distinct !{!897, !896, !"_ZN5tokio4task4coop11with_budget17h3e854000f2590ed3E: argument 1"}
!898 = !{!899}
!899 = distinct !{!899, !900, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E: argument 0"}
!900 = distinct !{!900, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E"}
!901 = !{!902}
!902 = distinct !{!902, !903, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E: argument 0"}
!903 = distinct !{!903, !"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$tokio..task..coop..with_budget..ResetGuard$C$std..thread..local..AccessError$GT$$GT$17h575dc8f7a74bc2f6E"}
!904 = !{!905, !907}
!905 = distinct !{!905, !906, !"_ZN5which9which_all17h3e20acf44c9d00dfE: argument 0"}
!906 = distinct !{!906, !"_ZN5which9which_all17h3e20acf44c9d00dfE"}
!907 = distinct !{!907, !906, !"_ZN5which9which_all17h3e20acf44c9d00dfE: argument 1"}
!908 = !{!909}
!909 = distinct !{!909, !910, !"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$std..path..PathBuf$C$std..io..error..Error$GT$$GT$17h4f3b3dc107d27551E: argument 0"}
!910 = distinct !{!910, !"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$std..path..PathBuf$C$std..io..error..Error$GT$$GT$17h4f3b3dc107d27551E"}
!911 = !{!909, !905, !907}
!912 = !{i64 0, i64 -9223372036854775806}
!913 = !{!914}
!914 = distinct !{!914, !915, !"_ZN5which5which28_$u7b$$u7b$closure$u7d$$u7d$17h5d46a29783082701E: argument 0"}
!915 = distinct !{!915, !"_ZN5which5which28_$u7b$$u7b$closure$u7d$$u7d$17h5d46a29783082701E"}
!916 = !{!914, !917}
!917 = distinct !{!917, !915, !"_ZN5which5which28_$u7b$$u7b$closure$u7d$$u7d$17h5d46a29783082701E: argument 1"}
!918 = !{!917}
end_hunk_1
