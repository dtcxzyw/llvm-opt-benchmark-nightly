Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator3nth17hde5d875a339dba71E:bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !129768, !noalias !129769
  %.promoted.i.i.i.i.i.pre = load ptr, ptr %0, align 8, !alias.scope !129768, !noalias !129769
  br label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129770)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !129771
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129774)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !129775, !noalias !129776, !nonnull !57, !noundef !57 ; 3 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !129775, !noalias !129776 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.c
  br i1 %i.d, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread10, label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i.i"

"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i.i": ; preds = %bb.b, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.thread.i.i.i.i.i.i"
  %.sroa.01.014.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i13.i.i.i.i.i.i, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.thread.i.i.i.i.i.i" ], [ %1, %bb.b ] ; 4 uses
  %i.e = phi ptr [ %i.f, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.thread.i.i.i.i.i.i" ], [ %.promoted.i.i.i.i.i.i, %bb.b ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129777)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !alias.scope !129775, !noalias !129776
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !129778 ; 4 uses
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8.sroa.6.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !129778 ; 2 uses
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.8.sroa.7.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !129778
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread10, label %bb.c

bb.c:                                             ; preds = %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !129778
  switch i64 %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.i.i.i.i.i.i" [
    i64 8, label %bb.d
    i64 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, align 1
  %i.h = icmp ne i64 %i.g, 8318834007381210719
  %i.i = zext i1 %i.h to i32
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.thread.i.i.i.i.i.i", label %"_ZN5milli6update3new8document8Versions21iter_top_level_fields28_$u7b$$u7b$closure$u7d$$u7d$17h21f31728c4da3318E.exit.i.i.i.i.i.i.i"

bb.e:                                             ; preds = %bb.c
  %i.j = load i32, ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, align 1
  %i.k = icmp ne i32 %i.j, 1868916575
  %i.l = zext i1 %i.k to i32
  %.not11.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.thread.i.i.i.i.i.i", label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.i.i.i.i.i.i"

"_ZN5milli6update3new8document8Versions21iter_top_level_fields28_$u7b$$u7b$closure$u7d$$u7d$17h21f31728c4da3318E.exit.i.i.i.i.i.i.i": ; preds = %bb.d
  %i.m = load i64, ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, align 1
  %i.n = icmp ne i64 %i.m, 7957705967559599967
  %i.o = zext i1 %i.n to i32
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.thread.i.i.i.i.i.i", label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.i.i.i.i.i.i"

"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.i.i.i.i.i.i": ; preds = %"_ZN5milli6update3new8document8Versions21iter_top_level_fields28_$u7b$$u7b$closure$u7d$$u7d$17h21f31728c4da3318E.exit.i.i.i.i.i.i.i", %bb.e, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.6.0.copyload.i.i.i.i.i.i) ]
  %i.p = tail call noundef align 8 dereferenceable(80) ptr @_ZN5milli6prompt8document14ParseableValue8new_bump17he449657ca3ffe0a4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8.sroa.6.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.8.sroa.7.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 8 %.val.i.i.i), !noalias !129779 ; 0 uses
  %i.q = add i64 %.sroa.01.014.i.i.i.i.i.i, -1    ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.thread.i.i.i.i.i.i"

"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.i.i.i.i.i.i", %"_ZN5milli6update3new8document8Versions21iter_top_level_fields28_$u7b$$u7b$closure$u7d$$u7d$17h21f31728c4da3318E.exit.i.i.i.i.i.i.i", %bb.e, %bb.d
  %.sroa.0.0.i13.i.i.i.i.i.i = phi i64 [ %i.q, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.i.i.i.i.i.i" ], [ %.sroa.01.014.i.i.i.i.i.i, %"_ZN5milli6update3new8document8Versions21iter_top_level_fields28_$u7b$$u7b$closure$u7d$$u7d$17h21f31728c4da3318E.exit.i.i.i.i.i.i.i" ], [ %.sroa.01.014.i.i.i.i.i.i, %bb.d ], [ %.sroa.01.014.i.i.i.i.i.i, %bb.e ]
  %i.s = icmp eq ptr %i.f, %i.c
  br i1 %i.s, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread10, label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i.i"

_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread: ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.i.i.i.i.i.i", %._ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread_crit_edge
  %.promoted.i.i.i.i.i = phi ptr [ %.promoted.i.i.i.i.i.pre, %._ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread_crit_edge ], [ %i.f, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.t = phi ptr [ %.pre, %._ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread_crit_edge ], [ %i.c, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.i.i.i.i.i.i" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129784)
  %i.u = icmp eq ptr %.promoted.i.i.i.i.i, %i.t
  br i1 %i.u, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread10, label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i"

"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread, %bb.i
  %i.v = phi ptr [ %i.w, %bb.i ], [ %.promoted.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129785)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 4 uses
  %.sroa.04.0.copyload5.i.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !129786 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.04.0.copyload5.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.thread.sink.split.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.8.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx6.i.i.i.i.i, align 8, !noalias !129786
  switch i64 %.sroa.8.sroa.0.0.copyload.i.i.i.i.i, label %"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17he8ac7be3efee16f9E.exit.i" [
    i64 8, label %bb.g
    i64 4, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr %.sroa.04.0.copyload5.i.i.i.i.i, align 1
  %i.y = icmp ne i64 %i.x, 8318834007381210719
  %i.z = zext i1 %i.y to i32
  %.not.i.i.i.i.i.i.i.i5 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i5, label %bb.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hdf14733a6cef803cE.exit.i.i.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %.sroa.04.0.copyload5.i.i.i.i.i, align 1
  %i.ab = icmp ne i32 %i.aa, 1868916575
  %i.ac = zext i1 %i.ab to i32
  %.not11.i.i.i.i.i.i.i.i3 = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i.i.i.i.i.i.i3, label %bb.i, label %"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17he8ac7be3efee16f9E.exit.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hdf14733a6cef803cE.exit.i.i.i.i.i.i": ; preds = %bb.g
  %i.ad = load i64, ptr %.sroa.04.0.copyload5.i.i.i.i.i, align 1
  %i.ae = icmp ne i64 %i.ad, 7957705967559599967
  %i.af = zext i1 %i.ae to i32
  %.not.i.i.i.i.i.i7 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i7, label %bb.i, label %"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17he8ac7be3efee16f9E.exit.i"

"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.thread.sink.split.i.i.i.i.i": ; preds = %bb.i, %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i"
  store ptr %i.w, ptr %0, align 8, !alias.scope !129768, !noalias !129769
  br label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread10

bb.i:                                             ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hdf14733a6cef803cE.exit.i.i.i.i.i.i", %bb.h, %bb.g
  %i.ag = icmp eq ptr %i.w, %i.t
  br i1 %i.ag, label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.thread.sink.split.i.i.i.i.i", label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i"

"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17he8ac7be3efee16f9E.exit.i": ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hdf14733a6cef803cE.exit.i.i.i.i.i.i", %bb.h, %bb.f
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx6.sroa_idx.le.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %0, align 8, !alias.scope !129768, !noalias !129769
  %.sroa.8.sroa.0.0.copyload.i = load ptr, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx6.sroa_idx.le.i.i.i.i.i, align 8, !noalias !129787, !nonnull !57, !noundef !57
  %.sroa.8.sroa.4.0..sroa.8.sroa.6.0..sroa.8.0..sroa_idx6.sroa_idx.le.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.8.sroa.4.0.copyload.i = load i64, ptr %.sroa.8.sroa.4.0..sroa.8.sroa.6.0..sroa.8.0..sroa_idx6.sroa_idx.le.i.i.i.i.sroa_idx.i, align 8, !noalias !129787
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !129780, !nonnull !57, !noundef !57
  %i.ai = tail call noundef align 8 dereferenceable(80) ptr @_ZN5milli6prompt8document14ParseableValue8new_bump17he449657ca3ffe0a4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8.sroa.0.0.copyload.i, i64 noundef %.sroa.8.sroa.4.0.copyload.i, ptr noundef nonnull align 8 %.val.i), !noalias !129788
  br label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread10

_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread10: ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.thread.i.i.i.i.i.i", %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i.i", %"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17he8ac7be3efee16f9E.exit.i", %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.thread.sink.split.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ null, %_ZN4core4iter6traits8iterator8Iterator10advance_by17h235a45fb57d92497E.exit.thread ], [ %i.ai, %"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$6values28_$u7b$$u7b$closure$u7d$$u7d$17he8ac7be3efee16f9E.exit.i" ], [ null, %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.thread.sink.split.i.i.i.i.i" ], [ null, %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i.i" ], [ null, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h68d49519108fe210E.exit.thread.i.i.i.i.i.i" ]
  %i.aj = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ak = insertvalue { ptr, ptr } %i.aj, ptr @340, 1
  ret { ptr, ptr } %i.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h3f1e1981b0bd61a2E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(544) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 6 uses
  %i.b = alloca [544 x i8], align 8               ; 11 uses
  %i.c = alloca [120 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [544 x i8], align 8               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129855)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !129856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(544) %1, i64 544, i1 false), !alias.scope !129857, !noalias !129855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !129862
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129865)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 512 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129867)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !129868, !noalias !129869, !noundef !57
  %i.i = load i64, ptr %i.f, align 8, !alias.scope !129870, !noalias !129871, !noundef !57 ; 2 uses
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i", label %.preheader1.i.i.i.i.i.i.i

.preheader1.i.i.i.i.i.i.i:                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 520 ; 2 uses
  %.promoted2.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !129870, !noalias !129871
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 536 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 528 ; 2 uses
  %.promoted3.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !129870, !noalias !129871
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !129870, !noalias !129871
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i.i.i.i.i.i, %.preheader1.i.i.i.i.i.i.i
  %i.n = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.preheader1.i.i.i.i.i.i.i ], [ %i.s, %.loopexit.i.i.i.i.i.i.i ] ; 3 uses
  %.promoted4.i.i.i.i.i.i.i = phi i64 [ %.promoted3.i.i.i.i.i.i.i, %.preheader1.i.i.i.i.i.i.i ], [ 0, %.loopexit.i.i.i.i.i.i.i ] ; 3 uses
  %i.o = phi i64 [ %.promoted2.i.i.i.i.i.i.i, %.preheader1.i.i.i.i.i.i.i ], [ %i.t, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !129868, !noalias !129869, !noundef !57 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i:               ; preds = %bb.b
  %umax.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %.promoted4.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i51.not = icmp ult i64 %.promoted4.i.i.i.i.i.i.i, %i.n
  br i1 %exitcond.not.i.i.i.i.i.i.i51.not, label %.lr.ph, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i, %bb.b
  %i.s = shl i64 %i.n, 1                          ; 2 uses
  store i64 %i.s, ptr %i.m, align 8, !alias.scope !129870, !noalias !129871
  %i.t = add nuw nsw i64 %i.o, 1                  ; 2 uses
  store i64 %i.t, ptr %i.k, align 8, !alias.scope !129870, !noalias !129871
  br label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.w, %umax.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %i.u = phi i64 [ %i.w, %.preheader.i.i.i.i.i.i.i ], [ %.promoted4.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [136 x i8], ptr %i.q, i64 %i.u ; 4 uses
  %i.w = add i64 %i.u, 1                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.y = load i8, ptr %i.x, align 1, !range !74, !noalias !129872, !noundef !57
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.i.i.i", label %.preheader.i.i.i.i.i.i.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.i.i.i": ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  store i64 %i.w, ptr %i.l, align 8, !alias.scope !129870, !noalias !129871
  %i.ab = add i64 %i.i, 1
  store i64 %i.ab, ptr %i.f, align 8, !alias.scope !129870, !noalias !129871
  store i8 0, ptr %i.aa, align 1, !noalias !129873
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.ac, align 8, !noalias !129874 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, 2
  br i1 %.not.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i", label %bb.f

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.i.i.i", %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !129875, !noalias !129876
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8, !alias.scope !129875, !noalias !129876
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ae, align 8, !alias.scope !129875, !noalias !129876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !129862
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129881)
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i"
  %.sroa.0.0.idx12.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i" ], [ %.sroa.0.0.add.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.011.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i" ], [ %i.af, %.backedge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.ptr.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.idx12.i.i.i.i.i.i.i.i
  %.sroa.0.0.add.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.7.011.i.i.i.i.i.i.i.i, 1
  %i.ag = load ptr, ptr %.sroa.0.0.ptr.i.i.i.i.i.i.i.i, align 8, !alias.scope !129882, !noalias !129883, !noundef !57 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.backedge.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = shl nuw i64 1, %.sroa.7.011.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..cache..BalancedCaches$GT$$GT$$GT$$u5d$$GT$$GT$17h3f27633269171dffE"(ptr nonnull %i.ag, i64 %i.ai), !noalias !129884
  br label %.backedge.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.d, %bb.c
  %i.aj = icmp eq i64 %.sroa.0.0.add.i.i.i.i.i.i.i.i, 504
  br i1 %i.aj, label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5f0e38647433d4ceE.exit", label %bb.c

bb.e:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17h023338ac4058e0c7E"(ptr noalias noundef align 8 dereferenceable(120) %i.c) #81
          to label %bb.s unwind label %bb.q, !noalias !129862

bb.f:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.i.i.i"
  %.sroa.7.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !129862
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %i.c, align 8, !noalias !129862
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.0..sroa_idx2.i.i.i, i64 112, i1 false), !noalias !129862
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !129885
  %i.al = tail call noundef align 8 dereferenceable_or_null(480) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 480, i64 noundef range(i64 1, 9) 8) #79, !noalias !129885 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 480, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #80
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !129862

.noexc.i.i.i:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.al, ptr noundef nonnull align 8 dereferenceable(120) %i.c, i64 120, i1 false), !noalias !129862
  store i64 4, ptr %i.d, align 8, !noalias !129862
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !129862
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !129862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !129862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !129862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.b, ptr noundef nonnull align 8 dereferenceable(544) %i.e, i64 544, i1 false), !noalias !129883
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129889)
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !129890, !noalias !129891, !noundef !57 ; 3 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !129892, !noalias !129893 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %.promoted.i.i.i.i.i
  br i1 %i.aq, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i.preheader", label %.preheader1.i.i.i.i.lr.ph.i.i.i.i.i

.preheader1.i.i.i.i.lr.ph.i.i.i.i.i:              ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 536 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 528 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted9.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !129892, !noalias !129893
  %.promoted10.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !129892, !noalias !129893
  %.promoted12.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !129892, !noalias !129893
  br label %.preheader1.i.i.i.i.i.i.i.i.i

.preheader1.i.i.i.i.i.i.i.i.i:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i", %.preheader1.i.i.i.i.lr.ph.i.i.i.i.i
  %i.au = phi ptr [ %i.al, %.preheader1.i.i.i.i.lr.ph.i.i.i.i.i ], [ %i.bx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i" ]
  %i.av = phi i64 [ 1, %.preheader1.i.i.i.i.lr.ph.i.i.i.i.i ], [ %i.bz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i" ] ; 5 uses
  %i.aw = phi i64 [ %.promoted12.i.i.i.i.i, %.preheader1.i.i.i.i.lr.ph.i.i.i.i.i ], [ %i.az, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i" ]
  %.lcssa611.i.i.i.i.i = phi i64 [ %.promoted10.i.i.i.i.i, %.preheader1.i.i.i.i.lr.ph.i.i.i.i.i ], [ %i.bi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i" ]
  %i.ax = phi i64 [ %.promoted9.i.i.i.i.i, %.preheader1.i.i.i.i.lr.ph.i.i.i.i.i ], [ %i.ba, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i" ]
  %i.ay = phi i64 [ %.promoted.i.i.i.i.i, %.preheader1.i.i.i.i.lr.ph.i.i.i.i.i ], [ %i.bn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129898)
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %.preheader1.i.i.i.i.i.i.i.i.i
  %i.az = phi i64 [ %i.aw, %.preheader1.i.i.i.i.i.i.i.i.i ], [ %i.be, %.loopexit.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ba = phi i64 [ %i.ax, %.preheader1.i.i.i.i.i.i.i.i.i ], [ %i.bf, %.loopexit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.promoted4.i.i.i.i.i.i.i.i.i = phi i64 [ %.lcssa611.i.i.i.i.i, %.preheader1.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !129890, !noalias !129891, !noundef !57 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i.i:           ; preds = %bb.i
  %umax.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %.promoted4.i.i.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i.i.i52.not = icmp ult i64 %.promoted4.i.i.i.i.i.i.i.i.i, %i.az
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i52.not, label %.lr.ph53, label %.loopexit.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i, %bb.i
  %i.be = shl i64 %i.az, 1                        ; 2 uses
  store i64 %i.be, ptr %i.at, align 8, !alias.scope !129892, !noalias !129893
  %i.bf = add nuw nsw i64 %i.ba, 1                ; 2 uses
  store i64 %i.bf, ptr %i.ar, align 8, !alias.scope !129892, !noalias !129893
  br label %bb.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph53
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bi, %umax.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph53

.lr.ph53:                                         ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i
  %i.bg = phi i64 [ %i.bi, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.promoted4.i.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [136 x i8], ptr %i.bc, i64 %i.bg ; 4 uses
  %i.bi = add i64 %i.bg, 1                        ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bk = load i8, ptr %i.bj, align 1, !range !74, !noalias !129899, !noundef !57
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr278drop_in_place$LT$core..iter..adapters..map..Map$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..cache..BalancedCaches$GT$$GT$$C$core..cell..RefCell$LT$milli..update..new..extract..cache..BalancedCaches$GT$..into_inner$GT$$GT$17h0647ec977f7b8450E"(ptr noalias noundef nonnull align 8 dereferenceable(544) %i.b) #81
          to label %.body.i.i.i unwind label %bb.o, !noalias !129900

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.i.i.i.i.i": ; preds = %.lr.ph53
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bn = add i64 %i.ay, 1                        ; 4 uses
  store i8 0, ptr %i.bm, align 1, !noalias !129901
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.bo, align 8, !noalias !129902 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.loopexit.i.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.i.i.i.i.i"
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129903
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.a, align 8, !noalias !129903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.0..sroa_idx2.i.i.i.i.i, i64 112, i1 false), !noalias !129903
  %i.bp = icmp samesign ult i64 %i.av, 76861433640456466
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = load i64, ptr %i.d, align 8, !range !56, !alias.scope !129904, !noalias !129905, !noundef !57
  %i.br = icmp eq i64 %i.av, %i.bq
  br i1 %i.br, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.loopexit.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.i.i.i.i.i"
  %.lcssa25.i.i.i = phi i64 [ %i.bn, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.i.i.i.i.i" ], [ %i.ap, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i" ]
  store i64 %i.bi, ptr %i.as, align 8, !alias.scope !129892, !noalias !129893
  store i64 %.lcssa25.i.i.i, ptr %i.an, align 8, !alias.scope !129892, !noalias !129893
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i.preheader"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i.preheader": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.loopexit.i.i.i", %bb.h
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i.preheader", %.backedge.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.idx12.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.add.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i.preheader" ] ; 2 uses
  %.sroa.7.011.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bs, %.backedge.i.i.i.i.i.i.i.i.i.i ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i.preheader" ] ; 2 uses
  %.sroa.0.0.ptr.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.idx12.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.add.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.bs = add nuw nsw i64 %.sroa.7.011.i.i.i.i.i.i.i.i.i.i, 1
  %i.bt = load ptr, ptr %.sroa.0.0.ptr.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !129906, !noalias !129900, !noundef !57 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.backedge.i.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i"
  %i.bv = shl nuw i64 1, %.sroa.7.011.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$milli..update..new..extract..cache..BalancedCaches$GT$$GT$$GT$$u5d$$GT$$GT$17h3f27633269171dffE"(ptr nonnull %i.bt, i64 %i.bv)
          to label %.backedge.i.i.i.i.i.i.i.i.i.i unwind label %bb.p, !noalias !129862

.backedge.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.l, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i"
  %i.bw = icmp eq i64 %.sroa.0.0.add.i.i.i.i.i.i.i.i.i.i, 504
  br i1 %i.bw, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h93a7f04ed0b13419E.exit.i.i.i", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i_crit_edge.i.i.i", %bb.k
  %i.bx = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i_crit_edge.i.i.i" ], [ %i.au, %bb.k ] ; 2 uses
  %i.by = getelementptr inbounds nuw [120 x i8], ptr %i.bx, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.by, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false), !noalias !129903
  %i.bz = add nuw nsw i64 %i.av, 1                ; 2 uses
  store i64 %i.bz, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !129904, !noalias !129905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129903
  %i.ca = icmp eq i64 %i.ap, %i.bn
  br i1 %i.ca, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3441068651958fE.exit.thread.i.i.loopexit.i.i.i", label %.preheader1.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bi, ptr %i.as, align 8, !alias.scope !129892, !noalias !129893
  store i64 %i.bn, ptr %i.an, align 8, !alias.scope !129892, !noalias !129893
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17h023338ac4058e0c7E"(ptr noalias noundef align 8 dereferenceable(120) %i.a) #81
          to label %bb.j unwind label %bb.o, !noalias !129903

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.av, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 120)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i_crit_edge.i.i.i" unwind label %bb.m, !noalias !129905

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i_crit_edge.i.i.i": ; preds = %bb.n
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !129904, !noalias !129905
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h904fe07ff8ca2331E.exit.i.i.i.i.i"

bb.o:                                             ; preds = %bb.m, %bb.j
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !129903
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.p, %bb.j
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cd, %bb.p ], [ %i.cb, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$milli..update..new..extract..cache..BalancedCaches$GT$$GT$17h86f945696c8a4860E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #81
          to label %bb.r unwind label %bb.q, !noalias !129862

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h93a7f04ed0b13419E.exit.i.i.i": ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !129862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !129876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !129862
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5f0e38647433d4ceE.exit"

bb.q:                                             ; preds = %bb.s, %.body.i.i.i, %bb.e
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !129862
  unreachable

bb.r:                                             ; preds = %bb.s, %.body.i.i.i
  %.pn6.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %.pn6.i.i.i

bb.s:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr278drop_in_place$LT$core..iter..adapters..map..Map$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..cache..BalancedCaches$GT$$GT$$C$core..cell..RefCell$LT$milli..update..new..extract..cache..BalancedCaches$GT$..into_inner$GT$$GT$17h0647ec977f7b8450E"(ptr noalias noundef nonnull align 8 dereferenceable(544) %i.e) #81
          to label %bb.r unwind label %bb.q, !noalias !129883

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5f0e38647433d4ceE.exit": ; preds = %.backedge.i.i.i.i.i.i.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h93a7f04ed0b13419E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !129856
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h43c93916fef242f6E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [72 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !130025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !130026, !noalias !130024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130030)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !130031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !130032
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h21981eac0d8ec632E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !130033

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !noalias !130032, !noundef !57 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !130032
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.sroa.22.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !130032, !nonnull !57, !align !64, !noundef !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !130032, !noundef !57 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !130032
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = icmp eq i64 %i.n, 0                      ; 2 uses
  br i1 %i.p, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !130034
  %i.q = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 1) #79, !noalias !130034 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80
          to label %.noexc5.i.i.i unwind label %bb.e, !noalias !130031

.noexc5.i.i.i:                                    ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.f:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !130032
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable5drift4sort17h1605363e3bc2d0b9E:bb.a
  %i.ag = phi i64 [ %i.af, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17he2bdf582daec1116E.exit.i.thread98 ]
  %.sroa.0.0.i.i96103107 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17he2bdf582daec1116E.exit.i.thread98 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.0.0.i.i96103107
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.ar, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ai = xor i64 %.sroa.0.014.i.i, -1
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 3 uses
  %i.ak = getelementptr [32 x i8], ptr %i.ah, i64 %i.ai ; 3 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !132579, !noalias !132580
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !132581, !noalias !132582
  store <2 x i64> %i.am, ptr %i.aj, align 8, !alias.scope !132579, !noalias !132580
  store <2 x i64> %i.al, ptr %i.ak, align 8, !alias.scope !132581, !noalias !132582
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !132583, !noalias !132580
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !132584, !noalias !132582
  store <2 x i64> %i.aq, ptr %i.an, align 8, !alias.scope !132583, !noalias !132580
  store <2 x i64> %i.ap, ptr %i.ao, align 8, !alias.scope !132584, !noalias !132582
  %i.ar = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.ag
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha5aa20a6f5a04278E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h5b76d1ccac797575E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha5aa20a6f5a04278E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ae, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17ha5aa20a6f5a04278E.exit" ], [ %i.ac, %bb.n ], [ %i.aa, %bb.m ] ; 2 uses
  %i.as = lshr i64 %.sroa.018.0, 1
  %i.at = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.au = sub i64 %factor, %i.as
  %i.av = add i64 %i.at, %factor
  %i.aw = mul i64 %i.au, %.sroa.0.0
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 false)
  %i.ba = trunc nuw nsw i64 %i.az to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h5b76d1ccac797575E.exit
  %.sroa.026.0 = phi i8 [ %i.ba, %_ZN4core5slice4sort6stable5drift10create_run17h5b76d1ccac797575E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h5b76d1ccac797575E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bb = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bb, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17h2581a42bf687aa20E.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bd, %_ZN4core5slice4sort6stable5drift13logical_merge17h2581a42bf687aa20E.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h2581a42bf687aa20E.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.bf, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h2581a42bf687aa20E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h2581a42bf687aa20E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h2581a42bf687aa20E.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !57 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.018.163 to i1
  %i.br = or i64 %i.bj, %.sroa.018.163
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bu = shl i64 %i.bm, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2581a42bf687aa20E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bq, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1ef433e09e89b8c8E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0d2b79c63d3f1ffcE(ptr noalias noundef nonnull align 8 %i.bo, i64 noundef %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132563
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1ef433e09e89b8c8E.exit35": ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0d2b79c63d3f1ffcE(ptr noalias noundef nonnull align 8 %i.ca, i64 noundef %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132563
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1ef433e09e89b8c8E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132586)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h5efa8c6b10593259E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.ci, label %_ZN4core5slice4sort6stable5merge5merge17h5efa8c6b10593259E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cj, ptr %i.bo
  %i.ck = shl i64 %.sroa.0.0.i.i36, 5             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ck, i1 false), !alias.scope !132587
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.cm = phi ptr [ %i.cy, %.preheader.i ], [ %i.cl, %bb.y ] ; 2 uses
  %i.cn = phi ptr [ %i.cw, %.preheader.i ], [ %i.cj, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.bc, %bb.y ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -32 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -32 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cm, i64 -8
  %.val.i.i = load i64, ptr %i.cr, align 8, !alias.scope !132586, !noalias !132588, !noundef !57
  %i.cs = getelementptr i8, ptr %i.cn, i64 -8
  %.val10.i.i = load i64, ptr %i.cs, align 8, !alias.scope !132585, !noalias !132589, !noundef !57
  %i.ct = icmp ult i64 %.val10.i.i, %.val.i.i     ; 3 uses
  %..i.i = select i1 %i.ct, ptr %i.co, ptr %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !132587, !noalias !132590
  %i.cu = xor i1 %i.ct, true
  %i.cv = zext i1 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cv ; 3 uses
  %i.cx = zext i1 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.cx ; 3 uses
  %i.cz = icmp eq ptr %i.cw, %i.bo
  %i.da = icmp eq ptr %i.cy, %2
  %or.cond.i.i = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8a1ff3b3ca3c1e37E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.db = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %i.bo, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.cj, %bb.y ] ; 3 uses
  %i.dc = phi ptr [ %i.di, %.lr.ph.i.i ], [ %2, %bb.y ] ; 3 uses
  %i.dd = getelementptr i8, ptr %.sroa.0.02.i.i, i64 24
  %.sroa.0.0.val.i.i = load i64, ptr %i.dd, align 8, !alias.scope !132585, !noalias !132591, !noundef !57
  %i.de = getelementptr i8, ptr %i.dc, i64 24
  %.val.i19.i = load i64, ptr %i.de, align 8, !alias.scope !132586, !noalias !132592, !noundef !57
  %i.df = icmp ult i64 %.val.i19.i, %.sroa.0.0.val.i.i ; 3 uses
  %i.dg = xor i1 %i.df, true
  %spec.select.i.i = select i1 %i.df, ptr %.sroa.0.02.i.i, ptr %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !132587, !noalias !132593
  %i.dh = zext i1 %i.dg to i64
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %i.dh ; 3 uses
  %i.dj = zext i1 %i.df to i64
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 32 ; 2 uses
  %i.dm = icmp ne ptr %i.di, %i.cl
  %i.dn = icmp ne ptr %i.dk, %i.bc
  %or.cond.i20.i = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8a1ff3b3ca3c1e37E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8a1ff3b3ca3c1e37E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cw, %.preheader.i ], [ %i.dl, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cy, %.preheader.i ], [ %i.cl, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.di, %.lr.ph.i.i ] ; 2 uses
  %i.do = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dp = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dq = sub nuw i64 %i.do, %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dq, i1 false), !alias.scope !132587, !noalias !132594
  br label %_ZN4core5slice4sort6stable5merge5merge17h5efa8c6b10593259E.exit

_ZN4core5slice4sort6stable5merge5merge17h5efa8c6b10593259E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8a1ff3b3ca3c1e37E.exit.i"
  %i.dr = shl i64 %i.bm, 1
  %i.ds = or disjoint i64 %i.dr, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2581a42bf687aa20E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h2581a42bf687aa20E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h5efa8c6b10593259E.exit
  %.sroa.0.0.i = phi i64 [ %i.ds, %_ZN4core5slice4sort6stable5merge5merge17h5efa8c6b10593259E.exit ], [ %i.bu, %bb.t ] ; 2 uses
  %i.dt = icmp ugt i64 %i.bd, 1
  br i1 %i.dt, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.du = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dv = lshr i64 %.sroa.023.0, 1
  %i.dw = add i64 %i.dv, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.dx = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dx, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dy = or i64 %1, 1
  %i.dz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0d2b79c63d3f1ffcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132563
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h35e0f7638ab8a299E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eu, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.es, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132641)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !132641, !noalias !132642, !nonnull !57, !noundef !57 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 48
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !132641, !noalias !132642, !noundef !57 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !132641, !noalias !132642, !nonnull !57, !noundef !57
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !132641, !noalias !132642, !noundef !57 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !132643, !noalias !132644 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !132641, !noalias !132642, !nonnull !57, !noundef !57 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !132641, !noalias !132642, !noundef !57 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !132645, !noalias !132644 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !132641, !noalias !132642, !nonnull !57, !noundef !57 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !132641, !noalias !132642, !noundef !57 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !132646, !noalias !132644 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb890871665685156E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h42678aac3289e4d1E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132608
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb890871665685156E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb890871665685156E.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132647), !noalias !132642
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132648), !noalias !132642
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h5d344904fac8c496E.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable5drift4sort17h35e0f7638ab8a299E:bb.a
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !alias.scope !132653, !noalias !132650
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !132654, !noalias !132652
  %i.bh = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17hb890871665685156E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bi = lshr i64 %.sroa.018.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bk = sub i64 %factor, %i.bi
  %i.bl = add i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hb890871665685156E.exit
  %.sroa.026.0 = phi i8 [ %i.bq, %_ZN4core5slice4sort6stable5drift10create_run17hb890871665685156E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hb890871665685156E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.br = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.br, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17he2969a5fb0dc84b9E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bt, %_ZN4core5slice4sort6stable5drift13logical_merge17he2969a5fb0dc84b9E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he2969a5fb0dc84b9E.exit ] ; 4 uses
  %i.bt = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.bv, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17he2969a5fb0dc84b9E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he2969a5fb0dc84b9E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17he2969a5fb0dc84b9E.exit ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bx, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bt
  %i.bz = load i64, ptr %i.by, align 8, !noundef !57 ; 3 uses
  %i.ca = lshr i64 %i.bz, 1                       ; 8 uses
  %i.cb = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cc = add nuw i64 %i.ca, %i.cb                ; 4 uses
  %i.cd = sub i64 %.sroa.09.0, %i.cc
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cd ; 6 uses
  %i.cf = icmp ugt i64 %i.cc, %3
  %i.cg = trunc i64 %.sroa.018.167 to i1
  %i.ch = or i64 %i.bz, %.sroa.018.167
  %i.ci = trunc i64 %i.ch to i1
  %or.cond3.i = or i1 %i.cf, %i.ci
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = trunc i64 %i.bz to i1
  br i1 %i.cj, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ck = shl i64 %i.cc, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he2969a5fb0dc84b9E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cg, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cl = or i64 %i.ca, 1
  %i.cm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h42678aac3289e4d1E(ptr noalias noundef nonnull align 8 %i.ce, i64 noundef %i.ca, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132623
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit35": ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca
  %i.cr = or i64 %i.cb, 1
  %i.cs = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h42678aac3289e4d1E(ptr noalias noundef nonnull align 8 %i.cq, i64 noundef %i.cb, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132623
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132656)
  %i.cw = icmp eq i64 %i.ca, 0
  %i.cx = icmp eq i64 %i.cb, 0
  %or.cond.i = or i1 %i.cx, %i.cw
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hc1dc686bbf7557dcE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 range(i64 0, -9223372036854775808) %i.ca) ; 2 uses
  %i.cy = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cy, label %_ZN4core5slice4sort6stable5merge5merge17hc1dc686bbf7557dcE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ca, %i.cb  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cz, ptr %i.ce
  %i.da = shl i64 %.sroa.0.0.i.i36, 5             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.da, i1 false), !alias.scope !132657
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dc = phi ptr [ %i.ds, %.preheader.i ], [ %i.db, %bb.y ] ; 3 uses
  %i.dd = phi ptr [ %i.dr, %.preheader.i ], [ %i.cz, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dg, %.preheader.i ], [ %i.bs, %bb.y ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -32 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 -32 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dc, i64 -24
  %.val.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !132656, !noalias !132658, !nonnull !57, !noundef !57
  %i.di = getelementptr i8, ptr %i.dc, i64 -16
  %.val10.i.i = load i64, ptr %i.di, align 8, !alias.scope !132656, !noalias !132658, !noundef !57 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 -24
  %.val11.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !132655, !noalias !132659, !nonnull !57, !noundef !57
  %i.dk = getelementptr i8, ptr %i.dd, i64 -16
  %.val12.i.i = load i64, ptr %i.dk, align 8, !alias.scope !132655, !noalias !132659, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dl = sub i64 %.val10.i.i, %.val12.i.i
  %i.dm = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !132660, !noalias !132661 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp eq i32 %i.dm, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.do, i64 %i.dl, i64 %i.dn ; 2 uses
  %i.dp = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dp, ptr %i.df, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !132657, !noalias !132662
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %i.dq ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dt = icmp eq ptr %i.dr, %i.ce
  %i.du = icmp eq ptr %i.ds, %2
  %or.cond.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8051c39a99ab2a68E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dv = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %i.ce, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.cz, %bb.y ] ; 4 uses
  %i.dw = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.dx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !132655, !noalias !132663, !nonnull !57, !noundef !57
  %i.dy = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dy, align 8, !alias.scope !132655, !noalias !132663, !noundef !57 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dw, i64 8
  %.val.i19.i = load ptr, ptr %i.dz, align 8, !alias.scope !132656, !noalias !132664, !nonnull !57, !noundef !57
  %i.ea = getelementptr i8, ptr %i.dw, i64 16
  %.val7.i.i = load i64, ptr %i.ea, align 8, !alias.scope !132656, !noalias !132664, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.eb = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !132665, !noalias !132666 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ee, i64 %i.eb, i64 %i.ed ; 2 uses
  %i.ef = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ef, ptr %i.dw, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !132657, !noalias !132667
  %i.eg = zext i1 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.eg ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %i.ek = icmp ne ptr %i.eh, %i.db
  %i.el = icmp ne ptr %i.ei, %i.bs
  %or.cond.i23.i = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8051c39a99ab2a68E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8051c39a99ab2a68E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dr, %.preheader.i ], [ %i.ej, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ds, %.preheader.i ], [ %i.db, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.eh, %.lr.ph.i.i ] ; 2 uses
  %i.em = ptrtoint ptr %.sroa.7.0.i to i64
  %i.en = ptrtoint ptr %.sroa.0.1.i to i64
  %i.eo = sub nuw i64 %i.em, %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.eo, i1 false), !alias.scope !132657, !noalias !132668
  br label %_ZN4core5slice4sort6stable5merge5merge17hc1dc686bbf7557dcE.exit

_ZN4core5slice4sort6stable5merge5merge17hc1dc686bbf7557dcE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8051c39a99ab2a68E.exit.i"
  %i.ep = shl i64 %i.cc, 1
  %i.eq = or disjoint i64 %i.ep, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he2969a5fb0dc84b9E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17he2969a5fb0dc84b9E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hc1dc686bbf7557dcE.exit
  %.sroa.0.0.i = phi i64 [ %i.eq, %_ZN4core5slice4sort6stable5merge5merge17hc1dc686bbf7557dcE.exit ], [ %i.ck, %bb.t ] ; 2 uses
  %i.er = icmp ugt i64 %i.bt, 1
  br i1 %i.er, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.es = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.et = lshr i64 %.sroa.023.0, 1
  %i.eu = add i64 %i.et, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.ev = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ev, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = or i64 %1, 1
  %i.ex = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = xor i32 %i.ez, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h42678aac3289e4d1E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132623
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h4f742a4520c46d06E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eu, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.es, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132715)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !132715, !noalias !132716, !nonnull !57, !noundef !57 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 48
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !132715, !noalias !132716, !noundef !57 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !132715, !noalias !132716, !nonnull !57, !noundef !57
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !132715, !noalias !132716, !noundef !57 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !132717, !noalias !132718 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !132715, !noalias !132716, !nonnull !57, !noundef !57 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !132715, !noalias !132716, !noundef !57 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !132719, !noalias !132718 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !132715, !noalias !132716, !nonnull !57, !noundef !57 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !132715, !noalias !132716, !noundef !57 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !132720, !noalias !132718 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1bc5790aa11ac2d3E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h16cbbcf46bd526bcE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132682
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1bc5790aa11ac2d3E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h1bc5790aa11ac2d3E.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132721), !noalias !132716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132722), !noalias !132716
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h8848309d69b1780dE.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable5drift4sort17h4f742a4520c46d06E:bb.a
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !alias.scope !132727, !noalias !132724
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !132728, !noalias !132726
  %i.bh = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h1bc5790aa11ac2d3E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bi = lshr i64 %.sroa.018.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bk = sub i64 %factor, %i.bi
  %i.bl = add i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h1bc5790aa11ac2d3E.exit
  %.sroa.026.0 = phi i8 [ %i.bq, %_ZN4core5slice4sort6stable5drift10create_run17h1bc5790aa11ac2d3E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h1bc5790aa11ac2d3E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.br = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.br, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17h8624157b559b4a6cE.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bt, %_ZN4core5slice4sort6stable5drift13logical_merge17h8624157b559b4a6cE.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h8624157b559b4a6cE.exit ] ; 4 uses
  %i.bt = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.bv, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h8624157b559b4a6cE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h8624157b559b4a6cE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h8624157b559b4a6cE.exit ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bx, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bt
  %i.bz = load i64, ptr %i.by, align 8, !noundef !57 ; 3 uses
  %i.ca = lshr i64 %i.bz, 1                       ; 8 uses
  %i.cb = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cc = add nuw i64 %i.ca, %i.cb                ; 4 uses
  %i.cd = sub i64 %.sroa.09.0, %i.cc
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cd ; 6 uses
  %i.cf = icmp ugt i64 %i.cc, %3
  %i.cg = trunc i64 %.sroa.018.167 to i1
  %i.ch = or i64 %i.bz, %.sroa.018.167
  %i.ci = trunc i64 %i.ch to i1
  %or.cond3.i = or i1 %i.cf, %i.ci
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = trunc i64 %i.bz to i1
  br i1 %i.cj, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ck = shl i64 %i.cc, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h8624157b559b4a6cE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cg, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cl = or i64 %i.ca, 1
  %i.cm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h16cbbcf46bd526bcE(ptr noalias noundef nonnull align 8 %i.ce, i64 noundef %i.ca, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132697
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit35": ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca
  %i.cr = or i64 %i.cb, 1
  %i.cs = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h16cbbcf46bd526bcE(ptr noalias noundef nonnull align 8 %i.cq, i64 noundef %i.cb, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132697
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132730)
  %i.cw = icmp eq i64 %i.ca, 0
  %i.cx = icmp eq i64 %i.cb, 0
  %or.cond.i = or i1 %i.cx, %i.cw
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h3f7c6ec3f4cb31e3E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 range(i64 0, -9223372036854775808) %i.ca) ; 2 uses
  %i.cy = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cy, label %_ZN4core5slice4sort6stable5merge5merge17h3f7c6ec3f4cb31e3E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ca, %i.cb  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cz, ptr %i.ce
  %i.da = shl i64 %.sroa.0.0.i.i36, 5             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.da, i1 false), !alias.scope !132731
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dc = phi ptr [ %i.ds, %.preheader.i ], [ %i.db, %bb.y ] ; 3 uses
  %i.dd = phi ptr [ %i.dr, %.preheader.i ], [ %i.cz, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dg, %.preheader.i ], [ %i.bs, %bb.y ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -32 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 -32 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dc, i64 -24
  %.val.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !132730, !noalias !132732, !nonnull !57, !noundef !57
  %i.di = getelementptr i8, ptr %i.dc, i64 -16
  %.val10.i.i = load i64, ptr %i.di, align 8, !alias.scope !132730, !noalias !132732, !noundef !57 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 -24
  %.val11.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !132729, !noalias !132733, !nonnull !57, !noundef !57
  %i.dk = getelementptr i8, ptr %i.dd, i64 -16
  %.val12.i.i = load i64, ptr %i.dk, align 8, !alias.scope !132729, !noalias !132733, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dl = sub i64 %.val10.i.i, %.val12.i.i
  %i.dm = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !132734, !noalias !132735 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp eq i32 %i.dm, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.do, i64 %i.dl, i64 %i.dn ; 2 uses
  %i.dp = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dp, ptr %i.df, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !132731, !noalias !132736
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %i.dq ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dt = icmp eq ptr %i.dr, %i.ce
  %i.du = icmp eq ptr %i.ds, %2
  %or.cond.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h85ca5c0ccdc138baE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dv = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %i.ce, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.cz, %bb.y ] ; 4 uses
  %i.dw = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.dx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !132729, !noalias !132737, !nonnull !57, !noundef !57
  %i.dy = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dy, align 8, !alias.scope !132729, !noalias !132737, !noundef !57 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dw, i64 8
  %.val.i19.i = load ptr, ptr %i.dz, align 8, !alias.scope !132730, !noalias !132738, !nonnull !57, !noundef !57
  %i.ea = getelementptr i8, ptr %i.dw, i64 16
  %.val7.i.i = load i64, ptr %i.ea, align 8, !alias.scope !132730, !noalias !132738, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.eb = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !132739, !noalias !132740 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ee, i64 %i.eb, i64 %i.ed ; 2 uses
  %i.ef = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ef, ptr %i.dw, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !132731, !noalias !132741
  %i.eg = zext i1 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.eg ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %i.ek = icmp ne ptr %i.eh, %i.db
  %i.el = icmp ne ptr %i.ei, %i.bs
  %or.cond.i23.i = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h85ca5c0ccdc138baE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h85ca5c0ccdc138baE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dr, %.preheader.i ], [ %i.ej, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ds, %.preheader.i ], [ %i.db, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.eh, %.lr.ph.i.i ] ; 2 uses
  %i.em = ptrtoint ptr %.sroa.7.0.i to i64
  %i.en = ptrtoint ptr %.sroa.0.1.i to i64
  %i.eo = sub nuw i64 %i.em, %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.eo, i1 false), !alias.scope !132731, !noalias !132742
  br label %_ZN4core5slice4sort6stable5merge5merge17h3f7c6ec3f4cb31e3E.exit

_ZN4core5slice4sort6stable5merge5merge17h3f7c6ec3f4cb31e3E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h85ca5c0ccdc138baE.exit.i"
  %i.ep = shl i64 %i.cc, 1
  %i.eq = or disjoint i64 %i.ep, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h8624157b559b4a6cE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h8624157b559b4a6cE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h3f7c6ec3f4cb31e3E.exit
  %.sroa.0.0.i = phi i64 [ %i.eq, %_ZN4core5slice4sort6stable5merge5merge17h3f7c6ec3f4cb31e3E.exit ], [ %i.ck, %bb.t ] ; 2 uses
  %i.er = icmp ugt i64 %i.bt, 1
  br i1 %i.er, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.es = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.et = lshr i64 %.sroa.023.0, 1
  %i.eu = add i64 %i.et, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.ev = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ev, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = or i64 %1, 1
  %i.ex = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = xor i32 %i.ez, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h16cbbcf46bd526bcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132697
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h7093fd83be87dc90E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ew, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb24d87a7ca11bb37E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb24d87a7ca11bb37E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132793)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb24d87a7ca11bb37E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb24d87a7ca11bb37E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h924116036b78e191E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 56
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !132793, !noalias !132794, !nonnull !57, !noundef !57 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 64
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !132793, !noalias !132794, !noundef !57 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !132793, !noalias !132794, !nonnull !57, !noundef !57
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !132793, !noalias !132794, !noundef !57 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !132795, !noalias !132796 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !132793, !noalias !132794, !nonnull !57, !noundef !57 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !132793, !noalias !132794, !noundef !57 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !132797, !noalias !132796 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !132793, !noalias !132794, !nonnull !57, !noundef !57 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !132793, !noalias !132794, !noundef !57 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !132798, !noalias !132796 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h924116036b78e191E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h924116036b78e191E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0003a55ed0ba5cf7E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4cec118645c6a347E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132756
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0003a55ed0ba5cf7E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h924116036b78e191E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h0003a55ed0ba5cf7E.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132799), !noalias !132794
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132800), !noalias !132794
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h924116036b78e191E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h9da806c45199eab1E.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_3
begin_hunk_4_@_ZN4core5slice4sort6stable5drift4sort17h7093fd83be87dc90E:bb.a
  store <2 x i64> %i.bk, ptr %i.bh, align 8, !alias.scope !132807, !noalias !132802
  store <2 x i64> %i.bj, ptr %i.bi, align 8, !alias.scope !132808, !noalias !132804
  %i.bl = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bl, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h924116036b78e191E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h0003a55ed0ba5cf7E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h924116036b78e191E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h924116036b78e191E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bm = lshr i64 %.sroa.018.0, 1
  %i.bn = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bo = sub i64 %factor, %i.bm
  %i.bp = add i64 %i.bn, %factor
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = mul i64 %i.bp, %.sroa.0.0
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 false)
  %i.bu = trunc nuw nsw i64 %i.bt to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h0003a55ed0ba5cf7E.exit
  %.sroa.026.0 = phi i8 [ %i.bu, %_ZN4core5slice4sort6stable5drift10create_run17h0003a55ed0ba5cf7E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h0003a55ed0ba5cf7E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bv = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bv, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17he895db243cf8ba68E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bx, %_ZN4core5slice4sort6stable5drift13logical_merge17he895db243cf8ba68E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he895db243cf8ba68E.exit ] ; 4 uses
  %i.bx = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.bz, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17he895db243cf8ba68E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he895db243cf8ba68E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17he895db243cf8ba68E.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !57 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 8 uses
  %i.cf = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 4 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ch ; 6 uses
  %i.cj = icmp ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.018.167 to i1
  %i.cl = or i64 %i.cd, %.sroa.018.167
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.co = shl i64 %i.cg, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he895db243cf8ba68E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb24d87a7ca11bb37E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4cec118645c6a347E(ptr noalias noundef nonnull align 8 %i.ci, i64 noundef %i.ce, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132775
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb24d87a7ca11bb37E.exit35": ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce
  %i.cv = or i64 %i.cf, 1
  %i.cw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4cec118645c6a347E(ptr noalias noundef nonnull align 8 %i.cu, i64 noundef %i.cf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132775
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb24d87a7ca11bb37E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132810)
  %i.da = icmp eq i64 %i.ce, 0
  %i.db = icmp eq i64 %i.cf, 0
  %or.cond.i = or i1 %i.db, %i.da
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hc7406f412ad4a939E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 range(i64 0, -9223372036854775808) %i.ce) ; 2 uses
  %i.dc = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dc, label %_ZN4core5slice4sort6stable5merge5merge17hc7406f412ad4a939E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ce, %i.cf  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dd, ptr %i.ci
  %i.de = mul i64 %.sroa.0.0.i.i36, 48            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.de, i1 false), !alias.scope !132811
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %i.de ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dg = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %bb.y ] ; 3 uses
  %i.dh = phi ptr [ %i.dv, %.preheader.i ], [ %i.dd, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.bw, %bb.y ]
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -48 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 -48 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -48 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dg, i64 -40
  %.val.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !132810, !noalias !132812, !nonnull !57, !noundef !57
  %i.dm = getelementptr i8, ptr %i.dg, i64 -32
  %.val10.i.i = load i64, ptr %i.dm, align 8, !alias.scope !132810, !noalias !132812, !noundef !57 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dh, i64 -40
  %.val11.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !132809, !noalias !132813, !nonnull !57, !noundef !57
  %i.do = getelementptr i8, ptr %i.dh, i64 -32
  %.val12.i.i = load i64, ptr %i.do, align 8, !alias.scope !132809, !noalias !132813, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dp = sub i64 %.val10.i.i, %.val12.i.i
  %i.dq = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !132814, !noalias !132815 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp eq i32 %i.dq, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.ds, i64 %i.dp, i64 %i.dr ; 2 uses
  %i.dt = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dt, ptr %i.dj, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !alias.scope !132811, !noalias !132816
  %i.du = zext i1 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %i.di, i64 %i.du ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %i.dj, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dx = icmp eq ptr %i.dv, %i.ci
  %i.dy = icmp eq ptr %i.dw, %2
  %or.cond.i.i = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2590ef6622532d70E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dz = phi ptr [ %i.en, %.lr.ph.i.i ], [ %i.ci, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.dd, %bb.y ] ; 4 uses
  %i.ea = phi ptr [ %i.el, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.eb = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !132809, !noalias !132817, !nonnull !57, !noundef !57
  %i.ec = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.ec, align 8, !alias.scope !132809, !noalias !132817, !noundef !57 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ea, i64 8
  %.val.i19.i = load ptr, ptr %i.ed, align 8, !alias.scope !132810, !noalias !132818, !nonnull !57, !noundef !57
  %i.ee = getelementptr i8, ptr %i.ea, i64 16
  %.val7.i.i = load i64, ptr %i.ee, align 8, !alias.scope !132810, !noalias !132818, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ef = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.eg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !132819, !noalias !132820 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp eq i32 %i.eg, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ei, i64 %i.ef, i64 %i.eh ; 2 uses
  %i.ej = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ej, ptr %i.ea, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i.i, i64 48, i1 false), !alias.scope !132811, !noalias !132821
  %i.ek = zext i1 %i.ej to i64
  %i.el = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ek ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 48 ; 2 uses
  %i.eo = icmp ne ptr %i.el, %i.df
  %i.ep = icmp ne ptr %i.em, %i.bw
  %or.cond.i23.i = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2590ef6622532d70E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2590ef6622532d70E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dv, %.preheader.i ], [ %i.en, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.el, %.lr.ph.i.i ] ; 2 uses
  %i.eq = ptrtoint ptr %.sroa.7.0.i to i64
  %i.er = ptrtoint ptr %.sroa.0.1.i to i64
  %i.es = sub nuw i64 %i.eq, %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.es, i1 false), !alias.scope !132811, !noalias !132822
  br label %_ZN4core5slice4sort6stable5merge5merge17hc7406f412ad4a939E.exit

_ZN4core5slice4sort6stable5merge5merge17hc7406f412ad4a939E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2590ef6622532d70E.exit.i"
  %i.et = shl i64 %i.cg, 1
  %i.eu = or disjoint i64 %i.et, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he895db243cf8ba68E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17he895db243cf8ba68E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hc7406f412ad4a939E.exit
  %.sroa.0.0.i = phi i64 [ %i.eu, %_ZN4core5slice4sort6stable5merge5merge17hc7406f412ad4a939E.exit ], [ %i.co, %bb.t ] ; 2 uses
  %i.ev = icmp ugt i64 %i.bx, 1
  br i1 %i.ev, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ew = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ex = lshr i64 %.sroa.023.0, 1
  %i.ey = add i64 %i.ex, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.ez = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ez, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fa = or i64 %1, 1
  %i.fb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fa, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 1
  %i.fe = xor i32 %i.fd, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4cec118645c6a347E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132775
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h7bf3ecf91309de02E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dn, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dl, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i.thread96, %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.val10.i = load i16, ptr %i.o, align 8, !alias.scope !132852, !noalias !132853, !noundef !57 ; 3 uses
  %.val11.i = load i16, ptr %i.m, align 8, !alias.scope !132852, !noalias !132853, !noundef !57
  %i.p = icmp ult i16 %.val10.i, %.val11.i        ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i.thread96, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.val9.i = phi i16 [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader50 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55
  %.val8.i = load i16, ptr %i.q, align 8, !alias.scope !132852, !noalias !132853, !noundef !57 ; 2 uses
  %i.r = icmp ult i16 %.val8.i, %.val9.i
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi i16 [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58
  %.val.i = load i16, ptr %i.t, align 8, !alias.scope !132852, !noalias !132853, !noundef !57 ; 2 uses
  %i.u = icmp ult i16 %.val.i, %.val7.i
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i

bb.k:                                             ; preds = %.lr.ph59
  %i.v = add nuw i64 %.sroa.01.1.i.i58, 1         ; 2 uses
  %exitcond79.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i93, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h41364421873d4828E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h605dd79d567d5789E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132827
  %i.y = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h41364421873d4828E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %.lr.ph.i.i38 ]
  %i.aa = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h41364421873d4828E.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132854), !noalias !132853
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132855), !noalias !132853
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i.thread96, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdfe49eab4a7114c0E.exit.i.thread96 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.0.i.i94101105
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.am, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.af = xor i64 %.sroa.0.014.i.i, -1
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 3 uses
  %i.ah = getelementptr [24 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !132856, !noalias !132857
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !132858, !noalias !132859
  store <2 x i64> %i.aj, ptr %i.ag, align 8, !alias.scope !132856, !noalias !132857
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !alias.scope !132858, !noalias !132859
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132860), !noalias !132853
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132861), !noalias !132853
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !132862, !noalias !132863
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !132864, !noalias !132865
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.ak, align 8, !alias.scope !132862, !noalias !132863
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.al, align 8, !alias.scope !132864, !noalias !132865
  %i.am = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.am, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h41364421873d4828E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.an = lshr i64 %.sroa.018.0, 1
  %i.ao = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ap = sub i64 %factor, %i.an
  %i.aq = add i64 %i.ao, %factor
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = xor i64 %i.as, %i.ar
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 false)
  %i.av = trunc nuw nsw i64 %i.au to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h41364421873d4828E.exit
  %.sroa.026.0 = phi i8 [ %i.av, %_ZN4core5slice4sort6stable5drift10create_run17h41364421873d4828E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h41364421873d4828E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.aw = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.aw, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17hd90915895b7275d0E.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.ay, %_ZN4core5slice4sort6stable5drift13logical_merge17hd90915895b7275d0E.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hd90915895b7275d0E.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.ba, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hd90915895b7275d0E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hd90915895b7275d0E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hd90915895b7275d0E.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bc, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !57 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.018.163 to i1
  %i.bm = or i64 %i.be, %.sroa.018.163
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bp = shl i64 %i.bh, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hd90915895b7275d0E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bl, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h605dd79d567d5789E(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132840
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit35": ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bf
  %i.bw = or i64 %i.bg, 1
  %i.bx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h605dd79d567d5789E(ptr noalias noundef nonnull align 8 %i.bv, i64 noundef %i.bg, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132840
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132867)
  %i.cb = icmp eq i64 %i.bf, 0
  %i.cc = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.cc, %i.cb
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h04fdfbbd613f7c0eE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 range(i64 0, -9223372036854775808) %i.bf) ; 2 uses
  %i.cd = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cd, label %_ZN4core5slice4sort6stable5merge5merge17h04fdfbbd613f7c0eE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.ce, ptr %i.bj
  %i.cf = mul i64 %.sroa.0.0.i.i36, 24            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cf, i1 false), !alias.scope !132868
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 %i.cf ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.ch = phi ptr [ %i.cr, %.preheader.i ], [ %i.cg, %bb.y ]
  %i.ci = phi ptr [ %i.cp, %.preheader.i ], [ %i.ce, %bb.y ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cl, %.preheader.i ], [ %i.ax, %bb.y ]
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -24 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 -24 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -24 ; 2 uses
  %.val.i.i = load i16, ptr %i.ck, align 8, !alias.scope !132867, !noalias !132869, !noundef !57
  %.val10.i.i = load i16, ptr %i.cj, align 8, !alias.scope !132866, !noalias !132870, !noundef !57
  %i.cm = icmp ult i16 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cm, ptr %i.cj, ptr %i.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !132868, !noalias !132871
  %i.cn = xor i1 %i.cm, true
  %i.co = zext i1 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.co ; 3 uses
  %i.cq = zext i1 %i.cm to i64
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.cq ; 3 uses
  %i.cs = icmp eq ptr %i.cp, %i.bj
  %i.ct = icmp eq ptr %i.cr, %2
  %or.cond.i.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h584e5f6df291f6ceE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.cu = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %i.bj, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.ce, %bb.y ] ; 3 uses
  %i.cv = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %2, %bb.y ] ; 3 uses
  %.sroa.0.0.val.i.i = load i16, ptr %.sroa.0.02.i.i, align 8, !alias.scope !132866, !noalias !132872, !noundef !57
  %.val.i19.i = load i16, ptr %i.cv, align 8, !alias.scope !132867, !noalias !132873, !noundef !57
  %i.cw = icmp ult i16 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cx = xor i1 %i.cw, true
  %spec.select.i.i = select i1 %i.cw, ptr %.sroa.0.02.i.i, ptr %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, i64 24, i1 false), !alias.scope !132868, !noalias !132874
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cw to i64
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  %i.dd = icmp ne ptr %i.cz, %i.cg
  %i.de = icmp ne ptr %i.db, %i.ax
  %or.cond.i20.i = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h584e5f6df291f6ceE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h584e5f6df291f6ceE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cp, %.preheader.i ], [ %i.dc, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cr, %.preheader.i ], [ %i.cg, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cz, %.lr.ph.i.i ] ; 2 uses
  %i.df = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dg = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dh = sub nuw i64 %i.df, %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dh, i1 false), !alias.scope !132868, !noalias !132875
  br label %_ZN4core5slice4sort6stable5merge5merge17h04fdfbbd613f7c0eE.exit

_ZN4core5slice4sort6stable5merge5merge17h04fdfbbd613f7c0eE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h584e5f6df291f6ceE.exit.i"
  %i.di = shl i64 %i.bh, 1
  %i.dj = or disjoint i64 %i.di, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hd90915895b7275d0E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hd90915895b7275d0E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h04fdfbbd613f7c0eE.exit
  %.sroa.0.0.i = phi i64 [ %i.dj, %_ZN4core5slice4sort6stable5merge5merge17h04fdfbbd613f7c0eE.exit ], [ %i.bp, %bb.t ] ; 2 uses
  %i.dk = icmp ugt i64 %i.ay, 1
  br i1 %i.dk, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.dl = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dm = lshr i64 %.sroa.023.0, 1
  %i.dn = add i64 %i.dm, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.do = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.do, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dp = or i64 %1, 1
  %i.dq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 1
  %i.dt = xor i32 %i.ds, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h605dd79d567d5789E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132840
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hab890997871b67f6E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eu, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.es, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132922)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !132922, !noalias !132923, !nonnull !57, !noundef !57 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 48
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !132922, !noalias !132923, !noundef !57 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !132922, !noalias !132923, !nonnull !57, !noundef !57
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !132922, !noalias !132923, !noundef !57 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !132924, !noalias !132925 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !132922, !noalias !132923, !nonnull !57, !noundef !57 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !132922, !noalias !132923, !noundef !57 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !132926, !noalias !132925 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !132922, !noalias !132923, !nonnull !57, !noundef !57 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !132922, !noalias !132923, !noundef !57 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !132927, !noalias !132925 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h309c5dc94366aa4fE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h703bc352eb27323dE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132889
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h309c5dc94366aa4fE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h309c5dc94366aa4fE.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132928), !noalias !132923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132929), !noalias !132923
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h39bdd5bbb633e117E.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_4
begin_hunk_5_@_ZN4core5slice4sort6stable5drift4sort17hab890997871b67f6E:bb.a
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !alias.scope !132934, !noalias !132931
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !132935, !noalias !132933
  %i.bh = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h309c5dc94366aa4fE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h265ab3971d19aa26E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bi = lshr i64 %.sroa.018.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bk = sub i64 %factor, %i.bi
  %i.bl = add i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h309c5dc94366aa4fE.exit
  %.sroa.026.0 = phi i8 [ %i.bq, %_ZN4core5slice4sort6stable5drift10create_run17h309c5dc94366aa4fE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h309c5dc94366aa4fE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.br = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.br, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17h4038566dddffab75E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bt, %_ZN4core5slice4sort6stable5drift13logical_merge17h4038566dddffab75E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4038566dddffab75E.exit ] ; 4 uses
  %i.bt = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.bv, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h4038566dddffab75E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4038566dddffab75E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h4038566dddffab75E.exit ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bx, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bt
  %i.bz = load i64, ptr %i.by, align 8, !noundef !57 ; 3 uses
  %i.ca = lshr i64 %i.bz, 1                       ; 8 uses
  %i.cb = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cc = add nuw i64 %i.ca, %i.cb                ; 4 uses
  %i.cd = sub i64 %.sroa.09.0, %i.cc
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cd ; 6 uses
  %i.cf = icmp ugt i64 %i.cc, %3
  %i.cg = trunc i64 %.sroa.018.167 to i1
  %i.ch = or i64 %i.bz, %.sroa.018.167
  %i.ci = trunc i64 %i.ch to i1
  %or.cond3.i = or i1 %i.cf, %i.ci
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = trunc i64 %i.bz to i1
  br i1 %i.cj, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ck = shl i64 %i.cc, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4038566dddffab75E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cg, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cl = or i64 %i.ca, 1
  %i.cm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h703bc352eb27323dE(ptr noalias noundef nonnull align 8 %i.ce, i64 noundef %i.ca, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132904
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit35": ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca
  %i.cr = or i64 %i.cb, 1
  %i.cs = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h703bc352eb27323dE(ptr noalias noundef nonnull align 8 %i.cq, i64 noundef %i.cb, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132904
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h66b4fc60e24e726fE.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132937)
  %i.cw = icmp eq i64 %i.ca, 0
  %i.cx = icmp eq i64 %i.cb, 0
  %or.cond.i = or i1 %i.cx, %i.cw
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h5d9c870f57add690E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 range(i64 0, -9223372036854775808) %i.ca) ; 2 uses
  %i.cy = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cy, label %_ZN4core5slice4sort6stable5merge5merge17h5d9c870f57add690E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ca, %i.cb  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cz, ptr %i.ce
  %i.da = shl i64 %.sroa.0.0.i.i36, 5             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.da, i1 false), !alias.scope !132938
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dc = phi ptr [ %i.ds, %.preheader.i ], [ %i.db, %bb.y ] ; 3 uses
  %i.dd = phi ptr [ %i.dr, %.preheader.i ], [ %i.cz, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dg, %.preheader.i ], [ %i.bs, %bb.y ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -32 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 -32 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dc, i64 -24
  %.val.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !132937, !noalias !132939, !nonnull !57, !noundef !57
  %i.di = getelementptr i8, ptr %i.dc, i64 -16
  %.val10.i.i = load i64, ptr %i.di, align 8, !alias.scope !132937, !noalias !132939, !noundef !57 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 -24
  %.val11.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !132936, !noalias !132940, !nonnull !57, !noundef !57
  %i.dk = getelementptr i8, ptr %i.dd, i64 -16
  %.val12.i.i = load i64, ptr %i.dk, align 8, !alias.scope !132936, !noalias !132940, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dl = sub i64 %.val10.i.i, %.val12.i.i
  %i.dm = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !132941, !noalias !132942 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp eq i32 %i.dm, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.do, i64 %i.dl, i64 %i.dn ; 2 uses
  %i.dp = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dp, ptr %i.df, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !132938, !noalias !132943
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %i.dq ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dt = icmp eq ptr %i.dr, %i.ce
  %i.du = icmp eq ptr %i.ds, %2
  %or.cond.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb694f7335429a156E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dv = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %i.ce, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.cz, %bb.y ] ; 4 uses
  %i.dw = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.dx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !132936, !noalias !132944, !nonnull !57, !noundef !57
  %i.dy = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dy, align 8, !alias.scope !132936, !noalias !132944, !noundef !57 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dw, i64 8
  %.val.i19.i = load ptr, ptr %i.dz, align 8, !alias.scope !132937, !noalias !132945, !nonnull !57, !noundef !57
  %i.ea = getelementptr i8, ptr %i.dw, i64 16
  %.val7.i.i = load i64, ptr %i.ea, align 8, !alias.scope !132937, !noalias !132945, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.eb = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !132946, !noalias !132947 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ee, i64 %i.eb, i64 %i.ed ; 2 uses
  %i.ef = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ef, ptr %i.dw, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !132938, !noalias !132948
  %i.eg = zext i1 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.eg ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %i.ek = icmp ne ptr %i.eh, %i.db
  %i.el = icmp ne ptr %i.ei, %i.bs
  %or.cond.i23.i = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb694f7335429a156E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb694f7335429a156E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dr, %.preheader.i ], [ %i.ej, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ds, %.preheader.i ], [ %i.db, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.eh, %.lr.ph.i.i ] ; 2 uses
  %i.em = ptrtoint ptr %.sroa.7.0.i to i64
  %i.en = ptrtoint ptr %.sroa.0.1.i to i64
  %i.eo = sub nuw i64 %i.em, %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.eo, i1 false), !alias.scope !132938, !noalias !132949
  br label %_ZN4core5slice4sort6stable5merge5merge17h5d9c870f57add690E.exit

_ZN4core5slice4sort6stable5merge5merge17h5d9c870f57add690E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb694f7335429a156E.exit.i"
  %i.ep = shl i64 %i.cc, 1
  %i.eq = or disjoint i64 %i.ep, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4038566dddffab75E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h4038566dddffab75E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h5d9c870f57add690E.exit
  %.sroa.0.0.i = phi i64 [ %i.eq, %_ZN4core5slice4sort6stable5merge5merge17h5d9c870f57add690E.exit ], [ %i.ck, %bb.t ] ; 2 uses
  %i.er = icmp ugt i64 %i.bt, 1
  br i1 %i.er, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.es = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.et = lshr i64 %.sroa.023.0, 1
  %i.eu = add i64 %i.et, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.ev = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ev, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = or i64 %1, 1
  %i.ex = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = xor i32 %i.ez, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h703bc352eb27323dE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132904
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hb999d60c0cba5dc2E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fm, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fk, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hcabfe36a2c6b5e77E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hcabfe36a2c6b5e77E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133014)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hcabfe36a2c6b5e77E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hcabfe36a2c6b5e77E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h40f4a002cb6d01e3E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 112
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !133014, !noalias !133015, !nonnull !57, !noundef !57 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 120
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !133014, !noalias !133015, !noundef !57 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !133014, !noalias !133015, !nonnull !57, !noundef !57
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !133014, !noalias !133015, !noundef !57 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !133016, !noalias !133017 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !133014, !noalias !133015, !nonnull !57, !noundef !57 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !133014, !noalias !133015, !noundef !57 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !133018, !noalias !133017 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !133014, !noalias !133015, !nonnull !57, !noundef !57 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !133014, !noalias !133015, !noundef !57 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !133019, !noalias !133017 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h40f4a002cb6d01e3E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h40f4a002cb6d01e3E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7d9605a39ff3941eE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17haac91c69b7a65320E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132963
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7d9605a39ff3941eE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h40f4a002cb6d01e3E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7d9605a39ff3941eE.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133020), !noalias !133015
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133021), !noalias !133015
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h40f4a002cb6d01e3E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hbafc020ea64b2423E.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_5
begin_hunk_6_@_ZN4core5slice4sort6stable5drift4sort17hb999d60c0cba5dc2E:bb.a
  store i64 %.sroa.02.0.copyload.i.i.i.12.i.i.i.i, ptr %i.bx, align 8, !alias.scope !133038, !noalias !133039
  store i64 %.sroa.0.0.copyload.i.i.i.12.i.i.i.i, ptr %i.by, align 8, !alias.scope !133040, !noalias !133041
  %i.bz = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bz, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h40f4a002cb6d01e3E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h7d9605a39ff3941eE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h40f4a002cb6d01e3E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h40f4a002cb6d01e3E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.ca = lshr i64 %.sroa.018.0, 1
  %i.cb = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.cc = sub i64 %factor, %i.ca
  %i.cd = add i64 %i.cb, %factor
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = mul i64 %i.cd, %.sroa.0.0
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cg, i1 false)
  %i.ci = trunc nuw nsw i64 %i.ch to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h7d9605a39ff3941eE.exit
  %.sroa.026.0 = phi i8 [ %i.ci, %_ZN4core5slice4sort6stable5drift10create_run17h7d9605a39ff3941eE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h7d9605a39ff3941eE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.cj = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cj, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17h95e16a68daaf539fE.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.cl, %_ZN4core5slice4sort6stable5drift13logical_merge17h95e16a68daaf539fE.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h95e16a68daaf539fE.exit ] ; 4 uses
  %i.cl = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.cn, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h95e16a68daaf539fE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h95e16a68daaf539fE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h95e16a68daaf539fE.exit ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cp, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cl
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !57 ; 3 uses
  %i.cs = lshr i64 %i.cr, 1                       ; 8 uses
  %i.ct = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cu = add nuw i64 %i.cs, %i.ct                ; 4 uses
  %i.cv = sub i64 %.sroa.09.0, %i.cu
  %i.cw = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.cv ; 6 uses
  %i.cx = icmp ugt i64 %i.cu, %3
  %i.cy = trunc i64 %.sroa.018.167 to i1
  %i.cz = or i64 %i.cr, %.sroa.018.167
  %i.da = trunc i64 %i.cz to i1
  %or.cond3.i = or i1 %i.cx, %i.da
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = trunc i64 %i.cr to i1
  br i1 %i.db, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dc = shl i64 %i.cu, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h95e16a68daaf539fE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cy, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hcabfe36a2c6b5e77E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.dd = or i64 %i.cs, 1
  %i.de = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = xor i32 %i.dg, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17haac91c69b7a65320E(ptr noalias noundef nonnull align 8 %i.cw, i64 noundef %i.cs, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132996
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hcabfe36a2c6b5e77E.exit35": ; preds = %bb.u
  %i.di = getelementptr inbounds nuw [104 x i8], ptr %i.cw, i64 %i.cs
  %i.dj = or i64 %i.ct, 1
  %i.dk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17haac91c69b7a65320E(ptr noalias noundef nonnull align 8 %i.di, i64 noundef %i.ct, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132996
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hcabfe36a2c6b5e77E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133043)
  %i.do = icmp eq i64 %i.cs, 0
  %i.dp = icmp eq i64 %i.ct, 0
  %or.cond.i = or i1 %i.dp, %i.do
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h14d7960cff84f1aaE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 range(i64 0, -9223372036854775808) %i.cs) ; 2 uses
  %i.dq = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dq, label %_ZN4core5slice4sort6stable5merge5merge17h14d7960cff84f1aaE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw [104 x i8], ptr %i.cw, i64 %i.cs ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cs, %i.ct  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dr, ptr %i.cw
  %i.ds = mul i64 %.sroa.0.0.i.i36, 104           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ds, i1 false), !alias.scope !133044
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ds ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.du = phi ptr [ %i.ek, %.preheader.i ], [ %i.dt, %bb.y ] ; 3 uses
  %i.dv = phi ptr [ %i.ej, %.preheader.i ], [ %i.dr, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dy, %.preheader.i ], [ %i.ck, %bb.y ]
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -104 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 -104 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -104 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.du, i64 -96
  %.val.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !133043, !noalias !133045, !nonnull !57, !noundef !57
  %i.ea = getelementptr i8, ptr %i.du, i64 -88
  %.val10.i.i = load i64, ptr %i.ea, align 8, !alias.scope !133043, !noalias !133045, !noundef !57 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dv, i64 -96
  %.val11.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !133042, !noalias !133046, !nonnull !57, !noundef !57
  %i.ec = getelementptr i8, ptr %i.dv, i64 -88
  %.val12.i.i = load i64, ptr %i.ec, align 8, !alias.scope !133042, !noalias !133046, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.ed = sub i64 %.val10.i.i, %.val12.i.i
  %i.ee = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !133047, !noalias !133048 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp eq i32 %i.ee, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.eg, i64 %i.ed, i64 %i.ef ; 2 uses
  %i.eh = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.eh, ptr %i.dx, ptr %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dy, ptr noundef nonnull align 8 dereferenceable(104) %..i.i, i64 104, i1 false), !alias.scope !133044, !noalias !133049
  %i.ei = zext i1 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [104 x i8], ptr %i.dw, i64 %i.ei ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ek = getelementptr inbounds nuw [104 x i8], ptr %i.dx, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.el = icmp eq ptr %i.ej, %i.cw
  %i.em = icmp eq ptr %i.ek, %2
  %or.cond.i.i = select i1 %i.el, i1 true, i1 %i.em
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h25bcd1af42712956E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.en = phi ptr [ %i.fb, %.lr.ph.i.i ], [ %i.cw, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fa, %.lr.ph.i.i ], [ %i.dr, %bb.y ] ; 4 uses
  %i.eo = phi ptr [ %i.ez, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.ep = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.ep, align 8, !alias.scope !133042, !noalias !133050, !nonnull !57, !noundef !57
  %i.eq = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.eq, align 8, !alias.scope !133042, !noalias !133050, !noundef !57 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eo, i64 8
  %.val.i19.i = load ptr, ptr %i.er, align 8, !alias.scope !133043, !noalias !133051, !nonnull !57, !noundef !57
  %i.es = getelementptr i8, ptr %i.eo, i64 16
  %.val7.i.i = load i64, ptr %i.es, align 8, !alias.scope !133043, !noalias !133051, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.et = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.eu = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !133052, !noalias !133053 ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp eq i32 %i.eu, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ew, i64 %i.et, i64 %i.ev ; 2 uses
  %i.ex = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ex, ptr %i.eo, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.en, ptr noundef nonnull align 8 dereferenceable(104) %spec.select.i.i, i64 104, i1 false), !alias.scope !133044, !noalias !133054
  %i.ey = zext i1 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [104 x i8], ptr %i.eo, i64 %i.ey ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.fa = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 104 ; 2 uses
  %i.fc = icmp ne ptr %i.ez, %i.dt
  %i.fd = icmp ne ptr %i.fa, %i.ck
  %or.cond.i23.i = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h25bcd1af42712956E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h25bcd1af42712956E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.ej, %.preheader.i ], [ %i.fb, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ek, %.preheader.i ], [ %i.dt, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ez, %.lr.ph.i.i ] ; 2 uses
  %i.fe = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ff = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fg = sub nuw i64 %i.fe, %i.ff
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fg, i1 false), !alias.scope !133044, !noalias !133055
  br label %_ZN4core5slice4sort6stable5merge5merge17h14d7960cff84f1aaE.exit

_ZN4core5slice4sort6stable5merge5merge17h14d7960cff84f1aaE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h25bcd1af42712956E.exit.i"
  %i.fh = shl i64 %i.cu, 1
  %i.fi = or disjoint i64 %i.fh, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h95e16a68daaf539fE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h95e16a68daaf539fE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h14d7960cff84f1aaE.exit
  %.sroa.0.0.i = phi i64 [ %i.fi, %_ZN4core5slice4sort6stable5merge5merge17h14d7960cff84f1aaE.exit ], [ %i.dc, %bb.t ] ; 2 uses
  %i.fj = icmp ugt i64 %i.cl, 1
  br i1 %i.fj, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.fk = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fl = lshr i64 %.sroa.023.0, 1
  %i.fm = add i64 %i.fl, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.fn = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fn, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fo = or i64 %1, 1
  %i.fp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fo, i1 true)
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = shl nuw nsw i32 %i.fq, 1
  %i.fs = xor i32 %i.fr, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17haac91c69b7a65320E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !132996
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd67fb3812d23368aE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i90 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gr, %bb.y ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gp, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf94cafd84957d94cE.exit.i.thread93, %_ZN4core5slice4sort6shared17find_existing_run17hf94cafd84957d94cE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hf94cafd84957d94cE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd0482cbdf31aee02E.exit", label %loadbb

loadbb:                                           ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = load i64, ptr %i.m, align 8
  %i.r = tail call i64 @llvm.bswap.i64(i64 %i.p)  ; 2 uses
  %i.s = tail call i64 @llvm.bswap.i64(i64 %i.q)  ; 2 uses
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %loadbb124, label %res_block

res_block:                                        ; preds = %loadbb124, %loadbb
  %phi.src1 = phi i64 [ %i.r, %loadbb ], [ %i.aa, %loadbb124 ]
  %phi.src2 = phi i64 [ %i.s, %loadbb ], [ %i.ab, %loadbb124 ]
  %i.u = icmp ult i64 %phi.src1, %phi.src2
  %i.v = select i1 %i.u, i32 -1, i32 1
  br label %endblock

loadbb124:                                        ; preds = %loadbb
  %i.w = getelementptr i8, ptr %i.o, i64 8
  %i.x = getelementptr i8, ptr %i.m, i64 8
  %i.y = load i64, ptr %i.w, align 8
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = tail call i64 @llvm.bswap.i64(i64 %i.y) ; 2 uses
  %i.ab = tail call i64 @llvm.bswap.i64(i64 %i.z) ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb124
  %phi.res = phi i32 [ 0, %loadbb124 ], [ %i.v, %res_block ]
  %i.ad = icmp slt i32 %phi.res, 0                ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.ad, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %endblock
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hf94cafd84957d94cE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %endblock
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hf94cafd84957d94cE.exit.i.thread93, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.i
  %.sroa.01.0.i.i55 = phi i64 [ %i.aw, %bb.i ], [ 2, %.preheader50 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55 ; 2 uses
  %i.af = getelementptr [64 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55
  %i.ag = getelementptr i8, ptr %i.af, i64 -64    ; 2 uses
  %i.ah = load i64, ptr %i.ae, align 8
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = tail call i64 @llvm.bswap.i64(i64 %i.ah) ; 2 uses
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %i.ai) ; 2 uses
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %loadbb131, label %res_block127

res_block127:                                     ; preds = %loadbb131, %.lr.ph
  %phi.src1128 = phi i64 [ %i.aj, %.lr.ph ], [ %i.as, %loadbb131 ]
  %phi.src2129 = phi i64 [ %i.ak, %.lr.ph ], [ %i.at, %loadbb131 ]
  %i.am = icmp ult i64 %phi.src1128, %phi.src2129
  %i.an = select i1 %i.am, i32 -1, i32 1
  br label %endblock125

loadbb131:                                        ; preds = %.lr.ph
  %i.ao = getelementptr i8, ptr %i.ae, i64 8
  %i.ap = getelementptr i8, ptr %i.ag, i64 8
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = tail call i64 @llvm.bswap.i64(i64 %i.aq) ; 2 uses
  %i.at = tail call i64 @llvm.bswap.i64(i64 %i.ar) ; 2 uses
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %endblock125, label %res_block127

endblock125:                                      ; preds = %res_block127, %loadbb131
  %phi.res126 = phi i32 [ 0, %loadbb131 ], [ %i.an, %res_block127 ]
  %i.av = icmp slt i32 %phi.res126, 0
  br i1 %i.av, label %_ZN4core5slice4sort6shared17find_existing_run17hf94cafd84957d94cE.exit.i, label %bb.i

bb.i:                                             ; preds = %endblock125
  %i.aw = add nuw i64 %.sroa.01.0.i.i55, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hf94cafd84957d94cE.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.j
  %.sroa.01.1.i.i58 = phi i64 [ %i.bp, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58 ; 2 uses
  %i.ay = getelementptr [64 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58
  %i.az = getelementptr i8, ptr %i.ay, i64 -64    ; 2 uses
  %i.ba = load i64, ptr %i.ax, align 8
  %i.bb = load i64, ptr %i.az, align 8
  %i.bc = tail call i64 @llvm.bswap.i64(i64 %i.ba) ; 2 uses
  %i.bd = tail call i64 @llvm.bswap.i64(i64 %i.bb) ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %loadbb138, label %res_block134

res_block134:                                     ; preds = %loadbb138, %.lr.ph59
  %phi.src1135 = phi i64 [ %i.bc, %.lr.ph59 ], [ %i.bl, %loadbb138 ]
  %phi.src2136 = phi i64 [ %i.bd, %.lr.ph59 ], [ %i.bm, %loadbb138 ]
  %i.bf = icmp ult i64 %phi.src1135, %phi.src2136
  %i.bg = select i1 %i.bf, i32 -1, i32 1
  br label %endblock132

loadbb138:                                        ; preds = %.lr.ph59
  %i.bh = getelementptr i8, ptr %i.ax, i64 8
  %i.bi = getelementptr i8, ptr %i.az, i64 8
  %i.bj = load i64, ptr %i.bh, align 8
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = tail call i64 @llvm.bswap.i64(i64 %i.bj) ; 2 uses
  %i.bm = tail call i64 @llvm.bswap.i64(i64 %i.bk) ; 2 uses
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %endblock132, label %res_block134

endblock132:                                      ; preds = %res_block134, %loadbb138
  %phi.res133 = phi i32 [ 0, %loadbb138 ], [ %i.bg, %res_block134 ]
  %i.bo = icmp slt i32 %phi.res133, 0
  br i1 %i.bo, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17hf94cafd84957d94cE.exit.i

bb.j:                                             ; preds = %endblock132
  %i.bp = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.bp, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17hf94cafd84957d94cE.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17hf94cafd84957d94cE.exit.i: ; preds = %bb.i, %endblock125, %bb.j, %endblock132
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %endblock132 ], [ %i.l, %bb.j ], [ %.sroa.01.0.i.i55, %endblock125 ], [ %i.l, %bb.i ] ; 6 uses
end_hunk_6
begin_hunk_7_@_ZN4core5slice4sort6stable5drift4sort17hd67fb3812d23368aE:bb.a
  br i1 %i.da, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.o
  %i.db = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17h5aa99c0e1c733915E.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.dc, %_ZN4core5slice4sort6stable5drift13logical_merge17h5aa99c0e1c733915E.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h5aa99c0e1c733915E.exit ] ; 4 uses
  %i.dc = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.de, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h5aa99c0e1c733915E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.163, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h5aa99c0e1c733915E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.164, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h5aa99c0e1c733915E.exit ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.dg, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dc
  %i.di = load i64, ptr %i.dh, align 8, !noundef !57 ; 3 uses
  %i.dj = lshr i64 %i.di, 1                       ; 8 uses
  %i.dk = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.dl = add nuw i64 %i.dj, %i.dk                ; 4 uses
  %i.dm = sub i64 %.sroa.09.0, %i.dl
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.dm ; 6 uses
  %i.do = icmp ugt i64 %i.dl, %3
  %i.dp = trunc i64 %.sroa.018.163 to i1
  %i.dq = or i64 %i.di, %.sroa.018.163
  %i.dr = trunc i64 %i.dq to i1
  %or.cond3.i = or i1 %i.do, %i.dr
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ds = trunc i64 %i.di to i1
  br i1 %i.ds, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.dt = shl i64 %i.dl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h5aa99c0e1c733915E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.dp, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.du = or i64 %i.dj, 1
  %i.dv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9c0a5480b6eb9509E(ptr noalias noundef nonnull align 8 %i.dn, i64 noundef %i.dj, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133082
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit35": ; preds = %bb.t
  %i.dz = getelementptr inbounds nuw [64 x i8], ptr %i.dn, i64 %i.dj
  %i.ea = or i64 %i.dk, 1
  %i.eb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9c0a5480b6eb9509E(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef %i.dk, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133082
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit35", %bb.t
  %i.ef = icmp eq i64 %i.dj, 0
  %i.eg = icmp eq i64 %i.dk, 0
  %or.cond.i = or i1 %i.eg, %i.ef
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h133ae283e7c8efebE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.dk, i64 range(i64 0, -9223372036854775808) %i.dj) ; 2 uses
  %i.eh = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.eh, label %_ZN4core5slice4sort6stable5merge5merge17h133ae283e7c8efebE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw [64 x i8], ptr %i.dn, i64 %i.dj ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dj, %i.dk  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.ei, ptr %i.dn
  %i.ej = shl i64 %.sroa.0.0.i.i36, 6             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ej, i1 false), !alias.scope !133107
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 %i.ej ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %endblock139
  %i.el = phi ptr [ %i.fi, %endblock139 ], [ %i.ek, %bb.x ]
  %i.em = phi ptr [ %i.fg, %endblock139 ], [ %i.ei, %bb.x ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ep, %endblock139 ], [ %i.db, %bb.x ]
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -64 ; 4 uses
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 -64 ; 4 uses
  %i.ep = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -64 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8
  %i.er = load i64, ptr %i.en, align 8
  %i.es = tail call i64 @llvm.bswap.i64(i64 %i.eq) ; 2 uses
  %i.et = tail call i64 @llvm.bswap.i64(i64 %i.er) ; 2 uses
  %i.eu = icmp eq i64 %i.es, %i.et
  br i1 %i.eu, label %loadbb145, label %res_block141

res_block141:                                     ; preds = %loadbb145, %.preheader.i
  %phi.src1142 = phi i64 [ %i.es, %.preheader.i ], [ %i.fb, %loadbb145 ]
  %phi.src2143 = phi i64 [ %i.et, %.preheader.i ], [ %i.fc, %loadbb145 ]
  %i.ev = icmp ult i64 %phi.src1142, %phi.src2143
  %i.ew = select i1 %i.ev, i32 -1, i32 1
  br label %endblock139

loadbb145:                                        ; preds = %.preheader.i
  %i.ex = getelementptr i8, ptr %i.eo, i64 8
  %i.ey = getelementptr i8, ptr %i.en, i64 8
  %i.ez = load i64, ptr %i.ex, align 8
  %i.fa = load i64, ptr %i.ey, align 8
  %i.fb = tail call i64 @llvm.bswap.i64(i64 %i.ez) ; 2 uses
  %i.fc = tail call i64 @llvm.bswap.i64(i64 %i.fa) ; 2 uses
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %endblock139, label %res_block141

endblock139:                                      ; preds = %res_block141, %loadbb145
  %phi.res140 = phi i32 [ 0, %loadbb145 ], [ %i.ew, %res_block141 ] ; 2 uses
  %i.fe = icmp sgt i32 %phi.res140, -1            ; 2 uses
  %..i.i = select i1 %i.fe, ptr %i.eo, ptr %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ep, ptr noundef nonnull align 8 dereferenceable(64) %..i.i, i64 64, i1 false), !alias.scope !133107, !noalias !133108
  %i.ff = zext i1 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [64 x i8], ptr %i.en, i64 %i.ff ; 3 uses
  %.lobit.i.i = lshr i32 %phi.res140, 31
  %i.fh = zext nneg i32 %.lobit.i.i to i64
  %i.fi = getelementptr inbounds nuw [64 x i8], ptr %i.eo, i64 %i.fh ; 3 uses
  %i.fj = icmp eq ptr %i.fg, %i.dn
  %i.fk = icmp eq ptr %i.fi, %2
  %or.cond.i.i = select i1 %i.fj, i1 true, i1 %i.fk
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hff6358a2a56276c6E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %endblock146
  %i.fl = phi ptr [ %i.gg, %endblock146 ], [ %i.dn, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.gf, %endblock146 ], [ %i.ei, %bb.x ] ; 4 uses
  %i.fm = phi ptr [ %i.gd, %endblock146 ], [ %2, %bb.x ] ; 4 uses
  %i.fn = load i64, ptr %.sroa.0.02.i.i, align 8
  %i.fo = load i64, ptr %i.fm, align 8
  %i.fp = tail call i64 @llvm.bswap.i64(i64 %i.fn) ; 2 uses
  %i.fq = tail call i64 @llvm.bswap.i64(i64 %i.fo) ; 2 uses
  %i.fr = icmp eq i64 %i.fp, %i.fq
  br i1 %i.fr, label %loadbb152, label %res_block148

res_block148:                                     ; preds = %loadbb152, %.lr.ph.i.i
  %phi.src1149 = phi i64 [ %i.fp, %.lr.ph.i.i ], [ %i.fy, %loadbb152 ]
  %phi.src2150 = phi i64 [ %i.fq, %.lr.ph.i.i ], [ %i.fz, %loadbb152 ]
  %i.fs = icmp ult i64 %phi.src1149, %phi.src2150
  %i.ft = select i1 %i.fs, i32 -1, i32 1
  br label %endblock146

loadbb152:                                        ; preds = %.lr.ph.i.i
  %i.fu = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %i.fv = getelementptr i8, ptr %i.fm, i64 8
  %i.fw = load i64, ptr %i.fu, align 8
  %i.fx = load i64, ptr %i.fv, align 8
  %i.fy = tail call i64 @llvm.bswap.i64(i64 %i.fw) ; 2 uses
  %i.fz = tail call i64 @llvm.bswap.i64(i64 %i.fx) ; 2 uses
  %i.ga = icmp eq i64 %i.fy, %i.fz
  br i1 %i.ga, label %endblock146, label %res_block148

endblock146:                                      ; preds = %res_block148, %loadbb152
  %phi.res147 = phi i32 [ 0, %loadbb152 ], [ %i.ft, %res_block148 ] ; 2 uses
  %i.gb = icmp sgt i32 %phi.res147, -1            ; 2 uses
  %spec.select.i.i = select i1 %i.gb, ptr %i.fm, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fl, ptr noundef nonnull align 8 dereferenceable(64) %spec.select.i.i, i64 64, i1 false), !alias.scope !133107, !noalias !133109
  %i.gc = zext i1 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [64 x i8], ptr %i.fm, i64 %i.gc ; 3 uses
  %.lobit.i19.i = lshr i32 %phi.res147, 31
  %i.ge = zext nneg i32 %.lobit.i19.i to i64
  %i.gf = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.02.i.i, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 64 ; 2 uses
  %i.gh = icmp ne ptr %i.gd, %i.ek
  %i.gi = icmp ne ptr %i.gf, %i.db
  %or.cond.i20.i = select i1 %i.gh, i1 %i.gi, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hff6358a2a56276c6E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hff6358a2a56276c6E.exit.i": ; preds = %endblock146, %endblock139
  %.sroa.13.1.i = phi ptr [ %i.fg, %endblock139 ], [ %i.gg, %endblock146 ]
  %.sroa.7.0.i = phi ptr [ %i.fi, %endblock139 ], [ %i.ek, %endblock146 ]
  %.sroa.0.1.i = phi ptr [ %2, %endblock139 ], [ %i.gd, %endblock146 ] ; 2 uses
  %i.gj = ptrtoint ptr %.sroa.7.0.i to i64
  %i.gk = ptrtoint ptr %.sroa.0.1.i to i64
  %i.gl = sub nuw i64 %i.gj, %i.gk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.gl, i1 false), !alias.scope !133107, !noalias !133110
  br label %_ZN4core5slice4sort6stable5merge5merge17h133ae283e7c8efebE.exit

_ZN4core5slice4sort6stable5merge5merge17h133ae283e7c8efebE.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hff6358a2a56276c6E.exit.i"
  %i.gm = shl i64 %i.dl, 1
  %i.gn = or disjoint i64 %i.gm, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h5aa99c0e1c733915E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h5aa99c0e1c733915E.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h133ae283e7c8efebE.exit
  %.sroa.0.0.i = phi i64 [ %i.gn, %_ZN4core5slice4sort6stable5merge5merge17h133ae283e7c8efebE.exit ], [ %i.dt, %bb.s ] ; 2 uses
  %i.go = icmp ugt i64 %i.dc, 1
  br i1 %i.go, label %bb.p, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.gp = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gq = lshr i64 %.sroa.023.0, 1
  %i.gr = add i64 %i.gq, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.gs = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gs, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gt = or i64 %1, 1
  %i.gu = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gt, i1 true)
  %i.gv = trunc nuw nsw i64 %i.gu to i32
  %i.gw = shl nuw nsw i32 %i.gv, 1
  %i.gx = xor i32 %i.gw, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h9c0a5480b6eb9509E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.gx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133082
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd757795ecd752cf3E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fk, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fi, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7135a14ad49f0d7E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7135a14ad49f0d7E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133173)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7135a14ad49f0d7E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7135a14ad49f0d7E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf082e6937591cd0cE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 104
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !133173, !noalias !133174, !nonnull !57, !noundef !57 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 112
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !133173, !noalias !133174, !noundef !57 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !133173, !noalias !133174, !nonnull !57, !noundef !57
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !133173, !noalias !133174, !noundef !57 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !133175, !noalias !133176 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !133173, !noalias !133174, !nonnull !57, !noundef !57 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !133173, !noalias !133174, !noundef !57 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !133177, !noalias !133176 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !133173, !noalias !133174, !nonnull !57, !noundef !57 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !133173, !noalias !133174, !noundef !57 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !133178, !noalias !133176 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf082e6937591cd0cE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf082e6937591cd0cE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he86c82de5a29d4ecE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd743bed986ef9776E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133124
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he86c82de5a29d4ecE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf082e6937591cd0cE.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he86c82de5a29d4ecE.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133179), !noalias !133174
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133180), !noalias !133174
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf082e6937591cd0cE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h9ad32f3e109ba190E.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_7
begin_hunk_8_@_ZN4core5slice4sort6stable5drift4sort17hd757795ecd752cf3E:bb.a
  store <2 x i64> %i.bw, ptr %i.bt, align 8, !alias.scope !133193, !noalias !133182
  store <2 x i64> %i.bv, ptr %i.bu, align 8, !alias.scope !133194, !noalias !133184
  %i.bx = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bx, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf082e6937591cd0cE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17he86c82de5a29d4ecE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf082e6937591cd0cE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hf082e6937591cd0cE.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.by = lshr i64 %.sroa.018.0, 1
  %i.bz = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ca = sub i64 %factor, %i.by
  %i.cb = add i64 %i.bz, %factor
  %i.cc = mul i64 %i.ca, %.sroa.0.0
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 false)
  %i.cg = trunc nuw nsw i64 %i.cf to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17he86c82de5a29d4ecE.exit
  %.sroa.026.0 = phi i8 [ %i.cg, %_ZN4core5slice4sort6stable5drift10create_run17he86c82de5a29d4ecE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17he86c82de5a29d4ecE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.ch = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.ch, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hcb3bb229a79db933E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.cj, %_ZN4core5slice4sort6stable5drift13logical_merge17hcb3bb229a79db933E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hcb3bb229a79db933E.exit ] ; 4 uses
  %i.cj = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.cl, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hcb3bb229a79db933E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hcb3bb229a79db933E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hcb3bb229a79db933E.exit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cn, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cj
  %i.cp = load i64, ptr %i.co, align 8, !noundef !57 ; 3 uses
  %i.cq = lshr i64 %i.cp, 1                       ; 8 uses
  %i.cr = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cs = add nuw i64 %i.cq, %i.cr                ; 4 uses
  %i.ct = sub i64 %.sroa.09.0, %i.cs
  %i.cu = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.ct ; 6 uses
  %i.cv = icmp ugt i64 %i.cs, %3
  %i.cw = trunc i64 %.sroa.018.167 to i1
  %i.cx = or i64 %i.cp, %.sroa.018.167
  %i.cy = trunc i64 %i.cx to i1
  %or.cond3.i = or i1 %i.cv, %i.cy
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cz = trunc i64 %i.cp to i1
  br i1 %i.cz, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.da = shl i64 %i.cs, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hcb3bb229a79db933E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cw, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7135a14ad49f0d7E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.db = or i64 %i.cq, 1
  %i.dc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd743bed986ef9776E(ptr noalias noundef nonnull align 8 %i.cu, i64 noundef %i.cq, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133155
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7135a14ad49f0d7E.exit35": ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw [96 x i8], ptr %i.cu, i64 %i.cq
  %i.dh = or i64 %i.cr, 1
  %i.di = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd743bed986ef9776E(ptr noalias noundef nonnull align 8 %i.dg, i64 noundef %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133155
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7135a14ad49f0d7E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133196)
  %i.dm = icmp eq i64 %i.cq, 0
  %i.dn = icmp eq i64 %i.cr, 0
  %or.cond.i = or i1 %i.dn, %i.dm
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17he83890473c04127fE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 range(i64 0, -9223372036854775808) %i.cq) ; 2 uses
  %i.do = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.do, label %_ZN4core5slice4sort6stable5merge5merge17he83890473c04127fE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw [96 x i8], ptr %i.cu, i64 %i.cq ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cq, %i.cr  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dp, ptr %i.cu
  %i.dq = mul i64 %.sroa.0.0.i.i36, 96            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dq, i1 false), !alias.scope !133197
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %i.dq ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.ds = phi ptr [ %i.ei, %.preheader.i ], [ %i.dr, %bb.y ] ; 3 uses
  %i.dt = phi ptr [ %i.eh, %.preheader.i ], [ %i.dp, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dw, %.preheader.i ], [ %i.ci, %bb.y ]
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -96 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 -96 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -96 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.ds, i64 -88
  %.val.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !133196, !noalias !133198, !nonnull !57, !noundef !57
  %i.dy = getelementptr i8, ptr %i.ds, i64 -80
  %.val10.i.i = load i64, ptr %i.dy, align 8, !alias.scope !133196, !noalias !133198, !noundef !57 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dt, i64 -88
  %.val11.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !133195, !noalias !133199, !nonnull !57, !noundef !57
  %i.ea = getelementptr i8, ptr %i.dt, i64 -80
  %.val12.i.i = load i64, ptr %i.ea, align 8, !alias.scope !133195, !noalias !133199, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.eb = sub i64 %.val10.i.i, %.val12.i.i
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !133200, !noalias !133201 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.ee, i64 %i.eb, i64 %i.ed ; 2 uses
  %i.ef = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.ef, ptr %i.dv, ptr %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dw, ptr noundef nonnull align 8 dereferenceable(96) %..i.i, i64 96, i1 false), !alias.scope !133197, !noalias !133202
  %i.eg = zext i1 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [96 x i8], ptr %i.du, i64 %i.eg ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ei = getelementptr inbounds nuw [96 x i8], ptr %i.dv, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.ej = icmp eq ptr %i.eh, %i.cu
  %i.ek = icmp eq ptr %i.ei, %2
  %or.cond.i.i = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8194441ec3951ec7E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.el = phi ptr [ %i.ez, %.lr.ph.i.i ], [ %i.cu, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ey, %.lr.ph.i.i ], [ %i.dp, %bb.y ] ; 4 uses
  %i.em = phi ptr [ %i.ex, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.en = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.en, align 8, !alias.scope !133195, !noalias !133203, !nonnull !57, !noundef !57
  %i.eo = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.eo, align 8, !alias.scope !133195, !noalias !133203, !noundef !57 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.em, i64 8
  %.val.i19.i = load ptr, ptr %i.ep, align 8, !alias.scope !133196, !noalias !133204, !nonnull !57, !noundef !57
  %i.eq = getelementptr i8, ptr %i.em, i64 16
  %.val7.i.i = load i64, ptr %i.eq, align 8, !alias.scope !133196, !noalias !133204, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.er = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.es = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !133205, !noalias !133206 ; 2 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp eq i32 %i.es, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.eu, i64 %i.er, i64 %i.et ; 2 uses
  %i.ev = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ev, ptr %i.em, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.el, ptr noundef nonnull align 8 dereferenceable(96) %spec.select.i.i, i64 96, i1 false), !alias.scope !133197, !noalias !133207
  %i.ew = zext i1 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [96 x i8], ptr %i.em, i64 %i.ew ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.ey = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 96 ; 2 uses
  %i.fa = icmp ne ptr %i.ex, %i.dr
  %i.fb = icmp ne ptr %i.ey, %i.ci
  %or.cond.i23.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8194441ec3951ec7E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8194441ec3951ec7E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.eh, %.preheader.i ], [ %i.ez, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ei, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ex, %.lr.ph.i.i ] ; 2 uses
  %i.fc = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fd = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fe = sub nuw i64 %i.fc, %i.fd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fe, i1 false), !alias.scope !133197, !noalias !133208
  br label %_ZN4core5slice4sort6stable5merge5merge17he83890473c04127fE.exit

_ZN4core5slice4sort6stable5merge5merge17he83890473c04127fE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8194441ec3951ec7E.exit.i"
  %i.ff = shl i64 %i.cs, 1
  %i.fg = or disjoint i64 %i.ff, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hcb3bb229a79db933E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hcb3bb229a79db933E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17he83890473c04127fE.exit
  %.sroa.0.0.i = phi i64 [ %i.fg, %_ZN4core5slice4sort6stable5merge5merge17he83890473c04127fE.exit ], [ %i.da, %bb.t ] ; 2 uses
  %i.fh = icmp ugt i64 %i.cj, 1
  br i1 %i.fh, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.fi = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fj = lshr i64 %.sroa.023.0, 1
  %i.fk = add i64 %i.fj, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.fl = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fl, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fm = or i64 %1, 1
  %i.fn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fm, i1 true)
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 1
  %i.fq = xor i32 %i.fp, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hd743bed986ef9776E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133155
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd9235905107d3adcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dn, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dl, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i.thread96, %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.val10.i = load i16, ptr %i.o, align 8, !alias.scope !133238, !noalias !133239, !noundef !57 ; 3 uses
  %.val11.i = load i16, ptr %i.m, align 8, !alias.scope !133238, !noalias !133239, !noundef !57
  %i.p = icmp ult i16 %.val10.i, %.val11.i        ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i.thread96, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.val9.i = phi i16 [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader50 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55
  %.val8.i = load i16, ptr %i.q, align 8, !alias.scope !133238, !noalias !133239, !noundef !57 ; 2 uses
  %i.r = icmp ult i16 %.val8.i, %.val9.i
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi i16 [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58
  %.val.i = load i16, ptr %i.t, align 8, !alias.scope !133238, !noalias !133239, !noundef !57 ; 2 uses
  %i.u = icmp ult i16 %.val.i, %.val7.i
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i

bb.k:                                             ; preds = %.lr.ph59
  %i.v = add nuw i64 %.sroa.01.1.i.i58, 1         ; 2 uses
  %exitcond79.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i93, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h49795ae23bb2f341E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h418a0af2bbbc67e2E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133213
  %i.y = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h49795ae23bb2f341E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %.lr.ph.i.i38 ]
  %i.aa = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h49795ae23bb2f341E.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133240), !noalias !133239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133241), !noalias !133239
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i.thread96, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17ha06c893043d49093E.exit.i.thread96 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.0.i.i94101105
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.am, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.af = xor i64 %.sroa.0.014.i.i, -1
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 3 uses
  %i.ah = getelementptr [24 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !133242, !noalias !133243
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !133244, !noalias !133245
  store <2 x i64> %i.aj, ptr %i.ag, align 8, !alias.scope !133242, !noalias !133243
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !alias.scope !133244, !noalias !133245
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133246), !noalias !133239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133247), !noalias !133239
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !133248, !noalias !133249
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !133250, !noalias !133251
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.ak, align 8, !alias.scope !133248, !noalias !133249
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.al, align 8, !alias.scope !133250, !noalias !133251
  %i.am = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.am, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h49795ae23bb2f341E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h163592db29a48a42E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.an = lshr i64 %.sroa.018.0, 1
  %i.ao = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ap = sub i64 %factor, %i.an
  %i.aq = add i64 %i.ao, %factor
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = xor i64 %i.as, %i.ar
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 false)
  %i.av = trunc nuw nsw i64 %i.au to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h49795ae23bb2f341E.exit
  %.sroa.026.0 = phi i8 [ %i.av, %_ZN4core5slice4sort6stable5drift10create_run17h49795ae23bb2f341E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h49795ae23bb2f341E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.aw = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.aw, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17h71cbccb58db624aeE.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.ay, %_ZN4core5slice4sort6stable5drift13logical_merge17h71cbccb58db624aeE.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h71cbccb58db624aeE.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.ba, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h71cbccb58db624aeE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h71cbccb58db624aeE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h71cbccb58db624aeE.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bc, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !57 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.018.163 to i1
  %i.bm = or i64 %i.be, %.sroa.018.163
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bp = shl i64 %i.bh, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h71cbccb58db624aeE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bl, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h418a0af2bbbc67e2E(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133226
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit35": ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bf
  %i.bw = or i64 %i.bg, 1
  %i.bx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h418a0af2bbbc67e2E(ptr noalias noundef nonnull align 8 %i.bv, i64 noundef %i.bg, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133226
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h13215bfcbd17ea28E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133253)
  %i.cb = icmp eq i64 %i.bf, 0
  %i.cc = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.cc, %i.cb
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h03c107419999bf48E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 range(i64 0, -9223372036854775808) %i.bf) ; 2 uses
  %i.cd = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cd, label %_ZN4core5slice4sort6stable5merge5merge17h03c107419999bf48E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.ce, ptr %i.bj
  %i.cf = mul i64 %.sroa.0.0.i.i36, 24            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cf, i1 false), !alias.scope !133254
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 %i.cf ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.ch = phi ptr [ %i.cr, %.preheader.i ], [ %i.cg, %bb.y ]
  %i.ci = phi ptr [ %i.cp, %.preheader.i ], [ %i.ce, %bb.y ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cl, %.preheader.i ], [ %i.ax, %bb.y ]
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -24 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 -24 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -24 ; 2 uses
  %.val.i.i = load i16, ptr %i.ck, align 8, !alias.scope !133253, !noalias !133255, !noundef !57
  %.val10.i.i = load i16, ptr %i.cj, align 8, !alias.scope !133252, !noalias !133256, !noundef !57
  %i.cm = icmp ult i16 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cm, ptr %i.cj, ptr %i.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !133254, !noalias !133257
  %i.cn = xor i1 %i.cm, true
  %i.co = zext i1 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.co ; 3 uses
  %i.cq = zext i1 %i.cm to i64
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.cq ; 3 uses
  %i.cs = icmp eq ptr %i.cp, %i.bj
  %i.ct = icmp eq ptr %i.cr, %2
  %or.cond.i.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5cbfc606610a82b5E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.cu = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %i.bj, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.ce, %bb.y ] ; 3 uses
  %i.cv = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %2, %bb.y ] ; 3 uses
  %.sroa.0.0.val.i.i = load i16, ptr %.sroa.0.02.i.i, align 8, !alias.scope !133252, !noalias !133258, !noundef !57
  %.val.i19.i = load i16, ptr %i.cv, align 8, !alias.scope !133253, !noalias !133259, !noundef !57
  %i.cw = icmp ult i16 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cx = xor i1 %i.cw, true
  %spec.select.i.i = select i1 %i.cw, ptr %.sroa.0.02.i.i, ptr %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, i64 24, i1 false), !alias.scope !133254, !noalias !133260
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cw to i64
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  %i.dd = icmp ne ptr %i.cz, %i.cg
  %i.de = icmp ne ptr %i.db, %i.ax
  %or.cond.i20.i = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5cbfc606610a82b5E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5cbfc606610a82b5E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cp, %.preheader.i ], [ %i.dc, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cr, %.preheader.i ], [ %i.cg, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cz, %.lr.ph.i.i ] ; 2 uses
  %i.df = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dg = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dh = sub nuw i64 %i.df, %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dh, i1 false), !alias.scope !133254, !noalias !133261
  br label %_ZN4core5slice4sort6stable5merge5merge17h03c107419999bf48E.exit

_ZN4core5slice4sort6stable5merge5merge17h03c107419999bf48E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5cbfc606610a82b5E.exit.i"
  %i.di = shl i64 %i.bh, 1
  %i.dj = or disjoint i64 %i.di, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h71cbccb58db624aeE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h71cbccb58db624aeE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h03c107419999bf48E.exit
  %.sroa.0.0.i = phi i64 [ %i.dj, %_ZN4core5slice4sort6stable5merge5merge17h03c107419999bf48E.exit ], [ %i.bp, %bb.t ] ; 2 uses
  %i.dk = icmp ugt i64 %i.ay, 1
  br i1 %i.dk, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.dl = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dm = lshr i64 %.sroa.023.0, 1
  %i.dn = add i64 %i.dm, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.do = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.do, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dp = or i64 %1, 1
  %i.dq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 1
  %i.dt = xor i32 %i.ds, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h418a0af2bbbc67e2E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133226
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17he3a92bb85070bffdE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i90 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gr, %bb.y ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gp, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb87139bd904ac43cE.exit.i.thread93, %_ZN4core5slice4sort6shared17find_existing_run17hb87139bd904ac43cE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hb87139bd904ac43cE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd0482cbdf31aee02E.exit", label %loadbb

loadbb:                                           ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = load i64, ptr %i.m, align 8
  %i.r = tail call i64 @llvm.bswap.i64(i64 %i.p)  ; 2 uses
  %i.s = tail call i64 @llvm.bswap.i64(i64 %i.q)  ; 2 uses
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %loadbb124, label %res_block

res_block:                                        ; preds = %loadbb124, %loadbb
  %phi.src1 = phi i64 [ %i.r, %loadbb ], [ %i.aa, %loadbb124 ]
  %phi.src2 = phi i64 [ %i.s, %loadbb ], [ %i.ab, %loadbb124 ]
  %i.u = icmp ult i64 %phi.src1, %phi.src2
  %i.v = select i1 %i.u, i32 -1, i32 1
  br label %endblock

loadbb124:                                        ; preds = %loadbb
  %i.w = getelementptr i8, ptr %i.o, i64 8
  %i.x = getelementptr i8, ptr %i.m, i64 8
  %i.y = load i64, ptr %i.w, align 8
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = tail call i64 @llvm.bswap.i64(i64 %i.y) ; 2 uses
  %i.ab = tail call i64 @llvm.bswap.i64(i64 %i.z) ; 2 uses
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb124
  %phi.res = phi i32 [ 0, %loadbb124 ], [ %i.v, %res_block ]
  %i.ad = icmp slt i32 %phi.res, 0                ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.ad, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %endblock
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hb87139bd904ac43cE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %endblock
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hb87139bd904ac43cE.exit.i.thread93, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.i
  %.sroa.01.0.i.i55 = phi i64 [ %i.aw, %bb.i ], [ 2, %.preheader50 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55 ; 2 uses
  %i.af = getelementptr [64 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55
  %i.ag = getelementptr i8, ptr %i.af, i64 -64    ; 2 uses
  %i.ah = load i64, ptr %i.ae, align 8
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = tail call i64 @llvm.bswap.i64(i64 %i.ah) ; 2 uses
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %i.ai) ; 2 uses
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %loadbb131, label %res_block127

res_block127:                                     ; preds = %loadbb131, %.lr.ph
  %phi.src1128 = phi i64 [ %i.aj, %.lr.ph ], [ %i.as, %loadbb131 ]
  %phi.src2129 = phi i64 [ %i.ak, %.lr.ph ], [ %i.at, %loadbb131 ]
  %i.am = icmp ult i64 %phi.src1128, %phi.src2129
  %i.an = select i1 %i.am, i32 -1, i32 1
  br label %endblock125

loadbb131:                                        ; preds = %.lr.ph
  %i.ao = getelementptr i8, ptr %i.ae, i64 8
  %i.ap = getelementptr i8, ptr %i.ag, i64 8
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = tail call i64 @llvm.bswap.i64(i64 %i.aq) ; 2 uses
  %i.at = tail call i64 @llvm.bswap.i64(i64 %i.ar) ; 2 uses
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %endblock125, label %res_block127

endblock125:                                      ; preds = %res_block127, %loadbb131
  %phi.res126 = phi i32 [ 0, %loadbb131 ], [ %i.an, %res_block127 ]
  %i.av = icmp slt i32 %phi.res126, 0
  br i1 %i.av, label %_ZN4core5slice4sort6shared17find_existing_run17hb87139bd904ac43cE.exit.i, label %bb.i

bb.i:                                             ; preds = %endblock125
  %i.aw = add nuw i64 %.sroa.01.0.i.i55, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb87139bd904ac43cE.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.j
  %.sroa.01.1.i.i58 = phi i64 [ %i.bp, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58 ; 2 uses
  %i.ay = getelementptr [64 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58
  %i.az = getelementptr i8, ptr %i.ay, i64 -64    ; 2 uses
  %i.ba = load i64, ptr %i.ax, align 8
  %i.bb = load i64, ptr %i.az, align 8
  %i.bc = tail call i64 @llvm.bswap.i64(i64 %i.ba) ; 2 uses
  %i.bd = tail call i64 @llvm.bswap.i64(i64 %i.bb) ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %loadbb138, label %res_block134

res_block134:                                     ; preds = %loadbb138, %.lr.ph59
  %phi.src1135 = phi i64 [ %i.bc, %.lr.ph59 ], [ %i.bl, %loadbb138 ]
  %phi.src2136 = phi i64 [ %i.bd, %.lr.ph59 ], [ %i.bm, %loadbb138 ]
  %i.bf = icmp ult i64 %phi.src1135, %phi.src2136
  %i.bg = select i1 %i.bf, i32 -1, i32 1
  br label %endblock132

loadbb138:                                        ; preds = %.lr.ph59
  %i.bh = getelementptr i8, ptr %i.ax, i64 8
  %i.bi = getelementptr i8, ptr %i.az, i64 8
  %i.bj = load i64, ptr %i.bh, align 8
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = tail call i64 @llvm.bswap.i64(i64 %i.bj) ; 2 uses
  %i.bm = tail call i64 @llvm.bswap.i64(i64 %i.bk) ; 2 uses
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %endblock132, label %res_block134

endblock132:                                      ; preds = %res_block134, %loadbb138
  %phi.res133 = phi i32 [ 0, %loadbb138 ], [ %i.bg, %res_block134 ]
  %i.bo = icmp slt i32 %phi.res133, 0
  br i1 %i.bo, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17hb87139bd904ac43cE.exit.i

bb.j:                                             ; preds = %endblock132
  %i.bp = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.bp, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb87139bd904ac43cE.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17hb87139bd904ac43cE.exit.i: ; preds = %bb.i, %endblock125, %bb.j, %endblock132
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %endblock132 ], [ %i.l, %bb.j ], [ %.sroa.01.0.i.i55, %endblock125 ], [ %i.l, %bb.i ] ; 6 uses
end_hunk_8
begin_hunk_9_@_ZN4core5slice4sort6stable5drift4sort17he3a92bb85070bffdE:bb.a
  br i1 %i.da, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.o
  %i.db = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17hde5331cf98c4d12cE.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.dc, %_ZN4core5slice4sort6stable5drift13logical_merge17hde5331cf98c4d12cE.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hde5331cf98c4d12cE.exit ] ; 4 uses
  %i.dc = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.de, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hde5331cf98c4d12cE.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.163, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hde5331cf98c4d12cE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.164, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hde5331cf98c4d12cE.exit ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.dg, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dc
  %i.di = load i64, ptr %i.dh, align 8, !noundef !57 ; 3 uses
  %i.dj = lshr i64 %i.di, 1                       ; 8 uses
  %i.dk = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.dl = add nuw i64 %i.dj, %i.dk                ; 4 uses
  %i.dm = sub i64 %.sroa.09.0, %i.dl
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.dm ; 6 uses
  %i.do = icmp ugt i64 %i.dl, %3
  %i.dp = trunc i64 %.sroa.018.163 to i1
  %i.dq = or i64 %i.di, %.sroa.018.163
  %i.dr = trunc i64 %i.dq to i1
  %or.cond3.i = or i1 %i.do, %i.dr
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ds = trunc i64 %i.di to i1
  br i1 %i.ds, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.dt = shl i64 %i.dl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hde5331cf98c4d12cE.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.dp, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.du = or i64 %i.dj, 1
  %i.dv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3c40c5a70b17c717E(ptr noalias noundef nonnull align 8 %i.dn, i64 noundef %i.dj, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133288
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit35": ; preds = %bb.t
  %i.dz = getelementptr inbounds nuw [64 x i8], ptr %i.dn, i64 %i.dj
  %i.ea = or i64 %i.dk, 1
  %i.eb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3c40c5a70b17c717E(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef %i.dk, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133288
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h52ce7e54d26b36f6E.exit35", %bb.t
  %i.ef = icmp eq i64 %i.dj, 0
  %i.eg = icmp eq i64 %i.dk, 0
  %or.cond.i = or i1 %i.eg, %i.ef
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h2c8593aabc67d6edE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.dk, i64 range(i64 0, -9223372036854775808) %i.dj) ; 2 uses
  %i.eh = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.eh, label %_ZN4core5slice4sort6stable5merge5merge17h2c8593aabc67d6edE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw [64 x i8], ptr %i.dn, i64 %i.dj ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dj, %i.dk  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.ei, ptr %i.dn
  %i.ej = shl i64 %.sroa.0.0.i.i36, 6             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ej, i1 false), !alias.scope !133313
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 %i.ej ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %endblock139
  %i.el = phi ptr [ %i.fi, %endblock139 ], [ %i.ek, %bb.x ]
  %i.em = phi ptr [ %i.fg, %endblock139 ], [ %i.ei, %bb.x ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ep, %endblock139 ], [ %i.db, %bb.x ]
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -64 ; 4 uses
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 -64 ; 4 uses
  %i.ep = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -64 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8
  %i.er = load i64, ptr %i.en, align 8
  %i.es = tail call i64 @llvm.bswap.i64(i64 %i.eq) ; 2 uses
  %i.et = tail call i64 @llvm.bswap.i64(i64 %i.er) ; 2 uses
  %i.eu = icmp eq i64 %i.es, %i.et
  br i1 %i.eu, label %loadbb145, label %res_block141

res_block141:                                     ; preds = %loadbb145, %.preheader.i
  %phi.src1142 = phi i64 [ %i.es, %.preheader.i ], [ %i.fb, %loadbb145 ]
  %phi.src2143 = phi i64 [ %i.et, %.preheader.i ], [ %i.fc, %loadbb145 ]
  %i.ev = icmp ult i64 %phi.src1142, %phi.src2143
  %i.ew = select i1 %i.ev, i32 -1, i32 1
  br label %endblock139

loadbb145:                                        ; preds = %.preheader.i
  %i.ex = getelementptr i8, ptr %i.eo, i64 8
  %i.ey = getelementptr i8, ptr %i.en, i64 8
  %i.ez = load i64, ptr %i.ex, align 8
  %i.fa = load i64, ptr %i.ey, align 8
  %i.fb = tail call i64 @llvm.bswap.i64(i64 %i.ez) ; 2 uses
  %i.fc = tail call i64 @llvm.bswap.i64(i64 %i.fa) ; 2 uses
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %endblock139, label %res_block141

endblock139:                                      ; preds = %res_block141, %loadbb145
  %phi.res140 = phi i32 [ 0, %loadbb145 ], [ %i.ew, %res_block141 ] ; 2 uses
  %i.fe = icmp sgt i32 %phi.res140, -1            ; 2 uses
  %..i.i = select i1 %i.fe, ptr %i.eo, ptr %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ep, ptr noundef nonnull align 8 dereferenceable(64) %..i.i, i64 64, i1 false), !alias.scope !133313, !noalias !133314
  %i.ff = zext i1 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [64 x i8], ptr %i.en, i64 %i.ff ; 3 uses
  %.lobit.i.i = lshr i32 %phi.res140, 31
  %i.fh = zext nneg i32 %.lobit.i.i to i64
  %i.fi = getelementptr inbounds nuw [64 x i8], ptr %i.eo, i64 %i.fh ; 3 uses
  %i.fj = icmp eq ptr %i.fg, %i.dn
  %i.fk = icmp eq ptr %i.fi, %2
  %or.cond.i.i = select i1 %i.fj, i1 true, i1 %i.fk
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1d9e6da52454b53eE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %endblock146
  %i.fl = phi ptr [ %i.gg, %endblock146 ], [ %i.dn, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.gf, %endblock146 ], [ %i.ei, %bb.x ] ; 4 uses
  %i.fm = phi ptr [ %i.gd, %endblock146 ], [ %2, %bb.x ] ; 4 uses
  %i.fn = load i64, ptr %.sroa.0.02.i.i, align 8
  %i.fo = load i64, ptr %i.fm, align 8
  %i.fp = tail call i64 @llvm.bswap.i64(i64 %i.fn) ; 2 uses
  %i.fq = tail call i64 @llvm.bswap.i64(i64 %i.fo) ; 2 uses
  %i.fr = icmp eq i64 %i.fp, %i.fq
  br i1 %i.fr, label %loadbb152, label %res_block148

res_block148:                                     ; preds = %loadbb152, %.lr.ph.i.i
  %phi.src1149 = phi i64 [ %i.fp, %.lr.ph.i.i ], [ %i.fy, %loadbb152 ]
  %phi.src2150 = phi i64 [ %i.fq, %.lr.ph.i.i ], [ %i.fz, %loadbb152 ]
  %i.fs = icmp ult i64 %phi.src1149, %phi.src2150
  %i.ft = select i1 %i.fs, i32 -1, i32 1
  br label %endblock146

loadbb152:                                        ; preds = %.lr.ph.i.i
  %i.fu = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %i.fv = getelementptr i8, ptr %i.fm, i64 8
  %i.fw = load i64, ptr %i.fu, align 8
  %i.fx = load i64, ptr %i.fv, align 8
  %i.fy = tail call i64 @llvm.bswap.i64(i64 %i.fw) ; 2 uses
  %i.fz = tail call i64 @llvm.bswap.i64(i64 %i.fx) ; 2 uses
  %i.ga = icmp eq i64 %i.fy, %i.fz
  br i1 %i.ga, label %endblock146, label %res_block148

endblock146:                                      ; preds = %res_block148, %loadbb152
  %phi.res147 = phi i32 [ 0, %loadbb152 ], [ %i.ft, %res_block148 ] ; 2 uses
  %i.gb = icmp sgt i32 %phi.res147, -1            ; 2 uses
  %spec.select.i.i = select i1 %i.gb, ptr %i.fm, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fl, ptr noundef nonnull align 8 dereferenceable(64) %spec.select.i.i, i64 64, i1 false), !alias.scope !133313, !noalias !133315
  %i.gc = zext i1 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [64 x i8], ptr %i.fm, i64 %i.gc ; 3 uses
  %.lobit.i19.i = lshr i32 %phi.res147, 31
  %i.ge = zext nneg i32 %.lobit.i19.i to i64
  %i.gf = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.02.i.i, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 64 ; 2 uses
  %i.gh = icmp ne ptr %i.gd, %i.ek
  %i.gi = icmp ne ptr %i.gf, %i.db
  %or.cond.i20.i = select i1 %i.gh, i1 %i.gi, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1d9e6da52454b53eE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1d9e6da52454b53eE.exit.i": ; preds = %endblock146, %endblock139
  %.sroa.13.1.i = phi ptr [ %i.fg, %endblock139 ], [ %i.gg, %endblock146 ]
  %.sroa.7.0.i = phi ptr [ %i.fi, %endblock139 ], [ %i.ek, %endblock146 ]
  %.sroa.0.1.i = phi ptr [ %2, %endblock139 ], [ %i.gd, %endblock146 ] ; 2 uses
  %i.gj = ptrtoint ptr %.sroa.7.0.i to i64
  %i.gk = ptrtoint ptr %.sroa.0.1.i to i64
  %i.gl = sub nuw i64 %i.gj, %i.gk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.gl, i1 false), !alias.scope !133313, !noalias !133316
  br label %_ZN4core5slice4sort6stable5merge5merge17h2c8593aabc67d6edE.exit

_ZN4core5slice4sort6stable5merge5merge17h2c8593aabc67d6edE.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1d9e6da52454b53eE.exit.i"
  %i.gm = shl i64 %i.dl, 1
  %i.gn = or disjoint i64 %i.gm, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hde5331cf98c4d12cE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hde5331cf98c4d12cE.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h2c8593aabc67d6edE.exit
  %.sroa.0.0.i = phi i64 [ %i.gn, %_ZN4core5slice4sort6stable5merge5merge17h2c8593aabc67d6edE.exit ], [ %i.dt, %bb.s ] ; 2 uses
  %i.go = icmp ugt i64 %i.dc, 1
  br i1 %i.go, label %bb.p, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.gp = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gq = lshr i64 %.sroa.023.0, 1
  %i.gr = add i64 %i.gq, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.gs = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.gs, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gt = or i64 %1, 1
  %i.gu = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gt, i1 true)
  %i.gv = trunc nuw nsw i64 %i.gu to i32
  %i.gw = shl nuw nsw i32 %i.gv, 1
  %i.gx = xor i32 %i.gw, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h3c40c5a70b17c717E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.gx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133288
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17headbf86d5fbf85d4E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fk, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fi, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc74858743456e96aE.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc74858743456e96aE.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133379)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc74858743456e96aE.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc74858743456e96aE.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1306922f9796ad92E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 104
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !133379, !noalias !133380, !nonnull !57, !noundef !57 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 112
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !133379, !noalias !133380, !noundef !57 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !133379, !noalias !133380, !nonnull !57, !noundef !57
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !133379, !noalias !133380, !noundef !57 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !133381, !noalias !133382 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !133379, !noalias !133380, !nonnull !57, !noundef !57 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !133379, !noalias !133380, !noundef !57 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !133383, !noalias !133382 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !133379, !noalias !133380, !nonnull !57, !noundef !57 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !133379, !noalias !133380, !noundef !57 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !133384, !noalias !133382 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1306922f9796ad92E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1306922f9796ad92E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h5932ee830c6e5dffE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2d18dbbff0f41884E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133330
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h5932ee830c6e5dffE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1306922f9796ad92E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h5932ee830c6e5dffE.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133385), !noalias !133380
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133386), !noalias !133380
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1306922f9796ad92E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hd7b4f10239f6a3e8E.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_9
begin_hunk_10_@_ZN4core5slice4sort6stable5drift4sort17headbf86d5fbf85d4E:bb.a
  store <2 x i64> %i.bw, ptr %i.bt, align 8, !alias.scope !133399, !noalias !133388
  store <2 x i64> %i.bv, ptr %i.bu, align 8, !alias.scope !133400, !noalias !133390
  %i.bx = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bx, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1306922f9796ad92E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h5932ee830c6e5dffE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1306922f9796ad92E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h1306922f9796ad92E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.by = lshr i64 %.sroa.018.0, 1
  %i.bz = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ca = sub i64 %factor, %i.by
  %i.cb = add i64 %i.bz, %factor
  %i.cc = mul i64 %i.ca, %.sroa.0.0
  %i.cd = mul i64 %i.cb, %.sroa.0.0
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 false)
  %i.cg = trunc nuw nsw i64 %i.cf to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h5932ee830c6e5dffE.exit
  %.sroa.026.0 = phi i8 [ %i.cg, %_ZN4core5slice4sort6stable5drift10create_run17h5932ee830c6e5dffE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h5932ee830c6e5dffE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.ch = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.ch, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17h79f33b69771b9286E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.cj, %_ZN4core5slice4sort6stable5drift13logical_merge17h79f33b69771b9286E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h79f33b69771b9286E.exit ] ; 4 uses
  %i.cj = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !57
  %.not29 = icmp ult i8 %i.cl, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h79f33b69771b9286E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h79f33b69771b9286E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h79f33b69771b9286E.exit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cn, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cj
  %i.cp = load i64, ptr %i.co, align 8, !noundef !57 ; 3 uses
  %i.cq = lshr i64 %i.cp, 1                       ; 8 uses
  %i.cr = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cs = add nuw i64 %i.cq, %i.cr                ; 4 uses
  %i.ct = sub i64 %.sroa.09.0, %i.cs
  %i.cu = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.ct ; 6 uses
  %i.cv = icmp ugt i64 %i.cs, %3
  %i.cw = trunc i64 %.sroa.018.167 to i1
  %i.cx = or i64 %i.cp, %.sroa.018.167
  %i.cy = trunc i64 %i.cx to i1
  %or.cond3.i = or i1 %i.cv, %i.cy
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cz = trunc i64 %i.cp to i1
  br i1 %i.cz, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.da = shl i64 %i.cs, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h79f33b69771b9286E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cw, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc74858743456e96aE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.db = or i64 %i.cq, 1
  %i.dc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2d18dbbff0f41884E(ptr noalias noundef nonnull align 8 %i.cu, i64 noundef %i.cq, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133361
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc74858743456e96aE.exit35": ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw [96 x i8], ptr %i.cu, i64 %i.cq
  %i.dh = or i64 %i.cr, 1
  %i.di = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2d18dbbff0f41884E(ptr noalias noundef nonnull align 8 %i.dg, i64 noundef %i.cr, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133361
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc74858743456e96aE.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133402)
  %i.dm = icmp eq i64 %i.cq, 0
  %i.dn = icmp eq i64 %i.cr, 0
  %or.cond.i = or i1 %i.dn, %i.dm
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h6d08f2533ff2d54eE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 range(i64 0, -9223372036854775808) %i.cq) ; 2 uses
  %i.do = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.do, label %_ZN4core5slice4sort6stable5merge5merge17h6d08f2533ff2d54eE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw [96 x i8], ptr %i.cu, i64 %i.cq ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cq, %i.cr  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dp, ptr %i.cu
  %i.dq = mul i64 %.sroa.0.0.i.i36, 96            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dq, i1 false), !alias.scope !133403
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %i.dq ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.ds = phi ptr [ %i.ei, %.preheader.i ], [ %i.dr, %bb.y ] ; 3 uses
  %i.dt = phi ptr [ %i.eh, %.preheader.i ], [ %i.dp, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dw, %.preheader.i ], [ %i.ci, %bb.y ]
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -96 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 -96 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -96 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.ds, i64 -88
  %.val.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !133402, !noalias !133404, !nonnull !57, !noundef !57
  %i.dy = getelementptr i8, ptr %i.ds, i64 -80
  %.val10.i.i = load i64, ptr %i.dy, align 8, !alias.scope !133402, !noalias !133404, !noundef !57 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dt, i64 -88
  %.val11.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !133401, !noalias !133405, !nonnull !57, !noundef !57
  %i.ea = getelementptr i8, ptr %i.dt, i64 -80
  %.val12.i.i = load i64, ptr %i.ea, align 8, !alias.scope !133401, !noalias !133405, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.eb = sub i64 %.val10.i.i, %.val12.i.i
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !133406, !noalias !133407 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.ee, i64 %i.eb, i64 %i.ed ; 2 uses
  %i.ef = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.ef, ptr %i.dv, ptr %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dw, ptr noundef nonnull align 8 dereferenceable(96) %..i.i, i64 96, i1 false), !alias.scope !133403, !noalias !133408
  %i.eg = zext i1 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [96 x i8], ptr %i.du, i64 %i.eg ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ei = getelementptr inbounds nuw [96 x i8], ptr %i.dv, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.ej = icmp eq ptr %i.eh, %i.cu
  %i.ek = icmp eq ptr %i.ei, %2
  %or.cond.i.i = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1e34eea207fe37c6E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.el = phi ptr [ %i.ez, %.lr.ph.i.i ], [ %i.cu, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ey, %.lr.ph.i.i ], [ %i.dp, %bb.y ] ; 4 uses
  %i.em = phi ptr [ %i.ex, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.en = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.en, align 8, !alias.scope !133401, !noalias !133409, !nonnull !57, !noundef !57
  %i.eo = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.eo, align 8, !alias.scope !133401, !noalias !133409, !noundef !57 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.em, i64 8
  %.val.i19.i = load ptr, ptr %i.ep, align 8, !alias.scope !133402, !noalias !133410, !nonnull !57, !noundef !57
  %i.eq = getelementptr i8, ptr %i.em, i64 16
  %.val7.i.i = load i64, ptr %i.eq, align 8, !alias.scope !133402, !noalias !133410, !noundef !57 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.er = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.es = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !133411, !noalias !133412 ; 2 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp eq i32 %i.es, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.eu, i64 %i.er, i64 %i.et ; 2 uses
  %i.ev = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ev, ptr %i.em, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.el, ptr noundef nonnull align 8 dereferenceable(96) %spec.select.i.i, i64 96, i1 false), !alias.scope !133403, !noalias !133413
  %i.ew = zext i1 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [96 x i8], ptr %i.em, i64 %i.ew ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.ey = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 96 ; 2 uses
  %i.fa = icmp ne ptr %i.ex, %i.dr
  %i.fb = icmp ne ptr %i.ey, %i.ci
  %or.cond.i23.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1e34eea207fe37c6E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1e34eea207fe37c6E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.eh, %.preheader.i ], [ %i.ez, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ei, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ex, %.lr.ph.i.i ] ; 2 uses
  %i.fc = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fd = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fe = sub nuw i64 %i.fc, %i.fd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fe, i1 false), !alias.scope !133403, !noalias !133414
  br label %_ZN4core5slice4sort6stable5merge5merge17h6d08f2533ff2d54eE.exit

_ZN4core5slice4sort6stable5merge5merge17h6d08f2533ff2d54eE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1e34eea207fe37c6E.exit.i"
  %i.ff = shl i64 %i.cs, 1
  %i.fg = or disjoint i64 %i.ff, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h79f33b69771b9286E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h79f33b69771b9286E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h6d08f2533ff2d54eE.exit
  %.sroa.0.0.i = phi i64 [ %i.fg, %_ZN4core5slice4sort6stable5merge5merge17h6d08f2533ff2d54eE.exit ], [ %i.da, %bb.t ] ; 2 uses
  %i.fh = icmp ugt i64 %i.cj, 1
  br i1 %i.fh, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.fi = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fj = lshr i64 %.sroa.023.0, 1
  %i.fk = add i64 %i.fj, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.fl = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fl, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fm = or i64 %1, 1
  %i.fn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fm, i1 true)
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 1
  %i.fq = xor i32 %i.fp, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2d18dbbff0f41884E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !133361
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0d2b79c63d3f1ffcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(32) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1ef433e09e89b8c8E.exit"
  %.sroa.0.0.ph100 = phi ptr [ %i.hy, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1ef433e09e89b8c8E.exit" ], [ %0, %bb.a ] ; 20 uses
  %.sroa.15.0.ph99 = phi i64 [ %i.hj, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1ef433e09e89b8c8E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph98 = phi i32 [ %i.et, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1ef433e09e89b8c8E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph97 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1ef433e09e89b8c8E.exit" ], [ %5, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph100, i64 24
  %i.e = ptrtoint ptr %.sroa.0.0.ph100 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph97, null
  %i.f = getelementptr i8, ptr %.sroa.026.0.ph97, i64 24
  %i.g = icmp eq i32 %.sroa.023.0.ph98, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph244

bb.b:                                             ; preds = %bb.ae
  %i.h = icmp eq i32 %i.et, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph244

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1ef433e09e89b8c8E.exit", %bb.ae, %bb.a
  %.sroa.0.0.ph.lcssa91 = phi ptr [ %.sroa.0.0.ph100, %bb.ae ], [ %0, %bb.a ], [ %i.hy, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1ef433e09e89b8c8E.exit" ] ; 16 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.ae ], [ %1, %bb.a ], [ %i.hj, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1ef433e09e89b8c8E.exit" ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133452)
  call void @llvm.experimental.noalias.scope.decl(metadata !133453)
  %i.i = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.i, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h07ee223b49078f35E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.k = icmp ult i64 %3, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %.sroa.15.0.lcssa, 1            ; 10 uses
  %i.m = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.m, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %.sroa.0.0.ph.lcssa91, i64 56
  %.val12.i.i = load i64, ptr %i.n, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.o = getelementptr i8, ptr %.sroa.0.0.ph.lcssa91, i64 24
  %.val13.i.i = load i64, ptr %i.o, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.p = icmp ult i64 %.val13.i.i, %.val12.i.i    ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.0.0.ph.lcssa91, i64 120
  %.val10.i.i = load i64, ptr %i.q, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.r = getelementptr i8, ptr %.sroa.0.0.ph.lcssa91, i64 88
  %.val11.i.i = load i64, ptr %i.r, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.s = icmp ult i64 %.val11.i.i, %.val10.i.i    ; 2 uses
  %i.t = zext i1 %i.p to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa91, i64 %i.t ; 3 uses
  %i.v = xor i1 %i.p, true
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa91, i64 %i.w ; 4 uses
  %i.y = select i1 %i.s, i64 3, i64 2
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa91, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.s, i64 2, i64 3
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa91, i64 %i.aa ; 3 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 24
  %.val8.i.i = load i64, ptr %i.ac, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.ad = getelementptr i8, ptr %i.u, i64 24
  %.val9.i.i = load i64, ptr %i.ad, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.ae = icmp ult i64 %.val9.i.i, %.val8.i.i     ; 3 uses
  %i.af = getelementptr i8, ptr %i.ab, i64 24
  %.val6.i.i = load i64, ptr %i.af, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.ag = getelementptr i8, ptr %i.x, i64 24
  %.val7.i.i = load i64, ptr %i.ag, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.ah = icmp ult i64 %.val7.i.i, %.val6.i.i     ; 3 uses
  %i.ai = select i1 %i.ae, ptr %i.z, ptr %i.u, !unpredictable !57
  %i.aj = select i1 %i.ah, ptr %i.x, ptr %i.ab, !unpredictable !57
  %i.ak = select i1 %i.ah, ptr %i.z, ptr %i.x, !unpredictable !57
  %i.al = select i1 %i.ae, ptr %i.u, ptr %i.ak, !unpredictable !57 ; 3 uses
  %i.am = select i1 %i.ae, ptr %i.x, ptr %i.z, !unpredictable !57
  %i.an = select i1 %i.ah, ptr %i.ab, ptr %i.am, !unpredictable !57 ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %.val.i.i = load i64, ptr %i.ao, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.ap = getelementptr i8, ptr %i.al, i64 24
  %.val5.i.i = load i64, ptr %i.ap, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.aq = icmp ult i64 %.val5.i.i, %.val.i.i      ; 2 uses
  %i.ar = select i1 %i.aq, ptr %i.an, ptr %i.al, !unpredictable !57
  %i.as = select i1 %i.aq, ptr %i.al, ptr %i.an, !unpredictable !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !alias.scope !133454
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !alias.scope !133454
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !alias.scope !133454
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !alias.scope !133454
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa91, i64 %i.l ; 8 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.l ; 4 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 56
  %.val12.i29.i = load i64, ptr %i.ay, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.az = getelementptr i8, ptr %i.aw, i64 24
  %.val13.i30.i = load i64, ptr %i.az, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.ba = icmp ult i64 %.val13.i30.i, %.val12.i29.i ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aw, i64 120
  %.val10.i31.i = load i64, ptr %i.bb, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.bc = getelementptr i8, ptr %i.aw, i64 88
  %.val11.i32.i = load i64, ptr %i.bc, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.bd = icmp ult i64 %.val11.i32.i, %.val10.i31.i ; 2 uses
  %i.be = zext i1 %i.ba to i64
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.be ; 3 uses
  %i.bg = xor i1 %i.ba, true
  %i.bh = zext i1 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.bh ; 4 uses
  %i.bj = select i1 %i.bd, i64 3, i64 2
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.bj ; 4 uses
  %i.bl = select i1 %i.bd, i64 2, i64 3
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.bl ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bk, i64 24
  %.val8.i33.i = load i64, ptr %i.bn, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.bo = getelementptr i8, ptr %i.bf, i64 24
  %.val9.i34.i = load i64, ptr %i.bo, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.bp = icmp ult i64 %.val9.i34.i, %.val8.i33.i ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bm, i64 24
  %.val6.i35.i = load i64, ptr %i.bq, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.br = getelementptr i8, ptr %i.bi, i64 24
  %.val7.i36.i = load i64, ptr %i.br, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.bs = icmp ult i64 %.val7.i36.i, %.val6.i35.i ; 3 uses
  %i.bt = select i1 %i.bp, ptr %i.bk, ptr %i.bf, !unpredictable !57
  %i.bu = select i1 %i.bs, ptr %i.bi, ptr %i.bm, !unpredictable !57
  %i.bv = select i1 %i.bs, ptr %i.bk, ptr %i.bi, !unpredictable !57
  %i.bw = select i1 %i.bp, ptr %i.bf, ptr %i.bv, !unpredictable !57 ; 3 uses
  %i.bx = select i1 %i.bp, ptr %i.bi, ptr %i.bk, !unpredictable !57
  %i.by = select i1 %i.bs, ptr %i.bm, ptr %i.bx, !unpredictable !57 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 24
  %.val.i37.i = load i64, ptr %i.bz, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.ca = getelementptr i8, ptr %i.bw, i64 24
  %.val5.i38.i = load i64, ptr %i.ca, align 8, !alias.scope !133452, !noalias !133453, !noundef !57
  %i.cb = icmp ult i64 %.val5.i38.i, %.val.i37.i  ; 2 uses
  %i.cc = select i1 %i.cb, ptr %i.by, ptr %i.bw, !unpredictable !57
  %i.cd = select i1 %i.cb, ptr %i.bw, ptr %i.by, !unpredictable !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !alias.scope !133454
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !alias.scope !133454
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 32, i1 false), !alias.scope !133454
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false), !alias.scope !133454
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.ph.lcssa91, i64 32, i1 false), !alias.scope !133454
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa91, i64 %i.l
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 32, i1 false), !alias.scope !133454
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 6 uses
  %i.cj = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.l ; 2 uses
  %i.ck = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.ck, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6db93e14a3c381ffE.exit.i, %bb.h
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa91, i64 %i.l
  %i.cm = getelementptr [32 x i8], ptr %2, i64 %i.l ; 6 uses
  %i.cn = icmp samesign ult i64 %.sroa.0.0.i, %i.cj
  br i1 %i.cn, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h6db93e14a3c381ffE.exit.1.i, %.lr.ph.preheader.1.i
end_hunk_10
begin_hunk_11_@_ZN5milli6update3new6merger20merge_and_send_rtree17h87d306452375d24bE:bb.a
          to label %.noexc265 unwind label %bb.b

.noexc265:                                        ; preds = %bb.y
  unreachable

"_ZN5rstar4node19ParentNode$LT$T$GT$8new_root17h5c8e5f2e0b387ca6E.exit": ; preds = %bb.x
  store i64 7, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx375 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.da, ptr %.sroa.4.0..sroa_idx375, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %.sroa.6376.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %.sroa.10.0..sroa_idx, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  store i64 0, ptr %i.dc, align 8
  br label %bb.z

bb.z:                                             ; preds = %"_ZN5rstar4node19ParentNode$LT$T$GT$8new_root17h5c8e5f2e0b387ca6E.exit", %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_ZN5milli5index5Index25geo_faceted_documents_ids17h7586c5863ec0a1dfE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.ae, %bb.ab
  %.sroa.0125.2 = phi i8 [ 1, %bb.ab ], [ 0, %bb.ae ]
  %.pn248 = phi { ptr, i32 } [ %i.dd, %bb.ab ], [ %.pn246, %bb.ae ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h6cceb103c711b3f6E"(ptr noalias noundef align 8 dereferenceable(80) %i.bf) #81
          to label %.body341 unwind label %bb.r

bb.ab:                                            ; preds = %bb.ad, %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  %i.de = load i64, ptr %i.bc, align 8, !range !71, !noundef !57
  %i.df = trunc nuw i64 %i.de to i1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br i1 %i.df, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.an)
          to label %bb.gq unwind label %bb.ab

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.an, %.thread433
  %.pn246 = phi { ptr, i32 } [ %i.fw, %bb.an ], [ %.pn244, %.thread433 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.bd) #81
  br label %bb.aa

.loopexit:                                        ; preds = %bb.gl
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %"_ZN110_$LT$milli..update..new..thread_local..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he49aa2b4e7ea7ce6E.exit", %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.af:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0346)
  call void @llvm.experimental.noalias.scope.decl(metadata !153666)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %.sroa.0346, ptr noundef nonnull align 8 dereferenceable(512) %1, i64 512, i1 false), !alias.scope !153667
  %.sroa.0346.512..sroa_idx1172 = getelementptr inbounds nuw i8, ptr %.sroa.0346, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0346.512..sroa_idx1172, i8 0, i64 16, i1 false), !alias.scope !153668, !noalias !153666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %i.bb, ptr noundef nonnull align 8 dereferenceable(528) %.sroa.0346, i64 528, i1 false)
  %.sroa.6347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 528 ; 2 uses
  store i64 1, ptr %.sroa.6347.0..sroa_idx, align 8
  %.sroa.7348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 536 ; 2 uses
  store i64 0, ptr %.sroa.7348.0..sroa_idx, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bb, i64 512 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bb, i64 504 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6356)
  call void @llvm.experimental.noalias.scope.decl(metadata !153669)
  call void @llvm.experimental.noalias.scope.decl(metadata !153670)
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !153671, !noalias !153672, !noundef !57
  %i.dk = load i64, ptr %i.dh, align 8, !alias.scope !153673, !noalias !153674, !noundef !57 ; 2 uses
  %i.dl = icmp eq i64 %i.dj, %i.dk
  br i1 %i.dl, label %"_ZN110_$LT$milli..update..new..thread_local..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he49aa2b4e7ea7ce6E.exit", label %.preheader1.i.i.i.lr.ph

.preheader1.i.i.i.lr.ph:                          ; preds = %bb.af
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bb, i64 520 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.5164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 5 uses
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aw, i64 56 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %.sroa.14.2..sroa.48.0..sroa_idx.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.sroa.15.2..sroa.48.0..sroa_idx.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  %.sroa.17.2..sroa.48.0..sroa_idx.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 15
  %.sroa.359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 7
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 15
  %.sroa.07.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.sroa.07.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 3 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 40 ; 3 uses
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 48 ; 2 uses
  %.sroa.812.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 64 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bf, i64 72 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.sroa.4.0..sroa_idx.i321 = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %.sroa.5.0..sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i323 = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 5 uses
  %.sroa.371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.at, i64 56 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %.sroa.14363.2..sroa.48.0..sroa_idx.i.i.i.i.i286.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.sroa.15364.2..sroa.48.0..sroa_idx.i.i.i.i.i286.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 7
  %.sroa.17365.2..sroa.48.0..sroa_idx.i.i.i.i.i286.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 15
  %.sroa.385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.sroa.386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 7
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 15
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 8 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.6.0..sroa_idx.i303 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.11.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.552.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.az, i64 72 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.az, i64 80 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.az, i64 88 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.az, i64 120 ; 2 uses
  br label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %.preheader1.i.i.i.lr.ph, %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hdad021418472378fE.exit"
  %i.ey = phi i64 [ %i.dk, %.preheader1.i.i.i.lr.ph ], [ %i.jb, %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hdad021418472378fE.exit" ]
  %.promoted.i.i.i352739 = phi i64 [ 1, %.preheader1.i.i.i.lr.ph ], [ %.promoted.i.i.i350, %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hdad021418472378fE.exit" ]
  %.promoted3.i.i.i354738 = phi i64 [ 0, %.preheader1.i.i.i.lr.ph ], [ %i.fh, %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hdad021418472378fE.exit" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !153675)
  call void @llvm.experimental.noalias.scope.decl(metadata !153676)
  call void @llvm.experimental.noalias.scope.decl(metadata !153677)
  call void @llvm.experimental.noalias.scope.decl(metadata !153678)
  %.promoted2.i.i.i = load i64, ptr %i.dm, align 8, !alias.scope !153679, !noalias !153680
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i.i.i, %.preheader1.i.i.i
  %.promoted.i.i.i350 = phi i64 [ %.promoted.i.i.i352739, %.preheader1.i.i.i ], [ %i.fd, %.loopexit.i.i.i ] ; 4 uses
  %.promoted4.i.i.i = phi i64 [ %.promoted3.i.i.i354738, %.preheader1.i.i.i ], [ 0, %.loopexit.i.i.i ] ; 3 uses
  %i.ez = phi i64 [ %.promoted2.i.i.i, %.preheader1.i.i.i ], [ %i.fe, %.loopexit.i.i.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !153681, !noalias !153682, !noundef !57 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %.loopexit.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.ag
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i350, i64 %.promoted4.i.i.i)
  %exitcond.not.i.i.i1053.not = icmp ult i64 %.promoted4.i.i.i, %.promoted.i.i.i350
  br i1 %exitcond.not.i.i.i1053.not, label %.lr.ph, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i, %bb.ag
  %i.fd = shl i64 %.promoted.i.i.i350, 1          ; 2 uses
  store i64 %i.fd, ptr %.sroa.6347.0..sroa_idx, align 8, !alias.scope !153679, !noalias !153680
  %i.fe = add nuw nsw i64 %i.ez, 1                ; 2 uses
  store i64 %i.fe, ptr %i.dm, align 8, !alias.scope !153679, !noalias !153680
  br label %bb.ag

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %exitcond.not.i.i.i = icmp eq i64 %i.fh, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader.i.i.i, %.preheader.i.i.i
  %i.ff = phi i64 [ %i.fh, %.preheader.i.i.i ], [ %.promoted4.i.i.i, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [144 x i8], ptr %i.fb, i64 %i.ff ; 3 uses
  %i.fh = add i64 %i.ff, 1                        ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 136
  %i.fj = load i8, ptr %i.fi, align 1, !range !74, !noalias !153683, !noundef !57
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ai, label %.preheader.i.i.i

.thread433:                                       ; preds = %bb.bu, %bb.bn, %bb.gp, %bb.ah
  %.pn244 = phi { ptr, i32 } [ %i.fl, %bb.ah ], [ %i.sv, %bb.gp ], [ %i.hd, %bb.bn ], [ %.pn, %bb.bu ]
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17heaa253cadc356a46E"(ptr noalias noundef align 8 dereferenceable(544) %i.bb) #81
          to label %bb.ae unwind label %bb.r

bb.ah:                                            ; preds = %bb.bq
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.thread433

bb.ai:                                            ; preds = %.lr.ph
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 136
  store i64 %i.fh, ptr %.sroa.7348.0..sroa_idx, align 8, !alias.scope !153679, !noalias !153680
  %i.fn = add i64 %i.ey, 1
  store i64 %i.fn, ptr %i.dh, align 8, !alias.scope !153679, !noalias !153680
  store i8 0, ptr %i.fm, align 1, !noalias !153684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6356, ptr noundef nonnull align 8 dereferenceable(136) %i.fg, i64 136, i1 false), !noalias !153675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ba, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6356, i64 136, i1 false)
  %i.fo = invoke noundef zeroext i1 @_ZN5milli20must_stop_processing18MustStopProcessing3get17h9b247b7d9f64713eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %5)
          to label %bb.bo unwind label %bb.gp

"_ZN110_$LT$milli..update..new..thread_local..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he49aa2b4e7ea7ce6E.exit": ; preds = %"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..geo..FrozenGeoExtractorData$GT$17hdad021418472378fE.exit", %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6356)
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$milli..update..new..thread_local..IntoIter$LT$core..cell..RefCell$LT$milli..update..new..extract..geo..GeoExtractorData$GT$$GT$$GT$17heaa253cadc356a46E"(ptr noalias noundef align 8 dereferenceable(544) %i.bb)
          to label %bb.aj unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %"_ZN110_$LT$milli..update..new..thread_local..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he49aa2b4e7ea7ce6E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke void @_ZN8tempfile4file8tempfile17hd1ca31f9e8d6d7a4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aq)
          to label %bb.ak unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.fp = load i32, ptr %i.aq, align 8, !range !99, !noundef !57
  %i.fq = trunc nuw i32 %i.fp to i1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !57
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !range !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br i1 %i.fq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i64 96, ptr %0, align 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fs, ptr %.sroa.4189.0..sroa_idx, align 8
  br label %bb.bi

bb.am:                                            ; preds = %bb.ak
  store i32 %i.fu, ptr %i.ar, align 4
  %i.fv = invoke fastcc noundef align 8 ptr @_ZN7bincode8internal14serialize_into17hff8e1236e0674cf5E(ptr noalias noundef align 4 dereferenceable(4) %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bf)
          to label %bb.ao unwind label %bb.an     ; 2 uses

bb.an:                                            ; preds = %bb.ay, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he36a0e2090d484d6E.exit", %bb.aw, %bb.at, %bb.aq, %bb.am
  %i.fw = landingpad { ptr, i32 }
          cleanup
  %.val261 = load i32, ptr %i.ar, align 4, !range !164, !noundef !57
  %i.fx = call noundef i32 @close(i32 noundef %.val261) #79 ; 0 uses
  br label %bb.ae

bb.ao:                                            ; preds = %bb.am
  %.not231.not = icmp eq ptr %i.fv, null
  br i1 %.not231.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 95, ptr %0, align 8
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775796, ptr %.sroa.4204.0..sroa_idx, align 8
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fv, ptr %.sroa.5205.0..sroa_idx, align 8
  br label %bb.bh

bb.aq:                                            ; preds = %bb.ao
  %i.fy = invoke noundef ptr @_ZN3std2fs4File8sync_all17h52a9e4b80cf34edbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ar)
          to label %bb.ar unwind label %bb.an     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %.not233 = icmp eq ptr %i.fy, null
  br i1 %.not233, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 96, ptr %0, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fy, ptr %.sroa.4209.0..sroa_idx, align 8
  br label %bb.bh

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 0, ptr %i.fz, align 8
  store i64 0, ptr %i.al, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i8 0, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.al, i64 26
  store i8 0, ptr %i.gb, align 2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.al, i64 27
  store i8 0, ptr %i.gc, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store i8 0, ptr %i.gd, align 4
  invoke fastcc void @_ZN7memmap211MmapOptions3map17h80ec8e6902688c42E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ar)
          to label %bb.au unwind label %bb.an

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ge = load i64, ptr %i.ap, align 8, !range !71, !noundef !57
  %i.gf = trunc nuw i64 %i.ge to i1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.gj = load i64, ptr %i.gi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br i1 %i.gf, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i64 96, ptr %0, align 8
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gh, ptr %.sroa.4212.0..sroa_idx, align 8
  br label %bb.bh

bb.aw:                                            ; preds = %bb.au
  %i.gk = invoke noundef zeroext i1 @_ZN5milli6update3new7channel9GeoSender9set_rtree17h65570844c5ebe649E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl, ptr noundef %i.gh, i64 noundef %i.gj)
          to label %bb.ax unwind label %bb.an

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.gk, label %bb.ay, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he36a0e2090d484d6E.exit", !prof !60

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2182, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2619) #80
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.ay
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he36a0e2090d484d6E.exit": ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_ZN5milli6update3new7channel9GeoSender15set_geo_faceted17h7a1a089ec358e4b3E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %bb.az unwind label %bb.an

bb.az:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he36a0e2090d484d6E.exit"
  %i.gl = load i64, ptr %i.ao, align 8, !range !111, !noundef !57 ; 2 uses
  %.not235 = icmp eq i64 %i.gl, 97
  br i1 %.not235, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.2219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.2219.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.4217.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  store i64 %i.gl, ptr %0, align 8
  br label %bb.bh

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  store i64 97, ptr %0, align 8
  %.val260 = load i32, ptr %i.ar, align 4, !range !164, !noundef !57
  %i.gm = call noundef i32 @close(i32 noundef %.val260) #79 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$rstar..rtree..RTree$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h6cceb103c711b3f6E"(ptr noalias noundef align 8 dereferenceable(80) %i.bf)
          to label %bb.bc unwind label %bb.b

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.gn = trunc nuw i8 %.sroa.0117.2 to i1
  br i1 %i.gn, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.bk)
          to label %.thread418 unwind label %.thread.thread

.thread:                                          ; preds = %bb.gz, %.body341
  %i.go = trunc nuw i8 %.sroa.0120.0 to i1
  br i1 %i.go, label %bb.ha, label %bb.bf

.thread.thread:                                   ; preds = %bb.gu, %bb.bd, %bb.gs
  %.sroa.0125.5 = phi i8 [ %.sroa.0125.9, %bb.gu ], [ 0, %bb.bd ], [ %.sroa.0125.9, %bb.gs ]
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha
end_hunk_11
begin_hunk_12_@_ZN5milli6update3new6merger20merge_and_send_rtree17h87d306452375d24bE:bb.a

bb.fe:                                            ; preds = %bb.fd
  %i.np = getelementptr i8, ptr %i.nm, i64 -64
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i321, align 8, !alias.scope !153839, !noalias !153837, !nonnull !57, !align !61, !noundef !57 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153841)
  %.sroa.0.0.copyload.i.i.i.i.i.i = load double, ptr %.val.i.i.i.i.i, align 8, !alias.scope !153842, !noalias !153843 ; 2 uses
  %.sroa.4.0..0.val.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i.i = load double, ptr %.sroa.4.0..0.val.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !153842, !noalias !153843 ; 2 uses
  %.sroa.5.0..0.val.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i.i.i.i = load double, ptr %.sroa.5.0..0.val.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !153842, !noalias !153843 ; 2 uses
  %i.nq = load double, ptr %i.np, align 8, !alias.scope !153844, !noalias !153845, !noundef !57
  %i.nr = fcmp ugt double %i.nq, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ns = getelementptr i8, ptr %i.nm, i64 -56
  %i.nt = load double, ptr %i.ns, align 8, !alias.scope !153841, !noalias !153840
  %i.nu = fcmp ugt double %i.nt, %.sroa.4.0.copyload.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = select i1 %i.nr, i1 true, i1 %i.nu
  %i.nv = getelementptr i8, ptr %i.nm, i64 -48
  %i.nw = load double, ptr %i.nv, align 8, !alias.scope !153841, !noalias !153840
  %i.nx = fcmp ugt double %i.nw, %.sroa.5.0.copyload.i.i.i.i.i.i
  %or.cond5.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.nx
  br i1 %or.cond5.i.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ny = getelementptr i8, ptr %i.nm, i64 -40
  %i.nz = load double, ptr %i.ny, align 8, !alias.scope !153846, !noalias !153847, !noundef !57
  %i.oa = fcmp ult double %i.nz, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ob = getelementptr i8, ptr %i.nm, i64 -32
  %i.oc = load double, ptr %i.ob, align 8, !alias.scope !153841, !noalias !153840
  %i.od = fcmp ult double %i.oc, %.sroa.4.0.copyload.i.i.i.i.i.i
  %or.cond8.i.i.i.i.i.i = select i1 %i.oa, i1 true, i1 %i.od
  br i1 %or.cond8.i.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i"

"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i": ; preds = %bb.ff
  %i.oe = getelementptr i8, ptr %i.nm, i64 -24
  %i.of = load double, ptr %i.oe, align 8, !alias.scope !153846, !noalias !153847, !noundef !57
  %i.og = fcmp ult double %i.of, %.sroa.5.0.copyload.i.i.i.i.i.i
  br i1 %i.og, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i", %bb.fd
  %i.oh = getelementptr i8, ptr %i.nm, i64 -72    ; 3 uses
  %i.oi = load i64, ptr %i.oh, align 8, !noalias !153840, !noundef !57 ; 5 uses
  %i.oj = icmp ult i64 %i.oi, 128102389400760776
  call void @llvm.assume(i1 %i.oj)
  %i.ok = icmp ult i64 %i.no, %i.oi
  br i1 %i.ok, label %.lr.ph.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.ol = getelementptr i8, ptr %i.nm, i64 -80
  %.pre.i.i.i.i.i = load ptr, ptr %i.ol, align 8, !noalias !153840 ; 3 uses
  br label %bb.fl

"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i": ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i", %.preheader.i.i.i.i.i, %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.i.i.i.i.i", %bb.ff, %bb.fe
  invoke fastcc void @"_ZN5rstar9algorithm7removal35DrainIterator$LT$T$C$R$C$Params$GT$8pop_node17hdb08a0c98b6b5eeeE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p, i1 noundef zeroext true)
          to label %.noexc.i2.i unwind label %bb.fz, !noalias !153848

.noexc.i2.i:                                      ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i"
  %i.om = load i64, ptr %i.i, align 8, !range !83, !noalias !153849, !noundef !57
  %.not13.i.i.i.i.i = icmp eq i64 %i.om, -9223372036854775808
  br i1 %.not13.i.i.i.i.i, label %bb.fk, label %bb.fg

bb.fg:                                            ; preds = %.noexc.i2.i
  %i.on = load i64, ptr %i.dz, align 8, !noalias !153849, !noundef !57
  %i.oo = load ptr, ptr %.sroa.5.0..sroa_idx.i322, align 8, !alias.scope !153839, !noalias !153837, !nonnull !57, !align !61, !noundef !57 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153850)
  invoke fastcc void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h45aa8a1e5909e72aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.oo)
          to label %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i" unwind label %bb.fh, !noalias !153840, !inline_history !37

bb.fh:                                            ; preds = %bb.fg
  %i.op = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.oo, align 8, !range !56, !alias.scope !153851, !noalias !153840, !noundef !57 ; 2 uses
  %i.oq = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.oq, label %.body.i.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.or, align 8, !alias.scope !153851, !noalias !153840, !nonnull !57, !noundef !57
  %i.os = mul nuw i64 %.val2.i.i.i.i.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %i.os, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153852, !inline_history !38
  br label %.body.i.i.i.i.i

"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i": ; preds = %bb.fg
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.oo, align 8, !range !56, !alias.scope !153851, !noalias !153840, !noundef !57 ; 2 uses
  %i.ot = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ot, label %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i", label %bb.fj

bb.fj:                                            ; preds = %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i"
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ou, align 8, !alias.scope !153851, !noalias !153840, !nonnull !57, !noundef !57
  %i.ov = mul nuw i64 %.val.i.i.i.i.i.i.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.ov, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !153852, !inline_history !38
  br label %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i"

bb.fk:                                            ; preds = %.noexc.i2.i
  %.pre79.i.i.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !153839, !noalias !153837
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.fx, %bb.fk
  %i.ow = phi i64 [ %.pre79.i.i.i.i.i, %bb.fk ], [ %i.qx, %bb.fx ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ow, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i324, label %bb.fd

.body.i.i.i.i.i:                                  ; preds = %bb.fi, %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.oo, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !153840
  br label %.body.i1.i

"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i": ; preds = %bb.fj, %"_ZN4core3ptr194drop_in_place$LT$alloc..vec..Vec$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$$GT$17h48dc28e0e244cd4eE.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.oo, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !153840
  %i.ox = load i64, ptr %.sroa.6.0..sroa_idx.i323, align 8, !alias.scope !153839, !noalias !153837, !noundef !57
  %i.oy = load ptr, ptr %.sroa.5.0..sroa_idx.i322, align 8, !alias.scope !153839, !noalias !153837, !nonnull !57, !align !61, !noundef !57
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 72
  %i.pa = sub i64 %i.ox, %i.on
  store i64 %i.pa, ptr %i.oz, align 8, !noalias !153840
  br label %.loopexit.i.i.i324

bb.fl:                                            ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %i.pb = phi i64 [ %i.no, %.lr.ph.i.i.i.i.i ], [ %i.py, %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i" ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [72 x i8], ptr %.pre.i.i.i.i.i, i64 %i.pb ; 11 uses
  %i.pd = load i64, ptr %i.pc, align 8, !range !83, !noalias !153840, !noundef !57
  %.not14.i.i.i.i.i = icmp eq i64 %i.pd, -9223372036854775808
  br i1 %.not14.i.i.i.i.i, label %.preheader.split.i.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i": ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !153849
  call void @llvm.experimental.noalias.scope.decl(metadata !153853)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.pc, i64 72, i1 false), !noalias !153854
  %i.pe = add nsw i64 %i.oi, -1                   ; 2 uses
  %i.pf = getelementptr inbounds nuw [72 x i8], ptr %.pre.i.i.i.i.i, i64 %i.pe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pc, ptr noundef nonnull align 8 dereferenceable(72) %i.pf, i64 72, i1 false), !noalias !153855
  store i64 %i.pe, ptr %i.oh, align 8, !alias.scope !153853, !noalias !153856
  %i.pg = load i64, ptr %i.l, align 8, !range !83, !noalias !153849, !noundef !57
  %.not17.i.i.i.i.i = icmp eq i64 %i.pg, -9223372036854775808
  br i1 %.not17.i.i.i.i.i, label %bb.fr, label %bb.ft, !prof !60

.preheader.split.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.fl
  %.val21.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i321, align 8, !alias.scope !153839, !noalias !153837, !nonnull !57, !align !61, !noundef !57 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153857)
  call void @llvm.experimental.noalias.scope.decl(metadata !153858)
  call void @llvm.experimental.noalias.scope.decl(metadata !153859)
  call void @llvm.experimental.noalias.scope.decl(metadata !153860)
  call void @llvm.experimental.noalias.scope.decl(metadata !153861)
  call void @llvm.experimental.noalias.scope.decl(metadata !153862)
  call void @llvm.experimental.noalias.scope.decl(metadata !153863)
  call void @llvm.experimental.noalias.scope.decl(metadata !153864)
  call void @llvm.experimental.noalias.scope.decl(metadata !153865)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ph, align 8, !alias.scope !153866, !noalias !153867, !noundef !57
  %.val6.i.i.i.i.i.i.i.i.i.i = load double, ptr %.val21.i.i.i.i.i, align 8, !alias.scope !153868, !noalias !153869, !noundef !57
  %i.pi = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i
  br i1 %i.pi, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.1, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.1:           ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pj, align 8, !alias.scope !153866, !noalias !153867, !noundef !57
  %.val6.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pk, align 8, !alias.scope !153868, !noalias !153869, !noundef !57
  %i.pl = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.1, %.val6.i.i.i.i.i.i.i.i.i.i.1
  br i1 %i.pl, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.2, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.2:           ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.1
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pn = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.pm, align 8, !alias.scope !153866, !noalias !153867, !noundef !57
  %.val6.i.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.pn, align 8, !alias.scope !153868, !noalias !153869, !noundef !57
  %i.po = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.2, %.val6.i.i.i.i.i.i.i.i.i.i.2
  br i1 %i.po, label %bb.fm, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

bb.fm:                                            ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.2
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pq = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !153870)
  call void @llvm.experimental.noalias.scope.decl(metadata !153871)
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.pp, align 8, !alias.scope !153872, !noalias !153873, !noundef !57
  %.val1.i.i.i.i.i.i.i.i = load i32, ptr %i.pq, align 8, !alias.scope !153874, !noalias !153875, !noundef !57
  %i.pr = icmp eq i32 %.val.i.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.pr, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.fm
  call void @llvm.experimental.noalias.scope.decl(metadata !153876)
  call void @llvm.experimental.noalias.scope.decl(metadata !153877)
  call void @llvm.experimental.noalias.scope.decl(metadata !153878)
  call void @llvm.experimental.noalias.scope.decl(metadata !153879)
  call void @llvm.experimental.noalias.scope.decl(metadata !153880)
  call void @llvm.experimental.noalias.scope.decl(metadata !153881)
  %i.ps = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pc, i64 40
  %.val.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.pt, align 8, !alias.scope !153882, !noalias !153883, !noundef !57
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ps, align 8, !alias.scope !153884, !noalias !153885, !noundef !57
  %i.pu = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.pu, label %.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1:         ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pc, i64 48
  %i.pw = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pv, align 8, !alias.scope !153882, !noalias !153883, !noundef !57
  %.val6.i.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.pw, align 8, !alias.scope !153884, !noalias !153885, !noundef !57
  %i.px = fcmp oeq double %.val.i.i.i.i.i.i.i.i.i.i.i.1, %.val6.i.i.i.i.i.i.i.i.i.i.i.1
  br i1 %i.px, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i", label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i"

"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$18should_unpack_leaf17h73894b80a1e47d2fE.exit.thread.i.i.i.i.i": ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.i, %.preheader.split.i.i.i.i.i.i.i.i.i.i, %.preheader.split.i.i.i.i.i.i.i.i.i.i.1, %.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1, %bb.fm, %.preheader.split.i.i.i.i.i.i.i.i.i.i.2
  %i.py = add nuw nsw i64 %i.pb, 1                ; 3 uses
  store i64 %i.py, ptr %i.nn, align 8, !noalias !153840
  %exitcond.not.i.i.i.i = icmp eq i64 %i.py, %i.oi
  br i1 %exitcond.not.i.i.i.i, label %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i", label %bb.fl

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i": ; preds = %.preheader.split.i.i.i.i.i.i.i.i.i.i.i.1
  %i.pz = getelementptr i8, ptr %i.nm, i64 -8     ; 2 uses
  %i.qa = load i64, ptr %i.pz, align 8, !noalias !153840, !noundef !57
  %i.qb = add i64 %i.qa, 1
  store i64 %i.qb, ptr %i.pz, align 8, !noalias !153840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !153849
  call void @llvm.experimental.noalias.scope.decl(metadata !153886)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.pc, i64 72, i1 false), !noalias !153887
  %i.qc = add nsw i64 %i.oi, -1                   ; 2 uses
  %i.qd = getelementptr inbounds nuw [72 x i8], ptr %.pre.i.i.i.i.i, i64 %i.qc
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pc, ptr noundef nonnull align 8 dereferenceable(72) %i.qd, i64 72, i1 false), !noalias !153888
  store i64 %i.qc, ptr %i.oh, align 8, !alias.scope !153886, !noalias !153889
  %i.qe = load i64, ptr %i.j, align 8, !range !83, !noalias !153849, !noundef !57
  %.not15.i.i.i.i.i = icmp eq i64 %i.qe, -9223372036854775808
  br i1 %.not15.i.i.i.i.i, label %bb.fy, label %bb.fn, !prof !58

bb.fn:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !153849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !153849
  store ptr @413, ptr %i.e, align 8, !noalias !153849
  %.sroa.48.0..sroa_idx.i.i.i.i.i325 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.48.0..sroa_idx.i.i.i.i.i325, align 8, !noalias !153849
  store ptr @415, ptr %i.f, align 8, !noalias !153849
  %i.qf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.qf, align 8, !noalias !153849
  %i.qg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.qg, align 8, !noalias !153849
  %i.qh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.qh, align 8, !noalias !153849
  %i.qi = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.qi, align 8, !noalias !153849
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @416) #80
          to label %bb.fo unwind label %bb.fp, !noalias !153840

bb.fo:                                            ; preds = %bb.fr, %bb.fn
  unreachable

bb.fp:                                            ; preds = %bb.fn
  %i.qj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef align 8 dereferenceable(72) %i.j) #81
          to label %.body.i1.i unwind label %bb.fq, !noalias !153840

bb.fq:                                            ; preds = %bb.fs, %bb.fp
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153840
  unreachable

bb.fr:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !153849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !153849
  store ptr @418, ptr %i.g, align 8, !noalias !153849
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !noalias !153849
  store ptr @415, ptr %i.h, align 8, !noalias !153849
  %i.ql = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.ql, align 8, !noalias !153849
  %i.qm = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.qm, align 8, !noalias !153849
  %i.qn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.qn, align 8, !noalias !153849
  %i.qo = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %i.qo, align 8, !noalias !153849
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @419) #80
          to label %bb.fo unwind label %bb.fs, !noalias !153840

bb.fs:                                            ; preds = %bb.fr
  %i.qp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef align 8 dereferenceable(72) %i.l) #81
          to label %.body.i1.i unwind label %bb.fq, !noalias !153840

bb.ft:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !153849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !153849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !153849
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false), !noalias !153849
  %i.qq = load i64, ptr %i.dw, align 8, !alias.scope !153890, !noalias !153891, !noundef !57 ; 3 uses
  %i.qr = load i64, ptr %i.p, align 8, !range !56, !alias.scope !153890, !noalias !153891, !noundef !57
  %i.qs = icmp eq i64 %i.qq, %i.qr
  br i1 %i.qs, label %bb.fu, label %bb.fx

bb.fu:                                            ; preds = %bb.ft
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4a41d8201b760b5bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @420)
          to label %bb.fx unwind label %bb.fv, !noalias !153892

bb.fv:                                            ; preds = %bb.fu
  %i.qt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr196drop_in_place$LT$$LP$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$usize$C$usize$RP$$GT$17h14d326ef49847d8aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.k) #81
          to label %.body.i1.i unwind label %bb.fw, !noalias !153840

bb.fw:                                            ; preds = %bb.fv
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153892
  unreachable

bb.fx:                                            ; preds = %bb.fu, %bb.ft
  %i.qv = load ptr, ptr %i.dx, align 8, !alias.scope !153890, !noalias !153891, !nonnull !57, !noundef !57
  %i.qw = getelementptr inbounds nuw [88 x i8], ptr %i.qv, i64 %i.qq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.qw, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.k, i64 88, i1 false), !noalias !153840
  %i.qx = add i64 %i.qq, 1                        ; 2 uses
  store i64 %i.qx, ptr %i.dw, align 8, !alias.scope !153890, !noalias !153891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !153849
  br label %.backedge.i.i.i.i.i

bb.fy:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17ha79650f378e3813cE.exit24.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !153849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !153835
  store i64 0, ptr %i.dv, align 8, !alias.scope !153893, !noalias !153894
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"

.loopexit.i.i.i324:                               ; preds = %.backedge.i.i.i.i.i, %"_ZN4core3ptr172drop_in_place$LT$rstar..node..ParentNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17hd821175ffc865895E.exit.i.i.i.i.i", %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !153835
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"

bb.fz:                                            ; preds = %"_ZN154_$LT$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$T$GT$$u20$as$u20$rstar..algorithm..selection_functions..SelectionFunction$LT$T$GT$$GT$20should_unpack_parent17h475ef73029043ed3E.exit.thread.i.i.i.i.i"
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.body.i1.i:                                       ; preds = %bb.fz, %bb.fv, %bb.fs, %bb.fp, %.body.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.qy, %bb.fz ], [ %i.qt, %bb.fv ], [ %i.op, %.body.i.i.i.i.i ], [ %i.qj, %bb.fp ], [ %i.qp, %bb.fs ]
  invoke fastcc void @"_ZN4core3ptr450drop_in_place$LT$core..iter..adapters..take..Take$LT$rstar..algorithm..removal..DrainIterator$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$C$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$rstar..params..DefaultParams$GT$$GT$$GT$17hcb66315d368b958cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p) #81
          to label %.body329 unwind label %bb.ga, !noalias !153848

bb.ga:                                            ; preds = %.body.i1.i
  %i.qz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !153848
  unreachable

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i": ; preds = %.loopexit.i.i.i324, %bb.fy
  invoke fastcc void @"_ZN4core3ptr450drop_in_place$LT$core..iter..adapters..take..Take$LT$rstar..algorithm..removal..DrainIterator$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$C$rstar..algorithm..selection_functions..SelectEqualsFunction$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$C$rstar..params..DefaultParams$GT$$GT$$GT$17hcb66315d368b958cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p)
          to label %bb.gb unwind label %.loopexit595

bb.gb:                                            ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h334ec52f3d78ae55E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !153818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !153895)
  %i.ra = lshr i32 %.sroa.11.sroa.0.0.insert.insert498, 16
  %i.rb = trunc nuw i32 %i.ra to i16              ; 3 uses
  %i.rc = trunc i32 %.sroa.11.sroa.0.0.insert.insert498 to i16
  %i.rd = load ptr, ptr %i.ea, align 8, !alias.scope !153895, !nonnull !57, !noundef !57 ; 2 uses
  %i.re = load i64, ptr %i.eb, align 8, !alias.scope !153895, !noundef !57 ; 8 uses
  switch i64 %i.re, label %.lr.ph.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.gb
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.gb ], [ %i.rp, %.lr.ph.i.i.i ] ; 4 uses
  %i.rf = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.re
  call void @llvm.assume(i1 %i.rf)
  %i.rg = getelementptr inbounds nuw [32 x i8], ptr %i.rd, i64 %.sroa.05.0.lcssa.i.i.i ; 7 uses
  %i.rh = getelementptr i8, ptr %i.rg, i64 24
  %.val20.i.i.i = load i16, ptr %i.rh, align 8, !alias.scope !153896, !noalias !153897, !noundef !57 ; 2 uses
  %i.ri = icmp eq i16 %.val20.i.i.i, %i.rb
  br i1 %i.ri, label %bb.gd, label %bb.gc

.lr.ph.i.i.i:                                     ; preds = %bb.gb, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.rq, %.lr.ph.i.i.i ], [ %i.re, %bb.gb ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.rp, %.lr.ph.i.i.i ], [ 0, %bb.gb ] ; 2 uses
  %i.rj = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.rk = add i64 %i.rj, %.sroa.05.024.i.i.i      ; 3 uses
  %i.rl = icmp ult i64 %i.rk, %i.re
  call void @llvm.assume(i1 %i.rl)
  %i.rm = getelementptr inbounds nuw [32 x i8], ptr %i.rd, i64 %i.rk
  %i.rn = getelementptr i8, ptr %i.rm, i64 24
  %.val22.i.i.i = load i16, ptr %i.rn, align 8, !alias.scope !153896, !noalias !153897, !noundef !57
  %i.ro = icmp ugt i16 %.val22.i.i.i, %i.rb
  %i.rp = select i1 %i.ro, i64 %.sroa.05.024.i.i.i, i64 %i.rk, !unpredictable !57 ; 2 uses
  %i.rq = sub nuw i64 %.sroa.01.025.i.i.i, %i.rj  ; 2 uses
  %i.rr = icmp ugt i64 %i.rq, 1
  br i1 %i.rr, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.gc:                                            ; preds = %._crit_edge.i.i.i
  %i.rs = icmp ult i16 %.val20.i.i.i, %i.rb
  %i.rt = zext i1 %i.rs to i64
  %i.ru = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.rt
  %i.rv = icmp ule i64 %i.ru, %i.re
  call void @llvm.assume(i1 %i.rv)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.gd:                                            ; preds = %._crit_edge.i.i.i
  %i.rw = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.rg, i16 noundef %i.rc)
          to label %.noexc334 unwind label %.loopexit595

.noexc334:                                        ; preds = %bb.gd
  br i1 %i.rw, label %bb.ge, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit"

bb.ge:                                            ; preds = %.noexc334
  %i.rx = load i64, ptr %i.rg, align 8, !range !83, !noalias !153895, !noundef !57 ; 3 uses
  %i.ry = icmp eq i64 %i.rx, -9223372036854775808
end_hunk_12
begin_hunk_13_@_ZN5milli6update3new7indexer7extract11extract_all17h1568aed28bab08d9E:bb.a
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 48
  store i64 1, ptr %i.mk, align 8
  %.sroa.4364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4364.0..sroa_idx, align 8
  %.sroa.5365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i64 0, ptr %.sroa.5365.0..sroa_idx, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store ptr %i.yy, ptr %i.yz, align 8
  %i.za = load i64, ptr %3, align 8, !range !72, !noundef !57
  %.not716 = icmp eq i64 %i.za, 2
  br i1 %.not716, label %bb.de, label %bb.dd

bb.cv:                                            ; preds = %.thread1404, %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ml, ptr noundef nonnull align 8 dereferenceable(40) %i.mj, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mj)
  br label %bb.cz

bb.cw:                                            ; preds = %bb.cx
  %i.zb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.mj) #81
          to label %.thread1365 unwind label %bb.p

.thread1404:                                      ; preds = %bb.cq, %bb.cs, %bb.ct, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mj)
  %i.zc = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17ha569ea49cb526988E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  store i64 2, ptr %i.mj, align 8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  store ptr %i.zc, ptr %i.zd, align 8
  %i.ze = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.zf = icmp eq i8 %i.ze, 0
  br i1 %i.zf, label %bb.cx, label %bb.cv

bb.cx:                                            ; preds = %.thread1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mi)
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 48
  store i64 1, ptr %i.mi, align 8
  %.sroa.4370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4370.0..sroa_idx, align 8
  %.sroa.5371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store i64 0, ptr %.sroa.5371.0..sroa_idx, align 8
  %i.zh = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  store ptr %i.zg, ptr %i.zh, align 8
  %i.zi = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mi)
          to label %bb.cy unwind label %bb.cw     ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mi)
  br label %bb.cv

bb.cz:                                            ; preds = %bb.df, %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !160567)
  %i.zj = load i64, ptr %i.ml, align 8, !range !72, !alias.scope !160567, !noundef !57
  %.not.i963 = icmp eq i64 %i.zj, 2
  br i1 %.not.i963, label %.noexc967, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ml, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.zk)
          to label %.noexc967 unwind label %bb.dh

.noexc967:                                        ; preds = %bb.cz, %bb.da
  %i.zl = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.zm = icmp eq i8 %i.zl, 0
  br i1 %i.zm, label %bb.db, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969

bb.db:                                            ; preds = %.noexc967
  %i.zn = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  %i.zo = load ptr, ptr %i.zn, align 8, !alias.scope !160567, !align !61, !noundef !57 ; 3 uses
  %.not4.i964 = icmp eq ptr %i.zo, null
  br i1 %.not4.i964, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz), !noalias !160567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !160567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !noalias !160567
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8, !nonnull !57, !align !64, !noundef !57
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  %i.zs = load i64, ptr %i.zr, align 8, !noundef !57
  store ptr %i.zq, ptr %i.fx, align 8, !noalias !160567
  %i.zt = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.zs, ptr %i.zt, align 8, !noalias !160567
  store ptr %i.fx, ptr %i.fy, align 8, !noalias !160567
  %.sroa.43.0..sroa_idx.i965 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i965, align 8, !noalias !160567
  store ptr @4688, ptr %i.fz, align 8, !noalias !160567
  %i.zu = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 2, ptr %i.zu, align 8, !noalias !160567
  %i.zv = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  store ptr null, ptr %i.zv, align 8, !noalias !160567
  %i.zw = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store ptr %i.fy, ptr %i.zw, align 8, !noalias !160567
  %i.zx = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store i64 1, ptr %i.zx, align 8, !noalias !160567
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ml, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.fz)
          to label %.noexc968 unwind label %bb.dh

.noexc968:                                        ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !noalias !160567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !160567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !160567
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969

bb.dd:                                            ; preds = %bb.cu
  %i.zy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.zz = load i64, ptr %i.zy, align 8, !range !90, !noundef !57
  br label %bb.de

bb.de:                                            ; preds = %bb.cu, %bb.dd
  %.sroa.0366.0 = phi i64 [ %i.zz, %bb.dd ], [ 0, %bb.cu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic)
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i64 %.sroa.0366.0, ptr %i.aaa, align 8
  store ptr %i.yx, ptr %i.ic, align 8
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %i.mk, ptr %i.aab, align 8
  invoke fastcc void @_ZN12tracing_core10dispatcher11get_default17h0487c2a28cd0d0bdE(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ml, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ic)
          to label %bb.df unwind label %.split1373.thread

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mk)
  br label %bb.cz

bb.dg:                                            ; preds = %bb.dj, %bb.dh
  %.sroa.0330.2 = phi i1 [ false, %bb.dj ], [ %.sroa.0330.3, %bb.dh ]
  %.pn848.pn.pn.pn = phi { ptr, i32 } [ %.pn848.pn.pn, %bb.dj ], [ %i.aac, %bb.dh ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ml) #81
          to label %bb.ac unwind label %bb.p

bb.dh:                                            ; preds = %bb.dc, %bb.dy, %bb.dw, %bb.da
  %.sroa.0330.3 = phi i1 [ false, %bb.dy ], [ true, %bb.dc ], [ true, %bb.da ], [ false, %bb.dw ]
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969: ; preds = %.noexc968, %bb.db, %.noexc967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.mh, ptr noundef nonnull align 8 dereferenceable(512) %i.mq, i64 512, i1 false)
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 512 ; 2 uses
  %.sroa.5390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 520
  %.sroa.6391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 528 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4389.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.6391.0..sroa_idx, align 8
  %.sroa.7392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 536 ; 2 uses
  store i64 0, ptr %.sroa.7392.0..sroa_idx, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.mh, i64 504
  %i.aae = load i64, ptr %i.aad, align 8, !alias.scope !160568, !noalias !160569, !noundef !57 ; 2 uses
  %i.aaf = icmp eq i64 %i.aae, 0
  br i1 %i.aaf, label %._crit_edge, label %.preheader1.i.i.preheader.lr.ph

.preheader1.i.i.preheader.lr.ph:                  ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969
  %i.aag = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %.sroa.41283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mg, i64 56
  %.sroa.51285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mg, i64 72
  %.sroa.41274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %.sroa.51275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %.sroa.61276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 24 ; 3 uses
  %.sroa.71277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 32 ; 3 uses
  %.sroa.81278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  %.sroa.91279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 48 ; 2 uses
  %.sroa.101281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 56 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aai = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 2 uses
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 24 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 32 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %.sroa.42.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.preheader1.i.i.preheader

.preheader1.i.i.preheader:                        ; preds = %.preheader1.i.i.preheader.lr.ph, %bb.agn
  %i.aaj = phi i64 [ 0, %.preheader1.i.i.preheader.lr.ph ], [ %i.abb, %bb.agn ]
  %i.aak = phi i64 [ 0, %.preheader1.i.i.preheader.lr.ph ], [ %i.aao, %bb.agn ]
  %i.aal = phi i64 [ 1, %.preheader1.i.i.preheader.lr.ph ], [ %i.aan, %bb.agn ]
  %i.aam = phi i64 [ 0, %.preheader1.i.i.preheader.lr.ph ], [ %i.aaw, %bb.agn ]
  call void @llvm.experimental.noalias.scope.decl(metadata !160570)
  call void @llvm.experimental.noalias.scope.decl(metadata !160571)
  call void @llvm.experimental.noalias.scope.decl(metadata !160572)
  br label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %.preheader1.i.i.preheader, %.loopexit.i.i
  %i.aan = phi i64 [ %i.aas, %.loopexit.i.i ], [ %i.aal, %.preheader1.i.i.preheader ] ; 4 uses
  %i.aao = phi i64 [ %i.aat, %.loopexit.i.i ], [ %i.aak, %.preheader1.i.i.preheader ] ; 3 uses
  %.promoted4.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %i.aam, %.preheader1.i.i.preheader ] ; 3 uses
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.aao
  %i.aaq = load ptr, ptr %i.aap, align 8, !alias.scope !160568, !noalias !160569, !noundef !57 ; 2 uses
  %i.aar = icmp eq ptr %i.aaq, null
  br i1 %i.aar, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader1.i.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.aan, i64 %.promoted4.i.i)
  %exitcond.not.i.i2124.not = icmp ult i64 %.promoted4.i.i, %i.aan
  br i1 %exitcond.not.i.i2124.not, label %.lr.ph2125, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.preheader.preheader.i.i, %.preheader1.i.i
  %i.aas = shl i64 %i.aan, 1                      ; 2 uses
  store i64 %i.aas, ptr %.sroa.6391.0..sroa_idx, align 8, !alias.scope !160573, !noalias !160574
  %i.aat = add nuw nsw i64 %i.aao, 1              ; 2 uses
  store i64 %i.aat, ptr %.sroa.5390.0..sroa_idx, align 8, !alias.scope !160573, !noalias !160574
  br label %.preheader1.i.i

.preheader.i.i:                                   ; preds = %.lr.ph2125
  %exitcond.not.i.i = icmp eq i64 %i.aaw, %umax.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph2125

.lr.ph2125:                                       ; preds = %.preheader.preheader.i.i, %.preheader.i.i
  %i.aau = phi i64 [ %i.aaw, %.preheader.i.i ], [ %.promoted4.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %i.aav = getelementptr inbounds nuw [104 x i8], ptr %i.aaq, i64 %i.aau ; 3 uses
  %i.aaw = add i64 %i.aau, 1                      ; 4 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 96
  %i.aay = load i8, ptr %i.aax, align 1, !range !74, !noalias !160575, !noundef !57
  %i.aaz = trunc nuw i8 %i.aay to i1
  br i1 %i.aaz, label %bb.di, label %.preheader.i.i

bb.di:                                            ; preds = %.lr.ph2125
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aav, i64 96
  store i64 %i.aaw, ptr %.sroa.7392.0..sroa_idx, align 8, !alias.scope !160573, !noalias !160574
  %i.abb = add nuw i64 %i.aaj, 1                  ; 3 uses
  store i64 %i.abb, ptr %.sroa.4389.0..sroa_idx, align 8, !alias.scope !160573, !noalias !160574
  store i8 0, ptr %i.aba, align 1, !noalias !160576
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.hr, ptr noundef nonnull align 8 dereferenceable(88) %i.abc, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.mg, ptr noundef nonnull align 8 dereferenceable(88) %i.hr, i64 88, i1 false)
  %.sroa.01282.0.copyload = load ptr, ptr %i.aag, align 8, !nonnull !57, !noundef !57 ; 6 uses
  %.sroa.41283.0.copyload = load i64, ptr %.sroa.41283.0..sroa_idx, align 8 ; 5 uses
  %.sroa.51285.0.copyload = load i64, ptr %.sroa.51285.0..sroa_idx, align 8 ; 3 uses
  %.val24.i.i.i = load <16 x i8>, ptr %.sroa.01282.0.copyload, align 16, !noalias !160577
  %i.abd = icmp eq i64 %.sroa.41283.0.copyload, 0 ; 2 uses
  br i1 %i.abd, label %bb.agc, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i: ; preds = %bb.di
  %i.abe = icmp slt i64 %.sroa.41283.0.copyload, 576460752303423487
  call void @llvm.assume(i1 %i.abe)
  %i.abf = shl i64 %.sroa.41283.0.copyload, 5     ; 2 uses
  %i.abg = add i64 %i.abf, 32                     ; 2 uses
  %i.abh = add nsw i64 %.sroa.41283.0.copyload, 17
  %i.abi = add i64 %i.abh, %i.abg                 ; 3 uses
  %i.abj = icmp uge i64 %i.abi, %i.abg
  call void @llvm.assume(i1 %i.abj)
  %i.abk = icmp ult i64 %i.abi, 9223372036854775793
  call void @llvm.assume(i1 %i.abk)
  %i.abl = sub nuw nsw i64 -32, %i.abf
  %i.abm = getelementptr inbounds i8, ptr %.sroa.01282.0.copyload, i64 %i.abl
  br label %bb.agc

bb.dj:                                            ; preds = %bb.aga, %bb.dk
  %.pn848.pn.pn = phi { ptr, i32 } [ %.pn848, %bb.aga ], [ %i.abn, %bb.dk ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ml) #81
          to label %bb.dg unwind label %bb.p

bb.dk:                                            ; preds = %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hb8e7b990f523fe2eE.exit.i.i.i.i.i.i", %bb.dr
  %i.abn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

._crit_edge:                                      ; preds = %bb.agn, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969
  call fastcc void @"_ZN4core3ptr252drop_in_place$LT$thread_local..ThreadLocal$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17h17ef31f0d34629e3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(544) %i.mh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mh)
  call void @llvm.experimental.noalias.scope.decl(metadata !160578)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !160578
  call void @llvm.experimental.noalias.scope.decl(metadata !160579)
  call void @llvm.experimental.noalias.scope.decl(metadata !160580)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !160581)
  %i.abo = load ptr, ptr %8, align 8, !alias.scope !160582, !noalias !160583, !noundef !57 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.abo, null
  br i1 %.not.i.i.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h1520ee43c4dc2089E.exit.i", label %bb.dl

bb.dl:                                            ; preds = %._crit_edge
  %i.abp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.abq = load i64, ptr %i.abp, align 8, !alias.scope !160582, !noalias !160583, !noundef !57 ; 5 uses
  %i.abr = icmp eq i64 %i.abq, 0
  br i1 %i.abr, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader"

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader": ; preds = %bb.dl
  %xtraiter = and i64 %i.abq, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol"

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol"
  %.sroa.01.0.i17.i.i.i.prol = phi ptr [ %i.abt, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ], [ %i.abo, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ]
  %.sroa.5.0.i16.i.i.i.prol = phi i64 [ %i.abu, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ], [ %i.abq, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ]
  %prol.iter = phi i64 [ %prol.iter.next, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ], [ 0, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ]
  %i.abs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i17.i.i.i.prol, i64 368
  %i.abt = load ptr, ptr %i.abs, align 8, !noalias !160584, !nonnull !57, !noundef !57 ; 3 uses
  %i.abu = add i64 %.sroa.5.0.i16.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol", !llvm.loop !160060

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader"
  %.lcssa2161.unr = phi ptr [ poison, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ], [ %i.abt, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ]
  %.sroa.01.0.i17.i.i.i.unr = phi ptr [ %i.abo, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ], [ %i.abt, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ]
  %.sroa.5.0.i16.i.i.i.unr = phi i64 [ %i.abq, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ], [ %i.abu, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ]
  %i.abv = icmp ult i64 %i.abq, 8
  br i1 %i.abv, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i"

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i"
  %.sroa.01.0.i17.i.i.i = phi ptr [ %i.acl, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i" ], [ %.sroa.01.0.i17.i.i.i.unr, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit" ]
  %.sroa.5.0.i16.i.i.i = phi i64 [ %i.acm, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i" ], [ %.sroa.5.0.i16.i.i.i.unr, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit" ]
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i17.i.i.i, i64 368
  %i.abx = load ptr, ptr %i.abw, align 8, !noalias !160584, !nonnull !57, !noundef !57
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 368
  %i.abz = load ptr, ptr %i.aby, align 8, !noalias !160584, !nonnull !57, !noundef !57
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 368
  %i.acb = load ptr, ptr %i.aca, align 8, !noalias !160584, !nonnull !57, !noundef !57
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 368
  %i.acd = load ptr, ptr %i.acc, align 8, !noalias !160584, !nonnull !57, !noundef !57
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 368
  %i.acf = load ptr, ptr %i.ace, align 8, !noalias !160584, !nonnull !57, !noundef !57
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 368
  %i.ach = load ptr, ptr %i.acg, align 8, !noalias !160584, !nonnull !57, !noundef !57
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 368
  %i.acj = load ptr, ptr %i.aci, align 8, !noalias !160584, !nonnull !57, !noundef !57
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 368
  %i.acl = load ptr, ptr %i.ack, align 8, !noalias !160584, !nonnull !57, !noundef !57 ; 2 uses
  %i.acm = add i64 %.sroa.5.0.i16.i.i.i, -8       ; 2 uses
  %i.acn = icmp eq i64 %i.acm, 0
  br i1 %i.acn, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i"

"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i", %bb.dl
  %.sroa.01.0.i.lcssa.i.i.i = phi ptr [ %i.abo, %bb.dl ], [ %.lcssa2161.unr, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit" ], [ %i.acl, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i" ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i8 0, i64 16, i1 false), !noalias !160585
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h1520ee43c4dc2089E.exit.i"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h1520ee43c4dc2089E.exit.i": ; preds = %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", %._crit_edge
  %.sroa.5.0.i.i = phi ptr [ %8, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i" ], [ null, %._crit_edge ]
  %.sroa.7.0.i.i = phi ptr [ %.sroa.01.0.i.lcssa.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i" ], [ null, %._crit_edge ] ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ef, align 8, !alias.scope !160579, !noalias !160586
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.aco, align 8, !alias.scope !160579, !noalias !160586
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  store ptr %.sroa.5.0.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !160579, !noalias !160586
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i1080 = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i1080, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !160586
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !160587)
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 2 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !160589
  %.sroa.6.sroa.0.0.copyload39.i.i17.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i1080, align 8, !alias.scope !160590, !noalias !160591
  %.sroa.6.sroa.5.0.copyload40.i.i18.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !160590, !noalias !160591
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !160590, !noalias !160591
  %.not41.i.i19.i.i = icmp eq ptr %.sroa.7.0.i.i, null
  br i1 %.not41.i.i19.i.i, label %"_ZN125_$LT$alloc..collections..btree..map..ExtractIf$LT$K$C$V$C$R$C$F$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2997032144d07a31E.exit.thread.i.i", label %.lr.ph.i.i.preheader.lr.ph.i.i

.lr.ph.i.i.preheader.lr.ph.i.i:                   ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h1520ee43c4dc2089E.exit.i"
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.acq = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.sroa.436.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %.sroa.537.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.sroa.638.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %.sroa.330.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %.sroa.531.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  br label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i", %.lr.ph.i.i.preheader.lr.ph.i.i
  %.sroa.6.sroa.5.0.copyload40.i.i22.i.i = phi i64 [ %.sroa.6.sroa.5.0.copyload40.i.i18.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i ], [ %.sroa.6.sroa.5.0.copyload40.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i" ]
  %.sroa.6.sroa.0.0.copyload39.i.i21.i.i = phi i64 [ %.sroa.6.sroa.0.0.copyload39.i.i17.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i ], [ %.sroa.6.sroa.0.0.copyload39.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i" ]
  %.promoted.i.i20.i.i = phi ptr [ %.sroa.7.0.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i ], [ %.promoted.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !160592)
  call void @llvm.experimental.noalias.scope.decl(metadata !160593)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i", %.lr.ph.i.i.preheader.i.i
  %.sroa.6.sroa.5.0.copyload44.i.i.i.i = phi i64 [ %.sroa.715.0.i.i.i.i, %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i" ], [ %.sroa.6.sroa.5.0.copyload40.i.i22.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.sroa.6.sroa.0.0.copyload43.i.i.i.i = phi i64 [ 0, %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i" ], [ %.sroa.6.sroa.0.0.copyload39.i.i21.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.sroa.013.03842.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i, %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i" ], [ %.promoted.i.i20.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.sroa.013.03842.i.i.i.i, i64 362
  %i.acs = load i16, ptr %i.acr, align 2, !noalias !160594, !noundef !57
  %i.act = zext i16 %i.acs to i64
  %i.acu = icmp ult i64 %.sroa.6.sroa.5.0.copyload44.i.i.i.i, %i.act
  br i1 %i.acu, label %bb.dn, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i, %bb.dm
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.acv, %bb.dm ], [ %.sroa.013.03842.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.acx, %bb.dm ], [ %.sroa.6.sroa.0.0.copyload43.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.acv = load ptr, ptr %.sroa.0.038.i.i.i.i.i, align 8, !noalias !160595, !noundef !57 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.acv, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN125_$LT$alloc..collections..btree..map..ExtractIf$LT$K$C$V$C$R$C$F$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2997032144d07a31E.exit.thread.i.i", label %bb.dm

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.dm
  %i.acw = zext i16 %i.acz to i64
  br label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i.i
end_hunk_13
begin_hunk_14_@_ZN5milli6update3new7indexer7extract11extract_all17h1568aed28bab08d9E:bb.a
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.in, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.hp)
          to label %.noexc871 unwind label %bb.adb

.noexc871:                                        ; preds = %bb.acy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !160847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn), !noalias !160847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho), !noalias !160847
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit

bb.acz:                                           ; preds = %bb.acq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.im)
  br label %bb.acv

bb.ada:                                           ; preds = %bb.adc, %bb.adb
  %.pn807 = phi { ptr, i32 } [ %i.cbm, %bb.adb ], [ %i.cbn, %bb.adc ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.in) #81
          to label %bb.acj unwind label %bb.p

bb.adb:                                           ; preds = %bb.acy, %bb.ade, %bb.adf, %bb.acw
  %i.cbm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ada

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit: ; preds = %.noexc871, %bb.acx, %.noexc870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ij)
  invoke fastcc void @_ZN5milli6update3new7indexer16document_changes7extract17hd09891d37245ce21E(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.ij, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.iq, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %2, ptr noalias noundef align 8 dereferenceable(512) %6, ptr noundef nonnull align 8 %i.io)
          to label %bb.add unwind label %bb.adc

bb.adc:                                           ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit
  %i.cbn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.in) #81
          to label %bb.ada unwind label %bb.p

bb.add:                                           ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit
  %i.cbo = load i64, ptr %i.ij, align 8, !range !111, !noundef !57 ; 2 uses
  %.not805 = icmp eq i64 %i.cbo, 97
  br i1 %.not805, label %bb.adf, label %bb.ade

bb.ade:                                           ; preds = %bb.add
  %.sroa.4668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.sroa.2670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.2670.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.4668.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij)
  store i64 %i.cbo, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.in)
          to label %bb.adj unwind label %bb.adb

bb.adf:                                           ; preds = %bb.add
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.in)
          to label %bb.adg unwind label %bb.adb

bb.adg:                                           ; preds = %bb.adf
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.in)
          to label %bb.adh unwind label %bb.ack

bb.adh:                                           ; preds = %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in)
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$$LP$$RP$$GT$$GT$17hd770fc7b483fedc9E"(ptr noalias noundef align 8 dereferenceable(512) %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq)
  br label %bb.adi

bb.adi:                                           ; preds = %bb.acg, %bb.adh
  %.val1033 = load ptr, ptr %.sroa.91345.0.copyload, align 8, !nonnull !57, !noundef !57
  invoke fastcc void @_ZN5milli8progress8Progress15update_progress17hceb73378a555a73cE(ptr nonnull %.val1033, i8 noundef 18)
          to label %bb.adl unwind label %bb.dz

bb.adj:                                           ; preds = %bb.ade
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.in)
          to label %bb.adk unwind label %bb.ack

bb.adk:                                           ; preds = %bb.adj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in)
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$$LP$$RP$$GT$$GT$17hd770fc7b483fedc9E"(ptr noalias noundef align 8 dereferenceable(512) %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq)
  br label %.thread1682

bb.adl:                                           ; preds = %bb.adi
  store atomic i8 1, ptr %7 monotonic, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ii)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ii, ptr noundef nonnull align 8 dereferenceable(80) %i.md, i64 80, i1 false)
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.ii, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cbp, ptr noundef nonnull align 8 dereferenceable(72) %i.mc, i64 72, i1 false)
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.ii, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cbq, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.cbr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cbr, ptr noundef nonnull align 8 dereferenceable(176) %i.ii, i64 176, i1 false)
  store i64 97, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.md)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mr)
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E"(ptr noalias noundef align 8 dereferenceable(24) %i.mt)
          to label %bb.adm unwind label %bb.w

bb.adm:                                           ; preds = %bb.adl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mt)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.mx)
          to label %bb.adn unwind label %bb.u

bb.adn:                                           ; preds = %bb.adm
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.mx)
          to label %bb.ado unwind label %.split

bb.ado:                                           ; preds = %bb.adn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mx)
  br label %.invoke

bb.adp:                                           ; preds = %bb.agz, %bb.adq
  %.pn867 = phi { ptr, i32 } [ %i.cbs, %bb.adq ], [ %.pn865, %bb.agz ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %3) #81
          to label %bb.ahb unwind label %bb.p

bb.adq:                                           ; preds = %.invoke
  %i.cbs = landingpad { ptr, i32 }
          cleanup
  br label %bb.adp

bb.adr:                                           ; preds = %.invoke
  call fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %3)
  ret void

.thread1665:                                      ; preds = %.loopexit, %.loopexit.split-lp, %bb.aec, %bb.ady, %bb.ael
  %.pn781 = phi { ptr, i32 } [ %i.ccp, %bb.aec ], [ %.pn7791664, %bb.ael ], [ %i.cci, %bb.ady ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.jm) #81
          to label %bb.aap unwind label %bb.p

.loopexit:                                        ; preds = %bb.aar
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread1665

.loopexit.split-lp:                               ; preds = %bb.adt, %bb.adw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1665

bb.ads:                                           ; preds = %bb.aar
  %i.cbt = load i64, ptr %i.jg, align 8, !range !84, !noundef !57 ; 3 uses
  %i.cbu = icmp eq i64 %i.cbt, -9223372036854775807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7243, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4598.0..sroa_idx, i64 24, i1 false)
  br i1 %i.cbu, label %bb.adt, label %bb.adu

bb.adt:                                           ; preds = %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7243, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.hv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hw)
          to label %bb.aem unwind label %.loopexit.split-lp

bb.adu:                                           ; preds = %bb.ads
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5599.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jg)
  %.not774 = icmp eq i64 %i.cbt, -9223372036854775808
  br i1 %.not774, label %bb.adw, label %bb.adv, !prof !60

bb.adv:                                           ; preds = %bb.adu
  store i64 %i.cbt, ptr %i.jh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3248.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7243, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  %i.cbv = load i64, ptr %i.byg, align 8, !alias.scope !160848, !noalias !160849, !noundef !57
  %i.cbw = icmp eq i64 %i.cbv, 0
  br i1 %i.cbw, label %._crit_edge1837, label %.preheader1.i.i1231.preheader

bb.adw:                                           ; preds = %bb.adu
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2647) #80
          to label %bb.adx unwind label %.loopexit.split-lp

bb.adx:                                           ; preds = %bb.adw
  unreachable

.preheader1.i.i1231.preheader:                    ; preds = %bb.adv, %.backedge
  %.sroa.41325.01836 = phi i64 [ %i.ccj, %.backedge ], [ 0, %bb.adv ]
  %.sroa.71326.01835 = phi i64 [ %.sroa.71326.1, %.backedge ], [ 0, %bb.adv ]
  %.sroa.101327.01834 = phi i64 [ %.sroa.101327.1, %.backedge ], [ 1, %bb.adv ]
  %.sroa.131328.01833 = phi i64 [ %i.cce, %.backedge ], [ 0, %bb.adv ]
  call void @llvm.experimental.noalias.scope.decl(metadata !160850)
  br label %.preheader1.i.i1231

.preheader1.i.i1231:                              ; preds = %.preheader1.i.i1231.preheader, %.loopexit.i.i1241
  %.sroa.101327.1 = phi i64 [ %i.cca, %.loopexit.i.i1241 ], [ %.sroa.101327.01834, %.preheader1.i.i1231.preheader ] ; 4 uses
  %.sroa.71326.1 = phi i64 [ %i.ccb, %.loopexit.i.i1241 ], [ %.sroa.71326.01835, %.preheader1.i.i1231.preheader ] ; 3 uses
  %.promoted4.i.i1235 = phi i64 [ 0, %.loopexit.i.i1241 ], [ %.sroa.131328.01833, %.preheader1.i.i1231.preheader ] ; 3 uses
  %i.cbx = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.sroa.71326.1
  %i.cby = load ptr, ptr %i.cbx, align 8, !alias.scope !160850, !noalias !160849, !noundef !57 ; 2 uses
  %i.cbz = icmp eq ptr %i.cby, null
  br i1 %i.cbz, label %.loopexit.i.i1241, label %.preheader.preheader.i.i1236

.preheader.preheader.i.i1236:                     ; preds = %.preheader1.i.i1231
  %umax.i.i1237 = call i64 @llvm.umax.i64(i64 %.sroa.101327.1, i64 %.promoted4.i.i1235)
  %exitcond.not.i.i12392139.not = icmp ult i64 %.promoted4.i.i1235, %.sroa.101327.1
  br i1 %exitcond.not.i.i12392139.not, label %.lr.ph2140, label %.loopexit.i.i1241

.loopexit.i.i1241:                                ; preds = %.preheader.i.i1238, %.preheader.preheader.i.i1236, %.preheader1.i.i1231
  %i.cca = shl i64 %.sroa.101327.1, 1
  %i.ccb = add nuw nsw i64 %.sroa.71326.1, 1
  br label %.preheader1.i.i1231

.preheader.i.i1238:                               ; preds = %.lr.ph2140
  %exitcond.not.i.i1239 = icmp eq i64 %i.cce, %umax.i.i1237
  br i1 %exitcond.not.i.i1239, label %.loopexit.i.i1241, label %.lr.ph2140

.lr.ph2140:                                       ; preds = %.preheader.preheader.i.i1236, %.preheader.i.i1238
  %i.ccc = phi i64 [ %i.cce, %.preheader.i.i1238 ], [ %.promoted4.i.i1235, %.preheader.preheader.i.i1236 ] ; 2 uses
  %i.ccd = getelementptr inbounds nuw [64 x i8], ptr %i.cby, i64 %i.ccc ; 2 uses
  %i.cce = add i64 %i.ccc, 1                      ; 3 uses
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.ccd, i64 56
  %i.ccg = load i8, ptr %i.ccf, align 1, !range !74, !noalias !160851, !noundef !57
  %i.cch = trunc nuw i8 %i.ccg to i1
  br i1 %i.cch, label %bb.adz, label %.preheader.i.i1238

bb.ady:                                           ; preds = %._crit_edge1837
  %i.cci = landingpad { ptr, i32 }
          cleanup
  br label %.thread1665

bb.adz:                                           ; preds = %.lr.ph2140
  %i.ccj = add i64 %.sroa.41325.01836, 1          ; 2 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccd, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7253)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu)
  %.val1042 = load ptr, ptr %i.byk, align 8, !nonnull !57, !noundef !57
  %.val1043 = load i64, ptr %i.bym, align 8, !noundef !57
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17hd9077e9ac5e0034bE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.hu, ptr noalias noundef align 8 dereferenceable(48) %i.cck, ptr nonnull %.val1042, i64 %.val1043)
          to label %bb.aef unwind label %.thread1668

.thread1668:                                      ; preds = %bb.adz
  %i.ccl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ael

._crit_edge1837:                                  ; preds = %.backedge, %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.je)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jd)
  store ptr %4, ptr %i.jd, align 8
  %i.ccm = load ptr, ptr %i.byk, align 8, !nonnull !57, !noundef !57
  %i.ccn = load i64, ptr %i.bym, align 8, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jc, ptr noundef nonnull align 8 dereferenceable(56) %i.jh, i64 56, i1 false)
  invoke void @_ZN5milli6update3new7channel15EmbeddingSender16embedding_status17h3af35b1bd87a9fb8E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ccm, i64 noundef %i.ccn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.jc)
          to label %bb.aea unwind label %bb.ady

bb.aea:                                           ; preds = %._crit_edge1837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc)
  call void @llvm.experimental.noalias.scope.decl(metadata !160852)
  %i.cco = load i64, ptr %i.je, align 8, !range !111, !alias.scope !160852, !noalias !160853, !noundef !57
  %.not.i = icmp eq i64 %i.cco, 97
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd6296b7c890988ebE.exit", label %bb.aeb, !prof !58

bb.aeb:                                           ; preds = %bb.aea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hq), !noalias !160854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.hq, ptr noundef nonnull align 8 dereferenceable(320) %i.je, i64 320, i1 false), !noalias !160853
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2152, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2648) #80
          to label %bb.aed unwind label %bb.aec, !noalias !160852

bb.aec:                                           ; preds = %bb.aeb
  %i.ccp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$milli..error..Error$GT$17h987c3bd021a7dfc7E"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.hq) #81
          to label %.thread1665 unwind label %bb.aee, !noalias !160852

bb.aed:                                           ; preds = %bb.aeb
  unreachable

bb.aee:                                           ; preds = %bb.aec
  %i.ccq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !160852
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd6296b7c890988ebE.exit": ; preds = %bb.aea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  %i.ccr = icmp eq ptr %.sroa.0701.11841, %i.byf  ; 2 uses
  %.sroa.0701.1.idx = select i1 %i.ccr, i64 0, i64 680
  %.sroa.0701.1 = getelementptr inbounds nuw i8, ptr %.sroa.0701.11841, i64 %.sroa.0701.1.idx
  br i1 %i.ccr, label %._crit_edge1843, label %bb.aar

bb.aef:                                           ; preds = %bb.adz
  %i.ccs = load i64, ptr %i.hu, align 8, !range !83, !noundef !57 ; 3 uses
  %.not776 = icmp eq i64 %i.ccs, -9223372036854775808
  br i1 %.not776, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.thread", label %bb.aeg

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.thread": ; preds = %bb.aef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu)
  br label %bb.aej

bb.aeg:                                           ; preds = %bb.aef
  %.sroa.0610.0.copyload = load i64, ptr %i.byh, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7253, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4611.0..sroa_idx, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !160855)
  call void @llvm.experimental.noalias.scope.decl(metadata !160856)
  %i.cct = icmp eq i64 %i.ccs, 0
  br i1 %i.cct, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit", label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg
  %.val1.i.i = load ptr, ptr %i.byi, align 8, !alias.scope !160857, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ccs, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !160857
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit": ; preds = %bb.aeh, %bb.aeg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu)
  %.not778 = icmp eq i64 %.sroa.0610.0.copyload, -9223372036854775808
  br i1 %.not778, label %bb.aej, label %bb.aei

bb.aei:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jf)
  store i64 %.sroa.0610.0.copyload, ptr %i.jf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7253.0..sroa_idx254, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7253, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7253)
  invoke void @_ZN5milli6vector2db20EmbeddingStatusDelta8apply_to17h239cb0d12f50751aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.jf, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.jh)
          to label %bb.aek unwind label %.thread1661

bb.aej:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.thread", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7253)
  br label %.backedge

.backedge:                                        ; preds = %bb.aej, %bb.aek
  %i.ccu = load i64, ptr %i.byg, align 8, !alias.scope !160858, !noalias !160849, !noundef !57
  %i.ccv = icmp eq i64 %i.ccu, %i.ccj
  br i1 %i.ccv, label %._crit_edge1837, label %.preheader1.i.i1231.preheader

.thread1661:                                      ; preds = %bb.aei
  %i.ccw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.jf)
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.byj)
  br label %bb.ael

bb.aek:                                           ; preds = %bb.aei
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.jf)
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.byj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf)
  br label %.backedge

bb.ael:                                           ; preds = %.thread1668, %.thread1661
  %.pn7791664 = phi { ptr, i32 } [ %i.ccw, %.thread1661 ], [ %i.ccl, %.thread1668 ]
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.jh)
  br label %.thread1665

bb.aem:                                           ; preds = %bb.adt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.hv, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ji)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.jm)
          to label %bb.aen unwind label %bb.aaq

bb.aen:                                           ; preds = %bb.aem
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.jm)
          to label %bb.aeo unwind label %bb.zd

bb.aeo:                                           ; preds = %bb.aen
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm)
  br label %bb.aep

bb.aep:                                           ; preds = %bb.aer, %bb.aeo
  call fastcc void @"_ZN4core3ptr161drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$17h9c5c41c218fd75bdE"(ptr noalias noundef align 8 dereferenceable(512) %i.js)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.js)
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..vectors..EmbeddingExtractor$GT$17h9162ed472aba9c53E"(ptr noalias noundef align 8 dereferenceable(64) %i.jt)
          to label %bb.aes unwind label %bb.dz

bb.aeq:                                           ; preds = %bb.zx
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.jr)
          to label %bb.aer unwind label %bb.zd

bb.aer:                                           ; preds = %bb.aeq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jr)
  br label %bb.aep

bb.aes:                                           ; preds = %bb.aep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jt)
  br label %.thread1682

bb.aet:                                           ; preds = %bb.ws
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.hy, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz)
  br label %.thread1682

bb.aeu:                                           ; preds = %bb.afm, %bb.afq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp)
  %i.ccx = trunc nuw i8 %.sroa.0326.7.ph to i1
  br i1 %i.ccx, label %.thread1682, label %.thread1749

bb.aev:                                           ; preds = %bb.wn
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kl)
          to label %.thread1770 unwind label %.thread1744.thread

.thread1770:                                      ; preds = %bb.aev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp)
  br label %.thread1682

end_hunk_14
begin_hunk_15_@_ZN5milli6update3new7indexer7extract11extract_all17h3ec799c870dcaa05E:bb.a
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 48
  store i64 1, ptr %i.mk, align 8
  %.sroa.4364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4364.0..sroa_idx, align 8
  %.sroa.5365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i64 0, ptr %.sroa.5365.0..sroa_idx, align 8
  %i.za = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store ptr %i.yz, ptr %i.za, align 8
  %i.zb = load i64, ptr %3, align 8, !range !72, !noundef !57
  %.not716 = icmp eq i64 %i.zb, 2
  br i1 %.not716, label %bb.de, label %bb.dd

bb.cv:                                            ; preds = %.thread1404, %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ml, ptr noundef nonnull align 8 dereferenceable(40) %i.mj, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mj)
  br label %bb.cz

bb.cw:                                            ; preds = %bb.cx
  %i.zc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.mj) #81
          to label %.thread1365 unwind label %bb.p

.thread1404:                                      ; preds = %bb.cq, %bb.cs, %bb.ct, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mj)
  %i.zd = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17ha569ea49cb526988E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  store i64 2, ptr %i.mj, align 8
  %i.ze = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  store ptr %i.zd, ptr %i.ze, align 8
  %i.zf = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.zg = icmp eq i8 %i.zf, 0
  br i1 %i.zg, label %bb.cx, label %bb.cv

bb.cx:                                            ; preds = %.thread1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mi)
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 48
  store i64 1, ptr %i.mi, align 8
  %.sroa.4370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4370.0..sroa_idx, align 8
  %.sroa.5371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store i64 0, ptr %.sroa.5371.0..sroa_idx, align 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  store ptr %i.zh, ptr %i.zi, align 8
  %i.zj = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mi)
          to label %bb.cy unwind label %bb.cw     ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mi)
  br label %bb.cv

bb.cz:                                            ; preds = %bb.df, %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !161498)
  %i.zk = load i64, ptr %i.ml, align 8, !range !72, !alias.scope !161498, !noundef !57
  %.not.i963 = icmp eq i64 %i.zk, 2
  br i1 %.not.i963, label %.noexc967, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ml, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.zl)
          to label %.noexc967 unwind label %bb.dh

.noexc967:                                        ; preds = %bb.cz, %bb.da
  %i.zm = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.zn = icmp eq i8 %i.zm, 0
  br i1 %i.zn, label %bb.db, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969

bb.db:                                            ; preds = %.noexc967
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  %i.zp = load ptr, ptr %i.zo, align 8, !alias.scope !161498, !align !61, !noundef !57 ; 3 uses
  %.not4.i964 = icmp eq ptr %i.zp, null
  br i1 %.not4.i964, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz), !noalias !161498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !161498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !noalias !161498
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %i.zr = load ptr, ptr %i.zq, align 8, !nonnull !57, !align !64, !noundef !57
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 24
  %i.zt = load i64, ptr %i.zs, align 8, !noundef !57
  store ptr %i.zr, ptr %i.fx, align 8, !noalias !161498
  %i.zu = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.zt, ptr %i.zu, align 8, !noalias !161498
  store ptr %i.fx, ptr %i.fy, align 8, !noalias !161498
  %.sroa.43.0..sroa_idx.i965 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i965, align 8, !noalias !161498
  store ptr @4688, ptr %i.fz, align 8, !noalias !161498
  %i.zv = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 2, ptr %i.zv, align 8, !noalias !161498
  %i.zw = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  store ptr null, ptr %i.zw, align 8, !noalias !161498
  %i.zx = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store ptr %i.fy, ptr %i.zx, align 8, !noalias !161498
  %i.zy = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store i64 1, ptr %i.zy, align 8, !noalias !161498
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ml, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.fz)
          to label %.noexc968 unwind label %bb.dh

.noexc968:                                        ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !noalias !161498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !161498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !161498
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969

bb.dd:                                            ; preds = %bb.cu
  %i.zz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aaa = load i64, ptr %i.zz, align 8, !range !90, !noundef !57
  br label %bb.de

bb.de:                                            ; preds = %bb.cu, %bb.dd
  %.sroa.0366.0 = phi i64 [ %i.aaa, %bb.dd ], [ 0, %bb.cu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic)
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i64 %.sroa.0366.0, ptr %i.aab, align 8
  store ptr %i.yy, ptr %i.ic, align 8
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %i.mk, ptr %i.aac, align 8
  invoke fastcc void @_ZN12tracing_core10dispatcher11get_default17h0487c2a28cd0d0bdE(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ml, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ic)
          to label %bb.df unwind label %.split1373.thread

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mk)
  br label %bb.cz

bb.dg:                                            ; preds = %bb.dj, %bb.dh
  %.sroa.0330.2 = phi i1 [ false, %bb.dj ], [ %.sroa.0330.3, %bb.dh ]
  %.pn848.pn.pn.pn = phi { ptr, i32 } [ %.pn848.pn.pn, %bb.dj ], [ %i.aad, %bb.dh ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ml) #81
          to label %bb.ac unwind label %bb.p

bb.dh:                                            ; preds = %bb.dc, %bb.dy, %bb.dw, %bb.da
  %.sroa.0330.3 = phi i1 [ false, %bb.dy ], [ true, %bb.dc ], [ true, %bb.da ], [ false, %bb.dw ]
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969: ; preds = %.noexc968, %bb.db, %.noexc967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.mh, ptr noundef nonnull align 8 dereferenceable(512) %i.mq, i64 512, i1 false)
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 512 ; 2 uses
  %.sroa.5390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 520
  %.sroa.6391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 528 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4389.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.6391.0..sroa_idx, align 8
  %.sroa.7392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 536 ; 2 uses
  store i64 0, ptr %.sroa.7392.0..sroa_idx, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.mh, i64 504
  %i.aaf = load i64, ptr %i.aae, align 8, !alias.scope !161499, !noalias !161500, !noundef !57 ; 2 uses
  %i.aag = icmp eq i64 %i.aaf, 0
  br i1 %i.aag, label %._crit_edge, label %.preheader1.i.i.preheader.lr.ph

.preheader1.i.i.preheader.lr.ph:                  ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969
  %i.aah = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %.sroa.41283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mg, i64 56
  %.sroa.51285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mg, i64 72
  %.sroa.41274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %.sroa.51275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %.sroa.61276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 24 ; 3 uses
  %.sroa.71277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 32 ; 3 uses
  %.sroa.81278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  %.sroa.91279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 48 ; 2 uses
  %.sroa.101281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 56 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 2 uses
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 24 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 32 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %.sroa.42.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.preheader1.i.i.preheader

.preheader1.i.i.preheader:                        ; preds = %.preheader1.i.i.preheader.lr.ph, %bb.agn
  %i.aak = phi i64 [ 0, %.preheader1.i.i.preheader.lr.ph ], [ %i.abc, %bb.agn ]
  %i.aal = phi i64 [ 0, %.preheader1.i.i.preheader.lr.ph ], [ %i.aap, %bb.agn ]
  %i.aam = phi i64 [ 1, %.preheader1.i.i.preheader.lr.ph ], [ %i.aao, %bb.agn ]
  %i.aan = phi i64 [ 0, %.preheader1.i.i.preheader.lr.ph ], [ %i.aax, %bb.agn ]
  call void @llvm.experimental.noalias.scope.decl(metadata !161501)
  call void @llvm.experimental.noalias.scope.decl(metadata !161502)
  call void @llvm.experimental.noalias.scope.decl(metadata !161503)
  br label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %.preheader1.i.i.preheader, %.loopexit.i.i
  %i.aao = phi i64 [ %i.aat, %.loopexit.i.i ], [ %i.aam, %.preheader1.i.i.preheader ] ; 4 uses
  %i.aap = phi i64 [ %i.aau, %.loopexit.i.i ], [ %i.aal, %.preheader1.i.i.preheader ] ; 3 uses
  %.promoted4.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %i.aan, %.preheader1.i.i.preheader ] ; 3 uses
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.aap
  %i.aar = load ptr, ptr %i.aaq, align 8, !alias.scope !161499, !noalias !161500, !noundef !57 ; 2 uses
  %i.aas = icmp eq ptr %i.aar, null
  br i1 %i.aas, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader1.i.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.aao, i64 %.promoted4.i.i)
  %exitcond.not.i.i2124.not = icmp ult i64 %.promoted4.i.i, %i.aao
  br i1 %exitcond.not.i.i2124.not, label %.lr.ph2125, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.preheader.preheader.i.i, %.preheader1.i.i
  %i.aat = shl i64 %i.aao, 1                      ; 2 uses
  store i64 %i.aat, ptr %.sroa.6391.0..sroa_idx, align 8, !alias.scope !161504, !noalias !161505
  %i.aau = add nuw nsw i64 %i.aap, 1              ; 2 uses
  store i64 %i.aau, ptr %.sroa.5390.0..sroa_idx, align 8, !alias.scope !161504, !noalias !161505
  br label %.preheader1.i.i

.preheader.i.i:                                   ; preds = %.lr.ph2125
  %exitcond.not.i.i = icmp eq i64 %i.aax, %umax.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph2125

.lr.ph2125:                                       ; preds = %.preheader.preheader.i.i, %.preheader.i.i
  %i.aav = phi i64 [ %i.aax, %.preheader.i.i ], [ %.promoted4.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %i.aaw = getelementptr inbounds nuw [104 x i8], ptr %i.aar, i64 %i.aav ; 3 uses
  %i.aax = add i64 %i.aav, 1                      ; 4 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 96
  %i.aaz = load i8, ptr %i.aay, align 1, !range !74, !noalias !161506, !noundef !57
  %i.aba = trunc nuw i8 %i.aaz to i1
  br i1 %i.aba, label %bb.di, label %.preheader.i.i

bb.di:                                            ; preds = %.lr.ph2125
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aaw, i64 96
  store i64 %i.aax, ptr %.sroa.7392.0..sroa_idx, align 8, !alias.scope !161504, !noalias !161505
  %i.abc = add nuw i64 %i.aak, 1                  ; 3 uses
  store i64 %i.abc, ptr %.sroa.4389.0..sroa_idx, align 8, !alias.scope !161504, !noalias !161505
  store i8 0, ptr %i.abb, align 1, !noalias !161507
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.hr, ptr noundef nonnull align 8 dereferenceable(88) %i.abd, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.mg, ptr noundef nonnull align 8 dereferenceable(88) %i.hr, i64 88, i1 false)
  %.sroa.01282.0.copyload = load ptr, ptr %i.aah, align 8, !nonnull !57, !noundef !57 ; 6 uses
  %.sroa.41283.0.copyload = load i64, ptr %.sroa.41283.0..sroa_idx, align 8 ; 5 uses
  %.sroa.51285.0.copyload = load i64, ptr %.sroa.51285.0..sroa_idx, align 8 ; 3 uses
  %.val24.i.i.i = load <16 x i8>, ptr %.sroa.01282.0.copyload, align 16, !noalias !161508
  %i.abe = icmp eq i64 %.sroa.41283.0.copyload, 0 ; 2 uses
  br i1 %i.abe, label %bb.agc, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i: ; preds = %bb.di
  %i.abf = icmp slt i64 %.sroa.41283.0.copyload, 576460752303423487
  call void @llvm.assume(i1 %i.abf)
  %i.abg = shl i64 %.sroa.41283.0.copyload, 5     ; 2 uses
  %i.abh = add i64 %i.abg, 32                     ; 2 uses
  %i.abi = add nsw i64 %.sroa.41283.0.copyload, 17
  %i.abj = add i64 %i.abi, %i.abh                 ; 3 uses
  %i.abk = icmp uge i64 %i.abj, %i.abh
  call void @llvm.assume(i1 %i.abk)
  %i.abl = icmp ult i64 %i.abj, 9223372036854775793
  call void @llvm.assume(i1 %i.abl)
  %i.abm = sub nuw nsw i64 -32, %i.abg
  %i.abn = getelementptr inbounds i8, ptr %.sroa.01282.0.copyload, i64 %i.abm
  br label %bb.agc

bb.dj:                                            ; preds = %bb.aga, %bb.dk
  %.pn848.pn.pn = phi { ptr, i32 } [ %.pn848, %bb.aga ], [ %i.abo, %bb.dk ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ml) #81
          to label %bb.dg unwind label %bb.p

bb.dk:                                            ; preds = %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hb8e7b990f523fe2eE.exit.i.i.i.i.i.i", %bb.dr
  %i.abo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

._crit_edge:                                      ; preds = %bb.agn, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969
  call fastcc void @"_ZN4core3ptr252drop_in_place$LT$thread_local..ThreadLocal$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17h17ef31f0d34629e3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(544) %i.mh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mh)
  call void @llvm.experimental.noalias.scope.decl(metadata !161509)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !161509
  call void @llvm.experimental.noalias.scope.decl(metadata !161510)
  call void @llvm.experimental.noalias.scope.decl(metadata !161511)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !161512)
  %i.abp = load ptr, ptr %8, align 8, !alias.scope !161513, !noalias !161514, !noundef !57 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.abp, null
  br i1 %.not.i.i.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h4fc2cda09607d08dE.exit.i", label %bb.dl

bb.dl:                                            ; preds = %._crit_edge
  %i.abq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.abr = load i64, ptr %i.abq, align 8, !alias.scope !161513, !noalias !161514, !noundef !57 ; 5 uses
  %i.abs = icmp eq i64 %i.abr, 0
  br i1 %i.abs, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader"

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader": ; preds = %bb.dl
  %xtraiter = and i64 %i.abr, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol"

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol"
  %.sroa.01.0.i17.i.i.i.prol = phi ptr [ %i.abu, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ], [ %i.abp, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ]
  %.sroa.5.0.i16.i.i.i.prol = phi i64 [ %i.abv, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ], [ %i.abr, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ]
  %prol.iter = phi i64 [ %prol.iter.next, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ], [ 0, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ]
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i17.i.i.i.prol, i64 368
  %i.abu = load ptr, ptr %i.abt, align 8, !noalias !161515, !nonnull !57, !noundef !57 ; 3 uses
  %i.abv = add i64 %.sroa.5.0.i16.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol", !llvm.loop !160996

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader"
  %.lcssa2161.unr = phi ptr [ poison, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ], [ %i.abu, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ]
  %.sroa.01.0.i17.i.i.i.unr = phi ptr [ %i.abp, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ], [ %i.abu, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ]
  %.sroa.5.0.i16.i.i.i.unr = phi i64 [ %i.abr, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ], [ %i.abv, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ]
  %i.abw = icmp ult i64 %i.abr, 8
  br i1 %i.abw, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i"

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i"
  %.sroa.01.0.i17.i.i.i = phi ptr [ %i.acm, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i" ], [ %.sroa.01.0.i17.i.i.i.unr, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit" ]
  %.sroa.5.0.i16.i.i.i = phi i64 [ %i.acn, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i" ], [ %.sroa.5.0.i16.i.i.i.unr, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit" ]
  %i.abx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i17.i.i.i, i64 368
  %i.aby = load ptr, ptr %i.abx, align 8, !noalias !161515, !nonnull !57, !noundef !57
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 368
  %i.aca = load ptr, ptr %i.abz, align 8, !noalias !161515, !nonnull !57, !noundef !57
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 368
  %i.acc = load ptr, ptr %i.acb, align 8, !noalias !161515, !nonnull !57, !noundef !57
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 368
  %i.ace = load ptr, ptr %i.acd, align 8, !noalias !161515, !nonnull !57, !noundef !57
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 368
  %i.acg = load ptr, ptr %i.acf, align 8, !noalias !161515, !nonnull !57, !noundef !57
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 368
  %i.aci = load ptr, ptr %i.ach, align 8, !noalias !161515, !nonnull !57, !noundef !57
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 368
  %i.ack = load ptr, ptr %i.acj, align 8, !noalias !161515, !nonnull !57, !noundef !57
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 368
  %i.acm = load ptr, ptr %i.acl, align 8, !noalias !161515, !nonnull !57, !noundef !57 ; 2 uses
  %i.acn = add i64 %.sroa.5.0.i16.i.i.i, -8       ; 2 uses
  %i.aco = icmp eq i64 %i.acn, 0
  br i1 %i.aco, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i"

"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i", %bb.dl
  %.sroa.01.0.i.lcssa.i.i.i = phi ptr [ %i.abp, %bb.dl ], [ %.lcssa2161.unr, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit" ], [ %i.acm, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i" ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i8 0, i64 16, i1 false), !noalias !161516
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h4fc2cda09607d08dE.exit.i"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h4fc2cda09607d08dE.exit.i": ; preds = %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", %._crit_edge
  %.sroa.5.0.i.i = phi ptr [ %8, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i" ], [ null, %._crit_edge ]
  %.sroa.7.0.i.i = phi ptr [ %.sroa.01.0.i.lcssa.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i" ], [ null, %._crit_edge ] ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ef, align 8, !alias.scope !161510, !noalias !161517
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.acp, align 8, !alias.scope !161510, !noalias !161517
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  store ptr %.sroa.5.0.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !161510, !noalias !161517
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i1080 = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i1080, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !161517
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !161518)
  %i.acq = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 2 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !161519)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !161520
  %.sroa.6.sroa.0.0.copyload39.i.i17.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i1080, align 8, !alias.scope !161521, !noalias !161522
  %.sroa.6.sroa.5.0.copyload40.i.i18.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !161521, !noalias !161522
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !161521, !noalias !161522
  %.not41.i.i19.i.i = icmp eq ptr %.sroa.7.0.i.i, null
  br i1 %.not41.i.i19.i.i, label %"_ZN125_$LT$alloc..collections..btree..map..ExtractIf$LT$K$C$V$C$R$C$F$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0e4e21f0294095eE.exit.thread.i.i", label %.lr.ph.i.i.preheader.lr.ph.i.i

.lr.ph.i.i.preheader.lr.ph.i.i:                   ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h4fc2cda09607d08dE.exit.i"
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.acr = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.sroa.436.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %.sroa.537.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.sroa.638.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %.sroa.330.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %.sroa.531.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  br label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i", %.lr.ph.i.i.preheader.lr.ph.i.i
  %.sroa.6.sroa.5.0.copyload40.i.i22.i.i = phi i64 [ %.sroa.6.sroa.5.0.copyload40.i.i18.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i ], [ %.sroa.6.sroa.5.0.copyload40.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i" ]
  %.sroa.6.sroa.0.0.copyload39.i.i21.i.i = phi i64 [ %.sroa.6.sroa.0.0.copyload39.i.i17.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i ], [ %.sroa.6.sroa.0.0.copyload39.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i" ]
  %.promoted.i.i20.i.i = phi ptr [ %.sroa.7.0.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i ], [ %.promoted.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !161523)
  call void @llvm.experimental.noalias.scope.decl(metadata !161524)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i", %.lr.ph.i.i.preheader.i.i
  %.sroa.6.sroa.5.0.copyload44.i.i.i.i = phi i64 [ %.sroa.715.0.i.i.i.i, %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i" ], [ %.sroa.6.sroa.5.0.copyload40.i.i22.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.sroa.6.sroa.0.0.copyload43.i.i.i.i = phi i64 [ 0, %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i" ], [ %.sroa.6.sroa.0.0.copyload39.i.i21.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.sroa.013.03842.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i, %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i" ], [ %.promoted.i.i20.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.013.03842.i.i.i.i, i64 362
  %i.act = load i16, ptr %i.acs, align 2, !noalias !161525, !noundef !57
  %i.acu = zext i16 %i.act to i64
  %i.acv = icmp ult i64 %.sroa.6.sroa.5.0.copyload44.i.i.i.i, %i.acu
  br i1 %i.acv, label %bb.dn, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i, %bb.dm
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.acw, %bb.dm ], [ %.sroa.013.03842.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.acy, %bb.dm ], [ %.sroa.6.sroa.0.0.copyload43.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.acw = load ptr, ptr %.sroa.0.038.i.i.i.i.i, align 8, !noalias !161526, !noundef !57 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.acw, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN125_$LT$alloc..collections..btree..map..ExtractIf$LT$K$C$V$C$R$C$F$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0e4e21f0294095eE.exit.thread.i.i", label %bb.dm

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.dm
  %i.acx = zext i16 %i.ada to i64
  br label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i.i
end_hunk_15
begin_hunk_16_@_ZN5milli6update3new7indexer7extract11extract_all17h3ec799c870dcaa05E:bb.a
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.in, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.hp)
          to label %.noexc871 unwind label %bb.adb

.noexc871:                                        ; preds = %bb.acy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !161778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn), !noalias !161778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho), !noalias !161778
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit

bb.acz:                                           ; preds = %bb.acq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.im)
  br label %bb.acv

bb.ada:                                           ; preds = %bb.adc, %bb.adb
  %.pn807 = phi { ptr, i32 } [ %i.cbn, %bb.adb ], [ %i.cbo, %bb.adc ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.in) #81
          to label %bb.acj unwind label %bb.p

bb.adb:                                           ; preds = %bb.acy, %bb.ade, %bb.adf, %bb.acw
  %i.cbn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ada

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit: ; preds = %.noexc871, %bb.acx, %.noexc870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ij)
  invoke fastcc void @_ZN5milli6update3new7indexer16document_changes7extract17hd543c25965472cafE(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.ij, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.iq, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %2, ptr noalias noundef align 8 dereferenceable(512) %6, ptr noundef nonnull align 8 %i.io)
          to label %bb.add unwind label %bb.adc

bb.adc:                                           ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit
  %i.cbo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.in) #81
          to label %bb.ada unwind label %bb.p

bb.add:                                           ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit
  %i.cbp = load i64, ptr %i.ij, align 8, !range !111, !noundef !57 ; 2 uses
  %.not805 = icmp eq i64 %i.cbp, 97
  br i1 %.not805, label %bb.adf, label %bb.ade

bb.ade:                                           ; preds = %bb.add
  %.sroa.4668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.sroa.2670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.2670.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.4668.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij)
  store i64 %i.cbp, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.in)
          to label %bb.adj unwind label %bb.adb

bb.adf:                                           ; preds = %bb.add
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.in)
          to label %bb.adg unwind label %bb.adb

bb.adg:                                           ; preds = %bb.adf
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.in)
          to label %bb.adh unwind label %bb.ack

bb.adh:                                           ; preds = %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in)
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$$LP$$RP$$GT$$GT$17hd770fc7b483fedc9E"(ptr noalias noundef align 8 dereferenceable(512) %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq)
  br label %bb.adi

bb.adi:                                           ; preds = %bb.acg, %bb.adh
  %.val1033 = load ptr, ptr %.sroa.91345.0.copyload, align 8, !nonnull !57, !noundef !57
  invoke fastcc void @_ZN5milli8progress8Progress15update_progress17hceb73378a555a73cE(ptr nonnull %.val1033, i8 noundef 18)
          to label %bb.adl unwind label %bb.dz

bb.adj:                                           ; preds = %bb.ade
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.in)
          to label %bb.adk unwind label %bb.ack

bb.adk:                                           ; preds = %bb.adj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in)
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$$LP$$RP$$GT$$GT$17hd770fc7b483fedc9E"(ptr noalias noundef align 8 dereferenceable(512) %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq)
  br label %.thread1682

bb.adl:                                           ; preds = %bb.adi
  store atomic i8 1, ptr %7 monotonic, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ii)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ii, ptr noundef nonnull align 8 dereferenceable(80) %i.md, i64 80, i1 false)
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.ii, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cbq, ptr noundef nonnull align 8 dereferenceable(72) %i.mc, i64 72, i1 false)
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.ii, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cbr, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.cbs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cbs, ptr noundef nonnull align 8 dereferenceable(176) %i.ii, i64 176, i1 false)
  store i64 97, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.md)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mr)
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E"(ptr noalias noundef align 8 dereferenceable(24) %i.mt)
          to label %bb.adm unwind label %bb.w

bb.adm:                                           ; preds = %bb.adl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mt)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.mx)
          to label %bb.adn unwind label %bb.u

bb.adn:                                           ; preds = %bb.adm
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.mx)
          to label %bb.ado unwind label %.split

bb.ado:                                           ; preds = %bb.adn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mx)
  br label %.invoke

bb.adp:                                           ; preds = %bb.agz, %bb.adq
  %.pn867 = phi { ptr, i32 } [ %i.cbt, %bb.adq ], [ %.pn865, %bb.agz ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %3) #81
          to label %bb.ahb unwind label %bb.p

bb.adq:                                           ; preds = %.invoke
  %i.cbt = landingpad { ptr, i32 }
          cleanup
  br label %bb.adp

bb.adr:                                           ; preds = %.invoke
  call fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %3)
  ret void

.thread1665:                                      ; preds = %.loopexit, %.loopexit.split-lp, %bb.aec, %bb.ady, %bb.ael
  %.pn781 = phi { ptr, i32 } [ %i.ccq, %bb.aec ], [ %.pn7791664, %bb.ael ], [ %i.ccj, %bb.ady ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.jm) #81
          to label %bb.aap unwind label %bb.p

.loopexit:                                        ; preds = %bb.aar
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread1665

.loopexit.split-lp:                               ; preds = %bb.adt, %bb.adw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1665

bb.ads:                                           ; preds = %bb.aar
  %i.cbu = load i64, ptr %i.jg, align 8, !range !84, !noundef !57 ; 3 uses
  %i.cbv = icmp eq i64 %i.cbu, -9223372036854775807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7243, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4598.0..sroa_idx, i64 24, i1 false)
  br i1 %i.cbv, label %bb.adt, label %bb.adu

bb.adt:                                           ; preds = %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7243, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.hv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hw)
          to label %bb.aem unwind label %.loopexit.split-lp

bb.adu:                                           ; preds = %bb.ads
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5599.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jg)
  %.not774 = icmp eq i64 %i.cbu, -9223372036854775808
  br i1 %.not774, label %bb.adw, label %bb.adv, !prof !60

bb.adv:                                           ; preds = %bb.adu
  store i64 %i.cbu, ptr %i.jh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3248.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7243, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  %i.cbw = load i64, ptr %i.byh, align 8, !alias.scope !161779, !noalias !161780, !noundef !57
  %i.cbx = icmp eq i64 %i.cbw, 0
  br i1 %i.cbx, label %._crit_edge1837, label %.preheader1.i.i1231.preheader

bb.adw:                                           ; preds = %bb.adu
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2647) #80
          to label %bb.adx unwind label %.loopexit.split-lp

bb.adx:                                           ; preds = %bb.adw
  unreachable

.preheader1.i.i1231.preheader:                    ; preds = %bb.adv, %.backedge
  %.sroa.41325.01836 = phi i64 [ %i.cck, %.backedge ], [ 0, %bb.adv ]
  %.sroa.71326.01835 = phi i64 [ %.sroa.71326.1, %.backedge ], [ 0, %bb.adv ]
  %.sroa.101327.01834 = phi i64 [ %.sroa.101327.1, %.backedge ], [ 1, %bb.adv ]
  %.sroa.131328.01833 = phi i64 [ %i.ccf, %.backedge ], [ 0, %bb.adv ]
  call void @llvm.experimental.noalias.scope.decl(metadata !161781)
  br label %.preheader1.i.i1231

.preheader1.i.i1231:                              ; preds = %.preheader1.i.i1231.preheader, %.loopexit.i.i1241
  %.sroa.101327.1 = phi i64 [ %i.ccb, %.loopexit.i.i1241 ], [ %.sroa.101327.01834, %.preheader1.i.i1231.preheader ] ; 4 uses
  %.sroa.71326.1 = phi i64 [ %i.ccc, %.loopexit.i.i1241 ], [ %.sroa.71326.01835, %.preheader1.i.i1231.preheader ] ; 3 uses
  %.promoted4.i.i1235 = phi i64 [ 0, %.loopexit.i.i1241 ], [ %.sroa.131328.01833, %.preheader1.i.i1231.preheader ] ; 3 uses
  %i.cby = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.sroa.71326.1
  %i.cbz = load ptr, ptr %i.cby, align 8, !alias.scope !161781, !noalias !161780, !noundef !57 ; 2 uses
  %i.cca = icmp eq ptr %i.cbz, null
  br i1 %i.cca, label %.loopexit.i.i1241, label %.preheader.preheader.i.i1236

.preheader.preheader.i.i1236:                     ; preds = %.preheader1.i.i1231
  %umax.i.i1237 = call i64 @llvm.umax.i64(i64 %.sroa.101327.1, i64 %.promoted4.i.i1235)
  %exitcond.not.i.i12392139.not = icmp ult i64 %.promoted4.i.i1235, %.sroa.101327.1
  br i1 %exitcond.not.i.i12392139.not, label %.lr.ph2140, label %.loopexit.i.i1241

.loopexit.i.i1241:                                ; preds = %.preheader.i.i1238, %.preheader.preheader.i.i1236, %.preheader1.i.i1231
  %i.ccb = shl i64 %.sroa.101327.1, 1
  %i.ccc = add nuw nsw i64 %.sroa.71326.1, 1
  br label %.preheader1.i.i1231

.preheader.i.i1238:                               ; preds = %.lr.ph2140
  %exitcond.not.i.i1239 = icmp eq i64 %i.ccf, %umax.i.i1237
  br i1 %exitcond.not.i.i1239, label %.loopexit.i.i1241, label %.lr.ph2140

.lr.ph2140:                                       ; preds = %.preheader.preheader.i.i1236, %.preheader.i.i1238
  %i.ccd = phi i64 [ %i.ccf, %.preheader.i.i1238 ], [ %.promoted4.i.i1235, %.preheader.preheader.i.i1236 ] ; 2 uses
  %i.cce = getelementptr inbounds nuw [64 x i8], ptr %i.cbz, i64 %i.ccd ; 2 uses
  %i.ccf = add i64 %i.ccd, 1                      ; 3 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.cce, i64 56
  %i.cch = load i8, ptr %i.ccg, align 1, !range !74, !noalias !161782, !noundef !57
  %i.cci = trunc nuw i8 %i.cch to i1
  br i1 %i.cci, label %bb.adz, label %.preheader.i.i1238

bb.ady:                                           ; preds = %._crit_edge1837
  %i.ccj = landingpad { ptr, i32 }
          cleanup
  br label %.thread1665

bb.adz:                                           ; preds = %.lr.ph2140
  %i.cck = add i64 %.sroa.41325.01836, 1          ; 2 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cce, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7253)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu)
  %.val1042 = load ptr, ptr %i.byl, align 8, !nonnull !57, !noundef !57
  %.val1043 = load i64, ptr %i.byn, align 8, !noundef !57
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17hd9077e9ac5e0034bE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.hu, ptr noalias noundef align 8 dereferenceable(48) %i.ccl, ptr nonnull %.val1042, i64 %.val1043)
          to label %bb.aef unwind label %.thread1668

.thread1668:                                      ; preds = %bb.adz
  %i.ccm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ael

._crit_edge1837:                                  ; preds = %.backedge, %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.je)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jd)
  store ptr %4, ptr %i.jd, align 8
  %i.ccn = load ptr, ptr %i.byl, align 8, !nonnull !57, !noundef !57
  %i.cco = load i64, ptr %i.byn, align 8, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jc, ptr noundef nonnull align 8 dereferenceable(56) %i.jh, i64 56, i1 false)
  invoke void @_ZN5milli6update3new7channel15EmbeddingSender16embedding_status17h3af35b1bd87a9fb8E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ccn, i64 noundef %i.cco, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.jc)
          to label %bb.aea unwind label %bb.ady

bb.aea:                                           ; preds = %._crit_edge1837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc)
  call void @llvm.experimental.noalias.scope.decl(metadata !161783)
  %i.ccp = load i64, ptr %i.je, align 8, !range !111, !alias.scope !161783, !noalias !161784, !noundef !57
  %.not.i = icmp eq i64 %i.ccp, 97
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd6296b7c890988ebE.exit", label %bb.aeb, !prof !58

bb.aeb:                                           ; preds = %bb.aea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hq), !noalias !161785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.hq, ptr noundef nonnull align 8 dereferenceable(320) %i.je, i64 320, i1 false), !noalias !161784
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2152, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2648) #80
          to label %bb.aed unwind label %bb.aec, !noalias !161783

bb.aec:                                           ; preds = %bb.aeb
  %i.ccq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$milli..error..Error$GT$17h987c3bd021a7dfc7E"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.hq) #81
          to label %.thread1665 unwind label %bb.aee, !noalias !161783

bb.aed:                                           ; preds = %bb.aeb
  unreachable

bb.aee:                                           ; preds = %bb.aec
  %i.ccr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !161783
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd6296b7c890988ebE.exit": ; preds = %bb.aea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  %i.ccs = icmp eq ptr %.sroa.0701.11841, %i.byg  ; 2 uses
  %.sroa.0701.1.idx = select i1 %i.ccs, i64 0, i64 680
  %.sroa.0701.1 = getelementptr inbounds nuw i8, ptr %.sroa.0701.11841, i64 %.sroa.0701.1.idx
  br i1 %i.ccs, label %._crit_edge1843, label %bb.aar

bb.aef:                                           ; preds = %bb.adz
  %i.cct = load i64, ptr %i.hu, align 8, !range !83, !noundef !57 ; 3 uses
  %.not776 = icmp eq i64 %i.cct, -9223372036854775808
  br i1 %.not776, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.thread", label %bb.aeg

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.thread": ; preds = %bb.aef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu)
  br label %bb.aej

bb.aeg:                                           ; preds = %bb.aef
  %.sroa.0610.0.copyload = load i64, ptr %i.byi, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7253, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4611.0..sroa_idx, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !161786)
  call void @llvm.experimental.noalias.scope.decl(metadata !161787)
  %i.ccu = icmp eq i64 %i.cct, 0
  br i1 %i.ccu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit", label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg
  %.val1.i.i = load ptr, ptr %i.byj, align 8, !alias.scope !161788, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.cct, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !161788
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit": ; preds = %bb.aeh, %bb.aeg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu)
  %.not778 = icmp eq i64 %.sroa.0610.0.copyload, -9223372036854775808
  br i1 %.not778, label %bb.aej, label %bb.aei

bb.aei:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jf)
  store i64 %.sroa.0610.0.copyload, ptr %i.jf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7253.0..sroa_idx254, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7253, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7253)
  invoke void @_ZN5milli6vector2db20EmbeddingStatusDelta8apply_to17h239cb0d12f50751aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.jf, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.jh)
          to label %bb.aek unwind label %.thread1661

bb.aej:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.thread", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7253)
  br label %.backedge

.backedge:                                        ; preds = %bb.aej, %bb.aek
  %i.ccv = load i64, ptr %i.byh, align 8, !alias.scope !161789, !noalias !161780, !noundef !57
  %i.ccw = icmp eq i64 %i.ccv, %i.cck
  br i1 %i.ccw, label %._crit_edge1837, label %.preheader1.i.i1231.preheader

.thread1661:                                      ; preds = %bb.aei
  %i.ccx = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.jf)
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.byk)
  br label %bb.ael

bb.aek:                                           ; preds = %bb.aei
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.jf)
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.byk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf)
  br label %.backedge

bb.ael:                                           ; preds = %.thread1668, %.thread1661
  %.pn7791664 = phi { ptr, i32 } [ %i.ccx, %.thread1661 ], [ %i.ccm, %.thread1668 ]
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.jh)
  br label %.thread1665

bb.aem:                                           ; preds = %bb.adt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.hv, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ji)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.jm)
          to label %bb.aen unwind label %bb.aaq

bb.aen:                                           ; preds = %bb.aem
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.jm)
          to label %bb.aeo unwind label %bb.zd

bb.aeo:                                           ; preds = %bb.aen
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm)
  br label %bb.aep

bb.aep:                                           ; preds = %bb.aer, %bb.aeo
  call fastcc void @"_ZN4core3ptr161drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$17h9c5c41c218fd75bdE"(ptr noalias noundef align 8 dereferenceable(512) %i.js)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.js)
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..vectors..EmbeddingExtractor$GT$17h9162ed472aba9c53E"(ptr noalias noundef align 8 dereferenceable(64) %i.jt)
          to label %bb.aes unwind label %bb.dz

bb.aeq:                                           ; preds = %bb.zx
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.jr)
          to label %bb.aer unwind label %bb.zd

bb.aer:                                           ; preds = %bb.aeq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jr)
  br label %bb.aep

bb.aes:                                           ; preds = %bb.aep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jt)
  br label %.thread1682

bb.aet:                                           ; preds = %bb.ws
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.hy, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz)
  br label %.thread1682

bb.aeu:                                           ; preds = %bb.afm, %bb.afq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp)
  %i.ccy = trunc nuw i8 %.sroa.0326.7.ph to i1
  br i1 %i.ccy, label %.thread1682, label %.thread1749

bb.aev:                                           ; preds = %bb.wn
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kl)
          to label %.thread1770 unwind label %.thread1744.thread

.thread1770:                                      ; preds = %bb.aev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp)
  br label %.thread1682

end_hunk_16
begin_hunk_17_@_ZN5milli6update3new7indexer7extract11extract_all17hc37ca11824f0c72bE:bb.a
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 48
  store i64 1, ptr %i.mk, align 8
  %.sroa.4364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4364.0..sroa_idx, align 8
  %.sroa.5365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i64 0, ptr %.sroa.5365.0..sroa_idx, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store ptr %i.yy, ptr %i.yz, align 8
  %i.za = load i64, ptr %3, align 8, !range !72, !noundef !57
  %.not716 = icmp eq i64 %i.za, 2
  br i1 %.not716, label %bb.de, label %bb.dd

bb.cv:                                            ; preds = %.thread1404, %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ml, ptr noundef nonnull align 8 dereferenceable(40) %i.mj, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mj)
  br label %bb.cz

bb.cw:                                            ; preds = %bb.cx
  %i.zb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.mj) #81
          to label %.thread1365 unwind label %bb.p

.thread1404:                                      ; preds = %bb.cq, %bb.cs, %bb.ct, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mj)
  %i.zc = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17ha569ea49cb526988E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  store i64 2, ptr %i.mj, align 8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  store ptr %i.zc, ptr %i.zd, align 8
  %i.ze = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.zf = icmp eq i8 %i.ze, 0
  br i1 %i.zf, label %bb.cx, label %bb.cv

bb.cx:                                            ; preds = %.thread1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mi)
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 48
  store i64 1, ptr %i.mi, align 8
  %.sroa.4370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4370.0..sroa_idx, align 8
  %.sroa.5371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store i64 0, ptr %.sroa.5371.0..sroa_idx, align 8
  %i.zh = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  store ptr %i.zg, ptr %i.zh, align 8
  %i.zi = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mi)
          to label %bb.cy unwind label %bb.cw     ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mi)
  br label %bb.cv

bb.cz:                                            ; preds = %bb.df, %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !162435)
  %i.zj = load i64, ptr %i.ml, align 8, !range !72, !alias.scope !162435, !noundef !57
  %.not.i963 = icmp eq i64 %i.zj, 2
  br i1 %.not.i963, label %.noexc967, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ml, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.zk)
          to label %.noexc967 unwind label %bb.dh

.noexc967:                                        ; preds = %bb.cz, %bb.da
  %i.zl = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.zm = icmp eq i8 %i.zl, 0
  br i1 %i.zm, label %bb.db, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969

bb.db:                                            ; preds = %.noexc967
  %i.zn = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  %i.zo = load ptr, ptr %i.zn, align 8, !alias.scope !162435, !align !61, !noundef !57 ; 3 uses
  %.not4.i964 = icmp eq ptr %i.zo, null
  br i1 %.not4.i964, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz), !noalias !162435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !162435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !noalias !162435
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8, !nonnull !57, !align !64, !noundef !57
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  %i.zs = load i64, ptr %i.zr, align 8, !noundef !57
  store ptr %i.zq, ptr %i.fx, align 8, !noalias !162435
  %i.zt = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.zs, ptr %i.zt, align 8, !noalias !162435
  store ptr %i.fx, ptr %i.fy, align 8, !noalias !162435
  %.sroa.43.0..sroa_idx.i965 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i965, align 8, !noalias !162435
  store ptr @4688, ptr %i.fz, align 8, !noalias !162435
  %i.zu = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 2, ptr %i.zu, align 8, !noalias !162435
  %i.zv = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  store ptr null, ptr %i.zv, align 8, !noalias !162435
  %i.zw = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store ptr %i.fy, ptr %i.zw, align 8, !noalias !162435
  %i.zx = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store i64 1, ptr %i.zx, align 8, !noalias !162435
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ml, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.fz)
          to label %.noexc968 unwind label %bb.dh

.noexc968:                                        ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !noalias !162435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !162435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !162435
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969

bb.dd:                                            ; preds = %bb.cu
  %i.zy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.zz = load i64, ptr %i.zy, align 8, !range !90, !noundef !57
  br label %bb.de

bb.de:                                            ; preds = %bb.cu, %bb.dd
  %.sroa.0366.0 = phi i64 [ %i.zz, %bb.dd ], [ 0, %bb.cu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic)
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i64 %.sroa.0366.0, ptr %i.aaa, align 8
  store ptr %i.yx, ptr %i.ic, align 8
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %i.mk, ptr %i.aab, align 8
  invoke fastcc void @_ZN12tracing_core10dispatcher11get_default17h0487c2a28cd0d0bdE(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ml, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ic)
          to label %bb.df unwind label %.split1373.thread

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mk)
  br label %bb.cz

bb.dg:                                            ; preds = %bb.dj, %bb.dh
  %.sroa.0330.2 = phi i1 [ false, %bb.dj ], [ %.sroa.0330.3, %bb.dh ]
  %.pn848.pn.pn.pn = phi { ptr, i32 } [ %.pn848.pn.pn, %bb.dj ], [ %i.aac, %bb.dh ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ml) #81
          to label %bb.ac unwind label %bb.p

bb.dh:                                            ; preds = %bb.dc, %bb.dy, %bb.dw, %bb.da
  %.sroa.0330.3 = phi i1 [ false, %bb.dy ], [ true, %bb.dc ], [ true, %bb.da ], [ false, %bb.dw ]
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969: ; preds = %.noexc968, %bb.db, %.noexc967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.mh, ptr noundef nonnull align 8 dereferenceable(512) %i.mq, i64 512, i1 false)
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 512 ; 2 uses
  %.sroa.5390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 520
  %.sroa.6391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 528 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4389.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.6391.0..sroa_idx, align 8
  %.sroa.7392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 536 ; 2 uses
  store i64 0, ptr %.sroa.7392.0..sroa_idx, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.mh, i64 504
  %i.aae = load i64, ptr %i.aad, align 8, !alias.scope !162436, !noalias !162437, !noundef !57 ; 2 uses
  %i.aaf = icmp eq i64 %i.aae, 0
  br i1 %i.aaf, label %._crit_edge, label %.preheader1.i.i.preheader.lr.ph

.preheader1.i.i.preheader.lr.ph:                  ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969
  %i.aag = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %.sroa.41283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mg, i64 56
  %.sroa.51285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mg, i64 72
  %.sroa.41274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %.sroa.51275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %.sroa.61276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 24 ; 3 uses
  %.sroa.71277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 32 ; 3 uses
  %.sroa.81278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  %.sroa.91279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 48 ; 2 uses
  %.sroa.101281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 56 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aai = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 2 uses
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 24 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 32 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %.sroa.42.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.preheader1.i.i.preheader

.preheader1.i.i.preheader:                        ; preds = %.preheader1.i.i.preheader.lr.ph, %bb.agn
  %i.aaj = phi i64 [ 0, %.preheader1.i.i.preheader.lr.ph ], [ %i.abb, %bb.agn ]
  %i.aak = phi i64 [ 0, %.preheader1.i.i.preheader.lr.ph ], [ %i.aao, %bb.agn ]
  %i.aal = phi i64 [ 1, %.preheader1.i.i.preheader.lr.ph ], [ %i.aan, %bb.agn ]
  %i.aam = phi i64 [ 0, %.preheader1.i.i.preheader.lr.ph ], [ %i.aaw, %bb.agn ]
  call void @llvm.experimental.noalias.scope.decl(metadata !162438)
  call void @llvm.experimental.noalias.scope.decl(metadata !162439)
  call void @llvm.experimental.noalias.scope.decl(metadata !162440)
  br label %.preheader1.i.i

.preheader1.i.i:                                  ; preds = %.preheader1.i.i.preheader, %.loopexit.i.i
  %i.aan = phi i64 [ %i.aas, %.loopexit.i.i ], [ %i.aal, %.preheader1.i.i.preheader ] ; 4 uses
  %i.aao = phi i64 [ %i.aat, %.loopexit.i.i ], [ %i.aak, %.preheader1.i.i.preheader ] ; 3 uses
  %.promoted4.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %i.aam, %.preheader1.i.i.preheader ] ; 3 uses
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.aao
  %i.aaq = load ptr, ptr %i.aap, align 8, !alias.scope !162436, !noalias !162437, !noundef !57 ; 2 uses
  %i.aar = icmp eq ptr %i.aaq, null
  br i1 %i.aar, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader1.i.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.aan, i64 %.promoted4.i.i)
  %exitcond.not.i.i2124.not = icmp ult i64 %.promoted4.i.i, %i.aan
  br i1 %exitcond.not.i.i2124.not, label %.lr.ph2125, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.preheader.preheader.i.i, %.preheader1.i.i
  %i.aas = shl i64 %i.aan, 1                      ; 2 uses
  store i64 %i.aas, ptr %.sroa.6391.0..sroa_idx, align 8, !alias.scope !162441, !noalias !162442
  %i.aat = add nuw nsw i64 %i.aao, 1              ; 2 uses
  store i64 %i.aat, ptr %.sroa.5390.0..sroa_idx, align 8, !alias.scope !162441, !noalias !162442
  br label %.preheader1.i.i

.preheader.i.i:                                   ; preds = %.lr.ph2125
  %exitcond.not.i.i = icmp eq i64 %i.aaw, %umax.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph2125

.lr.ph2125:                                       ; preds = %.preheader.preheader.i.i, %.preheader.i.i
  %i.aau = phi i64 [ %i.aaw, %.preheader.i.i ], [ %.promoted4.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %i.aav = getelementptr inbounds nuw [104 x i8], ptr %i.aaq, i64 %i.aau ; 3 uses
  %i.aaw = add i64 %i.aau, 1                      ; 4 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 96
  %i.aay = load i8, ptr %i.aax, align 1, !range !74, !noalias !162443, !noundef !57
  %i.aaz = trunc nuw i8 %i.aay to i1
  br i1 %i.aaz, label %bb.di, label %.preheader.i.i

bb.di:                                            ; preds = %.lr.ph2125
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aav, i64 96
  store i64 %i.aaw, ptr %.sroa.7392.0..sroa_idx, align 8, !alias.scope !162441, !noalias !162442
  %i.abb = add nuw i64 %i.aaj, 1                  ; 3 uses
  store i64 %i.abb, ptr %.sroa.4389.0..sroa_idx, align 8, !alias.scope !162441, !noalias !162442
  store i8 0, ptr %i.aba, align 1, !noalias !162444
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.hr, ptr noundef nonnull align 8 dereferenceable(88) %i.abc, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.mg, ptr noundef nonnull align 8 dereferenceable(88) %i.hr, i64 88, i1 false)
  %.sroa.01282.0.copyload = load ptr, ptr %i.aag, align 8, !nonnull !57, !noundef !57 ; 6 uses
  %.sroa.41283.0.copyload = load i64, ptr %.sroa.41283.0..sroa_idx, align 8 ; 5 uses
  %.sroa.51285.0.copyload = load i64, ptr %.sroa.51285.0..sroa_idx, align 8 ; 3 uses
  %.val24.i.i.i = load <16 x i8>, ptr %.sroa.01282.0.copyload, align 16, !noalias !162445
  %i.abd = icmp eq i64 %.sroa.41283.0.copyload, 0 ; 2 uses
  br i1 %i.abd, label %bb.agc, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i: ; preds = %bb.di
  %i.abe = icmp slt i64 %.sroa.41283.0.copyload, 576460752303423487
  call void @llvm.assume(i1 %i.abe)
  %i.abf = shl i64 %.sroa.41283.0.copyload, 5     ; 2 uses
  %i.abg = add i64 %i.abf, 32                     ; 2 uses
  %i.abh = add nsw i64 %.sroa.41283.0.copyload, 17
  %i.abi = add i64 %i.abh, %i.abg                 ; 3 uses
  %i.abj = icmp uge i64 %i.abi, %i.abg
  call void @llvm.assume(i1 %i.abj)
  %i.abk = icmp ult i64 %i.abi, 9223372036854775793
  call void @llvm.assume(i1 %i.abk)
  %i.abl = sub nuw nsw i64 -32, %i.abf
  %i.abm = getelementptr inbounds i8, ptr %.sroa.01282.0.copyload, i64 %i.abl
  br label %bb.agc

bb.dj:                                            ; preds = %bb.aga, %bb.dk
  %.pn848.pn.pn = phi { ptr, i32 } [ %.pn848, %bb.aga ], [ %i.abn, %bb.dk ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ml) #81
          to label %bb.dg unwind label %bb.p

bb.dk:                                            ; preds = %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hb8e7b990f523fe2eE.exit.i.i.i.i.i.i", %bb.dr
  %i.abn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

._crit_edge:                                      ; preds = %bb.agn, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit969
  call fastcc void @"_ZN4core3ptr252drop_in_place$LT$thread_local..ThreadLocal$LT$milli..update..new..thread_local..MostlySendWrapper$LT$milli..update..new..thread_local..FullySend$LT$core..cell..RefCell$LT$milli..update..new..extract..documents..DocumentExtractorData$GT$$GT$$GT$$GT$$GT$17h17ef31f0d34629e3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(544) %i.mh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mh)
  call void @llvm.experimental.noalias.scope.decl(metadata !162446)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !162446
  call void @llvm.experimental.noalias.scope.decl(metadata !162447)
  call void @llvm.experimental.noalias.scope.decl(metadata !162448)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !162449)
  %i.abo = load ptr, ptr %8, align 8, !alias.scope !162450, !noalias !162451, !noundef !57 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.abo, null
  br i1 %.not.i.i.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h578823fc7f131677E.exit.i", label %bb.dl

bb.dl:                                            ; preds = %._crit_edge
  %i.abp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.abq = load i64, ptr %i.abp, align 8, !alias.scope !162450, !noalias !162451, !noundef !57 ; 5 uses
  %i.abr = icmp eq i64 %i.abq, 0
  br i1 %i.abr, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader"

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader": ; preds = %bb.dl
  %xtraiter = and i64 %i.abq, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol"

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol"
  %.sroa.01.0.i17.i.i.i.prol = phi ptr [ %i.abt, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ], [ %i.abo, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ]
  %.sroa.5.0.i16.i.i.i.prol = phi i64 [ %i.abu, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ], [ %i.abq, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ]
  %prol.iter = phi i64 [ %prol.iter.next, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ], [ 0, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ]
  %i.abs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i17.i.i.i.prol, i64 368
  %i.abt = load ptr, ptr %i.abs, align 8, !noalias !162452, !nonnull !57, !noundef !57 ; 3 uses
  %i.abu = add i64 %.sroa.5.0.i16.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol", !llvm.loop !161928

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader"
  %.lcssa2161.unr = phi ptr [ poison, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ], [ %i.abt, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ]
  %.sroa.01.0.i17.i.i.i.unr = phi ptr [ %i.abo, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ], [ %i.abt, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ]
  %.sroa.5.0.i16.i.i.i.unr = phi i64 [ %i.abq, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.preheader" ], [ %i.abu, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol" ]
  %i.abv = icmp ult i64 %i.abq, 8
  br i1 %i.abv, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i"

"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i"
  %.sroa.01.0.i17.i.i.i = phi ptr [ %i.acl, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i" ], [ %.sroa.01.0.i17.i.i.i.unr, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit" ]
  %.sroa.5.0.i16.i.i.i = phi i64 [ %i.acm, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i" ], [ %.sroa.5.0.i16.i.i.i.unr, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit" ]
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i17.i.i.i, i64 368
  %i.abx = load ptr, ptr %i.abw, align 8, !noalias !162452, !nonnull !57, !noundef !57
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 368
  %i.abz = load ptr, ptr %i.aby, align 8, !noalias !162452, !nonnull !57, !noundef !57
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 368
  %i.acb = load ptr, ptr %i.aca, align 8, !noalias !162452, !nonnull !57, !noundef !57
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 368
  %i.acd = load ptr, ptr %i.acc, align 8, !noalias !162452, !nonnull !57, !noundef !57
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 368
  %i.acf = load ptr, ptr %i.ace, align 8, !noalias !162452, !nonnull !57, !noundef !57
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 368
  %i.ach = load ptr, ptr %i.acg, align 8, !noalias !162452, !nonnull !57, !noundef !57
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 368
  %i.acj = load ptr, ptr %i.aci, align 8, !noalias !162452, !nonnull !57, !noundef !57
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 368
  %i.acl = load ptr, ptr %i.ack, align 8, !noalias !162452, !nonnull !57, !noundef !57 ; 2 uses
  %i.acm = add i64 %.sroa.5.0.i16.i.i.i, -8       ; 2 uses
  %i.acn = icmp eq i64 %i.acm, 0
  br i1 %i.acn, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", label %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i"

"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit", %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i", %bb.dl
  %.sroa.01.0.i.lcssa.i.i.i = phi ptr [ %i.abo, %bb.dl ], [ %.lcssa2161.unr, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i.prol.loopexit" ], [ %i.acl, %"_ZN5alloc11collections5btree6search91_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$$GT$22find_lower_bound_index17hf9124a788fca7b39E.exit.i.i.i.i" ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i8 0, i64 16, i1 false), !noalias !162453
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h578823fc7f131677E.exit.i"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h578823fc7f131677E.exit.i": ; preds = %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i", %._crit_edge
  %.sroa.5.0.i.i = phi ptr [ %8, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i" ], [ null, %._crit_edge ]
  %.sroa.7.0.i.i = phi ptr [ %.sroa.01.0.i.lcssa.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11lower_bound17h7430143586430d0fE.exit.i.i.i" ], [ null, %._crit_edge ] ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ef, align 8, !alias.scope !162447, !noalias !162454
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.aco, align 8, !alias.scope !162447, !noalias !162454
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  store ptr %.sroa.5.0.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !162447, !noalias !162454
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i1080 = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i1080, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !162454
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !162455)
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 2 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162456)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !162457
  %.sroa.6.sroa.0.0.copyload39.i.i17.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i1080, align 8, !alias.scope !162458, !noalias !162459
  %.sroa.6.sroa.5.0.copyload40.i.i18.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !162458, !noalias !162459
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !162458, !noalias !162459
  %.not41.i.i19.i.i = icmp eq ptr %.sroa.7.0.i.i, null
  br i1 %.not41.i.i19.i.i, label %"_ZN125_$LT$alloc..collections..btree..map..ExtractIf$LT$K$C$V$C$R$C$F$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9733457fbfe73541E.exit.thread.i.i", label %.lr.ph.i.i.preheader.lr.ph.i.i

.lr.ph.i.i.preheader.lr.ph.i.i:                   ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$10extract_if17h578823fc7f131677E.exit.i"
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.acq = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %.sroa.436.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %.sroa.537.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.sroa.638.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %.sroa.330.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %.sroa.531.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  br label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i", %.lr.ph.i.i.preheader.lr.ph.i.i
  %.sroa.6.sroa.5.0.copyload40.i.i22.i.i = phi i64 [ %.sroa.6.sroa.5.0.copyload40.i.i18.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i ], [ %.sroa.6.sroa.5.0.copyload40.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i" ]
  %.sroa.6.sroa.0.0.copyload39.i.i21.i.i = phi i64 [ %.sroa.6.sroa.0.0.copyload39.i.i17.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i ], [ %.sroa.6.sroa.0.0.copyload39.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i" ]
  %.promoted.i.i20.i.i = phi ptr [ %.sroa.7.0.i.i, %.lr.ph.i.i.preheader.lr.ph.i.i ], [ %.promoted.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5d9f343381db527cE.exit.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !162460)
  call void @llvm.experimental.noalias.scope.decl(metadata !162461)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i", %.lr.ph.i.i.preheader.i.i
  %.sroa.6.sroa.5.0.copyload44.i.i.i.i = phi i64 [ %.sroa.715.0.i.i.i.i, %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i" ], [ %.sroa.6.sroa.5.0.copyload40.i.i22.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.sroa.6.sroa.0.0.copyload43.i.i.i.i = phi i64 [ 0, %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i" ], [ %.sroa.6.sroa.0.0.copyload39.i.i21.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.sroa.013.03842.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i, %"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h898643422c3c3e03E.exit.i.i.i.i" ], [ %.promoted.i.i20.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.sroa.013.03842.i.i.i.i, i64 362
  %i.acs = load i16, ptr %i.acr, align 2, !noalias !162462, !noundef !57
  %i.act = zext i16 %i.acs to i64
  %i.acu = icmp ult i64 %.sroa.6.sroa.5.0.copyload44.i.i.i.i, %i.act
  br i1 %i.acu, label %bb.dn, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i, %bb.dm
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.acv, %bb.dm ], [ %.sroa.013.03842.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.acx, %bb.dm ], [ %.sroa.6.sroa.0.0.copyload43.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.acv = load ptr, ptr %.sroa.0.038.i.i.i.i.i, align 8, !noalias !162463, !noundef !57 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.acv, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN125_$LT$alloc..collections..btree..map..ExtractIf$LT$K$C$V$C$R$C$F$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9733457fbfe73541E.exit.thread.i.i", label %bb.dm

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.dm
  %i.acw = zext i16 %i.acz to i64
  br label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i.i
end_hunk_17
begin_hunk_18_@_ZN5milli6update3new7indexer7extract11extract_all17hc37ca11824f0c72bE:bb.a
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.in, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.hp)
          to label %.noexc871 unwind label %bb.adb

.noexc871:                                        ; preds = %bb.acy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !162715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn), !noalias !162715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho), !noalias !162715
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit

bb.acz:                                           ; preds = %bb.acq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.im)
  br label %bb.acv

bb.ada:                                           ; preds = %bb.adc, %bb.adb
  %.pn807 = phi { ptr, i32 } [ %i.cbm, %bb.adb ], [ %i.cbn, %bb.adc ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.in) #81
          to label %bb.acj unwind label %bb.p

bb.adb:                                           ; preds = %bb.acy, %bb.ade, %bb.adf, %bb.acw
  %i.cbm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ada

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit: ; preds = %.noexc871, %bb.acx, %.noexc870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ij)
  invoke fastcc void @_ZN5milli6update3new7indexer16document_changes7extract17h7252c225ff144094E(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.ij, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.iq, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %2, ptr noalias noundef align 8 dereferenceable(512) %6, ptr noundef nonnull align 8 %i.io)
          to label %bb.add unwind label %bb.adc

bb.adc:                                           ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit
  %i.cbn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.in) #81
          to label %bb.ada unwind label %bb.p

bb.add:                                           ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit
  %i.cbo = load i64, ptr %i.ij, align 8, !range !111, !noundef !57 ; 2 uses
  %.not805 = icmp eq i64 %i.cbo, 97
  br i1 %.not805, label %bb.adf, label %bb.ade

bb.ade:                                           ; preds = %bb.add
  %.sroa.4668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.sroa.2670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.2670.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.4668.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij)
  store i64 %i.cbo, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.in)
          to label %bb.adj unwind label %bb.adb

bb.adf:                                           ; preds = %bb.add
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.in)
          to label %bb.adg unwind label %bb.adb

bb.adg:                                           ; preds = %bb.adf
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.in)
          to label %bb.adh unwind label %bb.ack

bb.adh:                                           ; preds = %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in)
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$$LP$$RP$$GT$$GT$17hd770fc7b483fedc9E"(ptr noalias noundef align 8 dereferenceable(512) %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq)
  br label %bb.adi

bb.adi:                                           ; preds = %bb.acg, %bb.adh
  %.val1033 = load ptr, ptr %.sroa.91345.0.copyload, align 8, !nonnull !57, !noundef !57
  invoke fastcc void @_ZN5milli8progress8Progress15update_progress17hceb73378a555a73cE(ptr nonnull %.val1033, i8 noundef 18)
          to label %bb.adl unwind label %bb.dz

bb.adj:                                           ; preds = %bb.ade
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.in)
          to label %bb.adk unwind label %bb.ack

bb.adk:                                           ; preds = %bb.adj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in)
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$$LP$$RP$$GT$$GT$17hd770fc7b483fedc9E"(ptr noalias noundef align 8 dereferenceable(512) %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq)
  br label %.thread1682

bb.adl:                                           ; preds = %bb.adi
  store atomic i8 1, ptr %7 monotonic, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ii)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ii, ptr noundef nonnull align 8 dereferenceable(80) %i.md, i64 80, i1 false)
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.ii, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cbp, ptr noundef nonnull align 8 dereferenceable(72) %i.mc, i64 72, i1 false)
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.ii, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cbq, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.cbr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cbr, ptr noundef nonnull align 8 dereferenceable(176) %i.ii, i64 176, i1 false)
  store i64 97, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.md)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mr)
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E"(ptr noalias noundef align 8 dereferenceable(24) %i.mt)
          to label %bb.adm unwind label %bb.w

bb.adm:                                           ; preds = %bb.adl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mt)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.mx)
          to label %bb.adn unwind label %bb.u

bb.adn:                                           ; preds = %bb.adm
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.mx)
          to label %bb.ado unwind label %.split

bb.ado:                                           ; preds = %bb.adn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mx)
  br label %.invoke

bb.adp:                                           ; preds = %bb.agz, %bb.adq
  %.pn867 = phi { ptr, i32 } [ %i.cbs, %bb.adq ], [ %.pn865, %bb.agz ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %3) #81
          to label %bb.ahb unwind label %bb.p

bb.adq:                                           ; preds = %.invoke
  %i.cbs = landingpad { ptr, i32 }
          cleanup
  br label %bb.adp

bb.adr:                                           ; preds = %.invoke
  call fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %3)
  ret void

.thread1665:                                      ; preds = %.loopexit, %.loopexit.split-lp, %bb.aec, %bb.ady, %bb.ael
  %.pn781 = phi { ptr, i32 } [ %i.ccp, %bb.aec ], [ %.pn7791664, %bb.ael ], [ %i.cci, %bb.ady ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.jm) #81
          to label %bb.aap unwind label %bb.p

.loopexit:                                        ; preds = %bb.aar
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread1665

.loopexit.split-lp:                               ; preds = %bb.adt, %bb.adw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1665

bb.ads:                                           ; preds = %bb.aar
  %i.cbt = load i64, ptr %i.jg, align 8, !range !84, !noundef !57 ; 3 uses
  %i.cbu = icmp eq i64 %i.cbt, -9223372036854775807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7243, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4598.0..sroa_idx, i64 24, i1 false)
  br i1 %i.cbu, label %bb.adt, label %bb.adu

bb.adt:                                           ; preds = %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7243, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.hv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hw)
          to label %bb.aem unwind label %.loopexit.split-lp

bb.adu:                                           ; preds = %bb.ads
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5599.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jg)
  %.not774 = icmp eq i64 %i.cbt, -9223372036854775808
  br i1 %.not774, label %bb.adw, label %bb.adv, !prof !60

bb.adv:                                           ; preds = %bb.adu
  store i64 %i.cbt, ptr %i.jh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3248.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7243, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  %i.cbv = load i64, ptr %i.byg, align 8, !alias.scope !162716, !noalias !162717, !noundef !57
  %i.cbw = icmp eq i64 %i.cbv, 0
  br i1 %i.cbw, label %._crit_edge1837, label %.preheader1.i.i1231.preheader

bb.adw:                                           ; preds = %bb.adu
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2647) #80
          to label %bb.adx unwind label %.loopexit.split-lp

bb.adx:                                           ; preds = %bb.adw
  unreachable

.preheader1.i.i1231.preheader:                    ; preds = %bb.adv, %.backedge
  %.sroa.41325.01836 = phi i64 [ %i.ccj, %.backedge ], [ 0, %bb.adv ]
  %.sroa.71326.01835 = phi i64 [ %.sroa.71326.1, %.backedge ], [ 0, %bb.adv ]
  %.sroa.101327.01834 = phi i64 [ %.sroa.101327.1, %.backedge ], [ 1, %bb.adv ]
  %.sroa.131328.01833 = phi i64 [ %i.cce, %.backedge ], [ 0, %bb.adv ]
  call void @llvm.experimental.noalias.scope.decl(metadata !162718)
  br label %.preheader1.i.i1231

.preheader1.i.i1231:                              ; preds = %.preheader1.i.i1231.preheader, %.loopexit.i.i1241
  %.sroa.101327.1 = phi i64 [ %i.cca, %.loopexit.i.i1241 ], [ %.sroa.101327.01834, %.preheader1.i.i1231.preheader ] ; 4 uses
  %.sroa.71326.1 = phi i64 [ %i.ccb, %.loopexit.i.i1241 ], [ %.sroa.71326.01835, %.preheader1.i.i1231.preheader ] ; 3 uses
  %.promoted4.i.i1235 = phi i64 [ 0, %.loopexit.i.i1241 ], [ %.sroa.131328.01833, %.preheader1.i.i1231.preheader ] ; 3 uses
  %i.cbx = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.sroa.71326.1
  %i.cby = load ptr, ptr %i.cbx, align 8, !alias.scope !162718, !noalias !162717, !noundef !57 ; 2 uses
  %i.cbz = icmp eq ptr %i.cby, null
  br i1 %i.cbz, label %.loopexit.i.i1241, label %.preheader.preheader.i.i1236

.preheader.preheader.i.i1236:                     ; preds = %.preheader1.i.i1231
  %umax.i.i1237 = call i64 @llvm.umax.i64(i64 %.sroa.101327.1, i64 %.promoted4.i.i1235)
  %exitcond.not.i.i12392139.not = icmp ult i64 %.promoted4.i.i1235, %.sroa.101327.1
  br i1 %exitcond.not.i.i12392139.not, label %.lr.ph2140, label %.loopexit.i.i1241

.loopexit.i.i1241:                                ; preds = %.preheader.i.i1238, %.preheader.preheader.i.i1236, %.preheader1.i.i1231
  %i.cca = shl i64 %.sroa.101327.1, 1
  %i.ccb = add nuw nsw i64 %.sroa.71326.1, 1
  br label %.preheader1.i.i1231

.preheader.i.i1238:                               ; preds = %.lr.ph2140
  %exitcond.not.i.i1239 = icmp eq i64 %i.cce, %umax.i.i1237
  br i1 %exitcond.not.i.i1239, label %.loopexit.i.i1241, label %.lr.ph2140

.lr.ph2140:                                       ; preds = %.preheader.preheader.i.i1236, %.preheader.i.i1238
  %i.ccc = phi i64 [ %i.cce, %.preheader.i.i1238 ], [ %.promoted4.i.i1235, %.preheader.preheader.i.i1236 ] ; 2 uses
  %i.ccd = getelementptr inbounds nuw [64 x i8], ptr %i.cby, i64 %i.ccc ; 2 uses
  %i.cce = add i64 %i.ccc, 1                      ; 3 uses
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.ccd, i64 56
  %i.ccg = load i8, ptr %i.ccf, align 1, !range !74, !noalias !162719, !noundef !57
  %i.cch = trunc nuw i8 %i.ccg to i1
  br i1 %i.cch, label %bb.adz, label %.preheader.i.i1238

bb.ady:                                           ; preds = %._crit_edge1837
  %i.cci = landingpad { ptr, i32 }
          cleanup
  br label %.thread1665

bb.adz:                                           ; preds = %.lr.ph2140
  %i.ccj = add i64 %.sroa.41325.01836, 1          ; 2 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccd, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7253)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu)
  %.val1042 = load ptr, ptr %i.byk, align 8, !nonnull !57, !noundef !57
  %.val1043 = load i64, ptr %i.bym, align 8, !noundef !57
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17hd9077e9ac5e0034bE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.hu, ptr noalias noundef align 8 dereferenceable(48) %i.cck, ptr nonnull %.val1042, i64 %.val1043)
          to label %bb.aef unwind label %.thread1668

.thread1668:                                      ; preds = %bb.adz
  %i.ccl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ael

._crit_edge1837:                                  ; preds = %.backedge, %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.je)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jd)
  store ptr %4, ptr %i.jd, align 8
  %i.ccm = load ptr, ptr %i.byk, align 8, !nonnull !57, !noundef !57
  %i.ccn = load i64, ptr %i.bym, align 8, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jc, ptr noundef nonnull align 8 dereferenceable(56) %i.jh, i64 56, i1 false)
  invoke void @_ZN5milli6update3new7channel15EmbeddingSender16embedding_status17h3af35b1bd87a9fb8E(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ccm, i64 noundef %i.ccn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.jc)
          to label %bb.aea unwind label %bb.ady

bb.aea:                                           ; preds = %._crit_edge1837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc)
  call void @llvm.experimental.noalias.scope.decl(metadata !162720)
  %i.cco = load i64, ptr %i.je, align 8, !range !111, !alias.scope !162720, !noalias !162721, !noundef !57
  %.not.i = icmp eq i64 %i.cco, 97
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd6296b7c890988ebE.exit", label %bb.aeb, !prof !58

bb.aeb:                                           ; preds = %bb.aea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hq), !noalias !162722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.hq, ptr noundef nonnull align 8 dereferenceable(320) %i.je, i64 320, i1 false), !noalias !162721
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.hq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2152, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2648) #80
          to label %bb.aed unwind label %bb.aec, !noalias !162720

bb.aec:                                           ; preds = %bb.aeb
  %i.ccp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr40drop_in_place$LT$milli..error..Error$GT$17h987c3bd021a7dfc7E"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.hq) #81
          to label %.thread1665 unwind label %bb.aee, !noalias !162720

bb.aed:                                           ; preds = %bb.aeb
  unreachable

bb.aee:                                           ; preds = %bb.aec
  %i.ccq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !162720
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd6296b7c890988ebE.exit": ; preds = %bb.aea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  %i.ccr = icmp eq ptr %.sroa.0701.11841, %i.byf  ; 2 uses
  %.sroa.0701.1.idx = select i1 %i.ccr, i64 0, i64 680
  %.sroa.0701.1 = getelementptr inbounds nuw i8, ptr %.sroa.0701.11841, i64 %.sroa.0701.1.idx
  br i1 %i.ccr, label %._crit_edge1843, label %bb.aar

bb.aef:                                           ; preds = %bb.adz
  %i.ccs = load i64, ptr %i.hu, align 8, !range !83, !noundef !57 ; 3 uses
  %.not776 = icmp eq i64 %i.ccs, -9223372036854775808
  br i1 %.not776, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.thread", label %bb.aeg

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.thread": ; preds = %bb.aef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu)
  br label %bb.aej

bb.aeg:                                           ; preds = %bb.aef
  %.sroa.0610.0.copyload = load i64, ptr %i.byh, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7253, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4611.0..sroa_idx, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !162723)
  call void @llvm.experimental.noalias.scope.decl(metadata !162724)
  %i.cct = icmp eq i64 %i.ccs, 0
  br i1 %i.cct, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit", label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg
  %.val1.i.i = load ptr, ptr %i.byi, align 8, !alias.scope !162725, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ccs, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !162725
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit": ; preds = %bb.aeh, %bb.aeg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu)
  %.not778 = icmp eq i64 %.sroa.0610.0.copyload, -9223372036854775808
  br i1 %.not778, label %bb.aej, label %bb.aei

bb.aei:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jf)
  store i64 %.sroa.0610.0.copyload, ptr %i.jf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7253.0..sroa_idx254, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7253, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7253)
  invoke void @_ZN5milli6vector2db20EmbeddingStatusDelta8apply_to17h239cb0d12f50751aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.jf, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.jh)
          to label %bb.aek unwind label %.thread1661

bb.aej:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.thread", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7253)
  br label %.backedge

.backedge:                                        ; preds = %bb.aej, %bb.aek
  %i.ccu = load i64, ptr %i.byg, align 8, !alias.scope !162726, !noalias !162717, !noundef !57
  %i.ccv = icmp eq i64 %i.ccu, %i.ccj
  br i1 %i.ccv, label %._crit_edge1837, label %.preheader1.i.i1231.preheader

.thread1661:                                      ; preds = %bb.aei
  %i.ccw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.jf)
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.byj)
  br label %bb.ael

bb.aek:                                           ; preds = %bb.aei
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.jf)
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.byj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf)
  br label %.backedge

bb.ael:                                           ; preds = %.thread1668, %.thread1661
  %.pn7791664 = phi { ptr, i32 } [ %i.ccw, %.thread1661 ], [ %i.ccl, %.thread1668 ]
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$milli..vector..db..EmbeddingStatus$GT$17h5cb3118f83d9c0e9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.jh)
  br label %.thread1665

bb.aem:                                           ; preds = %bb.adt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.hv, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ji)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.jm)
          to label %bb.aen unwind label %bb.aaq

bb.aen:                                           ; preds = %bb.aem
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.jm)
          to label %bb.aeo unwind label %bb.zd

bb.aeo:                                           ; preds = %bb.aen
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm)
  br label %bb.aep

bb.aep:                                           ; preds = %bb.aer, %bb.aeo
  call fastcc void @"_ZN4core3ptr161drop_in_place$LT$milli..update..new..thread_local..ThreadLocal$LT$core..cell..RefCell$LT$milli..update..new..extract..vectors..EmbeddingExtractorData$GT$$GT$$GT$17h9c5c41c218fd75bdE"(ptr noalias noundef align 8 dereferenceable(512) %i.js)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.js)
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$milli..update..new..extract..vectors..EmbeddingExtractor$GT$17h9162ed472aba9c53E"(ptr noalias noundef align 8 dereferenceable(64) %i.jt)
          to label %bb.aes unwind label %bb.dz

bb.aeq:                                           ; preds = %bb.zx
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.jr)
          to label %bb.aer unwind label %bb.zd

bb.aer:                                           ; preds = %bb.aeq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jr)
  br label %bb.aep

bb.aes:                                           ; preds = %bb.aep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jt)
  br label %.thread1682

bb.aet:                                           ; preds = %bb.ws
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.hy, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz)
  br label %.thread1682

bb.aeu:                                           ; preds = %bb.afm, %bb.afq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp)
  %i.ccx = trunc nuw i8 %.sroa.0326.7.ph to i1
  br i1 %i.ccx, label %.thread1682, label %.thread1749

bb.aev:                                           ; preds = %bb.wn
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kl)
          to label %.thread1770 unwind label %.thread1744.thread

.thread1770:                                      ; preds = %bb.aev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp)
  br label %.thread1682

end_hunk_18
