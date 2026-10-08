Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.06?download=true
inline.NumInlined: 5983
inline.NumDeleted: 3458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN5prost8encoding10merge_loop17haaab077b85a18767E:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = tail call fastcc { i64, ptr } @_ZN5prost8encoding6varint13decode_varint17h87a786414a068c70E(ptr noalias noundef align 8 dereferenceable(8) %1) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = trunc nuw i64 %i.c to i1
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !5, !noundef !3
  %i.g = getelementptr i8, ptr %.val, i64 8
  %.val.i = load i64, ptr %i.g, align 8, !noundef !3 ; 3 uses
  %i.h = icmp ult i64 %.val.i, %i.e
  br i1 %i.h, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %.val.i, %i.e                ; 2 uses
  %.not26 = icmp eq ptr %i.d, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @217, i64 noundef 16)
  br label %bb.i

._crit_edge:                                      ; preds = %"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E.exit", %bb.c
  %.val.i17.lcssa = phi i64 [ %.val.i, %bb.c ], [ %.val.i17, %"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E.exit" ]
  %.not = icmp eq i64 %.val.i17.lcssa, %i.i
  br i1 %.not, label %bb.i, label %bb.h, !prof !8

bb.e:                                             ; preds = %.lr.ph, %"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !9199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9200
  store i64 0, ptr %i.a, align 8, !noalias !9200
  %i.m = call noundef align 8 ptr @_ZN5prost8encoding5int645merge17hcf41cd5728d218ffE(i8 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2), !noalias !9199 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.f, label %"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E.exit.thread"

"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E.exit.thread": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9200
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.a, align 8, !noalias !9200, !noundef !3
  %i.o = load i64, ptr %i.j, align 8, !alias.scope !9201, !noalias !9202, !noundef !3 ; 3 uses
  %i.p = load i64, ptr %0, align 8, !range !12, !alias.scope !9201, !noalias !9202, !noundef !3
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E.exit"

bb.g:                                             ; preds = %bb.f
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hcb28eefe4a36f798E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E.exit"

"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E.exit": ; preds = %bb.f, %bb.g
  %i.r = load ptr, ptr %i.k, align 8, !alias.scope !9201, !noalias !9202, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.o
  store i64 %i.n, ptr %i.s, align 8
  %i.t = add i64 %i.o, 1
  store i64 %i.t, ptr %i.j, align 8, !alias.scope !9201, !noalias !9202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9200
  %.val15 = load ptr, ptr %1, align 8, !nonnull !3, !align !5, !noundef !3
  %i.u = getelementptr i8, ptr %.val15, i64 8
  %.val.i17 = load i64, ptr %i.u, align 8, !noundef !3 ; 2 uses
  %i.v = icmp ugt i64 %.val.i17, %i.i
  br i1 %i.v, label %bb.e, label %._crit_edge

bb.h:                                             ; preds = %._crit_edge
  %i.w = call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @216, i64 noundef 25)
  br label %bb.i

bb.i:                                             ; preds = %"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E.exit.thread", %._crit_edge, %bb.a, %bb.h, %bb.d
  %.sroa.0.0 = phi ptr [ %i.d, %bb.a ], [ %i.l, %bb.d ], [ null, %._crit_edge ], [ %i.w, %bb.h ], [ %i.m, %"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E.exit.thread" ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_ZN5prost8encoding10merge_loop17he51d1f337296ca7cE(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = tail call fastcc { i64, ptr } @_ZN5prost8encoding6varint13decode_varint17h87a786414a068c70E(ptr noalias noundef align 8 dereferenceable(8) %1) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = trunc nuw i64 %i.c to i1
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !5, !noundef !3
  %i.g = getelementptr i8, ptr %.val, i64 8
  %.val.i = load i64, ptr %i.g, align 8, !noundef !3 ; 3 uses
  %i.h = icmp ult i64 %.val.i, %i.e
  br i1 %i.h, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %.val.i, %i.e                ; 2 uses
  %.not26 = icmp eq ptr %i.d, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @217, i64 noundef 16)
  br label %bb.i

._crit_edge:                                      ; preds = %"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E.exit", %bb.c
  %.val.i17.lcssa = phi i64 [ %.val.i, %bb.c ], [ %.val.i17, %"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E.exit" ]
  %.not = icmp eq i64 %.val.i17.lcssa, %i.i
  br i1 %.not, label %bb.i, label %bb.h, !prof !8

bb.e:                                             ; preds = %.lr.ph, %"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !9208)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9209
  store i32 0, ptr %i.a, align 4, !noalias !9209
  %i.m = call noundef align 8 ptr @_ZN5prost8encoding5int325merge17h65dd780af1c95fe6E(i8 noundef 0, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2), !noalias !9208 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.f, label %"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E.exit.thread"

"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E.exit.thread": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9209
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.a, align 4, !noalias !9209, !noundef !3
  %i.o = load i64, ptr %i.j, align 8, !alias.scope !9210, !noalias !9211, !noundef !3 ; 3 uses
  %i.p = load i64, ptr %0, align 8, !range !12, !alias.scope !9210, !noalias !9211, !noundef !3
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E.exit"

bb.g:                                             ; preds = %bb.f
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hfb250d7e399b687dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E.exit"

"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E.exit": ; preds = %bb.f, %bb.g
  %i.r = load ptr, ptr %i.k, align 8, !alias.scope !9210, !noalias !9211, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.o
  store i32 %i.n, ptr %i.s, align 4
  %i.t = add i64 %i.o, 1
  store i64 %i.t, ptr %i.j, align 8, !alias.scope !9210, !noalias !9211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9209
  %.val15 = load ptr, ptr %1, align 8, !nonnull !3, !align !5, !noundef !3
  %i.u = getelementptr i8, ptr %.val15, i64 8
  %.val.i17 = load i64, ptr %i.u, align 8, !noundef !3 ; 2 uses
  %i.v = icmp ugt i64 %.val.i17, %i.i
  br i1 %i.v, label %bb.e, label %._crit_edge

bb.h:                                             ; preds = %._crit_edge
  %i.w = call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @216, i64 noundef 25)
  br label %bb.i

bb.i:                                             ; preds = %"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E.exit.thread", %._crit_edge, %bb.a, %bb.h, %bb.d
  %.sroa.0.0 = phi ptr [ %i.d, %bb.a ], [ %i.l, %bb.d ], [ null, %._crit_edge ], [ %i.w, %bb.h ], [ %i.m, %"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E.exit.thread" ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_ZN5prost8encoding10skip_field17h8f54248659b417e9E(i8 noundef range(i8 0, 6) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @218, i64 noundef 23)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  switch i8 %0, label %default.unreachable72 [
    i8 0, label %bb.d
    i8 1, label %bb.p
    i8 2, label %bb.e
    i8 3, label %.preheader
    i8 4, label %bb.m
    i8 5, label %bb.n
  ], !prof !9233

.preheader:                                       ; preds = %bb.c
  %i.k = add i32 %3, -1
  br label %bb.f

default.unreachable72:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc { i64, ptr } @_ZN5prost8encoding6varint13decode_varint17h87a786414a068c70E(ptr noalias noundef align 8 dereferenceable(8) %2) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.o, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit.sink.split"

bb.e:                                             ; preds = %bb.c
  %i.o = tail call fastcc { i64, ptr } @_ZN5prost8encoding6varint13decode_varint17h87a786414a068c70E(ptr noalias noundef align 8 dereferenceable(8) %2) ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %i.r = trunc nuw i64 %i.p to i1
  br i1 %i.r, label %.loopexit, label %bb.q

bb.f:                                             ; preds = %.preheader, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9234
  %i.s = tail call fastcc { i64, ptr } @_ZN5prost8encoding6varint13decode_varint17h87a786414a068c70E(ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !9235 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.w = trunc nuw i64 %i.t to i1
  br i1 %i.w, label %_ZN5prost8encoding10decode_key17h73e86717855793b2E.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.v, ptr %i.h, align 8, !noalias !9234
  %i.x = icmp ugt ptr %i.u, inttoptr (i64 4294967295 to ptr)
  br i1 %i.x, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.y = and i64 %i.v, 7                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.y, ptr %i.e, align 8, !noalias !9236
  %switch = icmp samesign ult i64 %i.y, 6
  br i1 %switch, label %bb.k, label %bb.j, !prof !35

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9234
  store ptr %i.h, ptr %i.f, align 8, !noalias !9234
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h55433084d8216725E", ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !9234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9237
  store ptr @215, ptr %i.a, align 8, !noalias !9238
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !9238
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !9238
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !9238
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9238
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !9239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9234
  %i.z = call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17h28468d2de0f6f488E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !9235
  br label %_ZN5prost8encoding10decode_key17h73e86717855793b2E.exit.thread

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9236
  store ptr %i.e, ptr %i.c, align 8, !noalias !9236
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h55433084d8216725E", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9240
  store ptr @484, ptr %i.b, align 8, !noalias !9241
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9241
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !9241
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !9241
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !9241
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !9242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9236
  %i.aa = call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17h28468d2de0f6f488E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !9236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN5prost8encoding10decode_key17h73e86717855793b2E.exit.thread

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ab = trunc nuw i64 %i.v to i32
  %i.ac = lshr i32 %i.ab, 3                       ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.r, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 20), !noalias !9235
  br label %_ZN5prost8encoding10decode_key17h73e86717855793b2E.exit.thread

_ZN5prost8encoding10decode_key17h73e86717855793b2E.exit.thread: ; preds = %bb.f, %bb.i, %bb.j, %bb.l
  %.sroa.10.0 = phi ptr [ %i.ae, %bb.l ], [ %i.z, %bb.i ], [ %i.aa, %bb.j ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit

bb.m:                                             ; preds = %bb.c
  %i.af = tail call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @219, i64 noundef 24)
  br label %.loopexit

bb.n:                                             ; preds = %bb.c
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  %i.ag = extractvalue { i64, ptr } %i.l, 1
  br label %.loopexit

bb.p:                                             ; preds = %bb.c, %bb.q, %bb.n
  %.sroa.014.0 = phi i64 [ 8, %bb.c ], [ 4, %bb.n ], [ %i.aj, %bb.q ] ; 2 uses
  %.val25 = load ptr, ptr %2, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.ah = getelementptr i8, ptr %.val25, i64 8    ; 2 uses
  %.val.i = load i64, ptr %i.ah, align 8, !noundef !3 ; 2 uses
  %i.ai = icmp ugt i64 %.sroa.014.0, %.val.i
  br i1 %i.ai, label %bb.v, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit", !prof !9243

bb.q:                                             ; preds = %bb.e
  %i.aj = ptrtoint ptr %i.q to i64
  br label %bb.p

bb.r:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ak = icmp eq i64 %i.y, 4
  br i1 %i.ak, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.not23 = icmp eq i32 %i.ac, %1
  br i1 %.not23, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit.sink.split", label %bb.u, !prof !8

bb.t:                                             ; preds = %bb.r
  %.sroa.8.8.extract.trunc = trunc nuw nsw i64 %i.y to i8
  %i.al = tail call noundef align 8 ptr @_ZN5prost8encoding10skip_field17h8f54248659b417e9E(i8 noundef %.sroa.8.8.extract.trunc, i32 noundef %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.k) ; 2 uses
  %.not21 = icmp eq ptr %i.al, null
  br i1 %.not21, label %bb.f, label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.am = tail call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @219, i64 noundef 24)
  br label %.loopexit

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit.sink.split": ; preds = %bb.s, %bb.d
  %.val2474 = load ptr, ptr %2, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %4 = getelementptr i8, ptr %.val2474, i64 8     ; 2 uses
  %.val.i75 = load i64, ptr %4, align 8, !noundef !3
  br label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit"

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit": ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit.sink.split", %bb.p
  %.val.i50 = phi i64 [ %.val.i, %bb.p ], [ %.val.i75, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit.sink.split" ]
  %i.an = phi ptr [ %i.ah, %bb.p ], [ %4, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit.sink.split" ]
  %.val2549 = phi ptr [ %.val25, %bb.p ], [ %.val2474, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit.sink.split" ] ; 2 uses
  %.sroa.014.048 = phi i64 [ %.sroa.014.0, %bb.p ], [ 0, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit.sink.split" ] ; 2 uses
  %i.ao = load ptr, ptr %.val2549, align 8, !alias.scope !9244, !nonnull !3, !align !10, !noundef !3
  %i.ap = sub nuw i64 %.val.i50, %.sroa.014.048
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.014.048
  store ptr %i.aq, ptr %.val2549, align 8, !alias.scope !9244
  store i64 %i.ap, ptr %i.an, align 8, !alias.scope !9244
  br label %.loopexit

bb.v:                                             ; preds = %bb.p
  %i.ar = tail call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @217, i64 noundef 16)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %_ZN5prost8encoding10decode_key17h73e86717855793b2E.exit.thread, %bb.b, %bb.e, %bb.u, %bb.m, %bb.o, %bb.v, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit"
  %.sroa.0.0 = phi ptr [ %i.af, %bb.m ], [ %i.ag, %bb.o ], [ %i.ar, %bb.v ], [ null, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit" ], [ %i.j, %bb.b ], [ %i.q, %bb.e ], [ %i.am, %bb.u ], [ %.sroa.10.0, %_ZN5prost8encoding10decode_key17h73e86717855793b2E.exit.thread ], [ %i.al, %bb.t ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN5prost8encoding6varint13decode_varint17h87a786414a068c70E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #20 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !3, !align !10, !noundef !3 ; 13 uses
  %i.a = getelementptr i8, ptr %.val, i64 8       ; 3 uses
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !3 ; 14 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_ZN5prost5error11DecodeError3new17he07b9dc206459158E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @220, i64 noundef 14)
  %i.d = ptrtoint ptr %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit", %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit6", %bb.y, %bb.z, %bb.b
  %.sroa.6.0 = phi i64 [ %i.d, %bb.b ], [ %i.m, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit" ], [ %i.dk, %bb.z ], [ %.sroa.5.0.ph, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit6" ], [ %i.di, %bb.y ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit" ], [ 1, %bb.z ], [ 0, %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit6" ], [ %i.dg, %bb.y ]
  %i.e = inttoptr i64 %.sroa.6.0 to ptr
  %i.f = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, ptr } %i.f, ptr %i.e, 1
  ret { i64, ptr } %i.g

bb.d:                                             ; preds = %bb.a
  %i.h = load i8, ptr %.val.i, align 1, !noundef !3 ; 3 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ugt i64 %.val1.i, 10
  br i1 %i.j, label %.thread, label %bb.x

"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit": ; preds = %bb.d
  %i.k = add i64 %.val1.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  store ptr %i.l, ptr %.val, align 8, !alias.scope !9252
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !9252
  %i.m = zext nneg i8 %i.h to i64
  br label %bb.c

bb.f:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9253)
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e
  %i.n = zext i8 %i.h to i32
  %i.o = add nsw i32 %i.n, -128
  %i.p = icmp ne i64 %.val1.i, 1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !9253, !noalias !9254, !noundef !3 ; 2 uses
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 7
  %i.u = or disjoint i32 %i.t, %i.o               ; 2 uses
  %i.v = icmp sgt i8 %i.r, -1
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.w = add nsw i32 %i.u, -16384
  %i.x = icmp ugt i64 %.val1.i, 2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !9253, !noalias !9254, !noundef !3 ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 14
  %i.ac = or disjoint i32 %i.ab, %i.w             ; 2 uses
  %i.ad = icmp sgt i8 %i.z, -1
  br i1 %i.ad, label %bb.j, label %bb.i

bb.h:                                             ; preds = %.thread
  %i.ae = zext nneg i32 %i.u to i64
  br label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit6"

bb.i:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.ac, -2097152
  %i.ag = icmp ugt i64 %.val1.i, 3
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !9253, !noalias !9254, !noundef !3 ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 21
  %i.al = add nsw i32 %i.af, %i.ak                ; 2 uses
  %i.am = icmp sgt i8 %i.ai, -1
  br i1 %i.am, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.an = zext nneg i32 %i.ac to i64
  br label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit6"

bb.k:                                             ; preds = %bb.i
  %i.ao = add nsw i32 %i.al, -268435456
  %i.ap = zext i32 %i.ao to i64                   ; 5 uses
  %i.aq = icmp ugt i64 %.val1.i, 4
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !9253, !noalias !9254, !noundef !3 ; 3 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.au = zext i32 %i.al to i64
  br label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit6"

bb.m:                                             ; preds = %bb.k
  %i.av = zext i8 %i.as to i32
  %i.aw = add nsw i32 %i.av, -128
  %i.ax = icmp ugt i64 %.val1.i, 5
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !9253, !noalias !9254, !noundef !3 ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 7
  %i.bc = or disjoint i32 %i.bb, %i.aw            ; 2 uses
  %i.bd = icmp sgt i8 %i.az, -1
  br i1 %i.bd, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.be = zext nneg i8 %i.as to i64
  %i.bf = shl nuw nsw i64 %i.be, 28
  %i.bg = add nuw nsw i64 %i.bf, %i.ap
  br label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit6"

bb.o:                                             ; preds = %bb.m
  %i.bh = add nsw i32 %i.bc, -16384
  %i.bi = icmp ugt i64 %.val1.i, 6
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i, i64 6
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !9253, !noalias !9254, !noundef !3 ; 2 uses
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 14
  %i.bn = or disjoint i32 %i.bm, %i.bh            ; 2 uses
  %i.bo = icmp sgt i8 %i.bk, -1
  br i1 %i.bo, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bp = zext nneg i32 %i.bc to i64
  %i.bq = shl nuw nsw i64 %i.bp, 28
  %i.br = add nuw nsw i64 %i.bq, %i.ap
  br label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit6"

bb.q:                                             ; preds = %bb.o
  %i.bs = add nsw i32 %i.bn, -2097152
  %i.bt = icmp ugt i64 %.val1.i, 7
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !9253, !noalias !9254, !noundef !3 ; 2 uses
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 21
  %i.by = add nsw i32 %i.bs, %i.bx                ; 2 uses
  %i.bz = icmp sgt i8 %i.bv, -1
  br i1 %i.bz, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ca = zext nneg i32 %i.bn to i64
  %i.cb = shl nuw nsw i64 %i.ca, 28
  %i.cc = add nuw nsw i64 %i.cb, %i.ap
  br label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit6"

bb.s:                                             ; preds = %bb.q
  %i.cd = add nsw i32 %i.by, -268435456
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 28
  %i.cg = add nuw nsw i64 %i.cf, %i.ap            ; 2 uses
  %i.ch = icmp ugt i64 %.val1.i, 8
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !9253, !noalias !9254, !noundef !3 ; 3 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.cl = zext i32 %i.by to i64
  %i.cm = shl nuw nsw i64 %i.cl, 28
  %i.cn = add nuw nsw i64 %i.cm, %i.ap
  br label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h04ff361bb74a7780E.exit6"

bb.u:                                             ; preds = %bb.s
  %i.co = icmp ugt i64 %.val1.i, 9
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i, i64 9
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !9253, !noalias !9254, !noundef !3 ; 2 uses
  %i.cr = icmp ult i8 %i.cq, 2
  br i1 %i.cr, label %bb.w, label %bb.z, !prof !8

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v16i64
!9043 = distinct !{!9043, !9042, !"_ZN5prost8encoding7message20encoded_len_repeated17h6dd4c0787dffa484E: argument 0"}
!9044 = distinct !{!9044, i1 false, !"_ZN5prost8encoding7message6encode17h49d6cf674838c265E"}
!9045 = distinct !{!9045, !9044, !"_ZN5prost8encoding7message6encode17h49d6cf674838c265E: argument 0"}
!9046 = distinct !{!9046, i1 false, !"_ZN72_$LT$anki_proto..decks..DeckNames$u20$as$u20$prost..message..Message$GT$10encode_raw17h7388a27380886151E"}
!9047 = distinct !{!9047, !9046, !"_ZN72_$LT$anki_proto..decks..DeckNames$u20$as$u20$prost..message..Message$GT$10encode_raw17h7388a27380886151E: argument 0"}
!9048 = distinct !{!9048, !9044, !"_ZN5prost8encoding7message6encode17h49d6cf674838c265E: argument 1"}
!9049 = distinct !{!9049, i1 false, !"_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E"}
!9050 = distinct !{!9050, !9049, !"_ZN5prost8encoding6varint13encode_varint17hda86e049c1a7c173E: argument 0"}
!9051 = distinct !{!9051, i1 false, !"_ZN5bytes3buf7buf_mut6BufMut6put_u817hd440d7381212543bE"}
!9052 = distinct !{!9052, !9051, !"_ZN5bytes3buf7buf_mut6BufMut6put_u817hd440d7381212543bE: argument 0"}
!9053 = !{!9043}
!9054 = !{!9045}
!9055 = !{!9052, !9050, !9045, !9048, !9047}
!9056 = !{!9048, !9047}
!9057 = distinct !{!9057, i1 false, !"_ZN79_$LT$anki_proto..stats..GraphPreferences$u20$as$u20$prost..message..Message$GT$11encoded_len17h0905c4efc75f7a73E"}
!9058 = distinct !{!9058, !9057, !"_ZN79_$LT$anki_proto..stats..GraphPreferences$u20$as$u20$prost..message..Message$GT$11encoded_len17h0905c4efc75f7a73E: argument 0"}
!9059 = !{!9058}
!9060 = distinct !{!9060, i1 false, !"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE"}
!9061 = distinct !{!9061, !9060, !"_ZN5prost8encoding8hash_map18merge_with_default28_$u7b$$u7b$closure$u7d$$u7d$17h4997cc899aa01e9fE: argument 0"}
!9062 = distinct !{!9062, i1 false, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E"}
!9063 = distinct !{!9063, !9062, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 1"}
!9064 = distinct !{!9064, !9062, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 0"}
!9065 = distinct !{!9065, i1 false, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E"}
!9066 = distinct !{!9066, !9065, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E: argument 0"}
!9067 = distinct !{!9067, i1 false, !"_ZN4core3ops8function2Fn4call17h263e682a352c8affE"}
!9068 = distinct !{!9068, !9067, !"_ZN4core3ops8function2Fn4call17h263e682a352c8affE: argument 0"}
!9069 = distinct !{!9069, !9067, !"_ZN4core3ops8function2Fn4call17h263e682a352c8affE: argument 1"}
!9070 = distinct !{!9070, i1 false, !"_ZN5prost8encoding7message5merge17h69935acc3f8e6f46E"}
!9071 = distinct !{!9071, !9070, !"_ZN5prost8encoding7message5merge17h69935acc3f8e6f46E: argument 0"}
!9072 = distinct !{!9072, !9070, !"_ZN5prost8encoding7message5merge17h69935acc3f8e6f46E: argument 1"}
!9073 = distinct !{!9073, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9074 = distinct !{!9074, !9073, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9075 = distinct !{!9075, !9073, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9076 = distinct !{!9076, !9073, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9077 = distinct !{!9077, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9078 = distinct !{!9078, !9077, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9079 = distinct !{!9079, !9077, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9080 = distinct !{!9080, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9081 = distinct !{!9081, !9080, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9082 = distinct !{!9082, !9080, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9083 = distinct !{!9083, !9080, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9084 = distinct !{!9084, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9085 = distinct !{!9085, !9084, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9086 = distinct !{!9086, !9084, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9087 = distinct !{!9087, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9088 = distinct !{!9088, !9087, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9089 = distinct !{!9089, !9087, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9090 = distinct !{!9090, !9087, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9091 = distinct !{!9091, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9092 = distinct !{!9092, !9091, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9093 = distinct !{!9093, !9091, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9094 = distinct !{!9094, i1 false, !"_ZN5prost8encoding10merge_loop17hcf1c59c3b3052175E"}
!9095 = distinct !{!9095, !9094, !"_ZN5prost8encoding10merge_loop17hcf1c59c3b3052175E: argument 0"}
!9096 = distinct !{!9096, !9094, !"_ZN5prost8encoding10merge_loop17hcf1c59c3b3052175E: argument 1"}
!9097 = distinct !{!9097, i1 false, !"_ZN5prost8encoding7message5merge28_$u7b$$u7b$closure$u7d$$u7d$17h5db6642e740bd202E"}
!9098 = distinct !{!9098, !9097, !"_ZN5prost8encoding7message5merge28_$u7b$$u7b$closure$u7d$$u7d$17h5db6642e740bd202E: argument 0"}
!9099 = distinct !{!9099, !9097, !"_ZN5prost8encoding7message5merge28_$u7b$$u7b$closure$u7d$$u7d$17h5db6642e740bd202E: argument 1"}
!9100 = distinct !{!9100, i1 false, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E"}
!9101 = distinct !{!9101, !9100, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 1"}
!9102 = distinct !{!9102, !9100, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 0"}
!9103 = distinct !{!9103, i1 false, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E"}
!9104 = distinct !{!9104, !9103, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E: argument 0"}
!9105 = distinct !{!9105, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9106 = distinct !{!9106, !9105, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9107 = distinct !{!9107, !9105, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9108 = distinct !{!9108, !9105, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9109 = distinct !{!9109, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9110 = distinct !{!9110, !9109, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9111 = distinct !{!9111, !9109, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9112 = distinct !{!9112, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9113 = distinct !{!9113, !9112, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9114 = distinct !{!9114, !9112, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9115 = distinct !{!9115, !9112, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9116 = distinct !{!9116, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9117 = distinct !{!9117, !9116, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9118 = distinct !{!9118, !9116, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9119 = distinct !{!9119, i1 false, !"_ZN79_$LT$anki_proto..i18n..TranslateArgValue$u20$as$u20$prost..message..Message$GT$11merge_field17h8c2eb86e5dcbe8d9E"}
!9120 = distinct !{!9120, !9119, !"_ZN79_$LT$anki_proto..i18n..TranslateArgValue$u20$as$u20$prost..message..Message$GT$11merge_field17h8c2eb86e5dcbe8d9E: argument 0"}
!9121 = distinct !{!9121, i1 false, !"_ZN10anki_proto4i18n19translate_arg_value5Value5merge17h9ef21a329a04d785E"}
!9122 = distinct !{!9122, !9121, !"_ZN10anki_proto4i18n19translate_arg_value5Value5merge17h9ef21a329a04d785E: argument 0"}
!9123 = distinct !{!9123, !9119, !"_ZN79_$LT$anki_proto..i18n..TranslateArgValue$u20$as$u20$prost..message..Message$GT$11merge_field17h8c2eb86e5dcbe8d9E: argument 1"}
!9124 = distinct !{!9124, !9121, !"_ZN10anki_proto4i18n19translate_arg_value5Value5merge17h9ef21a329a04d785E: argument 1"}
!9125 = distinct !{!9125, i1 false, !"_ZN10anki_proto4i18n19translate_arg_value5Value5merge28_$u7b$$u7b$closure$u7d$$u7d$17h39a2fcc307f707beE"}
!9126 = distinct !{!9126, !9125, !"_ZN10anki_proto4i18n19translate_arg_value5Value5merge28_$u7b$$u7b$closure$u7d$$u7d$17h39a2fcc307f707beE: argument 0"}
!9127 = distinct !{!9127, i1 false, !"_ZN79_$LT$anki_proto..i18n..TranslateArgValue$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h6affbdb5339e5c5dE"}
!9128 = distinct !{!9128, !9127, !"_ZN79_$LT$anki_proto..i18n..TranslateArgValue$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17h6affbdb5339e5c5dE: argument 0"}
!9129 = !{!9061}
!9130 = !{!9064, !9063, !9061}
!9131 = !{!9064}
!9132 = !{!9066, !9064, !9061}
!9133 = !{!9068}
!9134 = !{!9069}
!9135 = !{!9071}
!9136 = !{!9072}
!9137 = !{!9071, !9072, !9068, !9069, !9061}
!9138 = !{!9079, !9078, !9076, !9075, !9074, !9064, !9061}
!9139 = !{!9079, !9076, !9075, !9064, !9061}
!9140 = !{!9078, !9075, !9074, !9064}
!9141 = !{!9086, !9085, !9083, !9082, !9081, !9066, !9064, !9061}
!9142 = !{!9086, !9083, !9082, !9066, !9064, !9061}
!9143 = !{!9085, !9082, !9081, !9066, !9064}
!9144 = !{!9066, !9064}
!9145 = !{!9093, !9092, !9090, !9089, !9088, !9071, !9072, !9068, !9069, !9061}
!9146 = !{!9093, !9090, !9089, !9071, !9072, !9068, !9069, !9061}
!9147 = !{!9092, !9089, !9088}
!9148 = !{!9095}
!9149 = !{!9096}
!9150 = !{!9096, !9072, !9069, !9061}
!9151 = !{!9095, !9071, !9068}
!9152 = !{!9098}
!9153 = !{!9098, !9099, !9095, !9096, !9071, !9072, !9068, !9069, !9061}
!9154 = !{!9102, !9101, !9098, !9099, !9095, !9096, !9071, !9072, !9068, !9069, !9061}
!9155 = !{!9102, !9098}
!9156 = !{!9104, !9102, !9098, !9099, !9095, !9096, !9071, !9072, !9068, !9069, !9061}
!9157 = !{!9111, !9110, !9108, !9107, !9106, !9102, !9098, !9099, !9095, !9096, !9071, !9072, !9068, !9069, !9061}
!9158 = !{!9111, !9108, !9107, !9102, !9098, !9099, !9095, !9096, !9071, !9072, !9068, !9069, !9061}
!9159 = !{!9110, !9107, !9106, !9102, !9098, !9099}
!9160 = !{!9102, !9098, !9099}
!9161 = !{!9118, !9117, !9115, !9114, !9113, !9104, !9102, !9098, !9099, !9095, !9096, !9071, !9072, !9068, !9069, !9061}
!9162 = !{!9118, !9115, !9114, !9104, !9102, !9098, !9099, !9095, !9096, !9071, !9072, !9068, !9069, !9061}
!9163 = !{!9117, !9114, !9113, !9104, !9102, !9098, !9099}
!9164 = !{!9104, !9102, !9098, !9099}
!9165 = !{!9120}
!9166 = !{!9120, !9098}
!9167 = !{!9122}
!9168 = !{!9122, !9120, !9098, !9095, !9071, !9068}
!9169 = !{!9124, !9123, !9099, !9096, !9072, !9069, !9061}
!9170 = !{!"branch_weights", i32 2000, i32 2001}
!9171 = !{!9122, !9124, !9120, !9123, !9098, !9099, !9095, !9096, !9071, !9072, !9068, !9069, !9061}
!9172 = !{!9122, !9120, !9098}
!9173 = !{!9126, !9122, !9120, !9098, !9095, !9071, !9068}
!9174 = !{!9120, !9123, !9098, !9099, !9095, !9096, !9071, !9072, !9068, !9069, !9061}
!9175 = !{!9128, !9120, !9123, !9098, !9099, !9095, !9096, !9071, !9072, !9068, !9069, !9061}
!9176 = distinct !{!9176, i1 false, !"_ZN5prost8encoding6uint3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hfe7e6bd112890522E"}
!9177 = distinct !{!9177, !9176, !"_ZN5prost8encoding6uint3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hfe7e6bd112890522E: argument 0"}
!9178 = distinct !{!9178, !9176, !"_ZN5prost8encoding6uint3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hfe7e6bd112890522E: argument 1"}
!9179 = distinct !{!9179, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb4fb651a985b0cccE"}
!9180 = distinct !{!9180, !9179, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb4fb651a985b0cccE: argument 0"}
!9181 = !{!9177}
!9182 = !{!9177, !9178}
!9183 = !{!9180, !9177}
!9184 = !{!9178}
!9185 = distinct !{!9185, i1 false, !"_ZN5prost8encoding5float14merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17h96f59c56d6f5cbdcE"}
!9186 = distinct !{!9186, !9185, !"_ZN5prost8encoding5float14merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17h96f59c56d6f5cbdcE: argument 0"}
!9187 = distinct !{!9187, !9185, !"_ZN5prost8encoding5float14merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17h96f59c56d6f5cbdcE: argument 1"}
!9188 = distinct !{!9188, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6ee3a2ca5f052ceeE"}
!9189 = distinct !{!9189, !9188, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6ee3a2ca5f052ceeE: argument 0"}
!9190 = !{!9186}
!9191 = !{!9186, !9187}
!9192 = !{!9189, !9186}
!9193 = !{!9187}
!9194 = distinct !{!9194, i1 false, !"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E"}
!9195 = distinct !{!9195, !9194, !"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E: argument 0"}
!9196 = distinct !{!9196, !9194, !"_ZN5prost8encoding5int6414merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hc994e8db2ceebe10E: argument 1"}
!9197 = distinct !{!9197, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hfb2e970aed72304eE"}
!9198 = distinct !{!9198, !9197, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hfb2e970aed72304eE: argument 0"}
!9199 = !{!9195}
!9200 = !{!9195, !9196}
!9201 = !{!9198, !9195}
!9202 = !{!9196}
!9203 = distinct !{!9203, i1 false, !"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E"}
!9204 = distinct !{!9204, !9203, !"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E: argument 0"}
!9205 = distinct !{!9205, !9203, !"_ZN5prost8encoding5int3214merge_repeated28_$u7b$$u7b$closure$u7d$$u7d$17hdec354001e9e79e9E: argument 1"}
!9206 = distinct !{!9206, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h1417440ab4d34cebE"}
!9207 = distinct !{!9207, !9206, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h1417440ab4d34cebE: argument 0"}
!9208 = !{!9204}
!9209 = !{!9204, !9205}
!9210 = !{!9207, !9204}
!9211 = !{!9205}
!9212 = distinct !{!9212, i1 false, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E"}
!9213 = distinct !{!9213, !9212, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 1"}
!9214 = distinct !{!9214, !9212, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 0"}
!9215 = distinct !{!9215, i1 false, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E"}
!9216 = distinct !{!9216, !9215, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E: argument 0"}
!9217 = distinct !{!9217, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9218 = distinct !{!9218, !9217, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9219 = distinct !{!9219, !9217, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9220 = distinct !{!9220, !9217, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9221 = distinct !{!9221, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9222 = distinct !{!9222, !9221, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9223 = distinct !{!9223, !9221, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9224 = distinct !{!9224, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9225 = distinct !{!9225, !9224, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9226 = distinct !{!9226, !9224, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9227 = distinct !{!9227, !9224, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9228 = distinct !{!9228, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9229 = distinct !{!9229, !9228, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9230 = distinct !{!9230, !9228, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9231 = distinct !{!9231, i1 false, !"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE"}
!9232 = distinct !{!9232, !9231, !"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE: argument 0"}
!9233 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 1, i32 2000}
!9234 = !{!9214, !9213}
!9235 = !{!9214}
!9236 = !{!9216, !9214}
!9237 = !{!9223, !9222, !9220, !9219, !9218, !9214}
!9238 = !{!9223, !9220, !9219, !9214}
!9239 = !{!9222, !9219, !9218, !9214}
!9240 = !{!9230, !9229, !9227, !9226, !9225, !9216, !9214}
!9241 = !{!9230, !9227, !9226, !9216, !9214}
!9242 = !{!9229, !9226, !9225, !9216, !9214}
!9243 = !{!"branch_weights", !"expected", i32 1429133, i32 2146054515}
!9244 = !{!9232}
!9245 = distinct !{!9245, i1 false, !"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE"}
!9246 = distinct !{!9246, !9245, !"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE: argument 0"}
!9247 = distinct !{!9247, i1 false, !"_ZN5prost8encoding6varint19decode_varint_slice17h23383ce205b8ba20E"}
!9248 = distinct !{!9248, !9247, !"_ZN5prost8encoding6varint19decode_varint_slice17h23383ce205b8ba20E: argument 1"}
!9249 = distinct !{!9249, !9247, !"_ZN5prost8encoding6varint19decode_varint_slice17h23383ce205b8ba20E: argument 0"}
!9250 = distinct !{!9250, i1 false, !"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE"}
!9251 = distinct !{!9251, !9250, !"_ZN62_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h9707777a945dfd9aE: argument 0"}
!9252 = !{!9246}
!9253 = !{!9248}
!9254 = !{!9249}
!9255 = !{!9249, !9248}
!9256 = !{!9251}
!9257 = distinct !{!9257, i1 false, !"_ZN5bytes3buf7buf_mut6BufMut6put_u817hd440d7381212543bE"}
!9258 = distinct !{!9258, !9257, !"_ZN5bytes3buf7buf_mut6BufMut6put_u817hd440d7381212543bE: argument 0"}
!9259 = distinct !{!9259, i1 false, !"_ZN5bytes3buf7buf_mut6BufMut6put_u817hd440d7381212543bE"}
!9260 = distinct !{!9260, !9259, !"_ZN5bytes3buf7buf_mut6BufMut6put_u817hd440d7381212543bE: argument 0"}
!9261 = !{!9258}
!9262 = !{!9260}
!9263 = !{!"branch_weights", i32 1, i32 127}
!9264 = !{!"branch_weights", i32 127, i32 255873}
!9265 = !{!"branch_weights", i32 1, i32 4001}
!9266 = distinct !{!9266, i1 false, !"_ZN101_$LT$anki_proto..stats..graphs_response..buttons..ButtonCounts$u20$as$u20$prost..message..Message$GT$11encoded_len17hee779217c7cfe0d9E"}
!9267 = distinct !{!9267, !9266, !"_ZN101_$LT$anki_proto..stats..graphs_response..buttons..ButtonCounts$u20$as$u20$prost..message..Message$GT$11encoded_len17hee779217c7cfe0d9E: argument 0"}
!9268 = distinct !{!9268, i1 false, !"_ZN5prost8encoding6uint3218encoded_len_packed17h8dc108bcd1358c37E"}
!9269 = distinct !{!9269, !9268, !"_ZN5prost8encoding6uint3218encoded_len_packed17h8dc108bcd1358c37E: argument 0"}
!9270 = distinct !{!9270, i1 false, !"_ZN5prost8encoding6uint3218encoded_len_packed17h8dc108bcd1358c37E"}
!9271 = distinct !{!9271, !9270, !"_ZN5prost8encoding6uint3218encoded_len_packed17h8dc108bcd1358c37E: argument 0"}
!9272 = distinct !{!9272, i1 false, !"_ZN5prost8encoding6uint3218encoded_len_packed17h8dc108bcd1358c37E"}
!9273 = distinct !{!9273, !9272, !"_ZN5prost8encoding6uint3218encoded_len_packed17h8dc108bcd1358c37E: argument 0"}
!9274 = !{!9267}
!9275 = !{!9269}
!9276 = !{!9271}
!9277 = !{!9273}
!9278 = distinct !{!9278, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9279 = distinct !{!9279, !9278, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9280 = distinct !{!9280, !9278, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9281 = distinct !{!9281, !9278, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9282 = distinct !{!9282, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9283 = distinct !{!9283, !9282, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9284 = distinct !{!9284, !9282, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9285 = distinct !{!9285, i1 false, !"_ZN73_$LT$anki_proto..ankiweb..AddonInfo$u20$as$u20$core..default..Default$GT$7default17hbea545112e5a1e9cE"}
!9286 = distinct !{!9286, !9285, !"_ZN73_$LT$anki_proto..ankiweb..AddonInfo$u20$as$u20$core..default..Default$GT$7default17hbea545112e5a1e9cE: argument 0"}
!9287 = distinct !{!9287, i1 false, !"_ZN5prost8encoding7message5merge17h5dc949065e52803dE"}
!9288 = distinct !{!9288, !9287, !"_ZN5prost8encoding7message5merge17h5dc949065e52803dE: argument 1"}
!9289 = distinct !{!9289, !9287, !"_ZN5prost8encoding7message5merge17h5dc949065e52803dE: argument 0"}
!9290 = distinct !{!9290, i1 false, !"_ZN5prost8encoding10merge_loop17h61fc3941e8f9e267E"}
!9291 = distinct !{!9291, !9290, !"_ZN5prost8encoding10merge_loop17h61fc3941e8f9e267E: argument 1"}
!9292 = distinct !{!9292, !9290, !"_ZN5prost8encoding10merge_loop17h61fc3941e8f9e267E: argument 0"}
!9293 = distinct !{!9293, i1 false, !"_ZN5prost8encoding7message5merge28_$u7b$$u7b$closure$u7d$$u7d$17h6a965a33e41b410aE"}
!9294 = distinct !{!9294, !9293, !"_ZN5prost8encoding7message5merge28_$u7b$$u7b$closure$u7d$$u7d$17h6a965a33e41b410aE: argument 1"}
!9295 = distinct !{!9295, !9293, !"_ZN5prost8encoding7message5merge28_$u7b$$u7b$closure$u7d$$u7d$17h6a965a33e41b410aE: argument 0"}
!9296 = distinct !{!9296, i1 false, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E"}
!9297 = distinct !{!9297, !9296, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 1"}
!9298 = distinct !{!9298, !9296, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 0"}
!9299 = distinct !{!9299, i1 false, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E"}
!9300 = distinct !{!9300, !9299, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E: argument 0"}
!9301 = distinct !{!9301, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9302 = distinct !{!9302, !9301, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9303 = distinct !{!9303, !9301, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9304 = distinct !{!9304, !9301, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9305 = distinct !{!9305, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9306 = distinct !{!9306, !9305, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9307 = distinct !{!9307, !9305, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9308 = distinct !{!9308, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9309 = distinct !{!9309, !9308, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9310 = distinct !{!9310, !9308, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9311 = distinct !{!9311, !9308, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9312 = distinct !{!9312, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9313 = distinct !{!9313, !9312, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9314 = distinct !{!9314, !9312, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9315 = distinct !{!9315, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4644c2a4f8715dd4E"}
!9316 = distinct !{!9316, !9315, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4644c2a4f8715dd4E: argument 0"}
!9317 = distinct !{!9317, !9315, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4644c2a4f8715dd4E: argument 1"}
!9318 = !{!9284, !9283, !9281, !9280, !9279}
!9319 = !{!9284, !9281, !9280}
!9320 = !{!9283, !9280, !9279}
!9321 = !{!9286}
!9322 = !{!9288}
!9323 = !{!9289, !9288}
!9324 = !{!9291}
!9325 = !{!9292, !9289}
!9326 = !{!9291, !9288}
!9327 = !{!9292, !9291, !9289, !9288}
!9328 = !{!9295, !9294, !9292, !9291, !9289, !9288}
!9329 = !{!9298, !9297, !9295, !9294, !9292, !9291, !9289, !9288}
!9330 = !{!9298, !9295}
!9331 = !{!9300, !9298, !9295, !9294, !9292, !9291, !9289, !9288}
!9332 = !{!9307, !9306, !9304, !9303, !9302, !9298, !9295, !9294, !9292, !9291, !9289, !9288}
!9333 = !{!9307, !9304, !9303, !9298, !9295, !9294, !9292, !9291, !9289, !9288}
!9334 = !{!9306, !9303, !9302, !9298, !9295, !9294}
!9335 = !{!9298, !9295, !9294}
!9336 = !{!9314, !9313, !9311, !9310, !9309, !9300, !9298, !9295, !9294, !9292, !9291, !9289, !9288}
!9337 = !{!9314, !9311, !9310, !9300, !9298, !9295, !9294, !9292, !9291, !9289, !9288}
!9338 = !{!9313, !9310, !9309, !9300, !9298, !9295, !9294}
!9339 = !{!9300, !9298, !9295, !9294}
!9340 = !{!9316}
!9341 = !{!9317}
!9342 = distinct !{!9342, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9343 = distinct !{!9343, !9342, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9344 = distinct !{!9344, !9342, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9345 = distinct !{!9345, !9342, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9346 = distinct !{!9346, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9347 = distinct !{!9347, !9346, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9348 = distinct !{!9348, !9346, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9349 = distinct !{!9349, i1 false, !"_ZN66_$LT$anki_proto..notes..Note$u20$as$u20$core..default..Default$GT$7default17had964ace6dfb300cE"}
!9350 = distinct !{!9350, !9349, !"_ZN66_$LT$anki_proto..notes..Note$u20$as$u20$core..default..Default$GT$7default17had964ace6dfb300cE: argument 0"}
!9351 = distinct !{!9351, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64e1e9b8faf5daa2E"}
!9352 = distinct !{!9352, !9351, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64e1e9b8faf5daa2E: argument 0"}
!9353 = distinct !{!9353, !9351, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h64e1e9b8faf5daa2E: argument 1"}
!9354 = !{!9348, !9347, !9345, !9344, !9343}
!9355 = !{!9348, !9345, !9344}
!9356 = !{!9347, !9344, !9343}
!9357 = !{!9350}
!9358 = !{!9352}
!9359 = !{!9353}
!9360 = distinct !{!9360, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9361 = distinct !{!9361, !9360, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9362 = distinct !{!9362, !9360, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9363 = distinct !{!9363, !9360, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9364 = distinct !{!9364, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9365 = distinct !{!9365, !9364, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9366 = distinct !{!9366, !9364, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9367 = distinct !{!9367, i1 false, !"_ZN73_$LT$anki_proto..search..SearchNode$u20$as$u20$core..default..Default$GT$7default17h95e43d3c5867d540E"}
!9368 = distinct !{!9368, !9367, !"_ZN73_$LT$anki_proto..search..SearchNode$u20$as$u20$core..default..Default$GT$7default17h95e43d3c5867d540E: argument 0"}
!9369 = distinct !{!9369, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h940881462f5da874E"}
!9370 = distinct !{!9370, !9369, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h940881462f5da874E: argument 0"}
!9371 = distinct !{!9371, !9369, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h940881462f5da874E: argument 1"}
!9372 = !{!9366, !9365, !9363, !9362, !9361}
!9373 = !{!9366, !9363, !9362}
!9374 = !{!9365, !9362, !9361}
!9375 = !{!9368}
!9376 = !{!9370}
!9377 = !{!9371}
!9378 = distinct !{!9378, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9379 = distinct !{!9379, !9378, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9380 = distinct !{!9380, !9378, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9381 = distinct !{!9381, !9378, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9382 = distinct !{!9382, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9383 = distinct !{!9383, !9382, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9384 = distinct !{!9384, !9382, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9385 = distinct !{!9385, i1 false, !"_ZN88_$LT$anki_proto..decks..deck..filtered..SearchTerm$u20$as$u20$core..default..Default$GT$7default17h8e389903ec719cbaE"}
!9386 = distinct !{!9386, !9385, !"_ZN88_$LT$anki_proto..decks..deck..filtered..SearchTerm$u20$as$u20$core..default..Default$GT$7default17h8e389903ec719cbaE: argument 0"}
!9387 = distinct !{!9387, i1 false, !"_ZN5prost8encoding7message5merge17h29d34361db0730a4E"}
!9388 = distinct !{!9388, !9387, !"_ZN5prost8encoding7message5merge17h29d34361db0730a4E: argument 1"}
!9389 = distinct !{!9389, i1 false, !"_ZN5prost8encoding10merge_loop17h15b9c9c7899ae216E"}
!9390 = distinct !{!9390, !9389, !"_ZN5prost8encoding10merge_loop17h15b9c9c7899ae216E: argument 1"}
!9391 = distinct !{!9391, !9387, !"_ZN5prost8encoding7message5merge17h29d34361db0730a4E: argument 0"}
!9392 = distinct !{!9392, !9389, !"_ZN5prost8encoding10merge_loop17h15b9c9c7899ae216E: argument 0"}
!9393 = distinct !{!9393, i1 false, !"_ZN5prost8encoding7message5merge28_$u7b$$u7b$closure$u7d$$u7d$17hee04d3d6d5be931bE"}
!9394 = distinct !{!9394, !9393, !"_ZN5prost8encoding7message5merge28_$u7b$$u7b$closure$u7d$$u7d$17hee04d3d6d5be931bE: argument 1"}
!9395 = distinct !{!9395, !9393, !"_ZN5prost8encoding7message5merge28_$u7b$$u7b$closure$u7d$$u7d$17hee04d3d6d5be931bE: argument 0"}
!9396 = distinct !{!9396, i1 false, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E"}
!9397 = distinct !{!9397, !9396, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 1"}
!9398 = distinct !{!9398, !9396, !"_ZN5prost8encoding10decode_key17h73e86717855793b2E: argument 0"}
!9399 = distinct !{!9399, i1 false, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E"}
!9400 = distinct !{!9400, !9399, !"_ZN90_$LT$prost..encoding..wire_type..WireType$u20$as$u20$core..convert..TryFrom$LT$u64$GT$$GT$8try_from17h71f37861c028e355E: argument 0"}
!9401 = distinct !{!9401, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9402 = distinct !{!9402, !9401, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9403 = distinct !{!9403, !9401, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9404 = distinct !{!9404, !9401, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9405 = distinct !{!9405, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9406 = distinct !{!9406, !9405, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9407 = distinct !{!9407, !9405, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9408 = distinct !{!9408, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9409 = distinct !{!9409, !9408, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9410 = distinct !{!9410, !9408, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9411 = distinct !{!9411, !9408, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9412 = distinct !{!9412, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9413 = distinct !{!9413, !9412, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9414 = distinct !{!9414, !9412, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9415 = distinct !{!9415, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h97f2df2ef670c7c3E"}
!9416 = distinct !{!9416, !9415, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h97f2df2ef670c7c3E: argument 0"}
!9417 = distinct !{!9417, !9415, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h97f2df2ef670c7c3E: argument 1"}
!9418 = !{!9384, !9383, !9381, !9380, !9379}
!9419 = !{!9384, !9381, !9380}
!9420 = !{!9383, !9380, !9379}
!9421 = !{!9386}
!9422 = !{!9388}
!9423 = !{!9390}
!9424 = !{!9390, !9388}
!9425 = !{!9392, !9391}
!9426 = !{!9392, !9390, !9391, !9388}
!9427 = !{!9395, !9394, !9392, !9390, !9391, !9388}
!9428 = !{!9398, !9397, !9395, !9394, !9392, !9390, !9391, !9388}
!9429 = !{!9400, !9398, !9395, !9394, !9392, !9390, !9391, !9388}
!9430 = !{!9407, !9406, !9404, !9403, !9402, !9398, !9395, !9394, !9392, !9390, !9391, !9388}
!9431 = !{!9407, !9404, !9403, !9398, !9395, !9394, !9392, !9390, !9391, !9388}
!9432 = !{!9414, !9413, !9411, !9410, !9409, !9400, !9398, !9395, !9394, !9392, !9390, !9391, !9388}
!9433 = !{!9414, !9411, !9410, !9400, !9398, !9395, !9394, !9392, !9390, !9391, !9388}
!9434 = !{!9416}
!9435 = !{!9417}
!9436 = distinct !{!9436, i1 false, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!9437 = distinct !{!9437, !9436, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!9438 = distinct !{!9438, !9436, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!9439 = distinct !{!9439, !9436, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!9440 = distinct !{!9440, i1 false, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!9441 = distinct !{!9441, !9440, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!9442 = distinct !{!9442, !9440, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!9443 = distinct !{!9443, i1 false, !"_ZN81_$LT$anki_proto..notetypes..notetype..Field$u20$as$u20$core..default..Default$GT$7default17hd273cdda1725b0eeE"}
end_hunk_1
