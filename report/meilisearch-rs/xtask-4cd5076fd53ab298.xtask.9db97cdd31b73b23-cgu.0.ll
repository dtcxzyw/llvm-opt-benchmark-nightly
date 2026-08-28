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
