Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_auth-1051e21019a62c9e.meilisearch_auth.c6de6405da55fb51-cgu.0?download=true
inline.NumInlined: 2724
inline.NumDeleted: 1326
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4core5slice4sort6shared5pivot11median3_rec17h80fda794beebac52E
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h80fda794beebac52E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h80fda794beebac52E(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h80fda794beebac52E(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [160 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [160 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h80fda794beebac52E(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 96 ; 2 uses
  %i.p = tail call fastcc noundef range(i8 -1, 2) i8 @"_ZN73_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..Ord$GT$3cmp17h619e9bf26d2df8f1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.n) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 96 ; 2 uses
  %i.r = tail call fastcc noundef range(i8 -1, 2) i8 @"_ZN73_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..Ord$GT$3cmp17h619e9bf26d2df8f1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.q, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.n)
  %i.s = xor i8 %i.r, %i.p
  %i.t = icmp slt i8 %i.s, 0
  br i1 %i.t, label %_ZN4core5slice4sort6shared5pivot7median317ha3fb1937edc3ad88E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call fastcc noundef range(i8 -1, 2) i8 @"_ZN73_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..Ord$GT$3cmp17h619e9bf26d2df8f1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.q, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.o)
  %i.v = xor i8 %i.u, %i.p
  %i.w = icmp slt i8 %i.v, 0
  %..i = select i1 %i.w, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_ZN4core5slice4sort6shared5pivot7median317ha3fb1937edc3ad88E.exit

_ZN4core5slice4sort6shared5pivot7median317ha3fb1937edc3ad88E.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0715cda6fc466d6eE(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #18 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha8ea3d53a4fb11a7E.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha8ea3d53a4fb11a7E.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha8ea3d53a4fb11a7E.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 7 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha8ea3d53a4fb11a7E.exit ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.b = getelementptr i8, ptr %.pn3, i64 32
  %.val11.i = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr i8, ptr %.pn3, i64 40
  %.val12.i = load i64, ptr %i.c, align 8, !noundef !8 ; 5 uses
  %i.d = getelementptr i8, ptr %.pn3, i64 8
  %.val13.i = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr i8, ptr %.pn3, i64 16
  %.val14.i = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.f = sub i64 %.val12.i, %.val14.i
  %i.g = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i, ptr nonnull readonly align 1 %.val13.i, i64 %..i.i.i.i.i.i.i), !alias.scope !5563 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = icmp eq i32 %i.g, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.i, i64 %i.f, i64 %i.h
  %i.j = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.a, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha8ea3d53a4fb11a7E.exit

bb.a:                                             ; preds = %.lr.ph
  %.sroa.08.0.copyload.i = load i64, ptr %.sroa.0.04, align 8
  %.sroa.0.0.i1 = getelementptr inbounds i8, ptr %.sroa.0.04, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i1, i64 24, i1 false)
  %i.k = icmp eq ptr %.sroa.0.0.i1, %0
  br i1 %i.k, label %._crit_edge6, label %.lr.ph5

bb.b:                                             ; preds = %.lr.ph5
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, i64 24, i1 false)
  %i.l = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.l, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i3 = phi ptr [ %.sroa.0.0.i, %bb.b ], [ %.sroa.0.0.i1, %bb.a ] ; 5 uses
  %.sroa.5.0.i2 = phi ptr [ %.sroa.0.0.i3, %bb.b ], [ %.sroa.0.04, %bb.a ] ; 3 uses
  %i.m = getelementptr i8, ptr %.sroa.5.0.i2, i64 -40
  %.val9.i = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  %i.n = getelementptr i8, ptr %.sroa.5.0.i2, i64 -32
  %.val10.i = load i64, ptr %i.n, align 8, !noundef !8 ; 2 uses
  %..i.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val10.i)
  %i.o = sub i64 %.val12.i, %.val10.i
  %i.p = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i, ptr nonnull readonly align 1 %.val9.i, i64 %..i.i.i.i.i.i15.i), !alias.scope !5564 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %spec.store.select.i.i.i.i.i.i16.i = select i1 %i.r, i64 %i.o, i64 %i.q
  %i.s = icmp slt i64 %spec.store.select.i.i.i.i.i.i16.i, 0
  br i1 %i.s, label %bb.b, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.b, %.lr.ph5, %bb.a
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.04, %bb.a ], [ %.sroa.0.0.i3, %bb.b ], [ %.sroa.5.0.i2, %.lr.ph5 ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i3, %.lr.ph5 ]
  store i64 %.sroa.08.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !5565
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -16
  store ptr %.val11.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !5565
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !5565
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17ha8ea3d53a4fb11a7E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17ha8ea3d53a4fb11a7E.exit: ; preds = %.lr.ph, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hea25fced77eb0fa7E(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [160 x i8], align 8               ; 5 uses
  %.idx = mul nuw nsw i64 %1, 160
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  br label %bb.a

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1ce0bee5a1fd11b4E.exit
  ret void

bb.a:                                             ; preds = %.lr.ph, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1ce0bee5a1fd11b4E.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.01, %.lr.ph ], [ %.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1ce0bee5a1fd11b4E.exit ] ; 6 uses
  %.pn3 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.04, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1ce0bee5a1fd11b4E.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pn3, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %.pn3, i64 96
  %i.f = tail call fastcc noundef range(i8 -1, 2) i8 @"_ZN73_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..Ord$GT$3cmp17h619e9bf26d2df8f1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d)
  %i.g = icmp slt i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1ce0bee5a1fd11b4E.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.04, i64 160, i1 false)
  %.sroa.0.0.i1 = getelementptr inbounds i8, ptr %.sroa.0.04, i64 -160 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.0.i1, i64 160, i1 false)
  %i.h = icmp eq ptr %.sroa.0.0.i1, %0
  br i1 %i.h, label %._crit_edge6, label %.lr.ph5

bb.c:                                             ; preds = %.lr.ph5
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -160 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.0.i, i64 160, i1 false)
  %i.i = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.i, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.b, %bb.c
  %.sroa.0.0.i3 = phi ptr [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0.0.i1, %bb.b ] ; 4 uses
  %.sroa.5.0.i2 = phi ptr [ %.sroa.0.0.i3, %bb.c ], [ %.sroa.0.04, %bb.b ]
  %i.j = getelementptr inbounds i8, ptr %.sroa.5.0.i2, i64 -224
  %i.k = call fastcc noundef range(i8 -1, 2) i8 @"_ZN73_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..Ord$GT$3cmp17h619e9bf26d2df8f1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.l = icmp slt i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.c, %.lr.ph5, %bb.b
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.b ], [ %0, %bb.c ], [ %.sroa.0.0.i3, %.lr.ph5 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !5570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1ce0bee5a1fd11b4E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h1ce0bee5a1fd11b4E.exit: ; preds = %bb.a, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 160 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.b
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: noinline nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17hbd31efc71cbc97beE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17had30839aa8e14040E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = tail call fastcc noundef range(i8 -1, 2) i8 @"_ZN73_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..Ord$GT$3cmp17h619e9bf26d2df8f1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.e = icmp slt i8 %i.d, 0                      ; 2 uses
  %.not17 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader7

.preheader7:                                      ; preds = %bb.b
  br i1 %.not17, label %_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not17, label %_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit, label %.lr.ph13

.lr.ph:                                           ; preds = %.preheader7, %bb.c
  %.sroa.01.0.i9 = phi i64 [ %i.l, %bb.c ], [ 2, %.preheader7 ] ; 4 uses
  %i.f = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.01.0.i9
  %i.g = getelementptr [160 x i8], ptr %0, i64 %.sroa.01.0.i9
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.i = getelementptr i8, ptr %i.g, i64 -64
  %i.j = tail call fastcc noundef range(i8 -1, 2) i8 @"_ZN73_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..Ord$GT$3cmp17h619e9bf26d2df8f1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h)
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = add nuw i64 %.sroa.01.0.i9, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit.thread, label %.lr.ph

.lr.ph13:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i12 = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.01.1.i12
  %i.n = getelementptr [160 x i8], ptr %0, i64 %.sroa.01.1.i12
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = getelementptr i8, ptr %i.n, i64 -64
  %i.q = tail call fastcc noundef range(i8 -1, 2) i8 @"_ZN73_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..Ord$GT$3cmp17h619e9bf26d2df8f1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.o)
  %i.r = icmp slt i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit

bb.d:                                             ; preds = %.lr.ph13
  %i.s = add nuw i64 %.sroa.01.1.i12, 1           ; 2 uses
  %exitcond20.not = icmp eq i64 %i.s, %1
  br i1 %exitcond20.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit.thread, label %.lr.ph13

_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit: ; preds = %.lr.ph, %.lr.ph13, %.preheader7, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader7 ], [ 2, %.preheader ], [ %.sroa.01.1.i12, %.lr.ph13 ], [ %.sroa.01.0.i9, %.lr.ph ] ; 2 uses
  %i.t = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.u, label %_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17had30839aa8e14040E.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit
  %i.v = or i64 %1, 1
  %i.w = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 1
  %i.z = xor i32 %i.y, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hccc5d8b76c9faea0E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(160) null, i32 noundef %i.z, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17had30839aa8e14040E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17had30839aa8e14040E.exit": ; preds = %.lr.ph.i.i, %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha4efdebc3f8350b5E.exit.thread
  %i.aa = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5618)
  %i.ab = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ac = xor i64 %.sroa.0.014.i.i, -1
  %i.ad = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 11 uses
  %i.ae = getelementptr [160 x i8], ptr %i.ab, i64 %i.ac ; 11 uses
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !5619, !noalias !5618
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !5620, !noalias !5617
  store <2 x i64> %i.ag, ptr %i.ad, align 8, !alias.scope !5619, !noalias !5618
  store <2 x i64> %i.af, ptr %i.ae, align 8, !alias.scope !5620, !noalias !5617
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !5621, !noalias !5618
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !5622, !noalias !5617
  store <2 x i64> %i.ak, ptr %i.ah, align 8, !alias.scope !5621, !noalias !5618
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !alias.scope !5622, !noalias !5617
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !5623, !noalias !5618
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !5624, !noalias !5617
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !5623, !noalias !5618
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !5624, !noalias !5617
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !5625, !noalias !5618
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !5626, !noalias !5617
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !5625, !noalias !5618
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !5626, !noalias !5617
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !5627, !noalias !5618
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !5628, !noalias !5617
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !5627, !noalias !5618
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !5628, !noalias !5617
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !5629, !noalias !5618
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !5630, !noalias !5617
  store <2 x i64> %i.ba, ptr %i.ax, align 8, !alias.scope !5629, !noalias !5618
  store <2 x i64> %i.az, ptr %i.ay, align 8, !alias.scope !5630, !noalias !5617
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !5631, !noalias !5618
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !5632, !noalias !5617
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !5631, !noalias !5618
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !5632, !noalias !5617
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 112 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 112 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !5633, !noalias !5618
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !5634, !noalias !5617
  store <2 x i64> %i.bi, ptr %i.bf, align 8, !alias.scope !5633, !noalias !5618
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !alias.scope !5634, !noalias !5617
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 128 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 128 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !5635, !noalias !5618
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !5636, !noalias !5617
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !alias.scope !5635, !noalias !5618
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !5636, !noalias !5617
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 144 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 144 ; 2 uses
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !5637, !noalias !5618
  %i.bq = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !5638, !noalias !5617
  store <2 x i64> %i.bq, ptr %i.bn, align 8, !alias.scope !5637, !noalias !5618
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !alias.scope !5638, !noalias !5617
  %i.br = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.br, %i.aa
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17had30839aa8e14040E.exit", label %.lr.ph.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h48f3dbd8071da5a9E(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add i64 %i.b, %1                         ; 2 uses
  %.not16 = icmp eq i64 %i.c, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph18

._crit_edge:                                      ; preds = %_ZN4core5slice4sort8unstable8heapsort9sift_down17hd13b113b62d945b9E.exit, %bb.a
  ret void

.lr.ph18:                                         ; preds = %bb.a, %_ZN4core5slice4sort8unstable8heapsort9sift_down17hd13b113b62d945b9E.exit
  %.sroa.4.017 = phi i64 [ %i.d, %_ZN4core5slice4sort8unstable8heapsort9sift_down17hd13b113b62d945b9E.exit ], [ %i.c, %bb.a ]
  %i.d = add i64 %.sroa.4.017, -1                 ; 6 uses
  %.not10 = icmp ult i64 %i.d, %1
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph18
  %i.e = sub nuw i64 %i.d, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph18
  %i.f = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %0, i64 160, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.f, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.05.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i12 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.05.0, %.sroa.0.0.i12
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %.sroa.05.0, 1                   ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i13 = icmp ult i64 %i.i, %.sroa.0.0.i12
  br i1 %.not.i13, label %.lr.ph, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17hd13b113b62d945b9E.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.bl, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.bk, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i14 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.05.0, %bb.d ]
  %i.l = add nuw i64 %i.k, 2                      ; 2 uses
  %i.m = icmp ult i64 %i.l, %.sroa.0.0.i12
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.r = tail call fastcc noundef range(i8 -1, 2) i8 @"_ZN73_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..Ord$GT$3cmp17h619e9bf26d2df8f1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.q, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.p)
  %.lobit = lshr i8 %i.r, 7
  %i.s = zext nneg i8 %.lobit to i64
  %i.t = add nuw i64 %i.j, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.0.0.i14 ; 11 uses
  %i.v = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.04.0.i ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 3 uses
  %i.y = tail call fastcc noundef range(i8 -1, 2) i8 @"_ZN73_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..Ord$GT$3cmp17h619e9bf26d2df8f1E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.w)
  %i.z = icmp slt i8 %i.y, 0
  br i1 %i.z, label %bb.g, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17hd13b113b62d945b9E.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load <2 x i64>, ptr %i.u, align 8, !alias.scope !5680, !noalias !8
  %i.ab = load <2 x i64>, ptr %i.v, align 8, !alias.scope !5681, !noalias !8
  store <2 x i64> %i.ab, ptr %i.u, align 8, !alias.scope !5680, !noalias !8
  store <2 x i64> %i.aa, ptr %i.v, align 8, !alias.scope !5681, !noalias !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !5682, !noalias !8
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !5683, !noalias !8
  store <2 x i64> %i.af, ptr %i.ac, align 8, !alias.scope !5682, !noalias !8
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !alias.scope !5683, !noalias !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !5684, !noalias !8
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !5685, !noalias !8
  store <2 x i64> %i.aj, ptr %i.ag, align 8, !alias.scope !5684, !noalias !8
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !alias.scope !5685, !noalias !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !5686, !noalias !8
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !5687, !noalias !8
  store <2 x i64> %i.an, ptr %i.ak, align 8, !alias.scope !5686, !noalias !8
  store <2 x i64> %i.am, ptr %i.al, align 8, !alias.scope !5687, !noalias !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
end_hunk_0
