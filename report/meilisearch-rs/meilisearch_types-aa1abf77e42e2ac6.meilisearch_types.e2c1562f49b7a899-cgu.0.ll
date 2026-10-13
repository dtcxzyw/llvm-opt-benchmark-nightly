Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@"_ZN4core3ptr75drop_in_place$LT$milli..vector..embedder..composite..SubEmbedderOptions$GT$17h6b64a5bc5d0f047dE":bb.a
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !17205 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !17205, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17205
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i": ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.h, align 8, !range !25, !alias.scope !17203, !noundef !21 ; 2 uses
  %switch.i = icmp sgt i64 %.val.i, 0
  br i1 %switch.i, label %bb.e, label %"_ZN4core3ptr65drop_in_place$LT$milli..vector..embedder..hf..EmbedderOptions$GT$17hf17defa466a2b427E.exit"

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.i, align 8, !alias.scope !17203, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17206
  br label %"_ZN4core3ptr65drop_in_place$LT$milli..vector..embedder..hf..EmbedderOptions$GT$17hf17defa466a2b427E.exit"

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17207)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i = load i64, ptr %i.j, align 8, !range !25, !alias.scope !17207, !noundef !21 ; 2 uses
  %switch.i1 = icmp sgt i64 %.val4.i, 0
  br i1 %switch.i1, label %bb.g, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5.i = load ptr, ptr %i.k, align 8, !alias.scope !17207, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17208
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit.i": ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i2 = load i64, ptr %i.l, align 8, !range !25, !alias.scope !17207, !noundef !21 ; 2 uses
  %switch8.i = icmp sgt i64 %.val.i2, 0
  br i1 %switch8.i, label %bb.h, label %"_ZN4core3ptr65drop_in_place$LT$milli..vector..embedder..hf..EmbedderOptions$GT$17hf17defa466a2b427E.exit"

bb.h:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit.i"
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i3 = load ptr, ptr %i.m, align 8, !alias.scope !17207, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i3, i64 noundef %.val.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17209
  br label %"_ZN4core3ptr65drop_in_place$LT$milli..vector..embedder..hf..EmbedderOptions$GT$17hf17defa466a2b427E.exit"

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17210)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17211)
  %.val.i.i4 = load i64, ptr %i.n, align 8, !alias.scope !17212 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i4, 0
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i6", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i5 = load ptr, ptr %i.p, align 8, !alias.scope !17212, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5, i64 noundef %.val.i.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17212
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i6"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i6": ; preds = %bb.j, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val5.i7 = load i64, ptr %i.q, align 8, !range !25, !alias.scope !17210, !noundef !21 ; 2 uses
  %switch.i8 = icmp sgt i64 %.val5.i7, 0
  br i1 %switch.i8, label %bb.k, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit9.i"

bb.k:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i6"
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val6.i = load ptr, ptr %i.r, align 8, !alias.scope !17210, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef %.val5.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17213
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit9.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit9.i": ; preds = %bb.k, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i6"
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i9 = load i64, ptr %i.s, align 8, !range !25, !alias.scope !17210, !noundef !21 ; 2 uses
  %switch12.i = icmp sgt i64 %.val.i9, 0
  br i1 %switch12.i, label %bb.l, label %"_ZN4core3ptr65drop_in_place$LT$milli..vector..embedder..hf..EmbedderOptions$GT$17hf17defa466a2b427E.exit"

bb.l:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit9.i"
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2.i = load ptr, ptr %i.t, align 8, !alias.scope !17210, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17214
  br label %"_ZN4core3ptr65drop_in_place$LT$milli..vector..embedder..hf..EmbedderOptions$GT$17hf17defa466a2b427E.exit"

"_ZN4core3ptr65drop_in_place$LT$milli..vector..embedder..hf..EmbedderOptions$GT$17hf17defa466a2b427E.exit": ; preds = %bb.l, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit9.i", %bb.h, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit.i", %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i", %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr77drop_in_place$LT$alloc..boxed..Box$LT$utoipa..openapi..schema..Schema$GT$$GT$17h9b16530727b624e7E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !noundef !21 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !range !93, !alias.scope !17217, !noundef !21 ; 3 uses
  %i.c = icmp ne i64 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.b, -2
  %i.e = icmp samesign ugt i64 %i.b, 1
  %i.f = select i1 %i.e, i64 %i.d, i64 1
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..AnyOf$GT$17h52b74fb9f00e1d09E"(ptr noalias noundef align 8 dereferenceable(384) %i.g)
          to label %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17ha9aeed4b83830060E.exit" unwind label %bb.g, !inline_history !104

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..Array$GT$17h23b46bf1d918b0d9E"(ptr noalias noundef align 8 dereferenceable(488) %i.h)
          to label %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17ha9aeed4b83830060E.exit" unwind label %bb.g, !inline_history !104

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Object$GT$17he7ee633f0d816865E"(ptr noalias noundef nonnull align 8 dereferenceable(752) %i.a)
          to label %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17ha9aeed4b83830060E.exit" unwind label %bb.g, !inline_history !104

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..OneOf$GT$17h3db1ff20457bbe21E"(ptr noalias noundef align 8 dereferenceable(408) %i.i)
          to label %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17ha9aeed4b83830060E.exit" unwind label %bb.g, !inline_history !104

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$utoipa..openapi..schema..AllOf$GT$17hf97197307e851adbE"(ptr noalias noundef align 8 dereferenceable(408) %i.j)
          to label %"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17ha9aeed4b83830060E.exit" unwind label %bb.g, !inline_history !104

"_ZN4core3ptr52drop_in_place$LT$utoipa..openapi..schema..Schema$GT$17ha9aeed4b83830060E.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 752, i64 noundef 8) #52
  ret void

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 752, i64 noundef 8) #52
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr77drop_in_place$LT$alloc..vec..splice..Splice$LT$core..str..iter..Bytes$GT$$GT$17h3d91a3f6b7957a65E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17346)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !17347, !nonnull !21, !noundef !21 ; 2 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !17347 ; 3 uses
  %.not5.i.i = icmp eq ptr %.promoted.i.i, %i.b
  br i1 %.not5.i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hfbdc191763ea446bE.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %.promoted6.i.i = ptrtoaddr ptr %.promoted.i.i to i64
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = sub i64 %i.c, %.promoted6.i.i
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.d
  store ptr %scevgep.i.i, ptr %0, align 8, !alias.scope !17347
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hfbdc191763ea446bE.exit.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17hfbdc191763ea446bE.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !alias.scope !17346
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !alias.scope !17346
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !17346, !noundef !21 ; 7 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hfbdc191763ea446bE.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !17346, !nonnull !21, !noundef !21 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17351)
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !17352, !noalias !17353, !nonnull !21, !noundef !21 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !17352, !noalias !17353, !nonnull !21, !noundef !21 ; 3 uses
  %i.l = ptrtoint ptr %.val1.i.i.i.i to i64       ; 3 uses
  %i.m = ptrtoint ptr %.val.i.i.i.i to i64        ; 2 uses
  %i.n = sub nuw i64 %i.l, %i.m                   ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !17354, !noalias !17352, !noundef !21 ; 3 uses
  %i.q = load i64, ptr %i.i, align 8, !range !22, !alias.scope !17354, !noalias !17352, !noundef !21
  %i.r = sub i64 %i.q, %i.p
  %i.s = icmp ugt i64 %i.n, %i.r
  br i1 %i.s, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5a9827a63407dd50E.exit.i.i.i", !prof !23

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.p, i64 noundef %i.n, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  %.pre.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !17355, !noalias !17352
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5a9827a63407dd50E.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5a9827a63407dd50E.exit.i.i.i": ; preds = %.noexc, %bb.b
  %i.t = phi i64 [ %i.p, %bb.b ], [ %.pre.i.i.i, %.noexc ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !17355, !noalias !17352, !nonnull !21, !noundef !21 ; 8 uses
  %1 = ptrtoaddr ptr %i.v to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17359)
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %.not9.i.i.i.i.i.i.i, label %.thread, label %iter.check103

iter.check103:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5a9827a63407dd50E.exit.i.i.i"
  %min.iters.check88 = icmp ult i64 %i.n, 8
  br i1 %min.iters.check88, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck86

vector.memcheck86:                                ; preds = %iter.check103
  %i.w = add i64 %i.t, %1
  %i.x = sub i64 %i.m, %i.w
  %diff.check87 = icmp ugt i64 %i.x, -32
  br i1 %diff.check87, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %vector.memcheck86
  %min.iters.check90 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check90, label %vec.epilog.ph107, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %i.y = and i64 %i.n, 24
  %n.vec92 = and i64 %i.n, -32                    ; 5 uses
  %i.z = add i64 %i.t, %n.vec92                   ; 2 uses
  %i.aa = getelementptr i8, ptr %.val.i.i.i.i, i64 %n.vec92 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 %i.t
  br label %vector.body93

vector.body93:                                    ; preds = %vector.ph91, %vector.body93
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next98, %vector.body93 ] ; 3 uses
  %next.gep95 = getelementptr i8, ptr %.val.i.i.i.i, i64 %index94 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17360)
  %i.ac = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load96 = load <16 x i8>, ptr %next.gep95, align 1, !noalias !17361
  %wide.load97 = load <16 x i8>, ptr %i.ac, align 1, !noalias !17361
  %i.ad = getelementptr i8, ptr %i.ab, i64 %index94 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %wide.load96, ptr %i.ad, align 1, !noalias !17362
  store <16 x i8> %wide.load97, ptr %i.ae, align 1, !noalias !17362
  %index.next98 = add nuw i64 %index94, 32        ; 2 uses
  %i.af = icmp eq i64 %index.next98, %n.vec92
  br i1 %i.af, label %middle.block99, label %vector.body93, !llvm.loop !17256

middle.block99:                                   ; preds = %vector.body93
  %cmp.n100 = icmp eq i64 %i.n, %n.vec92
  br i1 %cmp.n100, label %._crit_edge.i.i.i.i.i.i.i, label %vec.epilog.iter.check105

vec.epilog.iter.check105:                         ; preds = %middle.block99
  %min.epilog.iters.check106 = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check106, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph107, !prof !17363

vec.epilog.ph107:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check105
  %vec.epilog.resume.val101 = phi i64 [ %n.vec92, %vec.epilog.iter.check105 ], [ 0, %vector.main.loop.iter.check89 ]
  %n.vec108 = and i64 %i.n, -8                    ; 4 uses
  %i.ag = add i64 %i.t, %n.vec108                 ; 2 uses
  %i.ah = getelementptr i8, ptr %.val.i.i.i.i, i64 %n.vec108 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.t
  br label %vec.epilog.vector.body109

vec.epilog.vector.body109:                        ; preds = %vec.epilog.vector.body109, %vec.epilog.ph107
  %index110 = phi i64 [ %vec.epilog.resume.val101, %vec.epilog.ph107 ], [ %index.next113, %vec.epilog.vector.body109 ] ; 3 uses
  %next.gep111 = getelementptr i8, ptr %.val.i.i.i.i, i64 %index110
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17360)
  %wide.load112 = load <8 x i8>, ptr %next.gep111, align 1, !noalias !17361
  %i.aj = getelementptr i8, ptr %i.ai, i64 %index110
  store <8 x i8> %wide.load112, ptr %i.aj, align 1, !noalias !17362
  %index.next113 = add nuw i64 %index110, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.ak, label %vec.epilog.middle.block114, label %vec.epilog.vector.body109, !llvm.loop !17257

vec.epilog.middle.block114:                       ; preds = %vec.epilog.vector.body109
  %cmp.n115 = icmp eq i64 %i.n, %n.vec108
  br i1 %cmp.n115, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check103, %vector.memcheck86, %vec.epilog.iter.check105, %vec.epilog.middle.block114
  %.ph = phi i64 [ %i.t, %iter.check103 ], [ %i.t, %vector.memcheck86 ], [ %i.z, %vec.epilog.iter.check105 ], [ %i.ag, %vec.epilog.middle.block114 ] ; 2 uses
  %.ph119 = phi ptr [ %.val.i.i.i.i, %iter.check103 ], [ %.val.i.i.i.i, %vector.memcheck86 ], [ %i.aa, %vec.epilog.iter.check105 ], [ %i.ah, %vec.epilog.middle.block114 ] ; 3 uses
  %.ph119138 = ptrtoaddr ptr %.ph119 to i64       ; 2 uses
  %i.al = sub i64 %i.l, %.ph119138
  %xtraiter139 = and i64 %i.al, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %i.am = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.an = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.ph119, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17360)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  %i.ap = load i8, ptr %i.an, align 1, !noalias !17361, !noundef !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.am
  store i8 %i.ap, ptr %i.aq, align 1, !noalias !17362
  %i.ar = add i64 %i.am, 1                        ; 3 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !17258

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.lcssa121.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.lcssa120.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.unr142.a = phi i64 [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.unr143 = phi ptr [ %.ph119, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.as = sub i64 %.ph119138, %i.l
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.au = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr142.a, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.av = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr143, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17360)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.av, align 1, !noalias !17361, !noundef !21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.au
  store i8 %i.ax, ptr %i.ay, align 1, !noalias !17362
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.ba = load i8, ptr %i.aw, align 1, !noalias !17364, !noundef !21
  %i.bb = getelementptr i8, ptr %i.v, i64 %i.au
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 %i.ba, ptr %i.bc, align 1, !noalias !17362
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.be = load i8, ptr %i.az, align 1, !noalias !17365, !noundef !21
  %i.bf = getelementptr i8, ptr %i.v, i64 %i.au
  %i.bg = getelementptr i8, ptr %i.bf, i64 2
  store i8 %i.be, ptr %i.bg, align 1, !noalias !17362
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 3 uses
  %i.bi = load i8, ptr %i.bd, align 1, !noalias !17366, !noundef !21
  %i.bj = getelementptr i8, ptr %i.v, i64 %i.au
  %i.bk = getelementptr i8, ptr %i.bj, i64 3
  store i8 %i.bi, ptr %i.bk, align 1, !noalias !17362
  %i.bl = add i64 %i.au, 4                        ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.bh, %.val1.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !17262

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %vec.epilog.middle.block114, %middle.block99
  %.lcssa56 = phi ptr [ %i.ah, %vec.epilog.middle.block114 ], [ %i.aa, %middle.block99 ], [ %.lcssa121.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa = phi i64 [ %i.ag, %vec.epilog.middle.block114 ], [ %i.z, %middle.block99 ], [ %.lcssa120.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.lcssa56, ptr %i.j, align 8, !alias.scope !17367, !noalias !17368
  br label %.thread

.thread:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5a9827a63407dd50E.exit.i.i.i", %._crit_edge.i.i.i.i.i.i.i
  %.val6.i.i.i.i.i.i.i = phi i64 [ %.lcssa, %._crit_edge.i.i.i.i.i.i.i ], [ %i.t, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5a9827a63407dd50E.exit.i.i.i" ]
  store i64 %.val6.i.i.i.i.i.i.i, ptr %i.o, align 8, !alias.scope !17355, !noalias !17369
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !alias.scope !17370
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !alias.scope !17370
  br label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17hb1e4ce8ebeeee17bE.exit"

bb.d:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hfbdc191763ea446bE.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7.i = load ptr, ptr %i.bn, align 8, !alias.scope !17346, !nonnull !21, !noundef !21 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.val8.i = load i64, ptr %i.bo, align 8, !alias.scope !17346, !noundef !21 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17371)
  %i.bp = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16 ; 11 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !17372, !noundef !21 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8 ; 6 uses
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !17372, !nonnull !21, !noundef !21 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.val8.i
  %i.bu = icmp samesign eq i64 %i.bq, %.val8.i
  %.val.pre.i = load ptr, ptr %i.bm, align 8, !alias.scope !17346 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val4.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !17346 ; 7 uses
  br i1 %i.bu, label %.loopexit.i, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.lr.ph.i.i"

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.lr.ph.i.i": ; preds = %bb.d
  %.not.not.i.i68 = icmp eq ptr %.val.pre.i, %.val4.pre.i
  br i1 %.not.not.i.i68, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.lr.ph.i.i"
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  br label %bb.e

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.i.i": ; preds = %bb.e
  %.not.not.i.i = icmp eq ptr %i.by, %.val4.pre.i
  br i1 %.not.not.i.i, label %.loopexit.loopexit131, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.i.i"
  %i.bw = phi ptr [ %.val.pre.i, %.lr.ph ], [ %i.by, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.i.i" ] ; 2 uses
  %.sroa.0.08.i.i69 = phi ptr [ %i.bv, %.lr.ph ], [ %i.bx, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.i.i" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17373)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i69, i64 1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 5 uses
  %i.bz = load i8, ptr %i.bw, align 1, !noalias !17374, !noundef !21
  store i8 %i.bz, ptr %.sroa.0.08.i.i69, align 1, !noalias !17372
  %i.ca = load i64, ptr %i.bp, align 8, !noalias !17372, !noundef !21
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  store i64 %i.cb, ptr %i.bp, align 8, !noalias !17372
  %i.cc = icmp eq ptr %i.bx, %i.bt
  br i1 %i.cc, label %.loopexit.i.loopexit, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.i.i"

.loopexit.i.loopexit:                             ; preds = %bb.e
  store ptr %i.by, ptr %i.bm, align 8, !alias.scope !17375
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.d
  %i.cd = phi i64 [ %.val8.i, %bb.d ], [ %i.cb, %.loopexit.i.loopexit ]
  %.val.i = phi ptr [ %.val.pre.i, %bb.d ], [ %i.by, %.loopexit.i.loopexit ] ; 5 uses
  %i.ce = ptrtoint ptr %.val4.pre.i to i64        ; 5 uses
  %i.cf = ptrtoint ptr %.val.i to i64
  %i.cg = sub nuw i64 %i.ce, %i.cf                ; 4 uses
  %.not.i = icmp eq ptr %.val4.pre.i, %.val.i
  br i1 %.not.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, label %bb.g

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.loopexit.i": ; preds = %bb.i
  store ptr %i.ep, ptr %i.bm, align 8, !alias.scope !17376
  %.pre.i = ptrtoint ptr %i.ep to i64
  %.pre17 = sub nuw i64 %i.ce, %.pre.i
  br label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.i": ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17hbfab97173c98bfc6E.exit.i", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.loopexit.i"
  %.pre-phi = phi i64 [ %i.cg, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17hbfab97173c98bfc6E.exit.i" ], [ %.pre17, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.loopexit.i" ] ; 3 uses
  %i.ch = phi i64 [ %i.ee, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17hbfab97173c98bfc6E.exit.i" ], [ %i.es, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.loopexit.i" ]
  %.val.i.i.i.i.i.i = phi ptr [ %.val.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17hbfab97173c98bfc6E.exit.i" ], [ %i.ep, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.loopexit.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17380)
  %i.ci = icmp slt i64 %.pre-phi, 0
  br i1 %i.ci, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !17381

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.i"
  %.val.i.i.i.i.i.i41 = phi ptr [ %.val.i.i.i.i.i.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.i" ], [ %.val.i, %.loopexit.i ] ; 7 uses
  %i.cj = phi i64 [ %i.ee, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.i" ], [ %.val8.i, %.loopexit.i ] ; 4 uses
  %i.ck = phi i64 [ %i.ch, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.i" ], [ %i.cd, %.loopexit.i ]
  %.pre-phi39 = phi i64 [ %.pre-phi, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.i" ], [ 0, %.loopexit.i ] ; 4 uses
  %.val.i.i.i.i.i.i4174 = ptrtoaddr ptr %.val.i.i.i.i.i.i41 to i64 ; 2 uses
  %i.cl = icmp eq ptr %.val4.pre.i, %.val.i.i.i.i.i.i41
  br i1 %i.cl, label %.loopexit, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !17382
  %i.cm = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.pre-phi39, i64 noundef range(i64 1, 9) 1) #52, !noalias !17382 ; 13 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.f, label %iter.check

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.i"
  %.pre-phi40 = phi i64 [ %.pre-phi39, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ %.pre-phi, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.i" ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 0, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.pre-phi40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc1 unwind label %bb.m

.noexc1:                                          ; preds = %bb.f
  unreachable

iter.check:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  %2 = ptrtoaddr ptr %i.cm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17388)
  %i.co = sub i64 %i.ce, %.val.i.i.i.i.i.i4174    ; 7 uses
  %min.iters.check = icmp ult i64 %i.co, 4
  %i.cp = sub i64 %.val.i.i.i.i.i.i4174, %2
  %diff.check = icmp ugt i64 %i.cp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check75 = icmp ult i64 %i.co, 32
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cq = and i64 %i.co, 28
  %n.vec = and i64 %i.co, -32                     ; 7 uses
  %i.cr = getelementptr i8, ptr %.val.i.i.i.i.i.i41, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.val.i.i.i.i.i.i41, i64 %index ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17389)
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !17390
  %wide.load76 = load <16 x i8>, ptr %i.cs, align 1, !noalias !17390
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <16 x i8> %wide.load, ptr %i.ct, align 1, !noalias !17391
  store <16 x i8> %wide.load76, ptr %i.cu, align 1, !noalias !17391
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !17323

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %n.vec, -1
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %.loopexit118, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !17392

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec77 = and i64 %i.co, -4                    ; 6 uses
  %i.cw = getelementptr i8, ptr %.val.i.i.i.i.i.i41, i64 %n.vec77 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %next.gep79 = getelementptr i8, ptr %.val.i.i.i.i.i.i41, i64 %index78
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17389)
  %wide.load80 = load <4 x i8>, ptr %next.gep79, align 1, !noalias !17390
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index78
  store <4 x i8> %wide.load80, ptr %i.cx, align 1, !noalias !17391
  %index.next81 = add nuw i64 %index78, 4         ; 2 uses
  %i.cy = icmp eq i64 %index.next81, %n.vec77
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17324

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape82 = add i64 %n.vec77, -1
  %cmp.n83 = icmp eq i64 %i.co, %n.vec77
  br i1 %cmp.n83, label %.loopexit118, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph122 = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec77, %vec.epilog.middle.block ] ; 2 uses
  %.ph123 = phi ptr [ %.val.i.i.i.i.i.i41, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.cw, %vec.epilog.middle.block ] ; 3 uses
  %.ph123136 = ptrtoaddr ptr %.ph123 to i64       ; 2 uses
  %i.cz = sub i64 %i.ce, %.ph123136
  %xtraiter = and i64 %i.cz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.da = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph122, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.db = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph123, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17389)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 3 uses
  %i.dd = load i8, ptr %i.db, align 1, !noalias !17390, !noundef !21
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.da
  store i8 %i.dd, ptr %i.de, align 1, !noalias !17391
  %i.df = add nuw i64 %i.da, 1                    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !17325

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa126.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.lcssa125.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.lcssa124.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph122, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr137 = phi ptr [ %.ph123, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.dg = sub i64 %.ph123136, %i.ce
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %.loopexit118, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.di = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dj = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr137, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17389)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dl = load i8, ptr %i.dj, align 1, !noalias !17390, !noundef !21
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.di
  store i8 %i.dl, ptr %i.dm, align 1, !noalias !17391
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %i.do = load i8, ptr %i.dk, align 1, !noalias !17393, !noundef !21
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.di
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store i8 %i.do, ptr %i.dq, align 1, !noalias !17391
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 3
  %i.ds = load i8, ptr %i.dn, align 1, !noalias !17394, !noundef !21
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.di
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store i8 %i.ds, ptr %i.du, align 1, !noalias !17391
  %i.dv = add nuw i64 %i.di, 3                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 3 uses
  %i.dx = load i8, ptr %i.dr, align 1, !noalias !17395, !noundef !21
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dv
  store i8 %i.dx, ptr %i.dy, align 1, !noalias !17391
  %i.dz = add nuw i64 %i.di, 4                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.dw, %.val4.pre.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit118, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !17329

bb.g:                                             ; preds = %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17396)
  %i.ea = add i64 %.val8.i, %i.f                  ; 2 uses
  %i.eb = load i64, ptr %.val7.i, align 8, !range !22, !noalias !17397, !noundef !21
  %i.ec = sub i64 %i.eb, %i.ea
  %i.ed = icmp ugt i64 %i.cg, %i.ec
  br i1 %i.ed, label %bb.h, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17hbfab97173c98bfc6E.exit.i", !prof !23

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef align 8 dereferenceable(16) %.val7.i, i64 noundef %i.ea, i64 noundef %i.cg, i64 noundef 1, i64 noundef 1)
          to label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17hbfab97173c98bfc6E.exit.i" unwind label %bb.m

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17hbfab97173c98bfc6E.exit.i": ; preds = %bb.h, %bb.g
  %i.ee = add i64 %i.cg, %.val8.i                 ; 7 uses
  %i.ef = load ptr, ptr %i.br, align 8, !noalias !17397, !nonnull !21, !noundef !21 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.val8.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr nonnull align 1 %i.eg, i64 %i.f, i1 false), !noalias !17397
  store i64 %i.ee, ptr %i.bo, align 8, !alias.scope !17397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17398)
  %i.ei = load i64, ptr %i.bp, align 8, !noalias !17399, !noundef !21 ; 2 uses
  %i.ej = load ptr, ptr %i.br, align 8, !noalias !17399, !nonnull !21, !noundef !21 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ee
  %i.el = icmp samesign eq i64 %i.ei, %i.ee
  br i1 %i.el, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.i", label %.lr.ph72

.lr.ph72:                                         ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17hbfab97173c98bfc6E.exit.i"
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  br label %bb.i

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.i22.i": ; preds = %bb.i
  %.not.not.i24.i = icmp eq ptr %i.ep, %.val4.pre.i
  br i1 %.not.not.i24.i, label %.loopexit.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph72, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.i22.i"
  %i.en = phi ptr [ %.val.i, %.lr.ph72 ], [ %i.ep, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.i22.i" ] ; 2 uses
  %.sroa.0.08.i23.i71 = phi ptr [ %i.em, %.lr.ph72 ], [ %i.eo, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.i22.i" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17400)
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i23.i71, i64 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 1 ; 6 uses
  %i.eq = load i8, ptr %i.en, align 1, !noalias !17401, !noundef !21
  store i8 %i.eq, ptr %.sroa.0.08.i23.i71, align 1, !noalias !17399
  %i.er = load i64, ptr %i.bp, align 8, !noalias !17399, !noundef !21
  %i.es = add i64 %i.er, 1                        ; 3 uses
  store i64 %i.es, ptr %i.bp, align 8, !noalias !17399
  %i.et = icmp eq ptr %i.eo, %i.ek
  br i1 %i.et, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hbf76a5d5bdfeabd6E.exit26.thread.loopexit.i", label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.i22.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17h6cb993ffb48e5061E.exit.thread43.i": ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb58df969e223f85E.exit.i31.i", %bb.l, %bb.k
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef %.pre-phi39, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !17402
  %.pre = load i64, ptr %i.bp, align 8, !noalias !17403
  br label %.loopexit

.loopexit118:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa59 = phi i64 [ %ind.escape82, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.lcssa126.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa58 = phi ptr [ %i.cw, %vec.epilog.middle.block ], [ %i.cr, %middle.block ], [ %.lcssa125.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa57 = phi i64 [ %n.vec77, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %.lcssa124.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  store ptr %.lcssa58, ptr %i.bm, align 8, !alias.scope !17404, !noalias !17405
  %i.eu = icmp sgt i64 %.lcssa57, -1
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.lcssa57
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17406)
  %i.ew = add i64 %i.cj, %i.f                     ; 2 uses
  %i.ex = load i64, ptr %.val7.i, align 8, !range !22, !noalias !17407, !noundef !21
  %i.ey = sub i64 %i.ex, %i.ew
  %.not52.i = icmp ult i64 %.lcssa59, %i.ey
  br i1 %.not52.i, label %bb.k, label %bb.j, !prof !49

bb.j:                                             ; preds = %.loopexit118
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef align 8 dereferenceable(16) %.val7.i, i64 noundef %i.ew, i64 noundef %.lcssa57, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he2d6ef98c25d75ccE.exit.i", !noalias !17346

bb.k:                                             ; preds = %bb.j, %.loopexit118
  %i.ez = add i64 %.lcssa57, %i.cj                ; 5 uses
  %i.fa = load ptr, ptr %i.br, align 8, !noalias !17407, !nonnull !21, !noundef !21 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.cj
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ez
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fc, ptr nonnull align 1 %i.fb, i64 %i.f, i1 false), !noalias !17407
  store i64 %i.ez, ptr %i.bo, align 8, !alias.scope !17407
  %i.fd = load i64, ptr %i.bp, align 8, !noalias !17408, !noundef !21 ; 2 uses
end_hunk_0
