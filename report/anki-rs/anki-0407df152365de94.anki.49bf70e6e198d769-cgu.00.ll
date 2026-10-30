Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZN4anki7dbcheck46_$LT$impl$u20$anki..collection..Collection$GT$21maybe_fix_invalid_ids17hfa0b06596ab01099E":bb.a
bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN4anki7storage7dbcheck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$15fix_invalid_ids17hf2a707e887bd3be3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, i64 noundef %i.g, i64 noundef %i.f)
  %i.m = load i64, ptr %i.d, align 8, !range !13, !noundef !3
  %.not14 = icmp eq i64 %i.m, -9223372036854775773
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !8352)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8353
  call void @"_ZN4anki7storage21collection_timestamps54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$25get_collection_timestamps17hd624914c68aee7b8E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.h), !noalias !8352
  %i.n = load i64, ptr %i.b, align 8, !range !13, !noalias !8353, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.n, -9223372036854775773
  br i1 %.not.i, label %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$19set_schema_modified17h4328d7361bddb4e6E.exit", label %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$19set_schema_modified17h4328d7361bddb4e6E.exit.thread"

"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$19set_schema_modified17h4328d7361bddb4e6E.exit.thread": ; preds = %bb.g
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.720.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.720.0.copyload.i = load i64, ptr %.sroa.720.0..sroa_idx.i, align 8, !noalias !8353
  %.sroa.821.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.821.0..sroa_idx.i, i64 80, i1 false), !noalias !8354
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load <2 x i64>, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !8353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8353
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !8352
  store <2 x i64> %i.o, ptr %.sroa.223.0..sroa_idx.i, align 8, !alias.scope !8352
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.720.0.copyload.i, ptr %.sroa.425.0..sroa_idx.i, align 8, !alias.scope !8352
  br label %bb.h

"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$19set_schema_modified17h4328d7361bddb4e6E.exit": ; preds = %bb.g
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.511.0.copyload.i = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !8353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8353
  %i.p = call noundef i64 @_ZN4anki9timestamp15TimestampMillis3now17h9a04f048132264a3E(), !noalias !8352
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8355
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.r, align 8, !noalias !8355
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.511.0.copyload.i, ptr %i.s, align 8, !noalias !8355
  store i64 8, ptr %i.a, align 8, !noalias !8355
  call void @_ZN4anki4undo11UndoManager4save17hc44955a0169ed988E(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !8356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8355
  call void @"_ZN4anki7storage21collection_timestamps54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$24set_schema_modified_time17h73d80db8f972ab93E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.h, i64 noundef %i.p)
  %.pre = load i64, ptr %i.c, align 8, !range !13
  %i.t = icmp eq i64 %.pre, -9223372036854775773
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$19set_schema_modified17h4328d7361bddb4e6E.exit.thread", %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$19set_schema_modified17h4328d7361bddb4e6E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$19set_schema_modified17h4328d7361bddb4e6E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.j:                                             ; preds = %bb.b, %bb.h, %bb.f, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki7dbcheck46_$LT$impl$u20$anki..collection..Collection$GT$22add_missing_field_tags17h833c8e0efd66ab1aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 dereferenceable(256) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.f = load i8, ptr %i.e, align 8, !range !6, !noalias !8359, !noundef !3
  %i.g = trunc nuw i8 %i.f to i1
  call void @"_ZN4anki7storage4sync54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$3usn17hb785e7eb17a3bc16E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.d, i1 noundef zeroext %i.g)
  %i.h = load i64, ptr %i.c, align 8, !range !13, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.h, -9223372036854775773
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.317.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.613.0..sroa_idx, i64 100, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.h, ptr %0, align 8
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %.sroa.216.0..sroa_idx, align 8
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.l = load i32, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i32 %i.l, 6
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 2 uses
  %i.p = icmp ult i64 %i.o, 64051194700380388
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ugt i64 %i.o, 4
  br i1 %i.q, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.q, %bb.h, %bb.d, %bb.c
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.r

bb.f:                                             ; preds = %.thread, %bb.q
  call void @_ZN4anki8notetype8Notetype12set_modified17hc6ac9c30b28595f1E(ptr noalias noundef nonnull align 8 dereferenceable(256) %2, i32 noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 2, ptr %i.a, align 8
  call void @"_ZN4anki8notetype46_$LT$impl$u20$anki..collection..Collection$GT$45add_or_update_notetype_with_existing_id_inner17h932a3251c0d57a42E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 dereferenceable(256) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.a, i32 noundef %i.j, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %.not20 = icmp eq i64 %i.r, -9223372036854775773
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3 ; 15 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 105 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !6, !noundef !3
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  store i8 1, ptr %i.u, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store i32 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 92
  store i32 0, ptr %i.y, align 4
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.i
  %.sroa.07.1 = xor i1 %i.w, true
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 249 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !range !6, !noundef !3
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  store i32 1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 236
  store i32 1, ptr %i.ad, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.07.1.1 = phi i1 [ %.sroa.07.1, %bb.j ], [ true, %bb.k ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 393 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !range !6, !noundef !3
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.ae, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 376
  store i32 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 380
  store i32 2, ptr %i.ai, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.07.1.2 = phi i1 [ %.sroa.07.1.1, %bb.l ], [ true, %bb.m ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 537 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !range !6, !noundef !3
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 520
  store i32 1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 524
  store i32 3, ptr %i.an, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.07.1.3 = phi i1 [ %.sroa.07.1.2, %bb.n ], [ true, %bb.o ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 681 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !range !6, !noundef !3
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.p
  store i8 0, ptr %i.ao, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 664
  store i32 1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 668
  store i32 4, ptr %i.as, align 4
  br label %bb.f

bb.q:                                             ; preds = %bb.p
  br i1 %.sroa.07.1.3, label %bb.f, label %bb.e

bb.r:                                             ; preds = %bb.b, %bb.g, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki7dbcheck46_$LT$impl$u20$anki..collection..Collection$GT$24check_missing_deck_names17hcc1575e7be8b6d1dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 8 uses
  %.sroa.6.i.sroa.8 = alloca [96 x i8], align 8   ; 6 uses
  %i.e = alloca [192 x i8], align 8               ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.9 = alloca [96 x i8], align 8            ; 5 uses
  %i.i = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 600
  call void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$18get_all_deck_names17h1fa6fa221499e55dE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.i, ptr noundef nonnull align 8 %i.k)
  %i.l = load i64, ptr %i.i, align 8, !range !13, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.l, -9223372036854775773
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.321.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.618.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.220.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.l, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8377
  invoke void @"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h762ae299aa27388dE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  %.idx.i = shl nuw nsw i64 %i.q, 5
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.6.i.sroa.8.0..sroa.510.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.d

bb.d:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h57e6b89013893818E.exit.i", %.lr.ph.i
  %.sroa.0.031.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h57e6b89013893818E.exit.i" ] ; 3 uses
  %.sroa.02.030.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.x, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h57e6b89013893818E.exit.i" ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.030.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8377
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.030.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !8376, !nonnull !3, !noundef !3 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.030.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !8376, !noundef !3 ; 2 uses
  invoke void @"_ZN7unicase16UniCase$LT$S$GT$3new17h0430d798a45871e5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef %i.ab)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8378

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %bb.p, %bb.o, %select.unfold.i, %bb.i, %bb.g, %.noexc.i, %bb.f, %bb.e, %bb.d
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7cb76b53b548ea7cE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.body unwind label %bb.r, !noalias !8378

bb.e:                                             ; preds = %bb.d
  %i.ac = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h22748ee33ae9ae8eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8378 ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8379
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 2)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8378

.noexc.i:                                         ; preds = %bb.f
  invoke fastcc void @"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h99b8bb1745f519b7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(104) %i.a)
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8378

.noexc16.i:                                       ; preds = %.noexc.i
  %i.ad = load i64, ptr %i.b, align 8, !range !7, !noalias !8379, !noundef !3
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %"_ZN4core3str21_$LT$impl$u20$str$GT$11rsplit_once17hdf4a2ee502214fb8E.exit.thread.i"

"_ZN4core3str21_$LT$impl$u20$str$GT$11rsplit_once17hdf4a2ee502214fb8E.exit.thread.i": ; preds = %.noexc16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8379
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h57e6b89013893818E.exit.i"

bb.g:                                             ; preds = %.noexc16.i
  %i.af = load i64, ptr %i.t, align 8, !noalias !8379, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8379
  invoke void @"_ZN7unicase16UniCase$LT$S$GT$3new17h0430d798a45871e5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef %i.af)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8378

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h57e6b89013893818E.exit.i": ; preds = %.noexc18.i, %bb.q, %"_ZN4core3str21_$LT$impl$u20$str$GT$11rsplit_once17hdf4a2ee502214fb8E.exit.thread.i"
  %.sroa.0.1.i = phi i64 [ %.sroa.0.031.i, %"_ZN4core3str21_$LT$impl$u20$str$GT$11rsplit_once17hdf4a2ee502214fb8E.exit.thread.i" ], [ %i.bm, %bb.q ], [ %.sroa.0.031.i, %.noexc18.i ] ; 2 uses
  %i.ag = icmp eq ptr %i.x, %i.r
  br i1 %i.ag, label %._crit_edge.i, label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.ah = load i64, ptr %i.u, align 8, !alias.scope !8380, !noalias !8377, !noundef !3
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %select.unfold.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = invoke noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h2c5da30f37618ab9E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8378 ; 2 uses

.noexc17.i:                                       ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8381)
  call void @llvm.experimental.noalias.scope.decl(metadata !8382)
  %i.ak = lshr i64 %i.aj, 57
  %i.al = trunc nuw nsw i64 %i.ak to i8
  %i.am = load i64, ptr %i.w, align 8, !alias.scope !8383, !noalias !8377, !noundef !3 ; 2 uses
  %i.an = load ptr, ptr %i.h, align 8, !alias.scope !8383, !noalias !8377, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.al, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.noexc17.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc17.i ], [ %i.be, %bb.l ]
  %.pn.i.i.i = phi i64 [ %i.aj, %.noexc17.i ], [ %i.bf, %bb.l ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ao, align 1, !noalias !8384 ; 2 uses
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.bd, %bb.k ], [ %i.aq, %bb.j ] ; 3 uses
  %i.ar = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = add i64 %.sroa.01.0.i.i.i.i, %i.as
  %i.au = and i64 %i.at, %i.am
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds [24 x i8], ptr %i.an, i64 %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -24
  %i.ay = invoke noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17he26635c3cdfd1226E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8378

.noexc18.i:                                       ; preds = %.lr.ph.i.i.i
  br i1 %i.ay, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h57e6b89013893818E.exit.i", label %bb.k, !prof !5

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.j
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %select.unfold.i, !prof !9

bb.k:                                             ; preds = %.noexc18.i
  %i.bc = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.bd = and i16 %i.bc, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.be = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
end_hunk_0
