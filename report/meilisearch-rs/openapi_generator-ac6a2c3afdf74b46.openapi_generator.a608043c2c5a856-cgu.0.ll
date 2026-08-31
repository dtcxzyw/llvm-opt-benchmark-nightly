Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/openapi_generator-ac6a2c3afdf74b46.openapi_generator.a608043c2c5a856-cgu.0?download=true
inline.NumInlined: 4415
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 78
begin_hunk_0_@"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcedac3f0449b36a8E":bb.a
          to label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h20bd8d1cad1ce9d9E.exit.thread34 unwind label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i.split.loopexit", !noalias !5167

_ZN4core4iter8adapters7flatten17and_then_or_clear17h20bd8d1cad1ce9d9E.exit.thread34: ; preds = %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.thread.i
  store ptr null, ptr %i.a, align 8, !alias.scope !5178, !noalias !5167
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5188)
  %i.w = icmp eq ptr %i.r, %i.f
  br i1 %i.w, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hddd5df90e975674eE.exit.thread", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hddd5df90e975674eE.exit"

common.resume:                                    ; preds = %bb.k, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i7", %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i"
  %common.resume.op = phi { ptr, i32 } [ %.us-phi53, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i" ], [ %i.ai, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i7" ], [ %lpad.phi60, %bb.k ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i.split.loopexit": ; preds = %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.thread.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i.split.loopexit.split-lp": ; preds = %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.thread.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i"

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i": ; preds = %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i.split.loopexit", %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i.split.loopexit.split-lp", %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i.split.us"
  %.us-phi53 = phi { ptr, i32 } [ %i.q, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i.split.us" ], [ %lpad.loopexit, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i.split.loopexit" ], [ %lpad.loopexit.split-lp, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i.split.loopexit.split-lp" ]
  store ptr null, ptr %i.a, align 8, !alias.scope !5178, !noalias !5167
  br label %common.resume

.split51.us:                                      ; preds = %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.i.peel, %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.i, %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.i.us
  %.us-phi = phi ptr [ %.sroa.025.0.copyload.us, %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.i.us ], [ %.sroa.025.0.copyload.peel, %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.i.peel ], [ %.sroa.025.0.copyload, %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, i64 24, i1 false), !noalias !5178
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  store ptr %.us-phi, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.e

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hddd5df90e975674eE.exit": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h20bd8d1cad1ce9d9E.exit.thread34
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.g, align 8, !alias.scope !5190, !noalias !5175
  %.sroa.0.0.copyload10 = load i64, ptr %i.r, align 8, !noalias !5190 ; 3 uses
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx11, align 8, !noalias !5190 ; 6 uses
  %.not1 = icmp eq i64 %.sroa.0.0.copyload10, -9223372036854775808
  br i1 %.not1, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hddd5df90e975674eE.exit.thread", label %bb.f

bb.e:                                             ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h20bd8d1cad1ce9d9E.exit9, %.split51.us
  ret void

bb.f:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hddd5df90e975674eE.exit"
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.8.sroa.5.0.copyload = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx, align 8, !noalias !5190 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload) ]
  %i.y = icmp ult i64 %.sroa.8.sroa.5.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.sroa.0.0.copyload, i64 %.sroa.8.sroa.5.0.copyload ; 3 uses
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hbfee8bcbd9128c15E"(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %bb.l unwind label %.loopexit

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hddd5df90e975674eE.exit.thread": ; preds = %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.peel", %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hddd5df90e975674eE.exit.peel", %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hddd5df90e975674eE.exit", %_ZN4core4iter8adapters7flatten17and_then_or_clear17h20bd8d1cad1ce9d9E.exit.thread34, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.us"
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5194)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !5194, !noalias !5191, !noundef !27
  %.not.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hddd5df90e975674eE.exit.thread"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5199)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !5202, !noalias !5203, !nonnull !27, !noundef !27
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !5202, !noalias !5203, !nonnull !27, !noundef !27 ; 4 uses
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.thread.i8, label %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.i4

_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.i4: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ah, ptr %i.ae, align 8, !alias.scope !5202, !noalias !5203
  %.sroa.029.0.copyload = load ptr, ptr %i.af, align 8, !noalias !5206 ; 2 uses
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.0..sroa_idx, i64 24, i1 false), !noalias !5206
  %.not6.i6 = icmp eq ptr %.sroa.029.0.copyload, null
  br i1 %.not6.i6, label %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.thread.i8, label %bb.i

bb.h:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hddd5df90e975674eE.exit.thread"
  store ptr null, ptr %0, align 8, !alias.scope !5191, !noalias !5194
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h20bd8d1cad1ce9d9E.exit9

_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.thread.i8: ; preds = %bb.g, %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.i4
  invoke fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hbfee8bcbd9128c15E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %bb.j unwind label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i7", !noalias !5191

bb.i:                                             ; preds = %bb.j, %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.i4
  %.sroa.029.0 = phi ptr [ null, %bb.j ], [ %.sroa.029.0.copyload, %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.i4 ]
  store ptr %.sroa.029.0, ptr %0, align 8, !noalias !5194
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.0..sroa_idx32, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631, i64 24, i1 false), !noalias !5194
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h20bd8d1cad1ce9d9E.exit9

bb.j:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.thread.i8
  store ptr null, ptr %i.aa, align 8, !alias.scope !5194, !noalias !5191
  br label %bb.i

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h216139fb7f4849e2E.exit.i7": ; preds = %_ZN4core3ops8function6FnOnce9call_once17ha30baf1ded608412E.exit.thread.i8
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.aa, align 8, !alias.scope !5194, !noalias !5191
  br label %common.resume

_ZN4core4iter8adapters7flatten17and_then_or_clear17h20bd8d1cad1ce9d9E.exit9: ; preds = %bb.h, %bb.i
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
  br label %.split, !llvm.loop !5207
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$12remove_entry17h591b95f7933a2dbeE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef range(i64 6, 19) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !27 ; 7 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.g = phi ptr [ %i.i, %.backedge.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = phi i64 [ %i.l, %.backedge.i ], [ 0, %bb.a ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val9.i = load i64, ptr %i.j, align 8, !noalias !5209, !noundef !27
  %.not.i.i.i.i.i = icmp eq i64 %.val9.i, %3
  br i1 %.not.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i", label %.backedge.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i": ; preds = %.lr.ph.i
  %.val8.i = load ptr, ptr %i.g, align 8, !noalias !5209, !nonnull !27, !align !301, !noundef !27
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %.val8.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %3), !alias.scope !5214, !noalias !5209
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.k = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.k, label %bb.b, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i"
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = icmp eq ptr %i.i, %i.e
  br i1 %i.m, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5218)
  %i.n = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %.not.i = icmp samesign ult i64 %i.h, %i.d
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h50a572b270db478aE.exit", label %bb.c, !prof !5221

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.h, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #38, !noalias !5218
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h50a572b270db478aE.exit": ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.h ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !5218, !nonnull !27, !align !301, !noundef !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !5218, !noundef !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = xor i64 %i.h, -1                         ; 2 uses
  %i.u = add nsw i64 %i.d, %i.t
  %i.v = shl nuw nsw i64 %i.u, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.s, i64 %i.v, i1 false), !noalias !5218
  %i.w = add nsw i64 %i.d, -1
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !5218
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5222)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !5222, !noalias !5225, !noundef !27 ; 5 uses
  %i.z = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.z)
  %.not.i10 = icmp samesign ult i64 %i.h, %i.y
  br i1 %.not.i10, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hed3dee15ef9e39c3E.exit", label %bb.d, !prof !5221

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h50a572b270db478aE.exit"
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.h, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #38, !noalias !5227
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hed3dee15ef9e39c3E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h50a572b270db478aE.exit"
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !5222, !noalias !5225, !nonnull !27, !noundef !27
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.h ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 104, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = add nsw i64 %i.y, %i.t
  %i.af = mul nuw nsw i64 %i.ae, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ad, i64 %i.af, i1 false), !noalias !5227
  %i.ag = add nsw i64 %i.y, -1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !5222, !noalias !5225
  store ptr %i.p, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hed3dee15ef9e39c3E.exit"
  %.sink24 = phi i64 [ 8, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hed3dee15ef9e39c3E.exit" ], [ 16, %bb.a ], [ 16, %.backedge.i ]
  %.sink = phi i64 [ %i.r, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hed3dee15ef9e39c3E.exit" ], [ 2, %bb.a ], [ 2, %.backedge.i ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink24
  store i64 %.sink, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17h10b8f66585b66f9bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(104) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !27 ; 5 uses
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
  %.val9 = load i64, ptr %i.i, align 8, !noundef !27
  %.not.i.i = icmp eq i64 %.val9, %3
  br i1 %.not.i.i, label %.split, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

.split:                                           ; preds = %.lr.ph
  %.val = load ptr, ptr %.sroa.012.023, align 8, !nonnull !27, !noundef !27
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %2, i64 %3)
  %i.j = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.j, label %bb.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge": ; preds = %.split, %.lr.ph
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge", label %.lr.ph

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge": ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge", %bb.a
  %i.l = load i64, ptr %1, align 8, !range !28, !alias.scope !5228, !noalias !5233, !noundef !27
  %i.m = icmp eq i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %._crit_edge unwind label %bb.g, !noalias !5238

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !5228, !noalias !5233
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge" ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.d ; 2 uses
  store ptr %2, ptr %i.o, align 8, !noalias !5239
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %3, ptr %i.p, align 8, !noalias !5240
  %i.q = add i64 %i.d, 1
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !5228, !noalias !5233
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !5241, !noalias !5244, !noundef !27 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !28, !alias.scope !5241, !noalias !5244, !noundef !27
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h227c91f2cdf747efE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16)
          to label %bb.i unwind label %bb.e, !noalias !5246

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h4901074da0a0aa2fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #33
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !5246
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h4901074da0a0aa2fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #33
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !5238
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !5241, !noalias !5244, !nonnull !27, !noundef !27
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  %i.ad = add i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !5241, !noalias !5244
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  ret void

bb.k:                                             ; preds = %.split
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !27 ; 2 uses
  %i.ag = icmp ult i64 %.sroa.8.024, %i.af
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !27, !noundef !27
  %i.aj = getelementptr inbounds nuw [104 x i8], ptr %i.ai, i64 %.sroa.8.024 ; 8 uses
  %i.ak = load <2 x i64>, ptr %4, align 8, !alias.scope !5247, !noalias !27
  %i.al = load <2 x i64>, ptr %i.aj, align 1, !alias.scope !5251, !noalias !27
  store <2 x i64> %i.ak, ptr %i.aj, align 1, !alias.scope !5251, !noalias !27
  store <2 x i64> %i.al, ptr %4, align 8, !alias.scope !5247, !noalias !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !alias.scope !5254, !noalias !27
  %i.ap = load <2 x i64>, ptr %i.am, align 1, !alias.scope !5257, !noalias !27
  store <2 x i64> %i.ao, ptr %i.am, align 1, !alias.scope !5257, !noalias !27
  store <2 x i64> %i.ap, ptr %i.an, align 8, !alias.scope !5254, !noalias !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !5260, !noalias !27
  %i.at = load <2 x i64>, ptr %i.aq, align 1, !alias.scope !5263, !noalias !27
  store <2 x i64> %i.as, ptr %i.aq, align 1, !alias.scope !5263, !noalias !27
  store <2 x i64> %i.at, ptr %i.ar, align 8, !alias.scope !5260, !noalias !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.av, align 8, !alias.scope !5266, !noalias !27
  %i.ax = load <2 x i64>, ptr %i.au, align 1, !alias.scope !5269, !noalias !27
  store <2 x i64> %i.aw, ptr %i.au, align 1, !alias.scope !5269, !noalias !27
  store <2 x i64> %i.ax, ptr %i.av, align 8, !alias.scope !5266, !noalias !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !alias.scope !5272, !noalias !27
  %i.bb = load <2 x i64>, ptr %i.ay, align 1, !alias.scope !5275, !noalias !27
  store <2 x i64> %i.ba, ptr %i.ay, align 1, !alias.scope !5275, !noalias !27
  store <2 x i64> %i.bb, ptr %i.az, align 8, !alias.scope !5272, !noalias !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !5278, !noalias !27
  %i.bf = load <2 x i64>, ptr %i.bc, align 1, !alias.scope !5281, !noalias !27
  store <2 x i64> %i.be, ptr %i.bc, align 1, !alias.scope !5281, !noalias !27
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !alias.scope !5278, !noalias !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5286)
  %.sroa.0.0.copyload.i.12.i.i.i.i = load i64, ptr %i.bg, align 1, !alias.scope !5284, !noalias !5286
  %.sroa.02.0.copyload.i.12.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !5286, !noalias !5284
  store i64 %.sroa.02.0.copyload.i.12.i.i.i.i, ptr %i.bg, align 1, !alias.scope !5284, !noalias !5286
  store i64 %.sroa.0.0.copyload.i.12.i.i.i.i, ptr %i.bh, align 8, !alias.scope !5286, !noalias !5284
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.8.024, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #38
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h4901074da0a0aa2fE"(ptr noalias noundef align 8 dereferenceable(104) %4) #33
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34
  unreachable

.body:                                            ; preds = %bb.g, %bb.e, %bb.o
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.y, %bb.g ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body15
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$3raw17h90430aa87eb1b732E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef range(i64 56, 69) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_0
begin_hunk_1_@_ZN17openapi_generator4main17h01da0525174ccda6E:bb.a
bb.cb:                                            ; preds = %bb.ca
  %i.vj = icmp slt i64 %i.vg, 0
  br i1 %i.vj, label %.invoke.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i51.i.i.i.i, !prof !692

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i51.i.i.i.i: ; preds = %bb.cb
  %i.vk = icmp eq i64 %i.vg, 0
  br i1 %i.vk, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h2f6a8a9f9e200d1dE.exit59.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i52.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i52.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i51.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6105
  %i.vl = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.vg, i64 noundef range(i64 1, 9) 1) #37, !noalias !6105 ; 2 uses
  %i.vm = icmp eq ptr %i.vl, null
  br i1 %i.vm, label %.invoke.i.i.i.i, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h2f6a8a9f9e200d1dE.exit59.i.i.i.i"

.invoke.i.i.i.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i52.i.i.i.i", %bb.cb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", %bb.ad
  %i.vn = phi i64 [ 0, %bb.ad ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i52.i.i.i.i" ], [ 0, %bb.cb ]
  %i.vo = phi i64 [ %i.nt, %bb.ad ], [ %i.nt, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ %i.vg, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i52.i.i.i.i" ], [ %i.vg, %bb.cb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.vn, i64 %i.vo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #38
          to label %.cont.i.i.i.i unwind label %bb.y, !noalias !5803

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h2f6a8a9f9e200d1dE.exit59.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i52.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i51.i.i.i.i
  %.sroa.10.0.i.i53.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i51.i.i.i.i ], [ %i.vl, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i52.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i53.i.i.i.i, ptr nonnull readonly align 1 %i.ve, i64 %i.vg, i1 false), !noalias !6113
  %i.vp = getelementptr inbounds nuw i8, ptr %i.jy, i64 304
  store i64 %i.vg, ptr %i.vh, align 8, !alias.scope !5921, !noalias !5922
  store ptr %.sroa.10.0.i.i53.i.i.i.i, ptr %i.vp, align 8, !alias.scope !5921, !noalias !5922
  %.sroa.6.0..sroa_idx82.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 312
  store i64 %i.vg, ptr %.sroa.6.0..sroa_idx82.i.i.i.i, align 8, !alias.scope !5921, !noalias !5922
  br label %bb.bv

bb.cc:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !6114)
  call void @llvm.experimental.noalias.scope.decl(metadata !6117)
  %.val4.i.i60.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !6120, !noalias !5803, !nonnull !27, !noundef !27 ; 2 uses
  %.val5.i.i61.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !6120, !noalias !5803, !noundef !27 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6121)
  %i.vq = icmp eq i64 %.val5.i.i61.i.i.i.i, 0
  br i1 %i.vq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit.i.i67.i.i.i.i", label %.lr.ph.i.i.i.i62.i.i.i.i

.lr.ph.i.i.i.i62.i.i.i.i:                         ; preds = %bb.cc, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i.i.i66.i.i.i.i"
  %.sroa.0.011.i.i.i.i63.i.i.i.i = phi i64 [ %i.vs, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i.i.i66.i.i.i.i" ], [ 0, %bb.cc ] ; 2 uses
  %i.vr = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i60.i.i.i.i, i64 %.sroa.0.011.i.i.i.i63.i.i.i.i ; 2 uses
  %i.vs = add nuw i64 %.sroa.0.011.i.i.i.i63.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i64.i.i.i.i = load i64, ptr %i.vr, align 8, !alias.scope !6121, !noalias !6124 ; 2 uses
  %i.vt = icmp eq i64 %.val8.i.i.i.i64.i.i.i.i, 0
  br i1 %i.vt, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i.i.i66.i.i.i.i", label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i62.i.i.i.i
  %i.vu = getelementptr i8, ptr %i.vr, i64 8
  %.val9.i.i.i.i65.i.i.i.i = load ptr, ptr %i.vu, align 8, !alias.scope !6121, !noalias !6124, !nonnull !27, !noundef !27
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i65.i.i.i.i, i64 noundef %.val8.i.i.i.i64.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6125
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i.i.i66.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i.i.i66.i.i.i.i": ; preds = %bb.cd, %.lr.ph.i.i.i.i62.i.i.i.i
  %i.vv = icmp eq i64 %i.vs, %.val5.i.i61.i.i.i.i
  br i1 %i.vv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit.i.i67.i.i.i.i", label %.lr.ph.i.i.i.i62.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit.i.i67.i.i.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i.i.i66.i.i.i.i", %bb.cc
  %.val.i.i68.i.i.i.i = load i64, ptr %i.jt, align 8, !range !28, !alias.scope !6120, !noalias !5803, !noundef !27 ; 2 uses
  %i.vw = icmp eq i64 %.val.i.i68.i.i.i.i, 0
  br i1 %i.vw, label %bb.ce, label %"_ZN4core3ptr38drop_in_place$LT$clap_lex..RawArgs$GT$17hf07e94afcaa361f3E.exit69.sink.split.i.i.i.i"

bb.ce:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit.i.i67.i.i.i.i", %"_ZN4core3ptr38drop_in_place$LT$clap_lex..RawArgs$GT$17hf07e94afcaa361f3E.exit69.sink.split.i.i.i.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jt), !noalias !5803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jv), !noalias !5796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.jv, ptr noundef nonnull align 8 dereferenceable(712) %i.jy, i64 712, i1 false), !noalias !6126
  %i.vx = load i64, ptr %i.jw, align 8, !range !318, !noalias !5796, !noundef !27
  %i.vy = icmp eq i64 %i.vx, -9223372036854775808
  br i1 %i.vy, label %bb.cf, label %_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i

bb.cf:                                            ; preds = %bb.ce
  %i.vz = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8, !noalias !5796, !nonnull !27, !align !319, !noundef !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ju), !noalias !5796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ju, ptr noundef nonnull align 8 dereferenceable(712) %i.jy, i64 712, i1 false), !noalias !6126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jk), !noalias !5796
  store ptr %i.wa, ptr %i.jk, align 8, !noalias !6127
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h2b22f74b3886983fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(712) %i.ju)
          to label %bb.ch unwind label %bb.cg, !noalias !6126

bb.cg:                                            ; preds = %bb.ch, %bb.cf
  %i.wb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..error..ErrorInner$GT$17h066d2c2b229414d2E"(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.wa)
          to label %bb.cj unwind label %.body.i2.i.i.i, !noalias !6131

.body.i2.i.i.i:                                   ; preds = %bb.cg
  %i.wc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.wa, i64 noundef 256, i64 noundef 8) #37, !noalias !6131
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !6131
  unreachable

bb.ch:                                            ; preds = %bb.cf
  invoke fastcc void @"_ZN12clap_builder5error14Error$LT$F$GT$4exit17h3ba180a9f7b57261E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jk) #38
          to label %bb.ci unwind label %bb.cg, !noalias !6131

bb.ci:                                            ; preds = %bb.ch
  unreachable

bb.cj:                                            ; preds = %bb.cg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.wa, i64 noundef 256, i64 noundef 8) #37, !noalias !6131
  br label %common.resume

bb.ck:                                            ; preds = %bb.x, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit.i.i.i.i.i", %bb.s, %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h725465ceccbf22fdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %eh.lpad-body.ph.i.i.i = phi { ptr, i32 } [ %.pn32.i.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hda8787eefbf2f159E.exit.i.i.i.i.i" ], [ %i.kx, %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17h725465ceccbf22fdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.md, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hafaab0b153e8b1eeE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.kx, %bb.s ], [ %.pn32.i.i.i.i, %bb.x ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h2b22f74b3886983fE"(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.jy) #33
          to label %common.resume unwind label %bb.cl, !noalias !6126

bb.cl:                                            ; preds = %bb.ck
  %i.wd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !6126
  unreachable

common.resume:                                    ; preds = %bb.fj, %bb.ahp, %bb.ahp, %bb.ahq, %bb.cj, %bb.ck, %bb.cm, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %eh.lpad-body.ph.i.i.i, %bb.ck ], [ %i.wb, %bb.cj ], [ %i.we, %bb.cm ], [ %.pn118, %bb.ahq ], [ %.pn118, %bb.ahp ], [ %.pn118, %bb.ahp ], [ %.pn118, %bb.fj ]
  resume { ptr, i32 } %common.resume.op

bb.cm:                                            ; preds = %bb.a
  %i.we = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h2b22f74b3886983fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(712) %i.ka) #33
          to label %common.resume unwind label %bb.cn, !noalias !5790

bb.cn:                                            ; preds = %bb.cm
  %i.wf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !5786
  unreachable

_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i: ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kb, ptr noundef nonnull align 8 dereferenceable(56) %i.jw, i64 56, i1 false), !noalias !6132
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h2b22f74b3886983fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(712) %i.jv), !noalias !5786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jv), !noalias !5796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jw), !noalias !5796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jx), !noalias !5786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jy), !noalias !5786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ka), !noalias !5783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jd), !noalias !6133
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iz), !noalias !6137
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6141)
  %i.wg = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8, !alias.scope !6141, !noalias !6144, !nonnull !27, !noundef !27 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  %i.wj = load i64, ptr %i.wi, align 8, !alias.scope !6141, !noalias !6144, !noundef !27 ; 7 uses
  %.idx.i.i = shl nuw nsw i64 %i.wj, 4
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 %.idx.i.i
  %i.wl = icmp eq i64 %i.wj, 0
  br i1 %i.wl, label %.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i, %.backedge.i.i.i
  %i.wm = phi ptr [ %i.wo, %.backedge.i.i.i ], [ %i.wh, %_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i ] ; 3 uses
  %i.wn = phi i64 [ %i.xa, %.backedge.i.i.i ], [ 0, %_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i ] ; 7 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 16 ; 2 uses
  %i.wp = getelementptr i8, ptr %i.wm, i64 8
  %.val9.i.i.i = load i64, ptr %i.wp, align 8, !noalias !6147, !noundef !27
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i, 6
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i", label %.backedge.i.i.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i
  %.val8.i.i.i = load ptr, ptr %i.wm, align 8, !noalias !6147, !nonnull !27, !align !301, !noundef !27 ; 2 uses
  %i.wq = load i32, ptr %.val8.i.i.i, align 1
  %i.wr = xor i32 %i.wq, 1886680431
  %i.ws = getelementptr i8, ptr %.val8.i.i.i, i64 4
  %i.wt = load i16, ptr %i.ws, align 1
  %i.wu = zext i16 %i.wt to i32
  %i.wv = xor i32 %i.wu, 29813
  %i.ww = or i32 %i.wr, %i.wv
  %i.wx = icmp ne i32 %i.ww, 0
  %i.wy = zext i1 %i.wx to i32
  %bcmp.i.fr.i.i.i.i.i.i = freeze i32 %i.wy
  %i.wz = icmp eq i32 %bcmp.i.fr.i.i.i.i.i.i, 0
  br i1 %i.wz, label %bb.co, label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i", %.lr.ph.i.i.i
  %i.xa = add nuw nsw i64 %i.wn, 1
  %i.xb = icmp eq ptr %i.wo, %i.wk
  br i1 %i.xb, label %.thread.i.i.i, label %.lr.ph.i.i.i

bb.co:                                            ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !6152)
  %i.xc = icmp ult i64 %i.wj, 576460752303423488
  call void @llvm.assume(i1 %i.xc)
  %.not.i.i15.i = icmp samesign ult i64 %i.wn, %i.wj
  br i1 %.not.i.i15.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h50a572b270db478aE.exit.i.i", label %.invoke.i, !prof !5221

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h50a572b270db478aE.exit.i.i": ; preds = %bb.co
  %i.xd = getelementptr inbounds nuw [16 x i8], ptr %i.wh, i64 %i.wn ; 4 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !noalias !6155, !nonnull !27, !align !301, !noundef !27
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xg = load i64, ptr %i.xf, align 8, !noalias !6155, !noundef !27
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %i.xi = xor i64 %i.wn, -1                       ; 2 uses
  %i.xj = add nsw i64 %i.wj, %i.xi
  %i.xk = shl nuw nsw i64 %i.xj, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xd, ptr nonnull align 8 %i.xh, i64 %i.xk, i1 false), !noalias !6155
  %i.xl = add nsw i64 %i.wj, -1
  store i64 %i.xl, ptr %i.wi, align 8, !alias.scope !6156, !noalias !6144
  call void @llvm.experimental.noalias.scope.decl(metadata !6157)
  %i.xm = getelementptr inbounds nuw i8, ptr %i.kb, i64 40 ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 8, !alias.scope !6160, !noalias !6161, !noundef !27 ; 5 uses
  %i.xo = icmp ult i64 %i.xn, 88686269585142076
  call void @llvm.assume(i1 %i.xo)
  %.not.i10.i.i = icmp samesign ult i64 %i.wn, %i.xn
  br i1 %.not.i10.i.i, label %.noexc.i, label %.invoke.i, !prof !5221

.invoke.i:                                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h50a572b270db478aE.exit.i.i", %bb.co
  %i.xp = phi i64 [ %i.wj, %bb.co ], [ %i.xn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h50a572b270db478aE.exit.i.i" ]
  %i.xq = phi ptr [ @13, %bb.co ], [ @14, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h50a572b270db478aE.exit.i.i" ]
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.wn, i64 noundef %i.xp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xq) #38
          to label %.cont.i unwind label %bb.fe, !noalias !5783

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.noexc.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h50a572b270db478aE.exit.i.i"
  %i.xr = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.xs = load ptr, ptr %i.xr, align 8, !alias.scope !6160, !noalias !6161, !nonnull !27, !noundef !27
  %i.xt = getelementptr inbounds nuw [104 x i8], ptr %i.xs, i64 %i.wn ; 4 uses
  %.sroa.7.16.copyload22.i = load i64, ptr %i.xt, align 8, !noalias !6163 ; 4 uses
  %.sroa.11.16..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.16..sroa_idx23.i, i64 96, i1 false), !noalias !6163
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 104
  %i.xv = add nsw i64 %i.xn, %i.xi
  %i.xw = mul nuw nsw i64 %i.xv, 104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xt, ptr nonnull align 8 %i.xu, i64 %i.xw, i1 false), !noalias !6164
  %i.xx = add nsw i64 %i.xn, -1
  store i64 %i.xx, ptr %i.xm, align 8, !alias.scope !6160, !noalias !6161
  %.not.i.i.i8.i = icmp eq i64 %.sroa.7.16.copyload22.i, 2
  br i1 %.not.i.i.i8.i, label %.thread.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ja), !noalias !6165
  store i64 %.sroa.7.16.copyload22.i, ptr %i.ja, align 8, !noalias !6165
  %.sroa.11.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.i, i64 96, i1 false), !noalias !6165
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iw), !noalias !6165
  store i128 -66577216670116649405829880219356106879, ptr %i.iw, align 16, !noalias !6165
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg13infer_type_id17h498c56091c240590E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.iz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ja, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.iw)
          to label %bb.cq unwind label %bb.ct, !noalias !6169

.thread.i.i.i:                                    ; preds = %.backedge.i.i.i, %.noexc.i, %_ZN12clap_builder7builder7command7Command11get_matches17ha5b9047a4f06da36E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz), !noalias !6137
  br label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h2b2f3b464427bfabE.exit.thread.i.i

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw), !noalias !6165
  %.sroa.04.0.copyload.i.i.i.i = load i128, ptr %i.iz, align 16, !noalias !6165 ; 3 uses
  %i.xy = icmp eq i128 %.sroa.04.0.copyload.i.i.i.i, -66577216670116649405829880219356106879
  %i.xz = trunc i128 %.sroa.04.0.copyload.i.i.i.i to i64
  %i.ya = lshr i128 %.sroa.04.0.copyload.i.i.i.i, 64
  %i.yb = trunc nuw i128 %i.ya to i64
  %i.yc = inttoptr i64 %i.yb to ptr
  br i1 %i.xy, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h55e4bbab473ed9abE.exit.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iy), !noalias !6165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ix), !noalias !6165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ix, ptr noundef nonnull align 8 dereferenceable(104) %i.ja, i64 104, i1 false), !noalias !6165
  invoke fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17h10b8f66585b66f9bE"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.iy, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.kb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.xe, i64 noundef %i.xg, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.ix)
          to label %.noexc10.i unwind label %bb.fe, !noalias !5783

.noexc10.i:                                       ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ix), !noalias !6165
  %i.yd = load i64, ptr %i.iy, align 8, !range !4073, !alias.scope !6170, !noalias !6165, !noundef !27
  %i.ye = icmp eq i64 %i.yd, 2
  br i1 %i.ye, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h2b2f3b464427bfabE.exit.thread160.i.i, label %bb.cs

bb.cs:                                            ; preds = %.noexc10.i
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h4901074da0a0aa2fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.iy)
          to label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h2b2f3b464427bfabE.exit.thread160.i.i unwind label %bb.fe, !noalias !5783

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h2b2f3b464427bfabE.exit.thread160.i.i: ; preds = %bb.cs, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iy), !noalias !6165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ja), !noalias !6165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz), !noalias !6137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd), !noalias !6133
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ir), !noalias !6133
  store ptr @267, ptr %i.ir, align 8, !noalias !6173
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i64 6, ptr %i.yf, align 8, !noalias !6173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iq), !noalias !6173
  br label %bb.dt

common.resume.sink.split.i.i:                     ; preds = %bb.ey, %bb.es, %bb.em, %bb.eg, %bb.ea, %bb.du
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.aby, %bb.es ], [ %i.abn, %bb.em ], [ %i.aag, %bb.du ], [ %i.aar, %bb.ea ], [ %i.abc, %bb.eg ], [ %i.acj, %bb.ey ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0157.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0157.i.i, i64 noundef %.sroa.7.0158.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !6177
  br label %.body.i

bb.ct:                                            ; preds = %bb.cp
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h4901074da0a0aa2fE"(ptr noalias noundef align 8 dereferenceable(104) %i.ja) #33
          to label %.body.i unwind label %bb.cu, !noalias !6169

bb.cu:                                            ; preds = %bb.ct
  %i.yg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !6169
  unreachable

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h55e4bbab473ed9abE.exit.i.i.i: ; preds = %bb.cq
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.11.16..sroa_idx.i, align 8, !noalias !6178 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %.sroa.10.i.sroa.0.0.copyload148.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !6137 ; 3 uses
  %.sroa.10.i.sroa.6.0..sroa.10.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %.sroa.10.i.sroa.6.0.copyload150.i.i = load ptr, ptr %.sroa.10.i.sroa.6.0..sroa.10.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !6137 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %.sroa.11.0.copyload.i.i.i = load i128, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !6178 ; 3 uses
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx.i.i.i, i64 56, i1 false), !noalias !6137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ja), !noalias !6165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz), !noalias !6137
  %cond.i = icmp eq i64 %.sroa.7.16.copyload22.i, 3
  br i1 %cond.i, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h2b2f3b464427bfabE.exit.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h55e4bbab473ed9abE.exit.i.i.i
  store i64 %.sroa.7.16.copyload22.i, ptr %i.jd, align 8, !noalias !6137
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i64 %.sroa.7.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !6137
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store i64 %.sroa.10.i.sroa.0.0.copyload148.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !6137
  %.sroa.10.i.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  store ptr %.sroa.10.i.sroa.6.0.copyload150.i.i, ptr %.sroa.10.i.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i, align 8, !noalias !6137
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  store i128 %.sroa.11.0.copyload.i.i.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !6137
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i.i.i, i64 56, i1 false), !noalias !6137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jc), !noalias !6137
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg17into_vals_flatten17h88b4e7d789f7178bE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.jc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.jd)
          to label %.noexc12.i unwind label %bb.fe, !noalias !5783

.noexc12.i:                                       ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jb), !noalias !6137
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcedac3f0449b36a8E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.jb, ptr noalias noundef align 8 dereferenceable(96) %i.jc)
          to label %bb.cx unwind label %bb.cw, !noalias !6179

bb.cw:                                            ; preds = %bb.dk, %.noexc12.i
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.dp, %bb.do, %bb.di, %bb.dh, %bb.da, %bb.cz, %bb.cw
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.zm, %bb.dh ], [ %i.yh, %bb.cw ], [ %i.ys, %bb.cz ], [ %i.ys, %bb.da ], [ %i.zm, %bb.di ], [ %i.zu, %bb.dp ], [ %i.zu, %bb.do ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h5fae4bafd2962c36E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.jc)
          to label %.body.i unwind label %bb.ds, !noalias !6179

bb.cx:                                            ; preds = %.noexc12.i
  %i.yi = load ptr, ptr %i.jb, align 8, !noalias !6137, !noundef !27 ; 13 uses
  %.not9.i.i.i = icmp eq ptr %i.yi, null
  br i1 %.not9.i.i.i, label %bb.dm, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %.sroa.25.0.copyload.i.i.i = load ptr, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8, !noalias !6137, !nonnull !27, !noundef !27 ; 4 uses
  %.sroa.36.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %.sroa.36.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.36.0..sroa_idx.i.i.i, align 8, !noalias !6137
  %.sroa.36.sroa.2.0..sroa.36.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %.sroa.36.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.36.sroa.2.0..sroa.36.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6137
  call void @llvm.experimental.noalias.scope.decl(metadata !6180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iv), !noalias !6183
  store ptr %i.yi, ptr %i.iv, align 8, !noalias !6187
  %i.yj = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store ptr %.sroa.25.0.copyload.i.i.i, ptr %i.yj, align 8, !noalias !6187
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i.i.i, i64 16
  %i.yl = load i64, ptr %i.yk, align 8, !range !5333, !invariant.load !27, !alias.scope !6180, !noalias !6189
  %i.ym = add i64 %i.yl, -1
  %i.yn = and i64 %i.ym, -16
  %i.yo = getelementptr i8, ptr %i.yi, i64 %i.yn
  %i.yp = getelementptr i8, ptr %i.yo, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iu), !noalias !6187
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i.i.i, i64 24
  %i.yr = load ptr, ptr %i.yq, align 8, !invariant.load !27, !alias.scope !6180, !noalias !6189, !nonnull !27
  invoke void %i.yr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.iu, ptr noundef align 1 %i.yp)
          to label %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h755b338c40a934b5E.exit.i.i.i.i" unwind label %bb.cz, !noalias !6189

bb.cz:                                            ; preds = %bb.cy
  %i.ys = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yt = atomicrmw sub ptr %i.yi, i64 1 release, align 8, !noalias !6190
  %i.yu = icmp eq i64 %i.yt, 1
  br i1 %i.yu, label %bb.da, label %.body.i.i.i

bb.da:                                            ; preds = %bb.cz
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.iv)
          to label %.body.i.i.i unwind label %bb.db, !noalias !6189

bb.db:                                            ; preds = %bb.da
  %i.yv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #34, !noalias !6189
  unreachable

"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h755b338c40a934b5E.exit.i.i.i.i": ; preds = %bb.cy
  %i.yw = load i128, ptr %i.iu, align 16, !noalias !6187, !noundef !27
  %i.yx = icmp eq i128 %i.yw, -66577216670116649405829880219356106879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iu), !noalias !6187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv), !noalias !6183
  br i1 %i.yx, label %bb.dc, label %bb.dn

bb.dc:                                            ; preds = %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17h755b338c40a934b5E.exit.i.i.i.i"
  %i.yy = cmpxchg ptr %i.yi, i64 1, i64 0 monotonic monotonic, align 8, !noalias !6195
  %i.yz = extractvalue { i64, i1 } %i.yy, 1
  br i1 %i.yz, label %bb.dd, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h2a994f774202912cE.exit.thread.i.i.i.i"

bb.dd:                                            ; preds = %bb.dc
  fence acquire
  %i.za = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %.sroa.016.0.copyload17.i.i.i.i = load i64, ptr %i.za, align 8, !noalias !6198 ; 2 uses
  %.sroa.618.0..sroa_idx19.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  %.sroa.618.0.copyload20.i.i.i.i = load ptr, ptr %.sroa.618.0..sroa_idx19.i.i.i.i, align 8, !noalias !6198 ; 2 uses
  %.sroa.821.0..sroa_idx22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yi, i64 32
  %.sroa.821.0.copyload23.i.i.i.i = load i64, ptr %.sroa.821.0..sroa_idx22.i.i.i.i, align 8, !noalias !6198
  %i.zb = icmp eq ptr %i.yi, inttoptr (i64 -1 to ptr)
  br i1 %i.zb, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h2a994f774202912cE.exit.i.i.i.i", label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.zd = atomicrmw sub ptr %i.zc, i64 1 release, align 8, !noalias !6195
  %i.ze = icmp eq i64 %i.zd, 1
end_hunk_1
