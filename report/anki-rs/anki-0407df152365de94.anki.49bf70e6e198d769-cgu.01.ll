Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.01?download=true
inline.NumInlined: 3173
inline.NumDeleted: 1166
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4core5slice4sort6shared5pivot11median3_rec17hdec20e94ea0b9dfaE:bb.a
_ZN4core5slice4sort6shared5pivot7median317hb606936e919d17ccE.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i8, ptr %.sroa.0.0, align 4, !noundef !11 ; 2 uses
  %.sroa.04.0.val14 = load i8, ptr %.sroa.04.0, align 4, !noundef !11 ; 2 uses
  %i.n = icmp ult i8 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i8, ptr %.sroa.08.0, align 4, !noundef !11 ; 2 uses
  %i.o = icmp ult i8 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i8 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he6822995b0759bf6E(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_ZN4core5slice4sort6shared5pivot7median317h38b0f75b5245546eE.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he6822995b0759bf6E(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he6822995b0759bf6E(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he6822995b0759bf6E(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_ZN4core5slice4sort6shared5pivot7median317h38b0f75b5245546eE.exit

_ZN4core5slice4sort6shared5pivot7median317h38b0f75b5245546eE.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i64, ptr %.sroa.0.0, align 8, !noundef !11 ; 2 uses
  %.sroa.04.0.val14 = load i64, ptr %.sroa.04.0, align 8, !noundef !11 ; 2 uses
  %i.n = icmp slt i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i64, ptr %.sroa.08.0, align 8, !noundef !11 ; 2 uses
  %i.o = icmp slt i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp slt i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he73df08035ec556fE(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #12 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_ZN4core5slice4sort6shared5pivot7median317h34532095ccb232c7E.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he73df08035ec556fE(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he73df08035ec556fE(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17he73df08035ec556fE(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_ZN4core5slice4sort6shared5pivot7median317h34532095ccb232c7E.exit

_ZN4core5slice4sort6shared5pivot7median317h34532095ccb232c7E.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i16, ptr %.sroa.0.0, align 2, !alias.scope !43, !noalias !44, !noundef !11 ; 2 uses
  %.sroa.04.0.val14 = load i16, ptr %.sroa.04.0, align 2, !alias.scope !44, !noalias !43, !noundef !11 ; 2 uses
  %i.n = icmp ult i16 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i16, ptr %.sroa.08.0, align 2, !alias.scope !44, !noalias !43, !noundef !11 ; 2 uses
  %i.o = icmp ult i16 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i16 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf014aae57c88c057E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf014aae57c88c057E(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf014aae57c88c057E(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf014aae57c88c057E(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.04.0) ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.08.0)
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_ZN4core5slice4sort6shared5pivot7median317h691b077d34b9a2c5E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.04.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.08.0)
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h691b077d34b9a2c5E.exit

_ZN4core5slice4sort6shared5pivot7median317h691b077d34b9a2c5E.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf7da4f72952ef244E(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #12 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf7da4f72952ef244E(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf7da4f72952ef244E(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf7da4f72952ef244E(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 40
  %.sroa.0.0.val17 = load i64, ptr %i.n, align 8, !noundef !11 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 48
  %.sroa.0.0.val18 = load i32, ptr %i.o, align 8  ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 40
  %.sroa.04.0.val19 = load i64, ptr %i.p, align 8, !noundef !11 ; 4 uses
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 48
  %.sroa.04.0.val20 = load i32, ptr %i.q, align 8 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.s = icmp ult i32 %.sroa.0.0.val18, %.sroa.04.0.val20
  %i.t = icmp ult i64 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.u = select i1 %i.r, i1 %i.s, i1 %i.t         ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.08.0, i64 40
  %.sroa.08.0.val15 = load i64, ptr %i.v, align 8, !noundef !11 ; 4 uses
  %i.w = getelementptr i8, ptr %.sroa.08.0, i64 48
  %.sroa.08.0.val16 = load i32, ptr %i.w, align 8 ; 2 uses
  %i.x = icmp eq i64 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.y = icmp ult i32 %.sroa.0.0.val18, %.sroa.08.0.val16
  %i.z = icmp ult i64 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.aa = select i1 %i.x, i1 %i.y, i1 %i.z
  %i.ab = xor i1 %i.u, %i.aa
  br i1 %i.ab, label %_ZN4core5slice4sort6shared5pivot7median317h1f1355eefd4cf7c2E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i64 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.ad = icmp ult i32 %.sroa.04.0.val20, %.sroa.08.0.val16
  %i.ae = icmp ult i64 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.af = select i1 %i.ac, i1 %i.ad, i1 %i.ae
  %i.ag = xor i1 %i.u, %i.af
  %..i = select i1 %i.ag, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_ZN4core5slice4sort6shared5pivot7median317h1f1355eefd4cf7c2E.exit

_ZN4core5slice4sort6shared5pivot7median317h1f1355eefd4cf7c2E.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 16               ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 16               ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 16               ; 6 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 -32 ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load <2 x i64>, ptr %1, align 8          ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.617.0.copyload = load i64, ptr %.sroa.617.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.sroa.411.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.sroa.5.0..sroa_idx.i31.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i32.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.411.0..sroa_idx.i33.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx12.i34.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.5.0..sroa_idx.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx.i26.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.411.0..sroa_idx.i27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx12.i28.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i29.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.j = extractelement <2 x i64> %i.i, i64 0     ; 2 uses
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.sroa.617.0.copyload
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.sroa.617.0.copyload
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.sroa.617.0.copyload
  %2 = insertelement <2 x ptr> poison, ptr %.sroa.5.0.copyload, i64 0 ; 2 uses
  %3 = insertelement <2 x ptr> %2, ptr %i.n, i64 1 ; 2 uses
  %4 = insertelement <2 x ptr> %2, ptr %i.m, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.m
  ret void

bb.d:                                             ; preds = %bb.l, %bb.b
  %.sroa.5.0 = phi ptr [ %1, %bb.b ], [ %.sroa.0.0, %bb.l ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %i.p, %bb.l ] ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0, i64 32, i1 false)
  %i.o = icmp eq ptr %.sroa.0.0, %0
  br i1 %i.o, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  %i.q = load i64, ptr %i.p, align 8, !range !20, !alias.scope !1913, !noalias !1914, !noundef !11
  %i.r = trunc nuw i64 %i.q to i1                 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -16
  %.val22.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !1913, !noalias !1914, !nonnull !11, !noundef !11 ; 7 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8
  %.val23.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !1913, !noalias !1914, !noundef !11 ; 3 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i, i64 %.val23.i.i.i.i ; 2 uses
  br i1 %i.r, label %bb.j, label %bb.k

bb.g:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1915
  store <2 x ptr> %4, ptr %i.f, align 16, !noalias !1915
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 16, !noalias !1915
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1915
  %i.v = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i, i64 %.val23.i.i.i.i
  store ptr %.val22.i.i.i.i, ptr %i.e, align 8, !noalias !1915
  store ptr %i.v, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1915
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i, align 8, !noalias !1915
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1915
  %i.w = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1915
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i, i64 %.val23.i.i.i.i
  %i.y = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17hb5811cc493df5a49E(ptr noundef nonnull %.sroa.5.0.copyload, ptr noundef nonnull %i.l, ptr noundef nonnull %.val22.i.i.i.i, ptr noundef nonnull %i.x)
          to label %bb.l unwind label %bb.n

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1915
  store <2 x ptr> %3, ptr %i.d, align 16, !noalias !1915
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i25.i.i.i.i, align 16, !noalias !1915
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i26.i.i.i.i, align 4, !noalias !1915
  store ptr %.val22.i.i.i.i, ptr %i.c, align 8, !noalias !1915
  store ptr %i.u, ptr %.sroa.411.0..sroa_idx.i27.i.i.i.i, align 8, !noalias !1915
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i28.i.i.i.i, align 8, !noalias !1915
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i29.i.i.i.i, align 4, !noalias !1915
  %i.z = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %.noexc9 unwind label %bb.n

.noexc9:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1915
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1915
  store <2 x ptr> %3, ptr %i.b, align 16, !noalias !1915
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i31.i.i.i.i, align 16, !noalias !1915
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i32.i.i.i.i, align 4, !noalias !1915
  store ptr %.val22.i.i.i.i, ptr %i.a, align 8, !noalias !1915
  store ptr %i.u, ptr %.sroa.411.0..sroa_idx.i33.i.i.i.i, align 8, !noalias !1915
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i34.i.i.i.i, align 8, !noalias !1915
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i35.i.i.i.i, align 4, !noalias !1915
  %i.aa = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %.noexc10 unwind label %bb.n

.noexc10:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1915
  br label %bb.l

bb.l:                                             ; preds = %.noexc10, %.noexc9, %.noexc, %bb.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.z, %.noexc9 ], [ %i.aa, %.noexc10 ], [ %i.w, %.noexc ], [ %i.y, %bb.i ]
  %i.ab = icmp slt i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.ab, label %bb.d, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  store <2 x i64> %i.i, ptr %.sroa.0.0, align 8, !noalias !1916
  %.sroa.611.0..sroa.0.0.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  store ptr %.sroa.5.0.copyload, ptr %.sroa.611.0..sroa.0.0.lcssa.sroa_idx, align 8, !noalias !1916
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  store i64 %.sroa.617.0.copyload, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx, align 8, !noalias !1916
  br label %bb.c

bb.n:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 %i.j, ptr %.sroa.0.0, align 8, !noalias !1917
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.ad = extractelement <2 x i64> %i.i, i64 1
  store i64 %i.ad, ptr %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx, align 8, !noalias !1917
  %.sroa.611.0..sroa.0.0.lcssa6.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  store ptr %.sroa.5.0.copyload, ptr %.sroa.611.0..sroa.0.0.lcssa6.sroa_idx, align 8, !noalias !1917
  %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  store i64 %.sroa.617.0.copyload, ptr %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx, align 8, !noalias !1917
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h53760c57f963014dE(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = getelementptr i8, ptr %1, i64 24
  %.val11 = load i32, ptr %i.a, align 8, !range !41, !noundef !11 ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 28
  %.val12 = load i32, ptr %i.b, align 4           ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 -16
  %.val13 = load i32, ptr %i.c, align 8           ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 -12
  %.val14 = load i32, ptr %i.d, align 4
  %i.e = ashr i32 %.val11, 13                     ; 4 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp slt i32 %i.e, 1                     ; 3 uses
  br i1 %i.g, label %bb.b, label %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.h = sub nsw i32 1, %i.e
  %i.i = udiv i32 %i.h, 400
  %i.j = add nuw nsw i32 %i.i, 1                  ; 2 uses
  %i.k = mul nuw nsw i32 %i.j, 400
  %i.l = add nsw i32 %i.k, %i.f
  %.neg.i.i.i = mul nsw i32 %i.j, -146097
  br label %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i"

"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i": ; preds = %bb.b, %bb.a
  %.sroa.05.0.i.i.i = phi i32 [ %.neg.i.i.i, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.m = ashr i32 %.val13, 13                     ; 3 uses
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  %i.o = icmp slt i32 %i.m, 1
  br i1 %i.o, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit"

bb.c:                                             ; preds = %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i"
  %i.p = sub nsw i32 1, %i.m
  %i.q = udiv i32 %i.p, 400
  %i.r = add nuw nsw i32 %i.q, 1                  ; 2 uses
  %i.s = mul nuw nsw i32 %i.r, 400
  %i.t = add nsw i32 %i.s, %i.n
  %.neg.i.i8.i = mul nsw i32 %i.r, -146097
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit": ; preds = %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i", %bb.c
  %.sroa.05.0.i.i5.i = phi i32 [ %.neg.i.i8.i, %bb.c ], [ 0, %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i" ]
  %.sroa.0.0.i.i6.i = phi i32 [ %i.t, %bb.c ], [ %i.n, %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i" ] ; 2 uses
  %i.u = lshr i32 %.val11, 4
  %i.v = and i32 %i.u, 511
  %i.w = add nuw nsw i32 %i.v, -719163            ; 2 uses
  %i.x = add nsw i32 %i.w, %.sroa.05.0.i.i.i
  %i.y = sdiv i32 %.sroa.0.0.i.i.i, 100           ; 2 uses
  %i.z = sub nsw i32 %i.x, %i.y
  %i.aa = mul nsw i32 %.sroa.0.0.i.i.i, 1461
  %i.ab = ashr i32 %i.aa, 2
  %i.ac = add nsw i32 %i.z, %i.ab
  %i.ad = ashr i32 %i.y, 2
  %narrow.i.i = add nsw i32 %i.ac, %i.ad
  %i.ae = sext i32 %narrow.i.i to i64
  %i.af = mul nsw i64 %i.ae, 86400
  %i.ag = zext i32 %.val12 to i64                 ; 2 uses
  %i.ah = add nsw i64 %i.af, %i.ag
  %i.ai = sdiv i32 %.sroa.0.0.i.i6.i, 100         ; 2 uses
  %i.aj = mul nsw i32 %.sroa.0.0.i.i6.i, 1461
  %i.ak = ashr i32 %i.aj, 2
  %i.al = ashr i32 %i.ai, 2
  %i.am = lshr i32 %.val13, 4
  %i.an = and i32 %i.am, 511
  %i.ao = zext i32 %.val14 to i64
  %i.ap = add nuw nsw i32 %i.an, -719163
  %i.aq = add nsw i32 %i.ap, %.sroa.05.0.i.i5.i
  %i.ar = sub nsw i32 %i.aq, %i.ai
  %i.as = add nsw i32 %i.ar, %i.ak
  %narrow.i7.i = add nsw i32 %i.as, %i.al
  %i.at = sext i32 %narrow.i7.i to i64
  %i.au = mul nsw i64 %i.at, 86400
  %i.av = add nsw i64 %i.au, %i.ao
  %i.aw = icmp slt i64 %i.ah, %i.av
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.615.0.copyload = load i64, ptr %.sroa.615.0..sroa_idx, align 8
  %i.ax = sub nsw i32 1, %i.e
  %i.ay = udiv i32 %i.ax, 400
  %i.az = add nuw nsw i32 %i.ay, 1                ; 2 uses
  %i.ba = mul nuw nsw i32 %i.az, 400
  %.neg.i.i.i23 = mul nsw i32 %i.az, -146097
  %spec.select = select i1 %i.g, i32 %.neg.i.i.i23, i32 0
  %i.bb = select i1 %i.g, i32 %i.ba, i32 0
  %spec.select8 = add nsw i32 %i.f, %i.bb         ; 2 uses
  %i.bc = add nsw i32 %i.w, %spec.select
  %i.bd = sdiv i32 %spec.select8, 100             ; 2 uses
  %i.be = sub i32 %i.bc, %i.bd
  %i.bf = mul nsw i32 %spec.select8, 1461
  %i.bg = ashr i32 %i.bf, 2
  %i.bh = add nsw i32 %i.be, %i.bg
  %i.bi = ashr i32 %i.bd, 2
  %narrow.i.i20 = add nsw i32 %i.bh, %i.bi
  %i.bj = sext i32 %narrow.i.i20 to i64
  %i.bk = mul nsw i64 %i.bj, 86400
  %i.bl = add nsw i64 %i.bk, %i.ag
  br label %bb.f

bb.e:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$20sort_unstable_by_key28_$u7b$$u7b$closure$u7d$$u7d$17hc1436b037228eab1E.exit", %bb.i
  ret void

bb.f:                                             ; preds = %bb.h, %bb.d
  %.sroa.5.0 = phi ptr [ %1, %bb.d ], [ %.sroa.0.0, %bb.h ] ; 7 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -40 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0, i64 40, i1 false)
  %i.bm = icmp eq ptr %.sroa.0.0, %0
  br i1 %i.bm, label %bb.i, label %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i15"

"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i15": ; preds = %bb.f
  %i.bn = getelementptr i8, ptr %.sroa.5.0, i64 -56
  %.val9 = load i32, ptr %i.bn, align 8           ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.5.0, i64 -52
  %.val10 = load i32, ptr %i.bo, align 4
  %i.bp = ashr i32 %.val9, 13                     ; 3 uses
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  %i.br = icmp slt i32 %i.bp, 1
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i15"
  %i.bs = sub nsw i32 1, %i.bp
  %i.bt = udiv i32 %i.bs, 400
  %i.bu = add nuw nsw i32 %i.bt, 1                ; 2 uses
  %i.bv = mul nuw nsw i32 %i.bu, 400
  %i.bw = add nsw i32 %i.bv, %i.bq
  %.neg.i.i8.i22 = mul nsw i32 %i.bu, -146097
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i15"
  %.sroa.05.0.i.i5.i18 = phi i32 [ %.neg.i.i8.i22, %bb.g ], [ 0, %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i15" ]
  %.sroa.0.0.i.i6.i19 = phi i32 [ %i.bw, %bb.g ], [ %i.bq, %"_ZN4anki10collection6backup12BackupFilter16obsolete_backups28_$u7b$$u7b$closure$u7d$$u7d$17hf29ac79e059e0dddE.exit.i15" ] ; 2 uses
  %i.bx = sdiv i32 %.sroa.0.0.i.i6.i19, 100       ; 2 uses
  %i.by = mul nsw i32 %.sroa.0.0.i.i6.i19, 1461
  %i.bz = ashr i32 %i.by, 2
  %i.ca = ashr i32 %i.bx, 2
  %i.cb = lshr i32 %.val9, 4
  %i.cc = and i32 %i.cb, 511
  %i.cd = zext i32 %.val10 to i64
  %i.ce = add nuw nsw i32 %i.cc, -719163
  %i.cf = add nsw i32 %i.ce, %.sroa.05.0.i.i5.i18
  %i.cg = sub nsw i32 %i.cf, %i.bx
  %i.ch = add nsw i32 %i.cg, %i.bz
  %narrow.i7.i21 = add nsw i32 %i.ch, %i.ca
  %i.ci = sext i32 %narrow.i7.i21 to i64
  %i.cj = mul nsw i64 %i.ci, 86400
  %i.ck = add nsw i64 %i.cj, %i.cd
  %i.cl = icmp slt i64 %i.bl, %i.ck
  br i1 %i.cl, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !noalias !1922
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -16
  store i32 %.val11, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx, align 8, !noalias !1922
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -12
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6shared9smallsort18small_sort_general17h29da9ac5f0cd859aE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noundef nonnull align 8 dereferenceable(56) %i.cf, i64 56, i1 false), !alias.scope !2219
  %i.ch = getelementptr i8, ptr %i.cg, i64 40
  %.val9.i40.1.i = load i64, ptr %i.ch, align 8, !alias.scope !2218, !noalias !2217, !noundef !11 ; 3 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 -16
  %.val10.i41.1.i = load i64, ptr %i.ci, align 8, !alias.scope !2218, !noalias !2217, !noundef !11
  %i.cj = icmp ult i64 %.val9.i40.1.i, %.val10.i41.1.i
  br i1 %i.cj, label %bb.f, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.1.i

bb.f:                                             ; preds = %.lr.ph.1.i
  %.sroa.59.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %.sroa.59.0.copyload.i.1.i = load i64, ptr %.sroa.59.0..sroa_idx.i.1.i, align 8, !alias.scope !2218, !noalias !2217
  %.sroa.0.0.i42.1.i33 = getelementptr inbounds i8, ptr %i.cg, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.1.i33, i64 56, i1 false), !alias.scope !2218, !noalias !2217
  %i.ck = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.ck, label %._crit_edge38, label %.lr.ph37

bb.g:                                             ; preds = %.lr.ph37
  %.sroa.0.0.i42.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i42.1.i35, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.1.i35, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.1.i, i64 56, i1 false), !alias.scope !2218, !noalias !2217
  %i.cl = icmp eq ptr %.sroa.0.0.i42.1.i, %i.cd
  br i1 %i.cl, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.i42.1.i35 = phi ptr [ %.sroa.0.0.i42.1.i, %bb.g ], [ %.sroa.0.0.i42.1.i33, %bb.f ] ; 5 uses
  %.sroa.5.0.i.1.i34 = phi ptr [ %.sroa.0.0.i42.1.i35, %bb.g ], [ %i.cg, %bb.f ] ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.5.0.i.1.i34, i64 -72
  %.val8.i43.1.i = load i64, ptr %i.cm, align 8, !alias.scope !2218, !noalias !2217, !noundef !11
  %i.cn = icmp ult i64 %.val9.i40.1.i, %.val8.i43.1.i
  br i1 %i.cn, label %bb.g, label %._crit_edge38

._crit_edge38:                                    ; preds = %bb.g, %.lr.ph37, %bb.f
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cg, %bb.f ], [ %.sroa.0.0.i42.1.i35, %bb.g ], [ %.sroa.5.0.i.1.i34, %.lr.ph37 ] ; 2 uses
  %.sroa.0.0.i42.lcssa.1.i = phi ptr [ %i.cd, %bb.f ], [ %i.cd, %bb.g ], [ %.sroa.0.0.i42.1.i35, %.lr.ph37 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false), !alias.scope !2219
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -16
  store i64 %.val9.i40.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !2218, !noalias !2220
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i64 %.sroa.59.0.copyload.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !2218, !noalias !2220
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.1.i: ; preds = %._crit_edge38, %.lr.ph.1.i
  %i.co = icmp samesign ult i64 %.sroa.08.110.1.i, %i.ca ; 2 uses
  %i.cp = zext i1 %i.co to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.cp
  br i1 %i.co, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.1.i, %.loopexit.i
  %i.cq = add nsw i64 %1, -1                      ; 2 uses
  %i.cr = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.cq
  %i.ct = getelementptr i8, ptr %i.cd, i64 -56
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cu = getelementptr i8, ptr %i.dh, i64 56     ; 2 uses
  %i.cv = getelementptr i8, ptr %i.dg, i64 56
  %i.cw = and i64 %1, 1
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.i, label %bb.h

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.cy, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.cd, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dh, %.lr.ph.i.i ], [ %i.ct, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.cs, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cr, %.loopexit.1.i ] ; 2 uses
  %i.cy = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.cz = getelementptr i8, ptr %.sroa.011.07.i.i, i64 40
  %.sroa.011.0.val.i.i = load i64, ptr %i.cz, align 8, !alias.scope !2221, !noalias !2217, !noundef !11
  %i.da = getelementptr i8, ptr %.sroa.06.08.i.i, i64 40
  %.sroa.06.0.val.i.i = load i64, ptr %i.da, align 8, !alias.scope !2221, !noalias !2217, !noundef !11
  %.not = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %.not, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i23.i.i, i64 56, i1 false), !alias.scope !2219, !noalias !2222
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 56, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 56
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 56 ; 2 uses
  %i.dc = getelementptr i8, ptr %.sroa.017.05.i.i, i64 40
  %.sroa.017.0.val.i.i = load i64, ptr %i.dc, align 8, !alias.scope !2221, !noalias !2217, !noundef !11
  %i.dd = getelementptr i8, ptr %.sroa.015.06.i.i, i64 40
  %.sroa.015.0.val.i.i = load i64, ptr %i.dd, align 8, !alias.scope !2221, !noalias !2217, !noundef !11
  %i.de = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.de, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.df = xor i1 %i.de, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i.i.i, i64 56, i1 false), !alias.scope !2219, !noalias !2223
  %.neg.i.i.i = sext i1 %i.df to i64
  %i.dg = getelementptr [56 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.de to i64
  %i.dh = getelementptr [56 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %i.cy, %i.c
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %.not21 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.cu ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not21, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.db, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i.i, i64 56, i1 false), !alias.scope !2219
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not21, i64 56, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not21, i64 0, i64 56
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.h ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.h ]
  %i.dj = icmp ne ptr %.sroa.06.1.i.i, %i.cu
  %i.dk = icmp ne ptr %.sroa.011.1.i.i, %i.cv
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dk, !prof !15
  br i1 %or.cond.i.i, label %bb.j, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hcfc7e6f78f3ed48fE.exit, !prof !15

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.k, !noalias !2219

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = mul nuw nsw i64 %1, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.dm, i1 false), !alias.scope !2219, !noalias !2224
  resume { ptr, i32 } %i.dl

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 56
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.do, ptr noundef nonnull align 8 dereferenceable(56) %i.dn, i64 56, i1 false), !alias.scope !2219
  %i.dp = getelementptr i8, ptr %i.do, i64 40
  %.val9.i40.i = load i64, ptr %i.dp, align 8, !alias.scope !2218, !noalias !2217, !noundef !11 ; 3 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 -16
  %.val10.i41.i = load i64, ptr %i.dq, align 8, !alias.scope !2218, !noalias !2217, !noundef !11
  %i.dr = icmp ult i64 %.val9.i40.i, %.val10.i41.i
  br i1 %i.dr, label %bb.l, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %.sroa.59.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !2218, !noalias !2217
  %.sroa.0.0.i42.i26 = getelementptr inbounds i8, ptr %i.do, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.do, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.i26, i64 56, i1 false), !alias.scope !2218, !noalias !2217
  %i.ds = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.ds, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %.sroa.0.0.i42.i = getelementptr inbounds i8, ptr %.sroa.0.0.i42.i28, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.i28, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.i, i64 56, i1 false), !alias.scope !2218, !noalias !2217
  %i.dt = icmp eq ptr %.sroa.0.0.i42.i, %i.a
  br i1 %i.dt, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.sroa.0.0.i42.i28 = phi ptr [ %.sroa.0.0.i42.i, %bb.m ], [ %.sroa.0.0.i42.i26, %bb.l ] ; 5 uses
  %.sroa.5.0.i.i27 = phi ptr [ %.sroa.0.0.i42.i28, %bb.m ], [ %i.do, %bb.l ] ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.5.0.i.i27, i64 -72
  %.val8.i43.i = load i64, ptr %i.du, align 8, !alias.scope !2218, !noalias !2217, !noundef !11
  %i.dv = icmp ult i64 %.val9.i40.i, %.val8.i43.i
  br i1 %i.dv, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %.lr.ph, %bb.l
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.do, %bb.l ], [ %.sroa.0.0.i42.i28, %bb.m ], [ %.sroa.5.0.i.i27, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i42.lcssa.i = phi ptr [ %i.a, %bb.l ], [ %i.a, %bb.m ], [ %.sroa.0.0.i42.i28, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.lcssa.i, ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i64 40, i1 false), !alias.scope !2219
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -16
  store i64 %.val9.i40.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !2218, !noalias !2220
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i64 %.sroa.59.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !2218, !noalias !2220
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.dw = icmp samesign ult i64 %.sroa.08.110.i, %i.c ; 2 uses
  %i.dx = zext i1 %i.dw to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.dx
  br i1 %i.dw, label %.lr.ph.i, label %.loopexit.i

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hcfc7e6f78f3ed48fE.exit: ; preds = %bb.a, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort18small_sort_general17h43b052b5f4fb9476E(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 33) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 11 uses
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 11 uses
  %i.d = alloca [40 x i8], align 8                ; 11 uses
  %i.e = alloca [40 x i8], align 8                ; 11 uses
  %i.f = alloca [40 x i8], align 8                ; 11 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [40 x i8], align 16               ; 10 uses
  %i.i = alloca [40 x i8], align 8                ; 11 uses
  %i.j = alloca [40 x i8], align 16               ; 10 uses
  %i.k = alloca [40 x i8], align 8                ; 11 uses
  %i.l = alloca [40 x i8], align 16               ; 10 uses
  %i.m = alloca [1536 x i8], align 8              ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  %i.n = icmp samesign ult i64 %1, 2
  br i1 %i.n, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h13a4735e48f145a9E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i64 %1, 1                           ; 10 uses
  %i.p = icmp samesign ugt i64 %1, 7
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0), !noalias !2283 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t), !noalias !2283 ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.v ; 3 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ac ; 3 uses
  %i.ae = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w), !noalias !2283 ; 3 uses
  %i.af = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z), !noalias !2283 ; 3 uses
  %i.ag = select i1 %i.ae, ptr %i.ab, ptr %i.w, !unpredictable !11
  %i.ah = select i1 %i.af, ptr %i.z, ptr %i.ad, !unpredictable !11
  %i.ai = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !11
  %i.aj = select i1 %i.ae, ptr %i.w, ptr %i.ai, !unpredictable !11 ; 3 uses
  %i.ak = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !11
  %i.al = select i1 %i.af, ptr %i.ad, ptr %i.ak, !unpredictable !11 ; 3 uses
  %i.am = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj), !noalias !2283 ; 2 uses
  %i.an = select i1 %i.am, ptr %i.al, ptr %i.aj, !unpredictable !11
  %i.ao = select i1 %i.am, ptr %i.aj, ptr %i.al, !unpredictable !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !alias.scope !2284
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false), !alias.scope !2284
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false), !alias.scope !2284
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !alias.scope !2284
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.o ; 8 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.o ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.av = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as), !noalias !2283 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ay = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax), !noalias !2283 ; 2 uses
  %i.az = zext i1 %i.av to i64
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.az ; 3 uses
  %i.bb = xor i1 %i.av, true
  %i.bc = zext i1 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.bc ; 4 uses
  %i.be = select i1 %i.ay, i64 3, i64 2
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.be ; 4 uses
  %i.bg = select i1 %i.ay, i64 2, i64 3
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.bg ; 3 uses
  %i.bi = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba), !noalias !2283 ; 3 uses
  %i.bj = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bd), !noalias !2283 ; 3 uses
  %i.bk = select i1 %i.bi, ptr %i.bf, ptr %i.ba, !unpredictable !11
  %i.bl = select i1 %i.bj, ptr %i.bd, ptr %i.bh, !unpredictable !11
  %i.bm = select i1 %i.bj, ptr %i.bf, ptr %i.bd, !unpredictable !11
  %i.bn = select i1 %i.bi, ptr %i.ba, ptr %i.bm, !unpredictable !11 ; 3 uses
  %i.bo = select i1 %i.bi, ptr %i.bd, ptr %i.bf, !unpredictable !11
  %i.bp = select i1 %i.bj, ptr %i.bh, ptr %i.bo, !unpredictable !11 ; 3 uses
  %i.bq = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn), !noalias !2283 ; 2 uses
  %i.br = select i1 %i.bq, ptr %i.bp, ptr %i.bn, !unpredictable !11
  %i.bs = select i1 %i.bq, ptr %i.bn, ptr %i.bp, !unpredictable !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 32, i1 false), !alias.scope !2284
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false), !alias.scope !2284
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false), !alias.scope !2284
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !alias.scope !2284
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !alias.scope !2284
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.o
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 32, i1 false), !alias.scope !2284
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ 4, %bb.c ], [ 1, %bb.d ] ; 5 uses
  %i.by = sub nuw nsw i64 %1, %i.o                ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28 ; 2 uses
  %.sroa.4.0..sroa_idx.i30.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i32.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %.sroa.411.0..sroa_idx.i33.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx12.i34.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i35.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %.sroa.4.0..sroa_idx.i24.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i26.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 2 uses
  %.sroa.411.0..sroa_idx.i27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx12.i28.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %.sroa.5.0..sroa_idx.i31.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i32.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28 ; 2 uses
  %.sroa.411.0..sroa_idx.i33.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx12.i34.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i35.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 2 uses
  %.sroa.5.0..sroa_idx.i25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i26.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 28 ; 2 uses
  %.sroa.411.0..sroa_idx.i27.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx12.i28.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i29.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %.sroa.08.128.i = add nuw nsw i64 %.sroa.0.0.i, 1 ; 2 uses
  %i.bz = icmp samesign ult i64 %.sroa.0.0.i, %i.o
  br i1 %i.bz, label %.lr.ph.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i, %bb.e
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.o
  %i.cb = getelementptr [32 x i8], ptr %i.m, i64 %i.o ; 9 uses
  %i.cc = icmp samesign ult i64 %.sroa.0.0.i, %i.by
  br i1 %i.cc, label %.lr.ph.i.1, label %.loopexit4.i.1

.lr.ph.i.1:                                       ; preds = %.loopexit4.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i.1
  %.sroa.08.130.i.1 = phi i64 [ %.sroa.08.1.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i.1 ], [ %.sroa.08.128.i, %.loopexit4.i ] ; 3 uses
  %.sroa.08.029.i.1 = phi i64 [ %.sroa.08.130.i.1, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i.1 ], [ %.sroa.0.0.i, %.loopexit4.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %.sroa.08.029.i.1
  %.idx111 = shl nuw nsw i64 %.sroa.08.029.i.1, 5
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx111 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 32, i1 false), !alias.scope !2284
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  %i.cg = load i64, ptr %i.ce, align 8, !range !20, !alias.scope !2293, !noalias !2294, !noundef !11 ; 2 uses
  %i.ch = trunc nuw i64 %i.cg to i1               ; 2 uses
  %i.ci = load i64, ptr %i.cf, align 8, !range !20, !alias.scope !2295, !noalias !2296, !noundef !11
  %i.cj = trunc nuw i64 %i.ci to i1               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.val20.i.i.i.i.i.1 = load ptr, ptr %i.ck, align 8, !alias.scope !2293, !noalias !2294, !nonnull !11, !noundef !11 ; 15 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.val21.i.i.i.i.i.1 = load i64, ptr %i.cl, align 8, !alias.scope !2293, !noalias !2294, !noundef !11 ; 7 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ce, i64 -16
  %.val22.i.i.i.i.i.1 = load ptr, ptr %i.cm, align 8, !alias.scope !2295, !noalias !2296, !nonnull !11, !noundef !11 ; 7 uses
  %i.cn = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %.val23.i.i.i.i.i.1 = load i64, ptr %i.cn, align 8, !alias.scope !2295, !noalias !2296, !noundef !11 ; 3 uses
  br i1 %i.ch, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  br i1 %i.cj, label %.noexc34.i.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.1, i64 %.val21.i.i.i.i.i.1
  %i.cp = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.1, i64 %.val23.i.i.i.i.i.1
  %i.cq = call noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17hb5811cc493df5a49E(ptr noundef nonnull %.val20.i.i.i.i.i.1, ptr noundef nonnull %i.co, ptr noundef nonnull %.val22.i.i.i.i.i.1, ptr noundef nonnull %i.cp), !noalias !2284
  br label %.noexc33.i.1

.noexc34.i.1:                                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2297
  %i.cr = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.1, i64 %.val21.i.i.i.i.i.1
  store ptr %.val20.i.i.i.i.i.1, ptr %i.f, align 8, !noalias !2297
  store ptr %i.cr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !2297
  %i.cs = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.1, i64 %.val23.i.i.i.i.i.1
  store ptr %.val22.i.i.i.i.i.1, ptr %i.e, align 8, !noalias !2297
  store ptr %i.cs, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !2297
  %i.ct = call noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e), !noalias !2284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2297
  br label %.noexc33.i.1

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.cu = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.1, i64 %.val21.i.i.i.i.i.1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.1, i64 %.val23.i.i.i.i.i.1 ; 2 uses
  br i1 %i.cj, label %.noexc36.i.1, label %.noexc37.i.1

.noexc37.i.1:                                     ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2297
  store ptr %.val20.i.i.i.i.i.1, ptr %i.b, align 8, !noalias !2297
  store ptr %i.cu, ptr %.sroa.4.0..sroa_idx.i30.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i31.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i32.i.i.i.i.i, align 4, !noalias !2297
  store ptr %.val22.i.i.i.i.i.1, ptr %i.a, align 8, !noalias !2297
  store ptr %i.cv, ptr %.sroa.411.0..sroa_idx.i33.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i34.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i35.i.i.i.i.i, align 4, !noalias !2297
  %i.cw = call noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !2284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2297
  br label %.noexc33.i.1

.noexc36.i.1:                                     ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2297
  store ptr %.val20.i.i.i.i.i.1, ptr %i.d, align 8, !noalias !2297
  store ptr %i.cu, ptr %.sroa.4.0..sroa_idx.i24.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i25.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i26.i.i.i.i.i, align 4, !noalias !2297
  store ptr %.val22.i.i.i.i.i.1, ptr %i.c, align 8, !noalias !2297
  store ptr %i.cv, ptr %.sroa.411.0..sroa_idx.i27.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i28.i.i.i.i.i, align 8, !noalias !2297
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i29.i.i.i.i.i, align 4, !noalias !2297
  %i.cx = call noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c), !noalias !2284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2297
  br label %.noexc33.i.1

.noexc33.i.1:                                     ; preds = %.noexc36.i.1, %.noexc37.i.1, %.noexc34.i.1, %bb.g
  %.sroa.0.0.i.i.i.i.i.1 = phi i8 [ %i.cx, %.noexc36.i.1 ], [ %i.cw, %.noexc37.i.1 ], [ %i.ct, %.noexc34.i.1 ], [ %i.cq, %bb.g ]
  %i.cy = icmp slt i8 %.sroa.0.0.i.i.i.i.i.1, 0
  br i1 %i.cy, label %bb.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i.1

bb.i:                                             ; preds = %.noexc33.i.1
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.4.0.copyload.i.i.1 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8, !alias.scope !2283, !noalias !2282 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.1, i64 %.val21.i.i.i.i.i.1 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 32, i1 false), !alias.scope !2283, !noalias !2282
  %i.da = icmp eq i64 %.sroa.08.029.i.1, 1        ; 2 uses
  br i1 %i.ch, label %.split.us.i.1.preheader, label %.split.i.1.preheader

.split.i.1.preheader:                             ; preds = %bb.i
  br i1 %i.da, label %.split12.us.i.1, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.split.i.1.preheader
  %2 = insertelement <2 x ptr> poison, ptr %.val20.i.i.i.i.i.1, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %i.cz, i64 1
  br label %.lr.ph104

.split.us.i.1.preheader:                          ; preds = %bb.i
  br i1 %i.da, label %.split12.us.i.1, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %.split.us.i.1.preheader
  %4 = insertelement <2 x ptr> poison, ptr %.val20.i.i.i.i.i.1, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %i.cz, i64 1
  %6 = insertelement <2 x ptr> poison, ptr %.val20.i.i.i.i.i.1, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.cz, i64 1
  br label %.lr.ph108

.split.i.1:                                       ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i32.i.1103, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 32, i1 false), !alias.scope !2283, !noalias !2282
  %i.db = icmp eq ptr %i.dc, %i.cb
  br i1 %i.db, label %.split12.us.i.1, label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.split.i.1
  %.sroa.0.0.i32.i.1103 = phi ptr [ %i.dc, %.split.i.1 ], [ %i.cf, %.lr.ph104.preheader ] ; 6 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i.1103, i64 -32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  %i.dd = load i64, ptr %i.dc, align 8, !range !20, !alias.scope !2302, !noalias !2303, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i.1103, i64 -16
  %.val22.i.i.i.i.i.i.1 = load ptr, ptr %i.df, align 8, !alias.scope !2302, !noalias !2303, !nonnull !11, !noundef !11 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i.1103, i64 -8
  %.val23.i.i.i.i.i.i.1 = load i64, ptr %i.dg, align 8, !alias.scope !2302, !noalias !2303, !noundef !11 ; 2 uses
  br i1 %i.de, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph104
  %i.dh = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.i.1, i64 %.val23.i.i.i.i.i.i.1
  %i.di = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17hb5811cc493df5a49E(ptr noundef nonnull %.val20.i.i.i.i.i.1, ptr noundef nonnull %i.cz, ptr noundef nonnull %.val22.i.i.i.i.i.i.1, ptr noundef nonnull %i.dh)
          to label %bb.l unwind label %.split14.i.loopexit.split-lp, !noalias !2284

bb.k:                                             ; preds = %.lr.ph104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2304
  store <2 x ptr> %3, ptr %i.l, align 16, !noalias !2304
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 16, !noalias !2304
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !2304
  %i.dj = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.i.1, i64 %.val23.i.i.i.i.i.i.1
  store ptr %.val22.i.i.i.i.i.i.1, ptr %i.k, align 8, !noalias !2304
  store ptr %i.dj, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2304
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i.i, align 8, !noalias !2304
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !2304
  %i.dk = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %.noexc.i.i.1 unwind label %.split14.i.loopexit.split-lp, !noalias !2284

.noexc.i.i.1:                                     ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2304
  br label %bb.l

bb.l:                                             ; preds = %.noexc.i.i.1, %bb.j
  %.sroa.0.0.i.i.i.i.i.i.1 = phi i8 [ %i.di, %bb.j ], [ %i.dk, %.noexc.i.i.1 ]
  %i.dl = icmp slt i8 %.sroa.0.0.i.i.i.i.i.i.1, 0
  br i1 %i.dl, label %.split.i.1, label %.split12.us.i.1

.split.us.i.1:                                    ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i32.us.i.1107, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 32, i1 false), !alias.scope !2283, !noalias !2282
  %i.dm = icmp eq ptr %i.dn, %i.cb
  br i1 %i.dm, label %.split12.us.i.1, label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.split.us.i.1
  %.sroa.0.0.i32.us.i.1107 = phi ptr [ %i.dn, %.split.us.i.1 ], [ %i.cf, %.lr.ph108.preheader ] ; 6 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.i32.us.i.1107, i64 -32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  %i.do = load i64, ptr %i.dn, align 8, !range !20, !alias.scope !2302, !noalias !2303, !noundef !11
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i32.us.i.1107, i64 -16
  %.val22.i.i.i.i.i.us.i.1 = load ptr, ptr %i.dq, align 8, !alias.scope !2302, !noalias !2303, !nonnull !11, !noundef !11 ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.i32.us.i.1107, i64 -8
  %.val23.i.i.i.i.i.us.i.1 = load i64, ptr %i.dr, align 8, !alias.scope !2302, !noalias !2303, !noundef !11
  %i.ds = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.us.i.1, i64 %.val23.i.i.i.i.i.us.i.1 ; 2 uses
  br i1 %i.dp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2304
  store <2 x ptr> %5, ptr %i.h, align 16, !noalias !2304
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i31.i.i.i.i.i.i, align 16, !noalias !2304
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i32.i.i.i.i.i.i, align 4, !noalias !2304
  store ptr %.val22.i.i.i.i.i.us.i.1, ptr %i.g, align 8, !noalias !2304
  store ptr %i.ds, ptr %.sroa.411.0..sroa_idx.i33.i.i.i.i.i.i, align 8, !noalias !2304
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i34.i.i.i.i.i.i, align 8, !noalias !2304
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i35.i.i.i.i.i.i, align 4, !noalias !2304
  %i.dt = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g)
          to label %.noexc10.i.us.i.1 unwind label %.split14.us.i.loopexit.split-lp, !noalias !2284

.noexc10.i.us.i.1:                                ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2304
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2304
  store <2 x ptr> %7, ptr %i.j, align 16, !noalias !2304
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i25.i.i.i.i.i.i, align 16, !noalias !2304
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i26.i.i.i.i.i.i, align 4, !noalias !2304
  store ptr %.val22.i.i.i.i.i.us.i.1, ptr %i.i, align 8, !noalias !2304
  store ptr %i.ds, ptr %.sroa.411.0..sroa_idx.i27.i.i.i.i.i.i, align 8, !noalias !2304
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i28.i.i.i.i.i.i, align 8, !noalias !2304
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i29.i.i.i.i.i.i, align 4, !noalias !2304
  %i.du = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %.noexc9.i.us.i.1 unwind label %.split14.us.i.loopexit.split-lp, !noalias !2284

.noexc9.i.us.i.1:                                 ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2304
  br label %bb.o

bb.o:                                             ; preds = %.noexc9.i.us.i.1, %.noexc10.i.us.i.1
  %.sroa.0.0.i.i.i.i.i.us.i.1 = phi i8 [ %i.du, %.noexc9.i.us.i.1 ], [ %i.dt, %.noexc10.i.us.i.1 ]
  %i.dv = icmp slt i8 %.sroa.0.0.i.i.i.i.i.us.i.1, 0
  br i1 %i.dv, label %.split.us.i.1, label %.split12.us.i.1

.split12.us.i.1:                                  ; preds = %bb.l, %.split.i.1, %bb.o, %.split.us.i.1, %.split.i.1.preheader, %.split.us.i.1.preheader
  %.us-phi.i.1 = phi ptr [ %i.cb, %.split.i.1.preheader ], [ %i.cb, %.split.us.i.1 ], [ %i.cb, %.split.us.i.1.preheader ], [ %.sroa.0.0.i32.us.i.1107, %bb.o ], [ %i.cb, %.split.i.1 ], [ %.sroa.0.0.i32.i.1103, %bb.l ] ; 4 uses
  store i64 %i.cg, ptr %.us-phi.i.1, align 8, !alias.scope !2283, !noalias !2305
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.us-phi.i.1, i64 8
  store i64 %.sroa.4.0.copyload.i.i.1, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i.1, align 8, !alias.scope !2283, !noalias !2305
  %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.us-phi.i.1, i64 16
  store ptr %.val20.i.i.i.i.i.1, ptr %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i.i.1, align 8, !alias.scope !2283, !noalias !2305
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.us-phi.i.1, i64 24
  store i64 %.val21.i.i.i.i.i.1, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.i.1, align 8, !alias.scope !2283, !noalias !2305
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i.1

_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i.1: ; preds = %.split12.us.i.1, %.noexc33.i.1
  %i.dw = icmp samesign ult i64 %.sroa.08.130.i.1, %i.by ; 2 uses
  %i.dx = zext i1 %i.dw to i64
  %.sroa.08.1.i.1 = add nuw i64 %.sroa.08.130.i.1, %i.dx
  br i1 %i.dw, label %.lr.ph.i.1, label %.loopexit4.i.1

.loopexit4.i.1:                                   ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i.1, %.loopexit4.i
  %i.dy = add nsw i64 %1, -1                      ; 2 uses
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.dy
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.dy
  %i.eb = getelementptr i8, ptr %i.cb, i64 -32
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30.i
  %i.ec = getelementptr i8, ptr %i.em, i64 32     ; 2 uses
  %i.ed = getelementptr i8, ptr %i.el, i64 32
  %i.ee = and i64 %1, 1
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.q, label %bb.p

.lr.ph.i.i:                                       ; preds = %.noexc30.i, %.loopexit4.i.1
  %.sroa.0.010.i.i = phi ptr [ %i.ej, %.noexc30.i ], [ %0, %.loopexit4.i.1 ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.eg, %.noexc30.i ], [ 0, %.loopexit4.i.1 ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.noexc30.i ], [ %i.m, %.loopexit4.i.1 ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.noexc30.i ], [ %i.cb, %.loopexit4.i.1 ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.em, %.noexc30.i ], [ %i.eb, %.loopexit4.i.1 ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.el, %.noexc30.i ], [ %i.ea, %.loopexit4.i.1 ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.en, %.noexc30.i ], [ %i.dz, %.loopexit4.i.1 ] ; 2 uses
  %i.eg = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.eh = invoke fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.011.07.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.06.08.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !2282 ; 3 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %..i23.i.i = select i1 %i.eh, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(32) %..i23.i.i, i64 32, i1 false), !alias.scope !2284, !noalias !2306
  %i.ei = invoke fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.017.05.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.015.06.i.i)
          to label %.noexc30.i unwind label %.loopexit.i, !noalias !2282 ; 3 uses

.noexc30.i:                                       ; preds = %.noexc.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 32 ; 2 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.eh, i64 0, i64 32
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.eh, i64 32, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %..i.i.i = select i1 %i.ei, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.ek = xor i1 %i.ei, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i.i, i64 32, i1 false), !alias.scope !2284, !noalias !2307
  %.neg.i.i.i = sext i1 %i.ek to i64
  %i.el = getelementptr [32 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.ei to i64
  %i.em = getelementptr [32 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -32
  %exitcond.not.i.i = icmp eq i64 %i.eg, %i.o
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.p:                                             ; preds = %._crit_edge.i.i
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.ec ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i.i, i64 32, i1 false), !alias.scope !2284
  %.sroa.sel51.idx.sroa.sel.idx = select i1 %.not, i64 32, i64 0
  %.sroa.sel51.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel51.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 32
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.p ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel51.idx.sroa.sel, %bb.p ]
  %i.eo = icmp ne ptr %.sroa.06.1.i.i, %i.ec
  %i.ep = icmp ne ptr %.sroa.011.1.i.i, %i.ed
  %or.cond.i.i = select i1 %i.eo, i1 true, i1 %i.ep, !prof !15
  br i1 %or.cond.i.i, label %bb.r, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h13a4735e48f145a9E.exit, !prof !15

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc31.i unwind label %.loopexit.split-lp.i, !noalias !2284

.noexc31.i:                                       ; preds = %bb.r
  unreachable

.loopexit.i:                                      ; preds = %.noexc.i, %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp.i:                             ; preds = %bb.r
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.eq = shl nuw nsw i64 %1, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.m, i64 %i.eq, i1 false), !alias.scope !2284, !noalias !2308
  br label %.body.i

.body.i:                                          ; preds = %.split14.us.i, %bb.s
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.s ], [ %.us-phi20.i, %.split14.us.i ]
  resume { ptr, i32 } %.pn.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i
  %.sroa.08.130.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i ], [ %.sroa.08.128.i, %bb.e ] ; 3 uses
  %.sroa.08.029.i = phi i64 [ %.sroa.08.130.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i ], [ %.sroa.0.0.i, %bb.e ] ; 3 uses
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.08.029.i
  %.idx = shl nuw nsw i64 %.sroa.08.029.i, 5
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.er, i64 32, i1 false), !alias.scope !2284
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  call void @llvm.experimental.noalias.scope.decl(metadata !2315)
  call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  %i.eu = load i64, ptr %i.es, align 8, !range !20, !alias.scope !2317, !noalias !2318, !noundef !11 ; 2 uses
  %i.ev = trunc nuw i64 %i.eu to i1               ; 2 uses
  %i.ew = load i64, ptr %i.et, align 8, !range !20, !alias.scope !2319, !noalias !2320, !noundef !11
  %i.ex = trunc nuw i64 %i.ew to i1               ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %.val20.i.i.i.i.i = load ptr, ptr %i.ey, align 8, !alias.scope !2317, !noalias !2318, !nonnull !11, !noundef !11 ; 15 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %.val21.i.i.i.i.i = load i64, ptr %i.ez, align 8, !alias.scope !2317, !noalias !2318, !noundef !11 ; 7 uses
  %i.fa = getelementptr inbounds i8, ptr %i.es, i64 -16
  %.val22.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !alias.scope !2319, !noalias !2320, !nonnull !11, !noundef !11 ; 7 uses
  %i.fb = getelementptr inbounds i8, ptr %i.es, i64 -8
  %.val23.i.i.i.i.i = load i64, ptr %i.fb, align 8, !alias.scope !2319, !noalias !2320, !noundef !11 ; 3 uses
  br i1 %i.ev, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i, i64 %.val21.i.i.i.i.i ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i, i64 %.val23.i.i.i.i.i ; 2 uses
  br i1 %i.ex, label %.noexc36.i, label %.noexc37.i

bb.u:                                             ; preds = %.lr.ph.i
  br i1 %i.ex, label %.noexc34.i, label %bb.v

.noexc34.i:                                       ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2321
  %i.fe = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i, i64 %.val21.i.i.i.i.i
  store ptr %.val20.i.i.i.i.i, ptr %i.f, align 8, !noalias !2321
  store ptr %i.fe, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !2321
  %i.ff = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i, i64 %.val23.i.i.i.i.i
  store ptr %.val22.i.i.i.i.i, ptr %i.e, align 8, !noalias !2321
  store ptr %i.ff, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !2321
  %i.fg = call noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e), !noalias !2284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2321
  br label %.noexc33.i

bb.v:                                             ; preds = %bb.u
  %i.fh = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i, i64 %.val21.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i, i64 %.val23.i.i.i.i.i
  %i.fj = call noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17hb5811cc493df5a49E(ptr noundef nonnull %.val20.i.i.i.i.i, ptr noundef nonnull %i.fh, ptr noundef nonnull %.val22.i.i.i.i.i, ptr noundef nonnull %i.fi), !noalias !2284
  br label %.noexc33.i

.noexc36.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2321
  store ptr %.val20.i.i.i.i.i, ptr %i.d, align 8, !noalias !2321
  store ptr %i.fc, ptr %.sroa.4.0..sroa_idx.i24.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i25.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i26.i.i.i.i.i, align 4, !noalias !2321
  store ptr %.val22.i.i.i.i.i, ptr %i.c, align 8, !noalias !2321
  store ptr %i.fd, ptr %.sroa.411.0..sroa_idx.i27.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i28.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i29.i.i.i.i.i, align 4, !noalias !2321
  %i.fk = call noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c), !noalias !2284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2321
  br label %.noexc33.i

.noexc37.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2321
  store ptr %.val20.i.i.i.i.i, ptr %i.b, align 8, !noalias !2321
  store ptr %i.fc, ptr %.sroa.4.0..sroa_idx.i30.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i31.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i32.i.i.i.i.i, align 4, !noalias !2321
  store ptr %.val22.i.i.i.i.i, ptr %i.a, align 8, !noalias !2321
  store ptr %i.fd, ptr %.sroa.411.0..sroa_idx.i33.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i34.i.i.i.i.i, align 8, !noalias !2321
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i35.i.i.i.i.i, align 4, !noalias !2321
  %i.fl = call noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !2284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2321
  br label %.noexc33.i

.noexc33.i:                                       ; preds = %.noexc37.i, %.noexc36.i, %bb.v, %.noexc34.i
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.fk, %.noexc36.i ], [ %i.fl, %.noexc37.i ], [ %i.fg, %.noexc34.i ], [ %i.fj, %bb.v ]
  %i.fm = icmp slt i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.fm, label %bb.w, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i

bb.w:                                             ; preds = %.noexc33.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2283, !noalias !2282 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i, i64 %.val21.i.i.i.i.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 32, i1 false), !alias.scope !2283, !noalias !2282
  %i.fo = icmp eq i64 %.sroa.08.029.i, 1          ; 2 uses
  br i1 %i.ev, label %.split.us.i.preheader, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.w
  br i1 %i.fo, label %.split12.us.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split.i.preheader
  %8 = insertelement <2 x ptr> poison, ptr %.val20.i.i.i.i.i, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %i.fn, i64 1
  br label %.lr.ph

.split.us.i.preheader:                            ; preds = %bb.w
  br i1 %i.fo, label %.split12.us.i, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.split.us.i.preheader
  %10 = insertelement <2 x ptr> poison, ptr %.val20.i.i.i.i.i, i64 0
  %11 = insertelement <2 x ptr> %10, ptr %i.fn, i64 1
  %12 = insertelement <2 x ptr> poison, ptr %.val20.i.i.i.i.i, i64 0
  %13 = insertelement <2 x ptr> %12, ptr %i.fn, i64 1
  br label %.lr.ph100

.split.us.i:                                      ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i32.us.i99, ptr noundef nonnull align 8 dereferenceable(32) %i.fq, i64 32, i1 false), !alias.scope !2283, !noalias !2282
  %i.fp = icmp eq ptr %i.fq, %i.m
  br i1 %i.fp, label %.split12.us.i, label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %.split.us.i
  %.sroa.0.0.i32.us.i99 = phi ptr [ %i.fq, %.split.us.i ], [ %i.et, %.lr.ph100.preheader ] ; 6 uses
  %i.fq = getelementptr inbounds i8, ptr %.sroa.0.0.i32.us.i99, i64 -32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  %i.fr = load i64, ptr %i.fq, align 8, !range !20, !alias.scope !2326, !noalias !2303, !noundef !11
  %i.fs = trunc nuw i64 %i.fr to i1
  %i.ft = getelementptr inbounds i8, ptr %.sroa.0.0.i32.us.i99, i64 -16
  %.val22.i.i.i.i.i.us.i = load ptr, ptr %i.ft, align 8, !alias.scope !2326, !noalias !2303, !nonnull !11, !noundef !11 ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.0.i32.us.i99, i64 -8
  %.val23.i.i.i.i.i.us.i = load i64, ptr %i.fu, align 8, !alias.scope !2326, !noalias !2303, !noundef !11
  %i.fv = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.us.i, i64 %.val23.i.i.i.i.i.us.i ; 2 uses
  br i1 %i.fs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2327
  store <2 x ptr> %11, ptr %i.h, align 16, !noalias !2327
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i31.i.i.i.i.i.i, align 16, !noalias !2327
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i32.i.i.i.i.i.i, align 4, !noalias !2327
  store ptr %.val22.i.i.i.i.i.us.i, ptr %i.g, align 8, !noalias !2327
  store ptr %i.fv, ptr %.sroa.411.0..sroa_idx.i33.i.i.i.i.i.i, align 8, !noalias !2327
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i34.i.i.i.i.i.i, align 8, !noalias !2327
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i35.i.i.i.i.i.i, align 4, !noalias !2327
  %i.fw = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.g)
          to label %.noexc10.i.us.i unwind label %.split14.us.i.loopexit, !noalias !2284

.noexc10.i.us.i:                                  ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2327
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2327
  store <2 x ptr> %13, ptr %i.j, align 16, !noalias !2327
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i25.i.i.i.i.i.i, align 16, !noalias !2327
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i26.i.i.i.i.i.i, align 4, !noalias !2327
  store ptr %.val22.i.i.i.i.i.us.i, ptr %i.i, align 8, !noalias !2327
  store ptr %i.fv, ptr %.sroa.411.0..sroa_idx.i27.i.i.i.i.i.i, align 8, !noalias !2327
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i28.i.i.i.i.i.i, align 8, !noalias !2327
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i29.i.i.i.i.i.i, align 4, !noalias !2327
  %i.fx = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %.noexc9.i.us.i unwind label %.split14.us.i.loopexit, !noalias !2284

.noexc9.i.us.i:                                   ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2327
  br label %bb.z

bb.z:                                             ; preds = %.noexc9.i.us.i, %.noexc10.i.us.i
  %.sroa.0.0.i.i.i.i.i.us.i = phi i8 [ %i.fx, %.noexc9.i.us.i ], [ %i.fw, %.noexc10.i.us.i ]
  %i.fy = icmp slt i8 %.sroa.0.0.i.i.i.i.i.us.i, 0
  br i1 %i.fy, label %.split.us.i, label %.split12.us.i

.split14.us.i.loopexit:                           ; preds = %bb.x, %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.split14.us.i

.split14.us.i.loopexit.split-lp:                  ; preds = %bb.m, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.split14.us.i

.split.i:                                         ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i32.i97, ptr noundef nonnull align 8 dereferenceable(32) %i.ga, i64 32, i1 false), !alias.scope !2283, !noalias !2282
  %i.fz = icmp eq ptr %i.ga, %i.m
  br i1 %i.fz, label %.split12.us.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.split.i
  %.sroa.0.0.i32.i97 = phi ptr [ %i.ga, %.split.i ], [ %i.et, %.lr.ph.preheader ] ; 6 uses
  %i.ga = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i97, i64 -32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  %i.gb = load i64, ptr %i.ga, align 8, !range !20, !alias.scope !2326, !noalias !2303, !noundef !11
  %i.gc = trunc nuw i64 %i.gb to i1
  %i.gd = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i97, i64 -16
  %.val22.i.i.i.i.i.i = load ptr, ptr %i.gd, align 8, !alias.scope !2326, !noalias !2303, !nonnull !11, !noundef !11 ; 4 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.0.0.i32.i97, i64 -8
  %.val23.i.i.i.i.i.i = load i64, ptr %i.ge, align 8, !alias.scope !2326, !noalias !2303, !noundef !11 ; 2 uses
  br i1 %i.gc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2327
  store <2 x ptr> %9, ptr %i.l, align 16, !noalias !2327
  store i32 1114115, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 16, !noalias !2327
  store i32 1114115, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !2327
  %i.gf = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.i, i64 %.val23.i.i.i.i.i.i
  store ptr %.val22.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !2327
  store ptr %i.gf, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2327
  store i32 1114115, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i.i, align 8, !noalias !2327
  store i32 1114115, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !2327
  %i.gg = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17h8f292185aece0622E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %.noexc.i.i unwind label %.split14.i.loopexit, !noalias !2284

.noexc.i.i:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2327
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph
  %i.gh = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.i, i64 %.val23.i.i.i.i.i.i
  %i.gi = invoke noundef range(i8 -1, 2) i8 @_ZN4core4iter6traits8iterator8Iterator6cmp_by17hb5811cc493df5a49E(ptr noundef nonnull %.val20.i.i.i.i.i, ptr noundef nonnull %i.fn, ptr noundef nonnull %.val22.i.i.i.i.i.i, ptr noundef nonnull %i.gh)
          to label %bb.ac unwind label %.split14.i.loopexit, !noalias !2284

bb.ac:                                            ; preds = %bb.ab, %.noexc.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.gi, %bb.ab ], [ %i.gg, %.noexc.i.i ]
  %i.gj = icmp slt i8 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %i.gj, label %.split.i, label %.split12.us.i

.split12.us.i:                                    ; preds = %.split.i, %bb.ac, %.split.us.i, %bb.z, %.split.i.preheader, %.split.us.i.preheader
  %.us-phi.i = phi ptr [ %i.m, %.split.i.preheader ], [ %.sroa.0.0.i32.us.i99, %bb.z ], [ %i.m, %.split.us.i.preheader ], [ %i.m, %.split.us.i ], [ %.sroa.0.0.i32.i97, %bb.ac ], [ %i.m, %.split.i ] ; 4 uses
  store i64 %i.eu, ptr %.us-phi.i, align 8, !alias.scope !2283, !noalias !2305
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !2283, !noalias !2305
  %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 16
  store ptr %.val20.i.i.i.i.i, ptr %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !2283, !noalias !2305
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 24
  store i64 %.val21.i.i.i.i.i, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !2283, !noalias !2305
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i

.split14.i.loopexit:                              ; preds = %bb.aa, %bb.ab
  %lpad.loopexit41 = landingpad { ptr, i32 }
          cleanup
  br label %.split14.us.i

.split14.i.loopexit.split-lp:                     ; preds = %bb.j, %bb.k
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  br label %.split14.us.i

.split14.us.i:                                    ; preds = %.split14.i.loopexit, %.split14.i.loopexit.split-lp, %.split14.us.i.loopexit, %.split14.us.i.loopexit.split-lp
  %.val20.i.i.i.i.i32 = phi ptr [ %.val20.i.i.i.i.i.1, %.split14.us.i.loopexit.split-lp ], [ %.val20.i.i.i.i.i, %.split14.us.i.loopexit ], [ %.val20.i.i.i.i.i, %.split14.i.loopexit ], [ %.val20.i.i.i.i.i.1, %.split14.i.loopexit.split-lp ]
  %.val21.i.i.i.i.i29 = phi i64 [ %.val21.i.i.i.i.i.1, %.split14.us.i.loopexit.split-lp ], [ %.val21.i.i.i.i.i, %.split14.us.i.loopexit ], [ %.val21.i.i.i.i.i, %.split14.i.loopexit ], [ %.val21.i.i.i.i.i.1, %.split14.i.loopexit.split-lp ]
  %.sroa.4.0.copyload.i.i26 = phi i64 [ %.sroa.4.0.copyload.i.i.1, %.split14.us.i.loopexit.split-lp ], [ %.sroa.4.0.copyload.i.i, %.split14.us.i.loopexit ], [ %.sroa.4.0.copyload.i.i, %.split14.i.loopexit ], [ %.sroa.4.0.copyload.i.i.1, %.split14.i.loopexit.split-lp ]
  %i.gk = phi i64 [ 1, %.split14.us.i.loopexit.split-lp ], [ 1, %.split14.us.i.loopexit ], [ 0, %.split14.i.loopexit ], [ 0, %.split14.i.loopexit.split-lp ]
  %.us-phi19.i = phi ptr [ %.sroa.0.0.i32.us.i.1107, %.split14.us.i.loopexit.split-lp ], [ %.sroa.0.0.i32.us.i99, %.split14.us.i.loopexit ], [ %.sroa.0.0.i32.i97, %.split14.i.loopexit ], [ %.sroa.0.0.i32.i.1103, %.split14.i.loopexit.split-lp ] ; 4 uses
  %.us-phi20.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.split14.us.i.loopexit.split-lp ], [ %lpad.loopexit, %.split14.us.i.loopexit ], [ %lpad.loopexit41, %.split14.i.loopexit ], [ %lpad.loopexit.split-lp42, %.split14.i.loopexit.split-lp ]
  store i64 %i.gk, ptr %.us-phi19.i, align 8, !alias.scope !2283, !noalias !2328
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi19.i, i64 8
  store i64 %.sroa.4.0.copyload.i.i26, ptr %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i.i, align 8, !alias.scope !2283, !noalias !2328
  %.sroa.611.0..sroa.0.0.lcssa6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi19.i, i64 16
  store ptr %.val20.i.i.i.i.i32, ptr %.sroa.611.0..sroa.0.0.lcssa6.sroa_idx.i.i, align 8, !alias.scope !2283, !noalias !2328
  %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi19.i, i64 24
  store i64 %.val21.i.i.i.i.i29, ptr %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i.i, align 8, !alias.scope !2283, !noalias !2328
  br label %.body.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i: ; preds = %.split12.us.i, %.noexc33.i
  %i.gl = icmp samesign ult i64 %.sroa.08.130.i, %i.o ; 2 uses
  %i.gm = zext i1 %i.gl to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.130.i, %i.gm
  br i1 %i.gl, label %.lr.ph.i, label %.loopexit4.i

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h13a4735e48f145a9E.exit: ; preds = %bb.a, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort18small_sort_general17h556373969ffcd7b0E(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 33) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1152 x i8], align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hd18a56fb2d0e8f32E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.a, i64 noundef 48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort18small_sort_general17h644ae06bff648dddE(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 33) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2688 x i8], align 8              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6551473da9a17f0bE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %1, 1                           ; 10 uses
  %i.d = icmp samesign ugt i64 %1, 7
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 96
  %.val20.i.i = load i64, ptr %i.e, align 8, !alias.scope !2348, !noalias !2349
  %i.f = getelementptr i8, ptr %0, i64 104
  %.val21.i.i = load i32, ptr %i.f, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  %.val22.i.i = load i64, ptr %i.g, align 8, !alias.scope !2348, !noalias !2349
  %i.h = getelementptr i8, ptr %0, i64 48
  %.val23.i.i = load i32, ptr %i.h, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.i = icmp eq i32 %.val21.i.i, %.val23.i.i
  %i.j = icmp ult i64 %.val20.i.i, %.val22.i.i
  %i.k = icmp ult i32 %.val21.i.i, %.val23.i.i
  %i.l = select i1 %i.i, i1 %i.j, i1 %i.k         ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 208
  %.val16.i.i = load i64, ptr %i.m, align 8, !alias.scope !2348, !noalias !2349
  %i.n = getelementptr i8, ptr %0, i64 216
  %.val17.i.i = load i32, ptr %i.n, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 152
  %.val18.i.i = load i64, ptr %i.o, align 8, !alias.scope !2348, !noalias !2349
  %i.p = getelementptr i8, ptr %0, i64 160
  %.val19.i.i = load i32, ptr %i.p, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.q = icmp eq i32 %.val17.i.i, %.val19.i.i
  %i.r = icmp ult i64 %.val16.i.i, %.val18.i.i
  %i.s = icmp ult i32 %.val17.i.i, %.val19.i.i
  %i.t = select i1 %i.q, i1 %i.r, i1 %i.s         ; 2 uses
  %i.u = zext i1 %i.l to i64
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = xor i1 %i.l, true
  %i.x = zext i1 %i.w to i64
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.x ; 5 uses
  %i.z = select i1 %i.t, i64 3, i64 2
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.z ; 5 uses
  %i.ab = select i1 %i.t, i64 2, i64 3
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.ab ; 4 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 40
  %.val12.i.i = load i64, ptr %i.ad, align 8, !alias.scope !2348, !noalias !2349
  %i.ae = getelementptr i8, ptr %i.aa, i64 48
  %.val13.i.i = load i32, ptr %i.ae, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.af = getelementptr i8, ptr %i.v, i64 40
  %.val14.i.i = load i64, ptr %i.af, align 8, !alias.scope !2348, !noalias !2349
  %i.ag = getelementptr i8, ptr %i.v, i64 48
  %.val15.i.i = load i32, ptr %i.ag, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.ah = icmp eq i32 %.val13.i.i, %.val15.i.i
  %i.ai = icmp ult i64 %.val12.i.i, %.val14.i.i
  %i.aj = icmp ult i32 %.val13.i.i, %.val15.i.i
  %i.ak = select i1 %i.ah, i1 %i.ai, i1 %i.aj     ; 3 uses
  %i.al = getelementptr i8, ptr %i.ac, i64 40
  %.val8.i.i = load i64, ptr %i.al, align 8, !alias.scope !2348, !noalias !2349
  %i.am = getelementptr i8, ptr %i.ac, i64 48
  %.val9.i.i = load i32, ptr %i.am, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.an = getelementptr i8, ptr %i.y, i64 40
  %.val10.i.i = load i64, ptr %i.an, align 8, !alias.scope !2348, !noalias !2349
  %i.ao = getelementptr i8, ptr %i.y, i64 48
  %.val11.i.i = load i32, ptr %i.ao, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.ap = icmp eq i32 %.val9.i.i, %.val11.i.i
  %i.aq = icmp ult i64 %.val8.i.i, %.val10.i.i
  %i.ar = icmp ult i32 %.val9.i.i, %.val11.i.i
  %i.as = select i1 %i.ap, i1 %i.aq, i1 %i.ar     ; 3 uses
  %i.at = select i1 %i.ak, ptr %i.aa, ptr %i.v, !unpredictable !11
  %i.au = select i1 %i.as, ptr %i.y, ptr %i.ac, !unpredictable !11
  %i.av = select i1 %i.as, ptr %i.aa, ptr %i.y, !unpredictable !11
  %i.aw = select i1 %i.ak, ptr %i.v, ptr %i.av, !unpredictable !11 ; 4 uses
  %i.ax = select i1 %i.ak, ptr %i.y, ptr %i.aa, !unpredictable !11
  %i.ay = select i1 %i.as, ptr %i.ac, ptr %i.ax, !unpredictable !11 ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 40
  %.val.i.i = load i64, ptr %i.az, align 8, !alias.scope !2348, !noalias !2349
  %i.ba = getelementptr i8, ptr %i.ay, i64 48
  %.val5.i.i = load i32, ptr %i.ba, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.aw, i64 40
  %.val6.i.i = load i64, ptr %i.bb, align 8, !alias.scope !2348, !noalias !2349
  %i.bc = getelementptr i8, ptr %i.aw, i64 48
  %.val7.i.i = load i32, ptr %i.bc, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.bd = icmp eq i32 %.val5.i.i, %.val7.i.i
  %i.be = icmp ult i64 %.val.i.i, %.val6.i.i
  %i.bf = icmp ult i32 %.val5.i.i, %.val7.i.i
  %i.bg = select i1 %i.bd, i1 %i.be, i1 %i.bf     ; 2 uses
  %i.bh = select i1 %i.bg, ptr %i.ay, ptr %i.aw, !unpredictable !11
  %i.bi = select i1 %i.bg, ptr %i.aw, ptr %i.ay, !unpredictable !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.at, i64 56, i1 false), !alias.scope !2350
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 56, i1 false), !alias.scope !2350
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 56, i1 false), !alias.scope !2350
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(56) %i.au, i64 56, i1 false), !alias.scope !2350
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c ; 12 uses
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.c ; 4 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 96
  %.val20.i30.i = load i64, ptr %i.bo, align 8, !alias.scope !2348, !noalias !2349
  %i.bp = getelementptr i8, ptr %i.bm, i64 104
  %.val21.i31.i = load i32, ptr %i.bp, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bm, i64 40
  %.val22.i32.i = load i64, ptr %i.bq, align 8, !alias.scope !2348, !noalias !2349
  %i.br = getelementptr i8, ptr %i.bm, i64 48
  %.val23.i33.i = load i32, ptr %i.br, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
  %i.bs = icmp eq i32 %.val21.i31.i, %.val23.i33.i
  %i.bt = icmp ult i64 %.val20.i30.i, %.val22.i32.i
  %i.bu = icmp ult i32 %.val21.i31.i, %.val23.i33.i
  %i.bv = select i1 %i.bs, i1 %i.bt, i1 %i.bu     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bm, i64 208
  %.val16.i34.i = load i64, ptr %i.bw, align 8, !alias.scope !2348, !noalias !2349
  %i.bx = getelementptr i8, ptr %i.bm, i64 216
  %.val17.i35.i = load i32, ptr %i.bx, align 8, !alias.scope !2348, !noalias !2349, !noundef !11 ; 2 uses
end_hunk_1
