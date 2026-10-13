Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator10advance_by17he386cb90d46c1c4fE:bb.a
"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h77f21c89a0bf9a8fE.exit.i": ; preds = %bb.h, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf60993d1f3bf913aE.exit.i.i.i", %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %1, %bb.b ], [ 0, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf60993d1f3bf913aE.exit.i.i.i" ], [ %i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !129035
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h32026a99e685b442E.exit"

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h32026a99e685b442E.exit": ; preds = %bb.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h77f21c89a0bf9a8fE.exit.i"
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h77f21c89a0bf9a8fE.exit.i" ], [ 0, %bb.a ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17hf52bfa584a9f4fe5E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #34 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h77cc5c482d492a0aE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !range !71, !alias.scope !129060, !noundef !57
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !129060, !noundef !57 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !129060 ; 6 uses
  br i1 %i.b, label %.split.us.preheader.i.i.i, label %.split.i.i.i.preheader

.split.i.i.i.preheader:                           ; preds = %bb.b
  %i.f = sub i64 %i.e, %.promoted.i.i.i
  %i.g = add i64 %1, -1
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.g)
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 5
  br i1 %min.iters.check, label %.split.i.i.i.preheader4, label %vector.ph

.split.i.i.i.preheader4.loopexit:                 ; preds = %vector.body
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !129061
  br label %.split.i.i.i.preheader4

.split.i.i.i.preheader4:                          ; preds = %.split.i.i.i.preheader4.loopexit, %.split.i.i.i.preheader
  %.ph = phi i64 [ %.promoted.i.i.i, %.split.i.i.i.preheader ], [ %i.m, %.split.i.i.i.preheader4.loopexit ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %.split.i.i.i.preheader ], [ %i.n, %.split.i.i.i.preheader4.loopexit ]
  br label %.split.i.i.i

vector.ph:                                        ; preds = %.split.i.i.i.preheader
  %i.j = and i64 %i.i, 3                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub i64 %i.i, %i.l                     ; 3 uses
  %i.m = add i64 %.promoted.i.i.i, %n.vec
  %i.n = sub i64 %1, %n.vec
  %i.o = add nuw nsw i64 %.promoted.i.i.i, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.p = phi i64 [ %i.o, %vector.ph ], [ %i.r, %vector.body ] ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = add nuw nsw i64 %i.p, 4
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %.split.i.i.i.preheader4.loopexit, label %vector.body, !llvm.loop !129054

.split.us.preheader.i.i.i:                        ; preds = %bb.b
  %.not.i.i.i.us.peel.i.i.i = icmp eq i64 %i.e, %.promoted.i.i.i
  br i1 %.not.i.i.i.us.peel.i.i.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h77cc5c482d492a0aE.exit", label %bb.c

bb.c:                                             ; preds = %.split.us.preheader.i.i.i
  store i64 1, ptr %i.c, align 8, !alias.scope !129062
  %i.t = icmp eq i64 %.promoted.i.i.i, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %1, -1
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h77cc5c482d492a0aE.exit"

.split.i.i.i:                                     ; preds = %.split.i.i.i.preheader4, %bb.d
  %i.v = phi i64 [ %i.w, %bb.d ], [ %.ph, %.split.i.i.i.preheader4 ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.y, %bb.d ], [ %.sroa.01.0.i.i.i.ph, %.split.i.i.i.preheader4 ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.e, %i.v
  br i1 %.not.i.i.i.i.i.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h77cc5c482d492a0aE.exit", label %bb.d

bb.d:                                             ; preds = %.split.i.i.i
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !129061
  %i.x = icmp ult i64 %i.v, 2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h77cc5c482d492a0aE.exit", label %.split.i.i.i, !llvm.loop !129059

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h77cc5c482d492a0aE.exit": ; preds = %.split.i.i.i, %bb.d, %bb.a, %.split.us.preheader.i.i.i, %bb.c
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %i.u, %bb.c ], [ %1, %.split.us.preheader.i.i.i ], [ %.sroa.01.0.i.i.i, %.split.i.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17hf52fade20a65be2cE(ptr noalias noundef align 8 dereferenceable(128) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h4472f4db00e5f686E.exit", label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.a = tail call { i32, i32 } @"_ZN90_$LT$roaring..bitmap..iter..IntoIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7e74563c59613b97E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %0)
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h4472f4db00e5f686E.exit"

bb.b:                                             ; preds = %.preheader.i
  %i.d = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h4472f4db00e5f686E.exit", label %.preheader.i

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h4472f4db00e5f686E.exit": ; preds = %.preheader.i, %bb.b, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %.preheader.i ], [ 0, %bb.b ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17hf73f7ae5b5605f00E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129076)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17ha6105fbcf18b539fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129080)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !129081, !noalias !129082, !nonnull !57, !noundef !57 ; 2 uses
  %.promoted.i.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !129081, !noalias !129082 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i.i.i.i.i, %i.b
  br i1 %i.c, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17ha6105fbcf18b539fE.exit", label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i"

"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i": ; preds = %bb.b, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.thread.i.i.i.i.i"
  %.sroa.01.011.i.i.i.i.i = phi i64 [ %.sroa.0.0.i10.i.i.i.i.i, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.thread.i.i.i.i.i" ], [ %1, %bb.b ] ; 5 uses
  %i.d = phi ptr [ %i.e, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.thread.i.i.i.i.i" ], [ %.promoted.i.i.i.i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129083)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !129081 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.thread.sink.split.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i"
  %.sroa.8.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !129081
  switch i64 %.sroa.8.sroa.0.0.copyload.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.i.i.i.i.i" [
    i64 8, label %bb.d
    i64 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %.sroa.0.0.copyload1.i.i.i.i.i, align 1
  %i.g = icmp ne i64 %i.f, 8318834007381210719
  %i.h = zext i1 %i.g to i32
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.thread.i.i.i.i.i", label %"_ZN5milli6update3new8document8Versions21iter_top_level_fields28_$u7b$$u7b$closure$u7d$$u7d$17h21f31728c4da3318E.exit.i.i.i.i.i.i"

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.sroa.0.0.copyload1.i.i.i.i.i, align 1
  %i.j = icmp ne i32 %i.i, 1868916575
  %i.k = zext i1 %i.j to i32
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.thread.i.i.i.i.i", label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.i.i.i.i.i"

"_ZN5milli6update3new8document8Versions21iter_top_level_fields28_$u7b$$u7b$closure$u7d$$u7d$17h21f31728c4da3318E.exit.i.i.i.i.i.i": ; preds = %bb.d
  %i.l = load i64, ptr %.sroa.0.0.copyload1.i.i.i.i.i, align 1
  %i.m = icmp ne i64 %i.l, 7957705967559599967
  %i.n = zext i1 %i.m to i32
  %.not.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.thread.i.i.i.i.i", label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.i.i.i.i.i"

"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.i.i.i.i.i": ; preds = %"_ZN5milli6update3new8document8Versions21iter_top_level_fields28_$u7b$$u7b$closure$u7d$$u7d$17h21f31728c4da3318E.exit.i.i.i.i.i.i", %bb.e, %bb.c
  %i.o = add i64 %.sroa.01.011.i.i.i.i.i, -1      ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.thread.sink.split.i.i.i.i.i", label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.thread.i.i.i.i.i"

"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.thread.i.i.i.i.i": ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.i.i.i.i.i", %"_ZN5milli6update3new8document8Versions21iter_top_level_fields28_$u7b$$u7b$closure$u7d$$u7d$17h21f31728c4da3318E.exit.i.i.i.i.i.i", %bb.e, %bb.d
  %.sroa.0.0.i10.i.i.i.i.i = phi i64 [ %i.o, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.i.i.i.i.i" ], [ %.sroa.01.011.i.i.i.i.i, %"_ZN5milli6update3new8document8Versions21iter_top_level_fields28_$u7b$$u7b$closure$u7d$$u7d$17h21f31728c4da3318E.exit.i.i.i.i.i.i" ], [ %.sroa.01.011.i.i.i.i.i, %bb.d ], [ %.sroa.01.011.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.q = icmp eq ptr %i.e, %i.b
  br i1 %i.q, label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.thread.sink.split.i.i.i.i.i", label %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i"

"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.thread.sink.split.i.i.i.i.i": ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.thread.i.i.i.i.i", %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.i.i.i.i.i", %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i"
  %.sroa.0.0.ph.i.i.i.i.i = phi i64 [ 0, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.i.i.i.i.i" ], [ %.sroa.01.011.i.i.i.i.i, %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.i.i.i.i.i" ], [ %.sroa.0.0.i10.i.i.i.i.i, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h88a036505bc4bd55E.exit.thread.i.i.i.i.i" ]
  store ptr %i.e, ptr %0, align 8, !alias.scope !129081, !noalias !129082
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17ha6105fbcf18b539fE.exit"

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17ha6105fbcf18b539fE.exit": ; preds = %bb.a, %bb.b, %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.thread.sink.split.i.i.i.i.i"
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ %.sroa.0.0.ph.i.i.i.i.i, %"_ZN96_$LT$bumparaw_collections..map..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd4d7592ea012dfc9E.exit.thread.sink.split.i.i.i.i.i" ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17hfef666514147c1efE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h81821de2db00bb23E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !129094, !nonnull !57, !noundef !57 ; 2 uses
  %2 = ptrtoaddr ptr %i.b to i64
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !129094 ; 4 uses
  %i.c = ptrtoaddr ptr %.promoted.i.i.i to i64
  %i.d = sub i64 %2, %i.c
  %i.e = add i64 %1, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e)
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.h = and i64 %i.g, 3                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 4, i64 %i.h
  %n.vec = sub i64 %i.g, %i.j                     ; 3 uses
  %i.k = getelementptr i8, ptr %.promoted.i.i.i, i64 %n.vec
  %i.l = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !129092

middle.block:                                     ; preds = %vector.body
  %i.n = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.n, ptr %0, align 8, !alias.scope !129094
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.k, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.o = phi ptr [ %i.q, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h81821de2db00bb23E.exit", label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !alias.scope !129094
  %i.r = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h81821de2db00bb23E.exit", label %scalar.ph, !llvm.loop !129093

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h81821de2db00bb23E.exit": ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hd448b2136f0ea63eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129127)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !129127, !noalias !129128, !nonnull !57, !align !61, !noundef !57 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129131), !noalias !129132
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129133), !noalias !129132
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !129134, !noalias !129135, !noundef !57 ; 5 uses
  switch i64 %i.c, label %bb.c [
    i64 0, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h56b27539a4a9a44eE.exit"
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !129134, !noalias !129135, !nonnull !57, !noundef !57 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i.i = load i64, ptr %i.f, align 8, !alias.scope !129136, !noalias !129137, !noundef !57 ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val6.i.i = load i64, ptr %i.g, align 8, !noalias !129138, !noundef !57
  %.not.i.i.i.i.i.i = icmp eq i64 %.val4.i.i, %.val6.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.i", label %"_ZN4core6option15Option$LT$T$GT$6map_or17h56b27539a4a9a44eE.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val.i.i = load i64, ptr %i.h, align 8, !alias.scope !129134, !noalias !129135, !noundef !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.val2.i.i = load i64, ptr %i.i, align 8, !alias.scope !129134, !noalias !129135, !noundef !57
  %i.j = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h82d0b7b17ab80b11E(i64 %.val.i.i, i64 %.val2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !129137 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129139), !noalias !129132
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129140), !noalias !129132
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !129141, !noalias !129142, !nonnull !57, !noundef !57 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129143), !noalias !129132
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129144), !noalias !129132
  %i.n = lshr i64 %i.j, 57
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !129145, !noalias !129146, !noundef !57 ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !129145, !noalias !129146, !nonnull !57, !noundef !57 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !129147, !noalias !129148 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !129147, !noalias !129148, !nonnull !57
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.08.0.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ao, %bb.g ]
  %.pn.i.i.i.i = phi i64 [ %i.j, %bb.c ], [ %i.ap, %bb.g ]
  %.sroa.04.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.q ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.04.0.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !129149 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not39.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not39.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.thread.i.i.i.i"
  %.sroa.010.0.i40.i.i.i.i = phi i16 [ %i.an, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.thread.i.i.i.i" ], [ %i.w, %bb.d ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.010.0.i40.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.04.0.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.q
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !129150, !noundef !57 ; 4 uses
  %i.ae = icmp ult i64 %.val.i.i.i.i.i, %i.c
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw [104 x i8], ptr %i.l, i64 %.val.i.i.i.i.i ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !129151, !noundef !57
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val2.i.i.i.i.i.i, %.val4.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.thread.i.i.i.i", !prof !160

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val.i.i.i.i.i, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5988) #78, !noalias !129151
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.i.i.i.i": ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !129151, !nonnull !57, !noundef !57
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i), !alias.scope !129152, !noalias !129151
  %i.ai = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.thread6.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.thread.i.i.i.i", !prof !59

._crit_edge.i.i.i.i:                              ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.thread.i.i.i.i", %bb.d
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.g, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h56b27539a4a9a44eE.exit", !prof !60

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.thread.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.i.i.i.i", %bb.e
  %i.am = add i16 %.sroa.010.0.i40.i.i.i.i, -1
  %i.an = and i16 %i.am, %.sroa.010.0.i40.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ao = add i64 %.sroa.08.0.i.i.i.i.i, 16       ; 2 uses
  %i.ap = add i64 %.sroa.04.0.i.i.i.i.i, %i.ao
  br label %bb.d

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.i": ; preds = %bb.b
  %i.aq = getelementptr i8, ptr %i.e, i64 8
  %.val5.i.i = load ptr, ptr %i.aq, align 8, !noalias !129138, !nonnull !57, !noundef !57
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !129136, !noalias !129137, !nonnull !57, !noundef !57
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val3.i.i, ptr nonnull readonly align 1 %.val5.i.i, i64 %.val4.i.i), !alias.scope !129153, !noalias !129138
  %bcmp.i.i.i.i.fr.i.i = freeze i32 %bcmp.i.i.i.i.i.i
  %i.as = icmp eq i32 %bcmp.i.i.i.i.fr.i.i, 0
  br i1 %i.as, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.thread6.i", label %"_ZN4core6option15Option$LT$T$GT$6map_or17h56b27539a4a9a44eE.exit"

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.thread6.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.i.i.i.i", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.i"
  %i.at = phi ptr [ %i.e, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.i" ], [ %i.l, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.i.i.i.i" ]
  %.sroa.5.0.i9.i = phi i64 [ 0, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.i" ], [ %.val.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hcfd245d941485ac8E.exit.i.i.i.i" ] ; 3 uses
  %i.au = icmp ult i64 %.sroa.5.0.i9.i, %i.c
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.thread6.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.5.0.i9.i, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5987) #78, !noalias !129154
  unreachable

bb.i:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.thread6.i"
  %i.av = getelementptr inbounds nuw [104 x i8], ptr %i.at, i64 %.sroa.5.0.i9.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = tail call fastcc noundef zeroext i1 @"_ZN65_$LT$serde_json..value..Value$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2c9fe2aca7105fcaE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.aw), !noalias !129155, !inline_history !129126
  %i.ay = xor i1 %i.ax, true
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h56b27539a4a9a44eE.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17h56b27539a4a9a44eE.exit": ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.a, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.i", %bb.i
  %.sroa.02.0.i = phi i1 [ %i.ay, %bb.i ], [ true, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h9038221ea819918fE.exit.i" ], [ true, %bb.a ], [ true, %bb.b ], [ true, %._crit_edge.i.i.i.i ]
  ret i1 %.sroa.02.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator3nth17h003dfb2091e4557cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(344) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [344 x i8], align 8               ; 8 uses
end_hunk_0
