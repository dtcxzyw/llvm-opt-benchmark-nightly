Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15191
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6361f847d40ad4beE":bb.a
          to label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit.thread34 unwind label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i.split.loopexit", !noalias !8743

_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit.thread34: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i
  store ptr null, ptr %i.a, align 8, !alias.scope !8754, !noalias !8743
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8764)
  %i.w = icmp eq ptr %i.r, %i.f
  br i1 %i.w, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.thread", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit"

common.resume:                                    ; preds = %bb.k, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i7", %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i"
  %common.resume.op = phi { ptr, i32 } [ %.us-phi53, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i" ], [ %i.ai, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i7" ], [ %lpad.phi60, %bb.k ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i.split.loopexit": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i.split.loopexit.split-lp": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i": ; preds = %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i.split.loopexit", %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i.split.loopexit.split-lp", %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i.split.us"
  %.us-phi53 = phi { ptr, i32 } [ %i.q, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i.split.us" ], [ %lpad.loopexit, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i.split.loopexit" ], [ %lpad.loopexit.split-lp, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i.split.loopexit.split-lp" ]
  store ptr null, ptr %i.a, align 8, !alias.scope !8754, !noalias !8743
  br label %common.resume

.split51.us:                                      ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i.peel, %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i, %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i.us
  %.us-phi = phi ptr [ %.sroa.025.0.copyload.us, %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i.us ], [ %.sroa.025.0.copyload.peel, %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i.peel ], [ %.sroa.025.0.copyload, %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, i64 24, i1 false), !noalias !8754
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  store ptr %.us-phi, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.e

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit.thread34
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.g, align 8, !alias.scope !8766, !noalias !8751
  %.sroa.0.0.copyload10 = load i64, ptr %i.r, align 8, !noalias !8766 ; 3 uses
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx11, align 8, !noalias !8766 ; 6 uses
  %.not1 = icmp eq i64 %.sroa.0.0.copyload10, -9223372036854775808
  br i1 %.not1, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.thread", label %bb.f

bb.e:                                             ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit9, %.split51.us
  ret void

bb.f:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit"
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.8.sroa.5.0.copyload = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx, align 8, !noalias !8766 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload) ]
  %i.y = icmp ult i64 %.sroa.8.sroa.5.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.sroa.0.0.copyload, i64 %.sroa.8.sroa.5.0.copyload ; 3 uses
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hce56e0960e25adb0E"(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %bb.l unwind label %.loopexit

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.thread": ; preds = %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.peel", %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.peel", %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit", %_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit.thread34, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.us"
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8770)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !8770, !noalias !8767, !noundef !8
  %.not.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.thread"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8775)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !8778, !noalias !8779, !nonnull !8, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !8778, !noalias !8779, !nonnull !8, !noundef !8 ; 4 uses
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i8, label %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i4

_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i4: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ah, ptr %i.ae, align 8, !alias.scope !8778, !noalias !8779
  %.sroa.029.0.copyload = load ptr, ptr %i.af, align 8, !noalias !8782 ; 2 uses
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.0..sroa_idx, i64 24, i1 false), !noalias !8782
  %.not6.i6 = icmp eq ptr %.sroa.029.0.copyload, null
  br i1 %.not6.i6, label %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i8, label %bb.i

bb.h:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hb56cd495eaa74357E.exit.thread"
  store ptr null, ptr %0, align 8, !alias.scope !8767, !noalias !8770
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit9

_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i8: ; preds = %bb.g, %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i4
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hce56e0960e25adb0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %bb.j unwind label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i7", !noalias !8767

bb.i:                                             ; preds = %bb.j, %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i4
  %.sroa.029.0 = phi ptr [ null, %bb.j ], [ %.sroa.029.0.copyload, %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.i4 ]
  store ptr %.sroa.029.0, ptr %0, align 8, !noalias !8770
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.0..sroa_idx32, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631, i64 24, i1 false), !noalias !8770
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit9

bb.j:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i8
  store ptr null, ptr %i.aa, align 8, !alias.scope !8770, !noalias !8767
  br label %bb.i

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb1063fc8aa68de2dE.exit.i7": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfd0fc120dc0644c7E.exit.thread.i8
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.aa, align 8, !alias.scope !8770, !noalias !8767
  br label %common.resume

_ZN4core4iter8adapters7flatten17and_then_or_clear17h821090b81d7aa00aE.exit9: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631)
  br label %bb.e

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.lcssa = phi ptr [ %i.z, %.loopexit ], [ %i.n, %.loopexit.split-lp ]
  %.sroa.0.0.copyload10.lcssa = phi i64 [ %.sroa.0.0.copyload10, %.loopexit ], [ %.sroa.0.0.copyload10.peel, %.loopexit.split-lp ]
  %.sroa.8.sroa.0.0.copyload.lcssa = phi ptr [ %.sroa.8.sroa.0.0.copyload, %.loopexit ], [ %.sroa.8.sroa.0.0.copyload.peel, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi60 = phi { ptr, i32 } [ %lpad.loopexit58, %.loopexit ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp ]
  store ptr %.sroa.8.sroa.0.0.copyload.lcssa, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload.lcssa, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload10.lcssa, ptr %.sroa.620.0..sroa_idx21, align 8
  store ptr %.lcssa, ptr %i.b, align 8
  br label %common.resume

bb.l:                                             ; preds = %bb.f
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload10, ptr %.sroa.620.0..sroa_idx21, align 8
  store ptr %i.z, ptr %i.b, align 8
  br label %.split, !llvm.loop !8783
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$12remove_entry17h1f93bf5b2c19f6bdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef range(i64 6, 25) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 7 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.g = phi ptr [ %i.i, %.backedge.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = phi i64 [ %i.l, %.backedge.i ], [ 0, %bb.a ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val9.i = load i64, ptr %i.j, align 8, !noalias !8784, !noundef !8
  %.not.i.i.i.i.i = icmp eq i64 %.val9.i, %3
  br i1 %.not.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i", label %.backedge.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i": ; preds = %.lr.ph.i
  %.val8.i = load ptr, ptr %i.g, align 8, !noalias !8784, !nonnull !8, !align !800, !noundef !8
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %.val8.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %3), !alias.scope !8789, !noalias !8784
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.k = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.k, label %bb.b, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i"
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = icmp eq ptr %i.i, %i.e
  br i1 %i.m, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8793)
  %i.n = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %.not.i = icmp samesign ult i64 %i.h, %i.d
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb3c3a41fb94d74e4E.exit", label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.h, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #54, !noalias !8793
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb3c3a41fb94d74e4E.exit": ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.h ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !8793, !nonnull !8, !align !800, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !8793, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = xor i64 %i.h, -1                         ; 2 uses
  %i.u = add nsw i64 %i.d, %i.t
  %i.v = shl nsw i64 %i.u, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.s, i64 %i.v, i1 false), !noalias !8793
  %i.w = add nsw i64 %i.d, -1
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !8793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8796)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !8796, !noalias !8799, !noundef !8 ; 5 uses
  %i.z = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.z)
  %.not.i10 = icmp samesign ult i64 %i.h, %i.y
  br i1 %.not.i10, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h598676a782bad1f1E.exit", label %bb.d, !prof !17

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb3c3a41fb94d74e4E.exit"
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.h, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #54, !noalias !8801
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h598676a782bad1f1E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb3c3a41fb94d74e4E.exit"
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !8796, !noalias !8799, !nonnull !8, !noundef !8
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.h ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 104, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = add nsw i64 %i.y, %i.t
  %i.af = mul nsw i64 %i.ae, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ad, i64 %i.af, i1 false), !noalias !8801
  %i.ag = add nsw i64 %i.y, -1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !8796, !noalias !8799
  store ptr %i.p, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h598676a782bad1f1E.exit"
  %.sink24 = phi i64 [ 8, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h598676a782bad1f1E.exit" ], [ 16, %bb.a ], [ 16, %.backedge.i ]
  %.sink = phi i64 [ %i.r, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h598676a782bad1f1E.exit" ], [ 2, %bb.a ], [ 2, %.backedge.i ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink24
  store i64 %.sink, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17hef462fb87661fb10E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(104) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 5 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"
  %.sroa.8.024 = phi i64 [ %i.h, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge" ], [ 0, %bb.a ] ; 4 uses
  %.sroa.012.023 = phi ptr [ %i.g, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge" ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 16 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.024, 1
  %i.i = getelementptr i8, ptr %.sroa.012.023, i64 8
  %.val9 = load i64, ptr %i.i, align 8, !noundef !8
  %.not.i.i = icmp eq i64 %.val9, %3
  br i1 %.not.i.i, label %.split, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

.split:                                           ; preds = %.lr.ph
  %.val = load ptr, ptr %.sroa.012.023, align 8, !nonnull !8, !noundef !8
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %2, i64 %3)
  %i.j = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.j, label %bb.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge": ; preds = %.split, %.lr.ph
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge", label %.lr.ph

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge": ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge", %bb.a
  %i.l = load i64, ptr %1, align 8, !range !33, !alias.scope !8802, !noalias !8807, !noundef !8
  %i.m = icmp eq i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @165)
          to label %._crit_edge unwind label %bb.g, !noalias !8812

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !8802, !noalias !8807
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge" ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.d ; 2 uses
  store ptr %2, ptr %i.o, align 8, !noalias !8813
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %3, ptr %i.p, align 8, !noalias !8814
  %i.q = add i64 %i.d, 1
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !8802, !noalias !8807
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !8815, !noalias !8818, !noundef !8 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !33, !alias.scope !8815, !noalias !8818, !noundef !8
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h227c91f2cdf747efE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166)
          to label %bb.i unwind label %bb.e, !noalias !8820

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17hd693780e00415ce4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #55
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !8820
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17hd693780e00415ce4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #55
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !8812
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !8815, !noalias !8818, !nonnull !8, !noundef !8
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  %i.ad = add i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !8815, !noalias !8818
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  ret void

bb.k:                                             ; preds = %.split
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !8 ; 2 uses
  %i.ag = icmp ult i64 %.sroa.8.024, %i.af
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8
  %i.aj = getelementptr inbounds nuw [104 x i8], ptr %i.ai, i64 %.sroa.8.024 ; 8 uses
  %i.ak = load <2 x i64>, ptr %4, align 8, !alias.scope !8821, !noalias !8
  %i.al = load <2 x i64>, ptr %i.aj, align 1, !alias.scope !8825, !noalias !8
  store <2 x i64> %i.ak, ptr %i.aj, align 1, !alias.scope !8825, !noalias !8
  store <2 x i64> %i.al, ptr %4, align 8, !alias.scope !8821, !noalias !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !alias.scope !8828, !noalias !8
  %i.ap = load <2 x i64>, ptr %i.am, align 1, !alias.scope !8831, !noalias !8
  store <2 x i64> %i.ao, ptr %i.am, align 1, !alias.scope !8831, !noalias !8
  store <2 x i64> %i.ap, ptr %i.an, align 8, !alias.scope !8828, !noalias !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !8834, !noalias !8
  %i.at = load <2 x i64>, ptr %i.aq, align 1, !alias.scope !8837, !noalias !8
  store <2 x i64> %i.as, ptr %i.aq, align 1, !alias.scope !8837, !noalias !8
  store <2 x i64> %i.at, ptr %i.ar, align 8, !alias.scope !8834, !noalias !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.av, align 8, !alias.scope !8840, !noalias !8
  %i.ax = load <2 x i64>, ptr %i.au, align 1, !alias.scope !8843, !noalias !8
  store <2 x i64> %i.aw, ptr %i.au, align 1, !alias.scope !8843, !noalias !8
  store <2 x i64> %i.ax, ptr %i.av, align 8, !alias.scope !8840, !noalias !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !alias.scope !8846, !noalias !8
  %i.bb = load <2 x i64>, ptr %i.ay, align 1, !alias.scope !8849, !noalias !8
  store <2 x i64> %i.ba, ptr %i.ay, align 1, !alias.scope !8849, !noalias !8
  store <2 x i64> %i.bb, ptr %i.az, align 8, !alias.scope !8846, !noalias !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !8852, !noalias !8
  %i.bf = load <2 x i64>, ptr %i.bc, align 1, !alias.scope !8855, !noalias !8
  store <2 x i64> %i.be, ptr %i.bc, align 1, !alias.scope !8855, !noalias !8
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !alias.scope !8852, !noalias !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8860)
  %.sroa.0.0.copyload.i.i.i.12.i.i = load i64, ptr %i.bg, align 1, !alias.scope !8858, !noalias !8860
  %.sroa.02.0.copyload.i.i.i.12.i.i = load i64, ptr %i.bh, align 8, !alias.scope !8860, !noalias !8858
  store i64 %.sroa.02.0.copyload.i.i.i.12.i.i, ptr %i.bg, align 1, !alias.scope !8858, !noalias !8860
  store i64 %.sroa.0.0.copyload.i.i.i.12.i.i, ptr %i.bh, align 8, !alias.scope !8860, !noalias !8858
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.8.024, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #54
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17hd693780e00415ce4E"(ptr noalias noundef align 8 dereferenceable(104) %4) #55
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

.body:                                            ; preds = %bb.g, %bb.e, %bb.o
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.y, %bb.g ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body15
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN12clap_builder4util9any_value8AnyValue13downcast_into17hd30ea00334d31b97E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@"_ZN8indexmap5inner17Core$LT$K$C$V$GT$15reserve_entries17hc8e6ac8e5eec5283E":bb.a
bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h31c1abc682d22c16E.exit.i.i.i"
  %i.z = load i64, ptr %i.y, align 8, !range !929, !noalias !48594, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !48594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !48594
  br label %bb.f

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17h89c7694dd11383f7E.exit.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h31c1abc682d22c16E.exit.i.i.i"
  %i.ac = load ptr, ptr %i.y, align 8, !noalias !48594, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !48594
  store ptr %i.ac, ptr %i.s, align 8, !alias.scope !48596, !noalias !48597
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17h7176723a454e2c5dE.exit.sink.split"

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %.sroa.3.0.i.ph.i = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.ab, %bb.e ]
  %.sroa.0.0.i.ph.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.z, %bb.e ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.0.0.i.ph.i, i64 %.sroa.3.0.i.ph.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1800) #54, !noalias !48585
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48601)
  %i.ad = sub nsw i64 %.pre, %i.k                 ; 3 uses
  %i.ae = icmp ugt i64 %i.m, %i.ad
  br i1 %i.ae, label %bb.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17h7176723a454e2c5dE.exit"

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48604)
  %i.af = icmp ult i64 %i.i, %i.k
  br i1 %i.af, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17hf4bc86489a9c6b97E.exit", label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.ag = mul nuw nsw i64 %.sroa.0.0.i, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48607
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = icmp eq i64 %.pre, 0
  br i1 %i.ai, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h31c1abc682d22c16E.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val30.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !48607, !nonnull !8, !noundef !8
  %i.aj = mul nuw i64 %.pre, 104
  store ptr %.val30.i.i, ptr %i.a, align 8, !alias.scope !48608, !noalias !48607
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.aj, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !48608, !noalias !48607
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h31c1abc682d22c16E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h31c1abc682d22c16E.exit.i.i": ; preds = %bb.j, %bb.i
  %.sink.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i.i, ptr %i.ak, align 8, !alias.scope !48608, !noalias !48607
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hb47fa376a7e98c06E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !48607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48607
  %i.al = load i64, ptr %i.b, align 8, !range !491, !noalias !48607, !noundef !8
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.k, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17h89c7694dd11383f7E.exit.i"

bb.k:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h31c1abc682d22c16E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48607
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17hf4bc86489a9c6b97E.exit"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17h89c7694dd11383f7E.exit.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h31c1abc682d22c16E.exit.i.i"
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !48607, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48607
  store ptr %i.ao, ptr %i.ah, align 8, !alias.scope !48607
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17h7176723a454e2c5dE.exit.sink.split"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17h7176723a454e2c5dE.exit.sink.split": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17h89c7694dd11383f7E.exit.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17h89c7694dd11383f7E.exit.i"
  %.sroa.0.0.i.sink = phi i64 [ %.sroa.0.0.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17h89c7694dd11383f7E.exit.i" ], [ %i.p, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17h89c7694dd11383f7E.exit.i.i" ]
  store i64 %.sroa.0.0.i.sink, ptr %0, align 8
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17h7176723a454e2c5dE.exit"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17h7176723a454e2c5dE.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17h7176723a454e2c5dE.exit.sink.split", %bb.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17hf4bc86489a9c6b97E.exit"
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h1d892f4f8441d99aE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(648) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !48611, !noalias !48614, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !48611, !noalias !48614
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hbe3ebf516c59513bE"(ptr noalias noundef align 8 dereferenceable(648) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17h0ac30522a2c53655E.exit
    i64 0, label %bb.e
  ], !prof !48616

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #54
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @126, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1802) #54
  unreachable

_ZN8smallvec10infallible17h0ac30522a2c53655E.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @126, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1803) #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hbe3ebf516c59513bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(648) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16
  %i.f = load ptr, ptr %0, align 8, !alias.scope !48617, !noalias !48620, !nonnull !8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1804, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1805) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 17
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 40) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 0         ; 7 uses
  %i.l = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.l, label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55.thread, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.k, i64 noundef 8), !noalias !48622
  br i1 %i.m, label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit, label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55.thread

_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 40) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0         ; 4 uses
  %i.p = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.p, label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55.thread, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.q = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.o, i64 noundef 8), !noalias !48625
  br i1 %i.q, label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55, label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47
  %i.r = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #47 ; 3 uses
  %.not71 = icmp eq ptr %i.r, null
  br i1 %.not71, label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55: ; preds = %bb.i
  %i.s = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.o, i64 noundef 8, i64 noundef %i.k) #47 ; 2 uses
  %.not70 = icmp eq ptr %i.s, null
  br i1 %.not70, label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.r, %bb.l ], [ %i.s, %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.t = mul nuw nsw i64 %i.c, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %0, i64 %i.t, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.u = mul i64 %.val, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.u, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.v = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 40) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 0         ; 3 uses
  %i.x = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.x, label %bb.o, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.y = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.w, i64 noundef 8), !noalias !48628
  br i1 %i.y, label %_ZN8smallvec10deallocate17h5b200e9eb3a81c1cE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48631
  store i64 0, ptr %i.a, align 8, !noalias !48631
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.w, ptr %i.z, align 8, !noalias !48631
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @555, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @556, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1801) #54, !noalias !48631
  unreachable

_ZN8smallvec10deallocate17h5b200e9eb3a81c1cE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.w, i64 noundef 8) #47
  br label %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55.thread

_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h5b200e9eb3a81c1cE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h5b200e9eb3a81c1cE.exit ], [ %i.k, %bb.j ], [ undef, %bb.e ], [ %i.k, %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55 ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ %i.k, %bb.f ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h5b200e9eb3a81c1cE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h4c74d8b0564ac849E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.aa = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.ab = insertvalue { i64, i64 } %i.aa, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h03c64a618f9d33a1E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 12 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = load i8, ptr %0, align 8, !range !610, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48639)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !48642, !noalias !48643, !nonnull !8, !align !461, !noundef !8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !range !483, !alias.scope !48642, !noalias !48643, !noundef !8
  %i.m = icmp eq i8 %i.l, 1
  %i.n = tail call fastcc noundef ptr @"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$16begin_object_key17h0123dfa5d25575bfE"(ptr noalias noundef align 8 dereferenceable(32) %i.j, ptr noalias noundef align 8 dereferenceable(8) %i.i, i1 noundef zeroext %i.m), !noalias !48645 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE.exit.i", label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE.exit.thread.i", !prof !17

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE.exit.thread.i": ; preds = %bb.b
  %i.o = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.n), !noalias !48645
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he1044d664cfd8b54E.exit

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE.exit.i": ; preds = %bb.b
  store i8 2, ptr %i.k, align 1, !alias.scope !48642, !noalias !48643
  %i.p = tail call fastcc noundef align 8 ptr @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h2d85527b18494ec4E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @365, i64 noundef 6), !noalias !48646 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.c, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he1044d664cfd8b54E.exit

bb.c:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h4cb3bfe219f7258dE.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48647)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %.sroa.0.042.i.i.i.i = phi ptr [ @471, %bb.c ], [ %.sroa.0.116.i.i.i.i, %bb.j ] ; 3 uses
  %.sroa.5.041.i.i.i.i = phi i64 [ 2, %bb.c ], [ %.sroa.5.114.i.i.i.i, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !48650
  %i.r = tail call { i64, ptr } @"_ZN52_$LT$$RF$std..fs..File$u20$as$u20$std..io..Write$GT$5write17h67386e57384e2d63E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042.i.i.i.i, i64 noundef %.sroa.5.041.i.i.i.i), !noalias !48656 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0        ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.r, 1        ; 11 uses
  store i64 %i.s, ptr %i.e, align 8, !noalias !48650
  store ptr %i.t, ptr %i.q, align 8, !noalias !48650
  %i.u = trunc nuw i64 %i.s to i1
  %i.v = ptrtoint ptr %i.t to i64                 ; 7 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = and i64 %i.v, 3
  switch i64 %i.w, label %.unreachabledefault [
    i64 2, label %.split.i.i.i.i
    i64 3, label %bb.i
    i64 0, label %.split36.i.i.i.i
    i64 1, label %.split35.i.i.i.i
  ], !prof !13

.unreachabledefault:                              ; preds = %bb.e
  unreachable

default.unreachable:                              ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.v, %bb.al
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.t, null
  br i1 %i.x, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp ult i64 %.sroa.5.041.i.i.i.i, %i.v
  br i1 %i.y, label %.noexc.i.i.i.i, label %bb.h, !prof !14

.noexc.i.i.i.i:                                   ; preds = %bb.g
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.v, i64 noundef range(i64 1, 0) %.sroa.5.041.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.5.041.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @443) #54, !noalias !48656
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.z = sub nuw nsw i64 %.sroa.5.041.i.i.i.i, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i.i, i64 %i.v
  br label %bb.j

.split.i.i.i.i:                                   ; preds = %bb.e
  %.mask37.i.i.i.i = and i64 %i.v, -4294967296
  %i.ab = icmp eq i64 %.mask37.i.i.i.i, 17179869184
  br i1 %i.ab, label %.thread.i.i.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i"

.split36.i.i.i.i:                                 ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !15, !noalias !48656, !noundef !8
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %.thread.i.i.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i"

.split35.i.i.i.i:                                 ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.t, i64 15
  %i.ag = load i8, ptr %i.af, align 8, !range !15, !noalias !48656, !noundef !8
  %i.ah = icmp eq i8 %i.ag, 35
  br i1 %i.ah, label %.thread.i.i.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i"

bb.i:                                             ; preds = %bb.e
  %i.ai = icmp ult ptr %i.t, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.ai)
  %.mask.i.i.i.i = and i64 %i.v, -4294967296
  %i.aj = icmp eq i64 %.mask.i.i.i.i, 150323855360
  br i1 %i.aj, label %.thread.i.i.i.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i"

.thread.i.i.i.i:                                  ; preds = %bb.i, %.split35.i.i.i.i, %.split36.i.i.i.i, %.split.i.i.i.i
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q), !noalias !48656
  br label %bb.j

bb.j:                                             ; preds = %.thread.i.i.i.i, %bb.h
  %.sroa.0.116.i.i.i.i = phi ptr [ %.sroa.0.042.i.i.i.i, %.thread.i.i.i.i ], [ %i.aa, %bb.h ]
  %.sroa.5.114.i.i.i.i = phi i64 [ %.sroa.5.041.i.i.i.i, %.thread.i.i.i.i ], [ %i.z, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48650
  %i.ak = icmp eq i64 %.sroa.5.114.i.i.i.i, 0
  br i1 %i.ak, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread.i.i", label %bb.d

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i": ; preds = %.split35.i.i.i.i, %.split36.i.i.i.i, %bb.f
  %.sroa.05.1.i.i.ph.i.i = phi ptr [ %i.t, %.split35.i.i.i.i ], [ %i.t, %.split36.i.i.i.i ], [ @442, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48650
  br label %bb.k

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i": ; preds = %bb.i, %.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48650
  %.not.i6.i = icmp eq ptr %i.t, null
  br i1 %.not.i6.i, label %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread.i.i", label %bb.k, !prof !16

bb.k:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i", %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i"
  %.sroa.05.1.i.i6.i.i = phi ptr [ %.sroa.05.1.i.i.ph.i.i, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread3.i.i" ], [ %i.t, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i" ]
  %i.al = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sroa.05.1.i.i6.i.i), !noalias !48656
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he1044d664cfd8b54E.exit

"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread.i.i": ; preds = %bb.j, %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48660)
  %i.am = load ptr, ptr %1, align 8, !alias.scope !48663, !noalias !48666, !noundef !8 ; 5 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.am, null       ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !48670, !noalias !48671 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !48670, !noalias !48671 ; 2 uses
  %i.ar = ptrtoint ptr %i.am to i64
  %.sroa.15.0.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %i.ao, i64 undef
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %i.aq, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !48672
  call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h6aacb3442ff30911E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef 1, i64 %.sink.i.i.i.i.i), !noalias !48673
  %i.as = load i8, ptr %i.d, align 8, !range !483, !noalias !48672, !noundef !8 ; 2 uses
  %i.at = icmp eq i8 %i.as, 2
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread.i.i"
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !48672, !nonnull !8, !align !461, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !48672
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17he1044d664cfd8b54E.exit

bb.m:                                             ; preds = %"_ZN79_$LT$serde_json..ser..PrettyFormatter$u20$as$u20$serde_json..ser..Formatter$GT$18begin_object_value17h85bddde9a506327cE.exit.thread.i.i"
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !48672 ; 2 uses
  %.sroa.624.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.624.0.copyload.i.i.i.i = load ptr, ptr %.sroa.624.0..sroa_idx.i.i.i.i, align 8, !noalias !48672 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !48672
  %i.aw = icmp eq i64 %.sink.i.i.i.i.i, 0
  %i.ax = trunc nuw i8 %i.as to i1                ; 2 uses
end_hunk_1
