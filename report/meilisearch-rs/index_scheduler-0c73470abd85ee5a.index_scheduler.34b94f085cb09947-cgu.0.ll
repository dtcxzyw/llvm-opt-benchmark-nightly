Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$25serialize_newtype_variant17h0f43bb254645d5efE":bb.a
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val24, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !822, !noalias !817, !nonnull !57, !noundef !57
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.do
  store i8 125, ptr %i.ds, align 1, !noalias !822
  %i.dt = add nuw i64 %i.do, 1
  store i64 %i.dt, ptr %i.dl, align 8, !alias.scope !822, !noalias !817
  br label %"_ZN17meilisearch_types5tasks1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$9serialize17h861e79895dee7020E.exit"

"_ZN17meilisearch_types5tasks1_92_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$meilisearch_types..tasks..DsrUpdate$GT$9serialize17h861e79895dee7020E.exit": ; preds = %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17hb567e17b7b101a37E.exit.i", %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit
  %.sroa.0.1 = phi ptr [ null, %_ZN10serde_json3ser9Formatter10end_object17h161c5d0dfb894745E.exit ], [ %i.cp, %"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17hb567e17b7b101a37E.exit.i" ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN100_$LT$index_scheduler..processing..network..NetworkTopologyState$u20$as$u20$milli..progress..Step$GT$4name17hd1c23eaabbec6457E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [72 x i8], align 8                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 4 uses
  %i.u = alloca [72 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [72 x i8], align 8                ; 5 uses
  %i.y = load i8, ptr %1, align 1, !range !63, !noundef !57
  switch i8 %i.y, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 21, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN12convert_case9converter9Converter3new17h189d552fdf95fe43E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a)
  call void @_ZN12convert_case9converter9Converter9from_case17ha13f5d8c912b3f6bE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.w)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store ptr @3, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 22, ptr %i.v, align 8
  call fastcc void @"_ZN12convert_case23StateConverter$LT$T$GT$7to_case17h53333b57678d3f05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 21, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN12convert_case9converter9Converter3new17h189d552fdf95fe43E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b)
  call void @_ZN12convert_case9converter9Converter9from_case17ha13f5d8c912b3f6bE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.t)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr @5, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 22, ptr %i.s, align 8
  call fastcc void @"_ZN12convert_case23StateConverter$LT$T$GT$7to_case17h53333b57678d3f05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.u, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 21, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN12convert_case9converter9Converter3new17h189d552fdf95fe43E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c)
  call void @_ZN12convert_case9converter9Converter9from_case17ha13f5d8c912b3f6bE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr @7, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 22, ptr %i.p, align 8
  call fastcc void @"_ZN12convert_case23StateConverter$LT$T$GT$7to_case17h53333b57678d3f05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 21, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN12convert_case9converter9Converter3new17h189d552fdf95fe43E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d)
  call void @_ZN12convert_case9converter9Converter9from_case17ha13f5d8c912b3f6bE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store ptr @9, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 22, ptr %i.m, align 8
  call fastcc void @"_ZN12convert_case23StateConverter$LT$T$GT$7to_case17h53333b57678d3f05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 21, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_ZN12convert_case9converter9Converter3new17h189d552fdf95fe43E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e)
  call void @_ZN12convert_case9converter9Converter9from_case17ha13f5d8c912b3f6bE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr @11, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 22, ptr %i.j, align 8
  call fastcc void @"_ZN12convert_case23StateConverter$LT$T$GT$7to_case17h53333b57678d3f05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 21, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_ZN12convert_case9converter9Converter3new17h189d552fdf95fe43E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f)
  call void @_ZN12convert_case9converter9Converter9from_case17ha13f5d8c912b3f6bE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr @13, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 22, ptr %i.g, align 8
  call fastcc void @"_ZN12convert_case23StateConverter$LT$T$GT$7to_case17h53333b57678d3f05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$11query_state17hd751d5b9e25de708E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  %.sroa.0.0 = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17h2046051647e74f15E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @14, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17hbc89d215e2957f23E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @15, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9is_object17h35e5ee5b3c63f6b8E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN100_$LT$milli..prompt..document..ParseableMap$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h9f7fcebd35873da3E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN101_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$12contains_key17h3c283cbd97af95e4E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  switch i64 %2, label %bb.d [
    i64 4, label %bb.b
    i64 5, label %bb.c
    i64 13, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1701667182
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %i.f = xor i32 %i.e, 1970037110
  %i.g = getelementptr i8, ptr %1, i64 4
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = xor i32 %i.i, 101
  %i.k = or i32 %i.f, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.d, %bb.b ], [ %i.w, %bb.e ], [ %i.n, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.a
  %i.o = load i64, ptr %1, align 1
  %i.p = xor i64 %i.o, 7165897045455106921
  %i.q = getelementptr i8, ptr %1, i64 5
  %i.r = load i64, ptr %i.q, align 1
  %i.s = xor i64 %i.r, 7308324465818169953
  %i.t = or i64 %i.p, %i.s
  %i.u = icmp ne i64 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN101_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$12contains_key17h472b313d4ec282f9E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  switch i64 %2, label %bb.d [
    i64 4, label %bb.b
    i64 5, label %bb.c
    i64 13, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1701667182
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %i.f = xor i32 %i.e, 1970037110
  %i.g = getelementptr i8, ptr %1, i64 4
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = xor i32 %i.i, 101
  %i.k = or i32 %i.f, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.d, %bb.b ], [ %i.w, %bb.e ], [ %i.n, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.a
  %i.o = load i64, ptr %1, align 1
  %i.p = xor i64 %i.o, 7165897045455106921
  %i.q = getelementptr i8, ptr %1, i64 5
  %i.r = load i64, ptr %i.q, align 1
  %i.s = xor i64 %i.r, 7308324465818169953
  %i.t = or i64 %i.p, %i.s
  %i.u = icmp ne i64 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN101_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$12contains_key17h73b196f4b5d3c8c4E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  switch i64 %2, label %bb.d [
    i64 4, label %bb.b
    i64 5, label %bb.c
    i64 13, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1701667182
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %i.f = xor i32 %i.e, 1970037110
  %i.g = getelementptr i8, ptr %1, i64 4
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = xor i32 %i.i, 101
  %i.k = or i32 %i.f, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.d, %bb.b ], [ %i.w, %bb.e ], [ %i.n, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.a
  %i.o = load i64, ptr %1, align 1
  %i.p = xor i64 %i.o, 7165897045455106921
  %i.q = getelementptr i8, ptr %1, i64 5
  %i.r = load i64, ptr %i.q, align 1
  %i.s = xor i64 %i.r, 7308324465818169953
  %i.t = or i64 %i.p, %i.s
  %i.u = icmp ne i64 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN101_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$3get17h2f8ee0df00170e4eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  switch i64 %2, label %bb.g [
    i64 4, label %bb.b
    i64 5, label %bb.d
    i64 13, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1701667182
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.h, %bb.g, %bb.e
  %.sroa.5.0 = phi ptr [ undef, %bb.g ], [ @52, %bb.h ], [ %., %bb.e ], [ @47, %bb.b ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %.18, %bb.h ], [ %.17, %bb.e ], [ %0, %bb.b ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.5.0, 1
  ret { ptr, ptr } %i.f

bb.d:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 1
  %i.h = xor i32 %i.g, 1970037110
  %i.i = getelementptr i8, ptr %1, i64 4
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = xor i32 %i.k, 101
  %i.m = or i32 %i.h, %i.l
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !57, !align !61, !noundef !57
  %i.s = load ptr, ptr %0, align 8, !nonnull !57, !align !64, !noundef !57
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !57
  %i.v = tail call { ptr, ptr } @"_ZN110_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$3get17hc9e5736619b3da04E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.u)
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  %.not15 = icmp eq ptr %i.w, null                ; 2 uses
  %. = select i1 %.not15, ptr @49, ptr @340
  %.17 = select i1 %.not15, ptr @48, ptr %i.w
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  %i.x = load i64, ptr %1, align 1
  %i.y = xor i64 %i.x, 7165897045455106921
  %i.z = getelementptr i8, ptr %1, i64 5
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 7308324465818169953
  %i.ac = or i64 %i.y, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
end_hunk_0
begin_hunk_1_@"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc050697b8edcb86E":bb.a
"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hbf8ca4c01943096eE.exit.i": ; preds = %bb.b
  %i.o = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not9.i = icmp eq ptr %i.o, null
  br i1 %.not9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hbf8ca4c01943096eE.exit.i"
  %i.p = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %.sroa.04.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.04.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.i, i64 7, i1 false), !noalias !1520
  store i64 %i.e, ptr %0, align 8, !alias.scope !1519, !noalias !1520
  %.sroa.04.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.541.0.copyload.i, ptr %.sroa.04.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  %.sroa.04.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.642.0.copyload.i, ptr %.sroa.04.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  %.sroa.04.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.844.0.copyload.i, ptr %.sroa.04.sroa.7.0..sroa_idx.i, align 1, !alias.scope !1519, !noalias !1520
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h9f7feef6c4e6094fE.exit"

bb.g:                                             ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hbf8ca4c01943096eE.exit.i"
  store i64 2, ptr %0, align 8, !alias.scope !1519, !noalias !1520
  %i.q = icmp eq i64 %i.e, 0
  br i1 %i.q, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h9f7feef6c4e6094fE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ne i8 %.sroa.844.0.copyload.i, -1
  %i.s = icmp eq i64 %.sroa.642.0.copyload.i, 0
  %or.cond45.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond45.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h9f7feef6c4e6094fE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i": ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.541.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.541.0.copyload.i, i64 noundef %.sroa.642.0.copyload.i, i64 noundef 1) #79, !noalias !1524
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h9f7feef6c4e6094fE.exit"

"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hd5a7daec67be1f89E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.e, %bb.d
  resume { ptr, i32 } %i.k

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h9f7feef6c4e6094fE.exit": ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5eeb75328510bb85E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1536
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1535, !noalias !1534, !nonnull !57, !align !64, !noundef !57
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15.i = load ptr, ptr %i.c, align 8, !alias.scope !1535, !noalias !1534, !nonnull !57, !align !61, !noundef !57
  %i.d = getelementptr inbounds nuw i8, ptr %.val15.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !noalias !1537, !nonnull !57
  call void %i.e(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 %.val.i), !noalias !1536, !inline_history !1530
  %i.f = load i64, ptr %i.b, align 8, !noalias !1536, !noundef !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !71, !noalias !1536, !noundef !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !1536 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1536
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val16.i = load ptr, ptr %i.k, align 8, !alias.scope !1535, !noalias !1534, !nonnull !57, !align !64, !noundef !57
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val17.i = load ptr, ptr %i.l, align 8, !alias.scope !1535, !noalias !1534, !nonnull !57, !align !61, !noundef !57
  %i.m = getelementptr inbounds nuw i8, ptr %.val17.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !57, !noalias !1538, !nonnull !57
  call void %i.n(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 1 %.val16.i), !noalias !1536, !inline_history !1533
  %i.o = load i64, ptr %i.a, align 8, !noalias !1536, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !71, !noalias !1536, !noundef !57 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !1536 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1536
  %i.t = trunc nuw i64 %i.h to i1
  %i.u = trunc nuw i64 %i.q to i1                 ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.u, label %bb.d, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17hbacc79ca893cd754E.exit"

bb.c:                                             ; preds = %bb.a
  %.14.i = select i1 %i.u, i64 %i.s, i64 undef
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17hbacc79ca893cd754E.exit"

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.i18.i = call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.j)
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17hbacc79ca893cd754E.exit"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17hbacc79ca893cd754E.exit": ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.012.0.i = phi i64 [ 1, %bb.d ], [ %i.q, %bb.c ], [ 1, %bb.b ]
  %.sroa.7.0.i = phi i64 [ %.sroa.0.0.i18.i, %bb.d ], [ %.14.i, %bb.c ], [ %i.j, %bb.b ]
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.f)
  store i64 %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !1534, !noalias !1535
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.012.0.i, ptr %i.v, align 8, !alias.scope !1534, !noalias !1535
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.i, ptr %i.w, align 8, !alias.scope !1534, !noalias !1535
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$index_scheduler..scheduler..process_batch..ProcessBatchInfo$u20$as$u20$core..default..Default$GT$7default17h2ee9b153a7b1a0faE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) initializes((0, 8), (24, 168)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !74, !noalias !1551, !noundef !57
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.a, align 8, !noalias !1552
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !1552
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i": ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !1553 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !1553
  store i8 1, ptr %i.b, align 8, !noalias !1553
  br label %bb.b

bb.b:                                             ; preds = %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i"
  %.pre1.i.i8 = phi i64 [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i ], [ %i.g, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i" ] ; 2 uses
  %i.i = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i ], [ %i.f, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i" ] ; 3 uses
  %i.j = add i64 %i.i, 1
  %i.k = add i64 %i.i, 2
  store i64 %i.k, ptr %i.a, align 8, !noalias !1554
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx16, align 8
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx17, align 8
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false)
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.i, ptr %.sroa.7.0..sroa_idx19, align 8
  %.sroa.8.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.pre1.i.i8, ptr %.sroa.8.0..sroa_idx20, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.pre1.i.i8, ptr %.sroa.8.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$11query_state17hd1986c3fad34c275E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  %.sroa.0.0 = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_array17h94c03ca96ae71b5dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @65, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17h2909ffb04c1722efE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @66, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8is_array17h8b468f03b7628e70E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN102_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h41117eccb4495e28E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @67, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$milli..prompt..document..ParseableValue$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6is_nil17hd141c1cbf26419f0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !63, !noundef !57
  %i.b = icmp eq i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN102_$LT$milli..prompt..document..ParseableValue$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_array17h4732b7c3134f8052E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !63, !noundef !57
  %i.b = icmp eq i8 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @65, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN102_$LT$milli..prompt..document..ParseableValue$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17ha2e8ee852d79b671E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @68, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$milli..prompt..document..ParseableValue$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8is_array17hb3f5d6f546dfcf70E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !63, !noundef !57
  %i.b = icmp eq i8 %i.a, 4
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN102_$LT$milli..prompt..document..ParseableValue$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17hb056ec4c5a65f8e7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !63, !noundef !57
  %i.b = icmp eq i8 %i.a, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @15, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$milli..prompt..document..ParseableValue$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9is_object17h32605b42a124a183E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !63, !noundef !57
  %i.b = icmp eq i8 %i.a, 5
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN102_$LT$milli..prompt..document..ParseableValue$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9is_scalar17hc38fd53b8ff9a546E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !63, !noundef !57
  %.off = add nsw i8 %i.a, -1
  %switch = icmp ult i8 %.off, 3
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6is_nil17h917c478887abcf3dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !75, !noundef !57
  %i.b = icmp eq i8 %i.a, 4
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_array17h942230a65d9bf542E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !75, !noundef !57
  %i.b = icmp eq i8 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @73, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17h2222b435cc79bf6bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @74, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 5) i8 @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_state17h9120405f40b6d916E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !75, !noundef !57
  %i.b = icmp eq i8 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !76
  %.sroa.0.0 = select i1 %i.b, i8 %i.d, i8 4
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h0adb892e4a943d73E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !75, !noundef !57
  %i.b = icmp eq i8 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @75, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN103_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$12contains_key17h280158bc0907928cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  switch i64 %2, label %bb.c [
    i64 3, label %bb.b
    i64 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %1, align 1
  %i.b = xor i16 %i.a, 28516
  %i.c = getelementptr i8, ptr %1, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 99
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.j, %bb.b ], [ %i.w, %bb.e ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.a
  %i.k = load i32, ptr %1, align 1
  %i.l = xor i32 %i.k, 1818585446
  %i.m = getelementptr i8, ptr %1, i64 4
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i32
  %i.p = xor i32 %i.o, 29540
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !align !61, !noundef !57
  %i.w = icmp ne ptr %i.v, null
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN103_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..object..ObjectView$GT$12contains_key17h7b5d653c3f582e7dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  switch i64 %2, label %bb.c [
    i64 3, label %bb.b
    i64 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %1, align 1
  %i.b = xor i16 %i.a, 28516
  %i.c = getelementptr i8, ptr %1, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 99
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.j, %bb.b ], [ %i.w, %bb.e ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.a
  %i.k = load i32, ptr %1, align 1
  %i.l = xor i32 %i.k, 1818585446
  %i.m = getelementptr i8, ptr %1, i64 4
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i32
  %i.p = xor i32 %i.o, 29540
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
end_hunk_1
begin_hunk_2_@"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hb252a7d8b7b817ecE":bb.a

bb.r:                                             ; preds = %bb.q
  %i.bq = icmp ugt i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bq, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.v

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i) ]
  %i.br = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1, i64 noundef %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i) #79, !noalias !3005 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.s, label %bb.v

bb.s:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4649) #80
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i, !noalias !3006

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.s
  unreachable

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.s
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !3007
  br label %.body.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, i8 0, i64 15, i1 false), !noalias !3008
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull readonly align 1 %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i, i1 false), !noalias !3009
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..sroa.010.1.copyload.i.i.i.i.i.i.i.i.i = load i56, ptr %i.f, align 8, !noalias !3010
  %.sroa.010.1.insert.ext.i.i.i.i.i.i.i.i.i = zext i56 %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..sroa.010.1.copyload.i.i.i.i.i.i.i.i.i to i64
  %.sroa.010.1.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.010.1.insert.ext.i.i.i.i.i.i.i.i.i, 8
  %.sroa.010.1.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.010.1.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i
  %i.bu = inttoptr i64 %.sroa.010.1.insert.insert.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  %.7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..sroa.611.1.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..sroa_idx, align 1, !noalias !3010 ; 2 uses
  %i.bv = icmp eq i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !3011
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.r
  %.sroa.010.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %bb.t ], [ %i.bu, %bb.u ], [ %i.br, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, %bb.r ] ; 3 uses
  %.sroa.9.0.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.t ], [ 1, %bb.u ], [ -1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -1, %bb.r ]
  %.sroa.611.0.i.i.i.i.i.i.i.i.i = phi i64 [ %.7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..sroa.611.1.copyload.i.i.i.i.i.i.i.i.i, %bb.t ], [ %.7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..sroa.611.1.copyload.i.i.i.i.i.i.i.i.i, %bb.u ], [ %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i, %bb.r ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2986
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !invariant.load !57, !noalias !3012, !nonnull !57
  invoke void %i.bx(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noundef nonnull align 1 %i.ay)
          to label %bb.x unwind label %bb.w, !noalias !3012

bb.w:                                             ; preds = %bb.v
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = icmp eq i64 %.sroa.611.0.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.bp, i1 true, i1 %i.bz
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.0.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.010.0.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.611.0.i.i.i.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !3013
  br label %.body.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !3014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2986
  call void @llvm.experimental.noalias.scope.decl(metadata !3015)
  call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  %i.ca = load i64, ptr %i.j, align 8, !range !71, !alias.scope !3017, !noalias !2986, !noundef !57
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h3ce80dfeb3cc4981E.exit.i.i.i.i.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  call void @llvm.experimental.noalias.scope.decl(metadata !3020)
  %i.cc = load i8, ptr %i.am, align 1, !alias.scope !3021, !noalias !2986, !noundef !57
  %i.cd = icmp eq i8 %i.cc, -1
  br i1 %i.cd, label %bb.z, label %"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h3ce80dfeb3cc4981E.exit.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %bb.y
  %.val1.i.i.i.i.i9.i.i.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !3021, !noalias !2986, !noundef !57 ; 2 uses
  %i.ce = icmp eq i64 %.val1.i.i.i.i.i9.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h3ce80dfeb3cc4981E.exit.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i": ; preds = %bb.z
  %.val.i.i.i.i.i11.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !3021, !noalias !2986, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i11.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i9.i.i.i.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !3022
  br label %"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h3ce80dfeb3cc4981E.exit.i.i.i.i.i.i.i.i"

"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h3ce80dfeb3cc4981E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i", %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2986
  store ptr %.sroa.010.0.i.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !2989
  store i64 %.sroa.611.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2989
  store i8 %.sroa.9.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !2989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i.i.i.i.i.i, i64 56, i1 false), !noalias !2989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3023
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h955321eed8421a71E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.k, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.k, !noalias !2987

.noexc.i.i.i.i.i.i.i:                             ; preds = %"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h3ce80dfeb3cc4981E.exit.i.i.i.i.i.i.i.i"
  %i.cf = load i8, ptr %i.e, align 8, !range !63, !alias.scope !3024, !noalias !3023, !noundef !57
  %i.cg = icmp eq i8 %i.cf, 5
  br i1 %i.cg, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17hdd30f9209a2ae05bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.e)
          to label %bb.ac unwind label %bb.k, !noalias !2987

bb.ab:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i.i.i.i.i", %bb.j, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  invoke void @"_ZN4core3ptr341drop_in_place$LT$core..iter..adapters..zip..Zip$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$GT$$GT$17h9298736b4b0d78a3E"(ptr noundef nonnull align 1 %i.n)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17h22cb8b84a86b4c0fE.exit unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", !noalias !2987

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i": ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.n, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !2987
  br label %.body.i.i.i

bb.ac:                                            ; preds = %bb.aa, %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3023
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2989
  br label %bb.d

bb.ad:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !2987
  unreachable

bb.ae:                                            ; preds = %bb.c, %.noexc21.i.i.i, %bb.b
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr540drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$$LT$milli..prompt..fields..FieldValue$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h82e352dae73730b2E"(ptr nonnull align 1 %i.n, ptr nonnull readonly align 8 dereferenceable(56) @55) #81
          to label %.body.i.i.i unwind label %bb.af, !noalias !2961

bb.af:                                            ; preds = %bb.ae
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !2976
  unreachable

.body.i.i.i:                                      ; preds = %bb.ae, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", %.body.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ch, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i" ], [ %i.cj, %bb.ae ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$liquid_core..model..value..values..Value$RP$$GT$$GT$17h04c99547d46ee7f5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.l)
          to label %bb.ah unwind label %bb.ag, !noalias !2961, !inline_history !4

bb.ag:                                            ; preds = %bb.ai, %.body.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !2961
  unreachable

bb.ah:                                            ; preds = %bb.ai, %.body.i.i.i
  %.pn3.i.i.i = phi { ptr, i32 } [ %i.cm, %bb.ai ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %.pn3.i.i.i

bb.ai:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i.i"
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr540drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$$LT$milli..prompt..fields..FieldValue$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h82e352dae73730b2E"(ptr nonnull align 1 %i.n, ptr nonnull @55) #81
          to label %bb.ah unwind label %bb.ag, !noalias !2961

_ZN4core4iter6traits8iterator8Iterator7collect17h22cb8b84a86b4c0fE.exit: ; preds = %bb.ab
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.n, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !2987
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2961
  store i8 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h012661cdeb52566eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @114, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h91094992ae09c6ccE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @115, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17hb839d987d5b1c435E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @116, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h3908d59ed7e1f220E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h635a4995944a740bE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17he14b7c8c4109a4aaE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0af5c8321f1f8f2eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(784) %0, ptr noalias noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i.i.i.i = alloca [776 x i8], align 8 ; 3 uses
  %i.a = alloca [344 x i8], align 8               ; 6 uses
  %i.b = alloca [784 x i8], align 8               ; 6 uses
  %.sroa.6.i.i.i.i.i.i = alloca [776 x i8], align 8 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3052, !noalias !3053, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  %i.e = tail call { i32, i32 } @"_ZN86_$LT$roaring..bitmap..iter..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ba40be20df59d4fE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %1), !noalias !3057 ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.e, 0
  %i.g = trunc i32 %i.f to i1
  br i1 %i.g, label %bb.b, label %"_ZN4core3ptr95drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$meilisearch_types..tasks..Task$GT$$GT$17h735165a0499861c9E.exit"

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = extractvalue { i32, i32 } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  %.val.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3058, !noalias !3059, !nonnull !57, !align !61, !noundef !57
  %i.k = load ptr, ptr %.val.i.i.i.i.i, align 8, !noalias !3059, !nonnull !57, !noundef !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = atomicrmw add ptr %i.l, i32 1 monotonic, align 4, !noalias !3059 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i.i.i.i.i, i64 344
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !3060, !noalias !3061, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !3060, !noalias !3061, !nonnull !57, !align !61, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3062
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i.i, align 8, !noalias !3063, !noundef !57
  %i.p = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 8
  %.val4.i.i.i.i.i.i.i = load i32, ptr %i.p, align 8, !noalias !3063
  call fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue8get_task17h27ec9948e8e7a7e8E(ptr noalias noundef align 8 captures(address) dereferenceable(784) %i.b, i64 %.val.i.i.i.i.i.i.i, i32 %.val4.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val2.i.i.i.i.i.i, i32 noundef %i.j), !noalias !3063
  %i.q = load i64, ptr %i.b, align 8, !range !79, !noalias !3064, !noundef !57 ; 3 uses
  %i.r = icmp eq i64 %i.q, 21
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.r, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h8f8d6eb6c1ed847dE.exit.thread.i.i.i.i.i.i", label %bb.c

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h8f8d6eb6c1ed847dE.exit.thread.i.i.i.i.i.i": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.s, i64 344, i1 false), !noalias !3065
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3064
  store i64 136, ptr %i.a, align 8, !noalias !3064
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.q, 20
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h8f8d6eb6c1ed847dE.exit.thread4.i.i.i.i.i.i", label %bb.g

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h8f8d6eb6c1ed847dE.exit.thread4.i.i.i.i.i.i": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.a, i64 344, i1 false), !noalias !3065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3064
  br label %bb.d

bb.d:                                             ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h8f8d6eb6c1ed847dE.exit.thread4.i.i.i.i.i.i", %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h8f8d6eb6c1ed847dE.exit.thread.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3062
  %i.t = load i64, ptr %i.d, align 8, !range !80, !alias.scope !3066, !noalias !3067, !noundef !57
  %i.u = icmp eq i64 %i.t, 152
  br i1 %i.u, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hf91f3a8c9495fef9E.exit.thread5", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.d)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hf91f3a8c9495fef9E.exit.thread5" unwind label %bb.f, !noalias !3068

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.d, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i, i64 344, i1 false), !noalias !3069
  resume { ptr, i32 } %i.v

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hf91f3a8c9495fef9E.exit.thread5": ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.d, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i, i64 344, i1 false), !noalias !3053
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  br label %"_ZN4core3ptr95drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$meilisearch_types..tasks..Task$GT$$GT$17h735165a0499861c9E.exit"

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %i.s, i64 776, i1 false), !noalias !3065
  call void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.a), !noalias !3063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3062
  %.sroa.4.352..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i.i, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.4.352..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(432) %i.n, i64 432, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.4.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  store i64 %i.q, ptr %0, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.612.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.4.i.i.i.i.i.i.i, i64 776, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN4core3ptr95drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$meilisearch_types..tasks..Task$GT$$GT$17h735165a0499861c9E.exit"
  ret void

"_ZN4core3ptr95drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$meilisearch_types..tasks..Task$GT$$GT$17h735165a0499861c9E.exit": ; preds = %bb.a, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hf91f3a8c9495fef9E.exit.thread5"
  store i64 20, ptr %0, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h125a5345c24cc4bcE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !3119, !noalias !3120, !nonnull !57, !align !61, !noundef !57 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  %.sink.i.sroa.gep3.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.h, align 8, !alias.scope !3124, !noalias !3125 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3127
  store i8 18, ptr %i.h, align 8, !alias.scope !3128, !noalias !3125
  %.not.i42.i.i.i = icmp eq i8 %.promoted.i.i.i, 18
  br i1 %.not.i42.i.i.i, label %.loopexit12.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3129, !noalias !3130 ; 3 uses
  %.val2.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !3129, !noalias !3130 ; 2 uses
  %i.n = getelementptr i8, ptr %.val.i.i.i.i, i64 56
  %i.o = getelementptr i8, ptr %.val.i.i.i.i, i64 64
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hc91a49debcbc8414E.exit.thread.i.i.i", %.lr.ph.i.i.i
  %i.p = phi i8 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.q, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hc91a49debcbc8414E.exit.thread.i.i.i" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3131)
  store i8 %i.p, ptr %i.f, align 1, !noalias !3132
  %i.q = call noundef i8 @"_ZN17meilisearch_types5tasks1_84_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..tasks..Kind$GT$4next17hfeb1f1a1f4d93de9E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.f), !noalias !3132 ; 3 uses
  store i8 %i.q, ptr %i.h, align 8, !alias.scope !3124, !noalias !3125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3133
  store i8 %i.p, ptr %i.e, align 1, !noalias !3134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3135
  store i64 0, ptr %i.d, align 8, !noalias !3135
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3135
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3135
  store i32 -536870880, ptr %i.k, align 8, !noalias !3135
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !3135
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 2, !noalias !3135
  store ptr %i.d, ptr %i.c, align 8, !noalias !3135
  store ptr @2032, ptr %i.l, align 8, !noalias !3135
  %i.r = invoke noundef zeroext i1 @"_ZN69_$LT$meilisearch_types..tasks..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h354407912aded25eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %.loopexit.i.i.i, !noalias !3136

.loopexit.i.i.i:                                  ; preds = %bb.b
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i.i.i:                         ; preds = %bb.f
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3137)
  call void @llvm.experimental.noalias.scope.decl(metadata !3138)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !56, !alias.scope !3139, !noalias !3135, !noundef !57 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %common.resume.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !3139, !noalias !3135, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !3140
  br label %common.resume.i.i.i.i

bb.e:                                             ; preds = %bb.b
  br i1 %i.r, label %bb.f, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hba0809a45d19c1caE.exit.i.i.i.i.i", !prof !60

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2033, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2138, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2034) #80
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3136

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.s, %bb.h, %bb.g, %bb.d, %bb.c
end_hunk_2
begin_hunk_3_@"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hdf292244fa1c6f61E":bb.a
bb.t:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, i8 0, i64 15, i1 false), !noalias !7746
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull readonly align 1 %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i, i1 false), !noalias !7747
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..sroa.010.1.copyload.i.i.i.i.i.i.i.i.i = load i56, ptr %i.f, align 8, !noalias !7748
  %.sroa.010.1.insert.ext.i.i.i.i.i.i.i.i.i = zext i56 %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..sroa.010.1.copyload.i.i.i.i.i.i.i.i.i to i64
  %.sroa.010.1.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.010.1.insert.ext.i.i.i.i.i.i.i.i.i, 8
  %.sroa.010.1.insert.insert.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.010.1.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i
  %i.bu = inttoptr i64 %.sroa.010.1.insert.insert.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  %.7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..sroa.611.1.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..sroa_idx, align 1, !noalias !7748 ; 2 uses
  %i.bv = icmp eq i64 %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.08.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !7749
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.r
  %.sroa.010.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %bb.t ], [ %i.bu, %bb.u ], [ %i.br, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, %bb.r ] ; 3 uses
  %.sroa.9.0.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.t ], [ 1, %bb.u ], [ -1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -1, %bb.r ]
  %.sroa.611.0.i.i.i.i.i.i.i.i.i = phi i64 [ %.7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..sroa.611.1.copyload.i.i.i.i.i.i.i.i.i, %bb.t ], [ %.7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..7..sroa.611.1.copyload.i.i.i.i.i.i.i.i.i, %bb.u ], [ %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i, %bb.r ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7724
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !invariant.load !57, !noalias !7750, !nonnull !57
  invoke void %i.bx(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noundef nonnull align 1 %i.ay)
          to label %bb.x unwind label %bb.w, !noalias !7750

bb.w:                                             ; preds = %bb.v
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = icmp eq i64 %.sroa.611.0.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.bp, i1 true, i1 %i.bz
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.0.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.010.0.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.611.0.i.i.i.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !7751
  br label %.body.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !7752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7724
  call void @llvm.experimental.noalias.scope.decl(metadata !7753)
  call void @llvm.experimental.noalias.scope.decl(metadata !7754)
  %i.ca = load i64, ptr %i.j, align 8, !range !71, !alias.scope !7755, !noalias !7724, !noundef !57
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h83043c223cc96d89E.exit.i.i.i.i.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !7756)
  call void @llvm.experimental.noalias.scope.decl(metadata !7757)
  call void @llvm.experimental.noalias.scope.decl(metadata !7758)
  %i.cc = load i8, ptr %i.am, align 1, !alias.scope !7759, !noalias !7724, !noundef !57
  %i.cd = icmp eq i8 %i.cc, -1
  br i1 %i.cd, label %bb.z, label %"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h83043c223cc96d89E.exit.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %bb.y
  %.val1.i.i.i.i.i9.i.i.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !7759, !noalias !7724, !noundef !57 ; 2 uses
  %i.ce = icmp eq i64 %.val1.i.i.i.i.i9.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h83043c223cc96d89E.exit.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i": ; preds = %bb.z
  %.val.i.i.i.i.i11.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !7759, !noalias !7724, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i11.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i9.i.i.i.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !7760
  br label %"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h83043c223cc96d89E.exit.i.i.i.i.i.i.i.i"

"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h83043c223cc96d89E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i", %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7724
  store ptr %.sroa.010.0.i.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !7727
  store i64 %.sroa.611.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !7727
  store i8 %.sroa.9.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !7727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i.i.i.i.i.i, i64 56, i1 false), !noalias !7727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7761
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h955321eed8421a71E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.k, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.k, !noalias !7725

.noexc.i.i.i.i.i.i.i:                             ; preds = %"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h83043c223cc96d89E.exit.i.i.i.i.i.i.i.i"
  %i.cf = load i8, ptr %i.e, align 8, !range !63, !alias.scope !7762, !noalias !7761, !noundef !57
  %i.cg = icmp eq i8 %i.cf, 5
  br i1 %i.cg, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17hdd30f9209a2ae05bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.e)
          to label %bb.ac unwind label %bb.k, !noalias !7725

bb.ab:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i.i.i.i.i", %bb.j, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  invoke void @"_ZN4core3ptr341drop_in_place$LT$core..iter..adapters..zip..Zip$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$GT$$GT$17h9298736b4b0d78a3E"(ptr noundef nonnull align 1 %i.n)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17h84b85e2c4ae457c7E.exit unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", !noalias !7725

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i": ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.n, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !7725
  br label %.body.i.i.i

bb.ac:                                            ; preds = %bb.aa, %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7761
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7727
  br label %bb.d

bb.ad:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !7725
  unreachable

bb.ae:                                            ; preds = %bb.c, %.noexc21.i.i.i, %bb.b
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr568drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$$LT$milli..prompt..context..Context$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$C$alloc..vec..Vec$LT$bool$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9112fc7928304d49E"(ptr nonnull align 1 %i.n, ptr nonnull readonly align 8 dereferenceable(56) @55) #81
          to label %.body.i.i.i unwind label %bb.af, !noalias !7699

bb.af:                                            ; preds = %bb.ae
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !7714
  unreachable

.body.i.i.i:                                      ; preds = %bb.ae, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", %.body.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ch, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i" ], [ %i.cj, %bb.ae ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$liquid_core..model..value..values..Value$RP$$GT$$GT$17h04c99547d46ee7f5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.l)
          to label %bb.ah unwind label %bb.ag, !noalias !7699, !inline_history !4

bb.ag:                                            ; preds = %bb.ai, %.body.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !7699
  unreachable

bb.ah:                                            ; preds = %bb.ai, %.body.i.i.i
  %.pn3.i.i.i = phi { ptr, i32 } [ %i.cm, %bb.ai ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %.pn3.i.i.i

bb.ai:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i.i"
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr568drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$$LT$milli..prompt..context..Context$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..MergedDocument$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$C$alloc..vec..Vec$LT$bool$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9112fc7928304d49E"(ptr nonnull align 1 %i.n, ptr nonnull @55) #81
          to label %bb.ah unwind label %bb.ag, !noalias !7699

_ZN4core4iter6traits8iterator8Iterator7collect17h84b85e2c4ae457c7E.exit: ; preds = %bb.ab
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.n, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !7725
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7699
  store i8 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h20ee56148662fd1fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @197, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h6a4030b8788cca10E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @198, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h77ef9872e598fc29E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @199, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h97eeda229153ebd4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @200, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17he8f29b96fcd06668E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @201, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17hf5b2124e73f84ae3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @202, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h0d5e591170f48c17E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h2d259ab169ea08b6E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h375c5e644b182eaeE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h4136fb4a7a710381E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h62dc550c764611b4E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN107_$LT$milli..prompt..context..Context$LT$D$C$F$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17ha8ee3fbb980371a5E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h19ef04900de3f696E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !57, !align !61, !noundef !57
  %i.m = load ptr, ptr %1, align 8, !nonnull !57, !align !61, !noundef !57 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7798)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7799
  store ptr %2, ptr %i.h, align 8, !noalias !7799
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.m, ptr %i.n, align 8, !noalias !7799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7799
  store ptr %i.h, ptr %i.g, align 8, !noalias !7799
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !7799
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.m, ptr %i.p, align 8, !noalias !7799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7799
  store ptr %i.h, ptr %i.f, align 8, !noalias !7799
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.q, align 8, !noalias !7799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7799
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !7798, !noalias !7800, !noundef !57 ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  %..i = select i1 %.not.i, i64 400, i64 %i.s     ; 6 uses
  %i.t = call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %..i, i64 noundef 1), !noalias !7801
  br i1 %i.t, label %.split.i.i, label %.split15.i.i

.split15.i.i:                                     ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2180, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4642) #80, !noalias !7801
  unreachable

.split.i.i:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !7802, !nonnull !57, !noundef !57 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !7801, !nonnull !57, !noundef !57 ; 2 uses
  %i.y = load ptr, ptr %i.v, align 16, !noalias !7801, !nonnull !57, !noundef !57
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ugt i64 %..i, %i.ab
  br i1 %i.ac, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i": ; preds = %.split.i.i
  %i.ad = sub i64 0, %..i
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ae, ptr %i.w, align 16, !noalias !7801
  br label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"

bb.b:                                             ; preds = %.split.i.i
  %i.af = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %i.m, i64 noundef 1, i64 noundef %..i), !noalias !7801 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.af, null
  br i1 %.not16.i.i, label %bb.c, label %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"

bb.c:                                             ; preds = %bb.b
  call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 1, i64 noundef %..i) #80, !noalias !7801
  unreachable

"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i": ; preds = %bb.b, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"
  %.sroa.01.0.i.i = phi ptr [ %i.af, %bb.b ], [ %i.ae, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i" ]
  store ptr %.sroa.01.0.i.i, ptr %i.e, align 8, !noalias !7799
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7799
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %..i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !7799
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !noalias !7799
  %i.ah = invoke noundef align 8 ptr @_ZN6liquid8template8Template9render_to17h62367749ca4b2ff2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2604, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @199)
          to label %bb.d unwind label %.body.i, !noalias !7803 ; 3 uses

"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i": ; preds = %bb.o, %bb.n, %.body.thread.i
  resume { ptr, i32 } %eh.lpad-body53.i

.body.i:                                          ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.d:                                             ; preds = %"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h0647040742723387E.exit.i"
  %.not7.i = icmp eq ptr %i.ah, null
  br i1 %.not7.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7799
  store ptr %i.ah, ptr %i.c, align 8, !noalias !7804
  %i.ai = icmp slt i64 %.8.val, 0
  br i1 %i.ai, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.e
  %i.aj = icmp eq i64 %.8.val, 0
  br i1 %i.aj, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !7805
  %i.ak = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.8.val, i64 noundef range(i64 1, 9) 1) #79, !noalias !7805 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80
          to label %.noexc.i.i unwind label %bb.h, !noalias !7806

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2be108a508f13e30E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #81
          to label %.body.thread.i unwind label %bb.i, !noalias !7806

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !7806
  unreachable

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7799
  %i.ao = load ptr, ptr %i.e, align 8, !noalias !7799, !nonnull !57, !noundef !57
  %i.ap = load i64, ptr %i.ag, align 8, !noalias !7799, !noundef !57
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ao, i64 noundef %i.ap), !noalias !7803
  call void @llvm.experimental.noalias.scope.decl(metadata !7807)
  %i.aq = load i64, ptr %i.d, align 8, !range !71, !alias.scope !7807, !noalias !7799, !noundef !57
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %.noexc.i, label %bb.q, !prof !60

.noexc.i:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7808
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.as, i64 16, i1 false), !noalias !7799
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2605, i64 noundef 76, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2135, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2607) #80, !noalias !7803
  unreachable

bb.k:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.ak, %bb.f ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.0.val, i64 %.8.val, i1 false), !noalias !7809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7799
  call void @llvm.experimental.noalias.scope.decl(metadata !7810)
  call void @llvm.experimental.noalias.scope.decl(metadata !7811)
  call void @llvm.experimental.noalias.scope.decl(metadata !7812)
  call void @llvm.experimental.noalias.scope.decl(metadata !7813)
  %i.at = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7814, !noalias !7799, !noundef !57 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7814, !noalias !7799, !nonnull !57, !align !61, !noundef !57
  %i.aw = load ptr, ptr %i.e, align 8, !alias.scope !7814, !noalias !7799, !nonnull !57, !noundef !57
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  %.val.i.i.i1.i.i = load ptr, ptr %i.ax, align 8, !noalias !7815, !nonnull !57, !noundef !57
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !7815, !nonnull !57, !noundef !57 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aw
  br i1 %i.ba, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at
  store ptr %i.bb, ptr %i.ay, align 8, !noalias !7815
  br label %bb.p

.body.thread.i:                                   ; preds = %bb.h, %.body.i
  %eh.lpad-body53.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.am, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7816)
  call void @llvm.experimental.noalias.scope.decl(metadata !7817)
  call void @llvm.experimental.noalias.scope.decl(metadata !7818)
  call void @llvm.experimental.noalias.scope.decl(metadata !7819)
  %i.bc = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7820, !noalias !7799, !noundef !57 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i", label %bb.n

bb.n:                                             ; preds = %.body.thread.i
  %i.be = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7820, !noalias !7799, !nonnull !57, !align !61, !noundef !57
  %i.bf = load ptr, ptr %i.e, align 8, !alias.scope !7820, !noalias !7799, !nonnull !57, !noundef !57
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  %.val.i.i.i1.i10.i = load ptr, ptr %i.bg, align 8, !noalias !7821, !nonnull !57, !noundef !57
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i10.i, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !7821, !nonnull !57, !noundef !57 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.bf
  br i1 %i.bj, label %bb.o, label %"_ZN4core3ptr61drop_in_place$LT$bumpalo..collections..vec..Vec$LT$u8$GT$$GT$17hdae94967361a6493E.exit11.i"

end_hunk_3
begin_hunk_4_@"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hf2e677becee91892E":bb.a
  invoke void @"_ZN105_$LT$milli..prompt..fields..FieldValue$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hac1cac1bf2ecec80E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noundef nonnull align 1 %i.at)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i.i.i" unwind label %bb.q, !noalias !8313, !inline_history !8265

bb.p:                                             ; preds = %bb.w, %bb.q
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.au, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he7e54ded9ce4f6acE"(ptr nonnull align 1 %i.k, ptr nonnull readonly align 8 dereferenceable(56) @93) #81
          to label %.body.i.i.i.i unwind label %bb.x, !noalias !8315

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i.i.i": ; preds = %bb.o
  %.pr.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !8313
  %.not.i.i15.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i.i, 5
  br i1 %.not.i.i15.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i.i.i"
  %i.av = icmp samesign ult i64 %.sroa.6.0.copyload5, 164703072086692426
  call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.i, align 8, !range !56, !alias.scope !8316, !noalias !8317, !noundef !57
  %i.ax = icmp eq i64 %.sroa.6.0.copyload5, %i.aw
  br i1 %i.ax, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76ebbbdf65dbfc86E.exit.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i, %.noexc.i.i.thread.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8318)
  %.val.i27.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8318, !noalias !8313 ; 5 uses
  %.val1.i28.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8318, !noalias !8313, !nonnull !57, !align !61, !noundef !57 ; 5 uses
  %i.ay = load ptr, ptr %.val1.i28.i.i.i.i, align 8, !invariant.load !57, !noalias !8319 ; 2 uses
  %.not.i.i29.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i29.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !8320
  invoke void %i.ay(ptr noundef nonnull %.val.i27.i.i.i.i)
          to label %bb.t unwind label %bb.u, !noalias !8319

bb.t:                                             ; preds = %bb.s, %.loopexit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !56, !invariant.load !57, !noalias !8319 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !90, !invariant.load !57, !noalias !8319 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, -9223372036854775807
  call void @llvm.assume(i1 %i.bd), !noalias !8320
  %i.be = icmp eq i64 %i.ba, 0
  br i1 %i.be, label %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a5e513cf8f43407E.exit34.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i": ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27.i.i.i.i) ], !noalias !8320
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #79, !noalias !8319
  br label %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a5e513cf8f43407E.exit34.i.i.i.i"

bb.u:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !56, !invariant.load !57, !noalias !8319 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !90, !invariant.load !57, !noalias !8319 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, -9223372036854775807
  call void @llvm.assume(i1 %i.bk), !noalias !8320
  %i.bl = icmp eq i64 %i.bh, 0
  br i1 %i.bl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i": ; preds = %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27.i.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #79, !noalias !8319
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i30.i.i.i.i", %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !8313
  br label %.body.i.i.i.i

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8313
  call void @llvm.experimental.noalias.scope.decl(metadata !8321)
  %.val.i35.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8321, !noalias !8322, !nonnull !57, !align !64, !noundef !57
  %.val1.i36.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8321, !noalias !8322, !nonnull !57, !align !61, !noundef !57
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i36.i.i.i.i, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !57, !noalias !8323, !nonnull !57
  invoke void %i.bn(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %.val.i35.i.i.i.i)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i.i.i.i.i" unwind label %bb.w, !noalias !8298, !inline_history !8271

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i", %bb.r
  %i.bo = phi ptr [ %.pre.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i" ], [ %.sroa.5.0.copyload3, %bb.r ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %.sroa.6.0.copyload5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !8313
  %i.bq = add nuw nsw i64 %.sroa.6.0.copyload5, 1 ; 2 uses
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8316, !noalias !8317
  br label %bb.m

bb.w:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i.i.i.i.i", %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17hdd30f9209a2ae05bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #81
          to label %bb.p unwind label %bb.x, !noalias !8313

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i.i.i.i.i": ; preds = %bb.v
  %i.bs = load i64, ptr %i.e, align 8, !noalias !8313, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8313
  %i.bt = call i64 @llvm.uadd.sat.i64(i64 %i.bs, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.6.0.copyload5, i64 noundef %i.bt, i64 noundef 8, i64 noundef 56)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.w, !noalias !8317

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4af536abd2bce902E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8316, !noalias !8317
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w, %bb.p
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !8313
  unreachable

.body.i.i.i.i:                                    ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i", %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.body.i.i.i.i" ], [ %.pn.i.i.i.i.i.i, %bb.p ]
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h066d47c01294d70eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #81
          to label %common.resume.i.i.i.i unwind label %bb.y, !noalias !8298

"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a5e513cf8f43407E.exit34.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32.i.i.i.i", %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !8313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8310
  %.sroa.0.0.copyload1 = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8298
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h0d1ec6d2c938b701E.exit

bb.y:                                             ; preds = %.body.i.i.i.i, %bb.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body42.i.i.i.i

.body42.i.i.i.i:                                  ; preds = %.body51.i.i.i.i, %bb.y
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !8298
  unreachable

bb.z:                                             ; preds = %bb.i, %bb.d
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.ai, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8324)
  %.val.i45.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !8324, !noalias !8298 ; 5 uses
  %.val1.i46.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8324, !noalias !8298, !nonnull !57, !align !61, !noundef !57 ; 5 uses
  %i.bw = load ptr, ptr %.val1.i46.i.i.i.i, align 8, !invariant.load !57, !noalias !8325 ; 2 uses
  %.not.i.i47.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i47.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  invoke void %i.bw(ptr noundef nonnull %.val.i45.i.i.i.i)
          to label %bb.ab unwind label %bb.ac, !noalias !8325

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !56, !invariant.load !57, !noalias !8325 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !90, !invariant.load !57, !noalias !8325 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, -9223372036854775807
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.by, 0
  br i1 %i.cc, label %common.resume.sink.split.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i50.i.i.i.i": ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i45.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #79, !noalias !8325
  br label %common.resume.sink.split.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !56, !invariant.load !57, !noalias !8325 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i46.i.i.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !90, !invariant.load !57, !noalias !8325 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, -9223372036854775807
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp eq i64 %i.cf, 0
  br i1 %i.cj, label %.body51.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45.i.i.i.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) %i.ch) #79, !noalias !8325
  br label %.body51.i.i.i.i

.body51.i.i.i.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i48.i.i.i.i", %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.k, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !8298
  br label %.body42.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h0d1ec6d2c938b701E.exit: ; preds = %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he7e54ded9ce4f6acE.exit.i.i.i.i", %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a5e513cf8f43407E.exit34.i.i.i.i"
  %.sroa.6.0 = phi i64 [ 0, %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he7e54ded9ce4f6acE.exit.i.i.i.i" ], [ %.sroa.6.0.copyload5, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a5e513cf8f43407E.exit34.i.i.i.i" ]
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he7e54ded9ce4f6acE.exit.i.i.i.i" ], [ %.sroa.5.0.copyload3, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a5e513cf8f43407E.exit34.i.i.i.i" ]
  %.sroa.0.0 = phi i64 [ 0, %"_ZN4core3ptr498drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$..to_value..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he7e54ded9ce4f6acE.exit.i.i.i.i" ], [ %.sroa.0.0.copyload1, %"_ZN4core3ptr471drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$kstring..string_cow..KStringCowBase$GT$$C$$LT$milli..prompt..fields..BorrowedFields$LT$milli..prompt..document..ParseableDocument$LT$$RF$milli..update..new..document..DocumentFromDb$LT$milli..fields_ids_map..FieldsIdsMap$GT$$GT$$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$..values..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7a5e513cf8f43407E.exit34.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8297
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.ck, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h1d586955957c0eddE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @67, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h1fa49aef5d698375E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @67, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN109_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h984644eb096aefcaE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @67, i64 5 }
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17h84ced60e4959c4f3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load i8, ptr %1, align 8, !range !101, !noundef !57
  switch i8 %i.b, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.f
    i8 14, label %bb.i
    i8 15, label %bb.j
  ], !prof !67

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$12invalid_type17h3293eb1f1b408262E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !57, !noundef !57
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !57 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8349)
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h04af0a1555c822a7E.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !8350
  %i.k = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 1) #79, !noalias !8350 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h04af0a1555c822a7E.exit"

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80, !noalias !8351
  unreachable

"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h04af0a1555c822a7E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.d
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.f, i64 %i.h, i1 false), !noalias !8352
  store i64 %i.h, ptr %0, align 8, !alias.scope !8349, !noalias !8353
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !8349, !noalias !8353
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !8349, !noalias !8353
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !57, !align !64, !noundef !57
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !57 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8355)
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.f
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h5d55e217b36c00d4E.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !8356
  %i.s = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, 9) 1) #79, !noalias !8356 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17h5d55e217b36c00d4E.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.g ], [ 0, %bb.f ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80, !noalias !8357
  unreachable

_ZN10serde_core2de7Visitor18visit_borrowed_str17h5d55e217b36c00d4E.exit: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %bb.g
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.s, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.n, i64 %i.p, i1 false), !noalias !8358
  store i64 %i.p, ptr %0, align 8, !alias.scope !8359, !noalias !8360
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !8359, !noalias !8360
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !8359, !noalias !8360
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !57, !noundef !57
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !57
  tail call fastcc void @"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hb7c765274ee242d2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.v, i64 noundef %i.x)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !57, !align !64, !noundef !57
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !57
  tail call fastcc void @"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hb7c765274ee242d2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef %i.ab)
  br label %bb.k

bb.k:                                             ; preds = %"_ZN80_$LT$serde_core..de..impls..StringVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h04af0a1555c822a7E.exit", %_ZN10serde_core2de7Visitor18visit_borrowed_str17h5d55e217b36c00d4E.exit, %bb.i, %bb.j, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17hb935781c585990bfE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 10 uses
  %i.m = load i8, ptr %1, align 8, !range !101, !noundef !57
  switch i8 %i.m, label %bb.b [
    i8 20, label %bb.c
    i8 21, label %bb.v
  ], !prof !87

bb.b:                                             ; preds = %bb.a
  %i.n = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$12invalid_type17h3293eb1f1b408262E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @237)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %_ZN5serde7private2de7content21visit_content_map_ref17h67a20dee35b796d1E.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !57, !noundef !57 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noundef !57 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8457)
  %.idx.i = shl nuw nsw i64 %i.s, 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8459
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8460
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hac1ed497433634dbE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !8461
  %i.w = load i64, ptr %i.j, align 8, !range !83, !noalias !8460, !noundef !57 ; 7 uses
  %i.x = icmp eq i64 %i.w, -9223372036854775808
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !8462 ; 7 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8460
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !8462 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8460
  store i64 %i.w, ptr %i.k, align 8, !noalias !8459
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.z, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !8459
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.10.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !8459
  %i.aa = icmp eq i64 %i.s, 1
  br i1 %i.aa, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8463
  invoke fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hc932c59523984065E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %.noexc.i.i unwind label %bb.j, !noalias !8464

.noexc.i.i:                                       ; preds = %bb.g
  %i.ac = load i8, ptr %i.i, align 8, !range !74, !noalias !8463, !noundef !57
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.noexc.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.746.1.copyload.i.i = load i8, ptr %i.ae, align 1, !noalias !8465
  %.sroa.1047.1..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.1047.1.copyload.i.i = load i16, ptr %.sroa.1047.1..sroa_idx.i.i, align 2, !noalias !8465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8463
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  %i.af = tail call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17he2c6dc45493aac23E(i64 noundef 0, ptr noundef nonnull align 1 @1879, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132), !noalias !8459
end_hunk_4
begin_hunk_5_@"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h9837736bd0c8b584E":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !29861)
  call void @llvm.experimental.noalias.scope.decl(metadata !29862)
  call void @llvm.experimental.noalias.scope.decl(metadata !29863)
  call void @llvm.experimental.noalias.scope.decl(metadata !29864)
  %i.av = load i64, ptr %i.aa, align 8, !alias.scope !29865, !noalias !29852, !noundef !57 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17haeea9954c964c62dE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.ac, align 8, !alias.scope !29865, !noalias !29852, !nonnull !57, !align !61, !noundef !57
  %i.ay = load ptr, ptr %i.ab, align 8, !alias.scope !29865, !noalias !29852, !nonnull !57, !noundef !57
  %i.az = getelementptr i8, ptr %i.ax, i64 16
  %.val.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !noalias !29866, !nonnull !57, !noundef !57
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !29866, !nonnull !57, !noundef !57 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ay
  br i1 %i.bc, label %bb.q, label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17haeea9954c964c62dE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.q:                                             ; preds = %bb.p
  %i.bd = shl i64 %i.av, 5
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  store ptr %i.be, ptr %i.ba, align 8, !noalias !29866
  br label %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17haeea9954c964c62dE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17haeea9954c964c62dE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q, %bb.p, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !29867)
  call void @llvm.experimental.noalias.scope.decl(metadata !29868)
  call void @llvm.experimental.noalias.scope.decl(metadata !29869)
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !29870, !noalias !29852, !noundef !57 ; 3 uses
  %i.bf = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bf, label %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17haeea9954c964c62dE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !29870, !noalias !29852 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !29870, !noalias !29852, !nonnull !57, !noundef !57
  %i.bg = mul i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 24 ; 2 uses
  %i.bh = add i64 %i.bg, 24
  %i.bi = icmp ult i64 %i.bh, -15
  call void @llvm.assume(i1 %i.bi)
  %i.bj = and i64 %i.bg, -16                      ; 2 uses
  %i.bk = add i64 %i.bj, 32                       ; 2 uses
  %i.bl = add i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 17
  %i.bm = add i64 %i.bl, %i.bk                    ; 3 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp ult i64 %i.bm, 9223372036854775793
  call void @llvm.assume(i1 %i.bo)
  %i.bp = sub i64 -32, %i.bj
  %i.bq = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.br = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.br, align 8, !noalias !29871, !nonnull !57, !noundef !57
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !29871, !nonnull !57, !noundef !57 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bq
  br i1 %i.bu, label %bb.r, label %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i"

bb.r:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm
  store ptr %i.bv, ptr %i.bs, align 8, !noalias !29871
  br label %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i"

bb.s:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !29872)
  call void @llvm.experimental.noalias.scope.decl(metadata !29873)
  call void @llvm.experimental.noalias.scope.decl(metadata !29874)
  call void @llvm.experimental.noalias.scope.decl(metadata !29875)
  call void @llvm.experimental.noalias.scope.decl(metadata !29876)
  %i.bw = load i64, ptr %i.aa, align 8, !alias.scope !29877, !noalias !29852, !noundef !57 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.ac, align 8, !alias.scope !29877, !noalias !29852, !nonnull !57, !align !61, !noundef !57
  %i.bz = load ptr, ptr %i.ab, align 8, !alias.scope !29877, !noalias !29852, !nonnull !57, !noundef !57
  %i.ca = getelementptr i8, ptr %i.by, i64 16
  %.val.i.i.i1.i.i1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !noalias !29878, !nonnull !57, !noundef !57
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i.i1.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !29878, !nonnull !57, !noundef !57 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bz
  br i1 %i.cd, label %bb.u, label %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i"

bb.u:                                             ; preds = %bb.t
  %i.ce = shl i64 %i.bw, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ce
  store ptr %i.cf, ptr %i.cb, align 8, !noalias !29878
  br label %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h73f167c395562fbaE.exit8.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i6.i.i.i.i.i.i.i.i.i", %bb.m
  call void @"_ZN4core3ptr60drop_in_place$LT$milli..prompt..document..ParseableValue$GT$17hb4de1d2669af9eddE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d) #81, !noalias !29853
  br label %.body.i.i.i

"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr106drop_in_place$LT$bumpalo..collections..vec..Vec$LT$$LP$$RF$str$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17haeea9954c964c62dE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.n, %bb.n, %bb.n, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29852
  store ptr %.sroa.016.0.i.i.i.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !29842
  store i64 %.sroa.617.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !29842
  store i8 %.sroa.9.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !29842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i.i.i.i.i.i, i64 56, i1 false), !noalias !29842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29879
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h955321eed8421a71E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i)
          to label %.noexc5.i.i.i unwind label %.loopexit.i.i.i, !noalias !29835

.noexc5.i.i.i:                                    ; preds = %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i"
  %i.cg = load i8, ptr %i.a, align 8, !range !63, !alias.scope !29880, !noalias !29879, !noundef !57
  %i.ch = icmp eq i8 %i.cg, 5
  br i1 %i.ch, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d72c8b9db41e300E.exit.i.i.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %.noexc5.i.i.i
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17hdd30f9209a2ae05bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.a)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d72c8b9db41e300E.exit.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i, !noalias !29835

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d72c8b9db41e300E.exit.i.i.i.i.i.i.i": ; preds = %bb.v, %.noexc5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29879
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !29842
  invoke fastcc void @"_ZN104_$LT$core..iter..sources..from_fn..FromFn$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha313736e07790e78E"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.noexc7.i.i.i unwind label %.loopexit.i.i.i, !noalias !29835

.noexc7.i.i.i:                                    ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d72c8b9db41e300E.exit.i.i.i.i.i.i.i"
  %i.ci = load i64, ptr %i.g, align 8, !range !70, !noalias !29841, !noundef !57 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ci, 98
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h0a499f8ae7a657c4E.exit, label %bb.b

.loopexit.i.i.i:                                  ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8d72c8b9db41e300E.exit.i.i.i.i.i.i.i", %bb.v, %"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value28_$u7b$$u7b$closure$u7d$$u7d$17h2484943c8a81489aE.exit.i.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.h, %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i"
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h73f167c395562fbaE.exit8.i.i.i.i.i.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ah, %bb.d ], [ %i.as, %"_ZN4core3ptr85drop_in_place$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$17h73f167c395562fbaE.exit8.i.i.i.i.i.i.i.i.i" ], [ %i.aq, %bb.k ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$liquid_core..model..value..values..Value$RP$$GT$$GT$17h04c99547d46ee7f5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.i)
          to label %"_ZN4core3ptr172drop_in_place$LT$std..collections..hash..map..HashMap$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$liquid_core..model..value..values..Value$GT$$GT$17h7656edb0e853d439E.exit.i.i.i" unwind label %bb.w, !noalias !29835, !inline_history !4

bb.w:                                             ; preds = %.body.i.i.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !29835
  unreachable

"_ZN4core3ptr172drop_in_place$LT$std..collections..hash..map..HashMap$LT$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$C$liquid_core..model..value..values..Value$GT$$GT$17h7656edb0e853d439E.exit.i.i.i": ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h0a499f8ae7a657c4E.exit: ; preds = %.noexc7.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !29839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !29839
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !29835
  store i8 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h00219ee7761a551eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @370, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h93a4c917a1cf2bb7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @371, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17hcea169529c90e94bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @372, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9is_object17h13b9f9627514acb1E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9is_object17h284c0ab082c21198E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9is_object17h99e65a2cf0ed1d19E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17h020ead1b1029b9f1E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17ha576804c94c7431fE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN114_$LT$milli..prompt..document..ParseableDocument$LT$D$GT$$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17hb4205450fa548260E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i8 0, 74) i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h094b5de7c2f2099cE"(i32 %.8.val) unnamed_addr #14 {
switch.lookup:
  %i.a = and i32 %.8.val, 511
  %i.b = add nuw nsw i32 %i.a, -363521075
  %i.c = ashr i32 %.8.val, 10
  %i.d = add nsw i32 %i.c, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.d, -100
  %i.e = add nsw i32 %i.b, %.neg.i
  %i.f = sdiv i32 %i.d, 400
  %i.g = add nsw i32 %i.e, %i.f
  %i.h = sext i32 %i.d to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = add nsw i32 %i.g, %i.k
  %i.m = srem i32 %i.l, 7
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [2 x i8], ptr @"switch.table._ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h094b5de7c2f2099cE", i64 %i.n
  %switch.gep = getelementptr i8, ptr %i.o, i64 12
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.p = trunc i32 %.8.val to i16
  %i.q = and i16 %i.p, 511
  %i.r = add nuw nsw i16 %i.q, 6
  %i.s = add nsw i16 %i.r, %switch.load
  %i.t = udiv i16 %i.s, 7
  %i.u = trunc nuw nsw i16 %i.t to i8
  ret i8 %i.u
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i8 0, 74) i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h797fbeeb879d1c7fE"(i32 %.8.val) unnamed_addr #14 {
switch.lookup:
  %i.a = and i32 %.8.val, 511
  %i.b = add nuw nsw i32 %i.a, -363521075
  %i.c = ashr i32 %.8.val, 10
  %i.d = add nsw i32 %i.c, 999999                 ; 3 uses
  %.neg.i.i = sdiv i32 %i.d, -100
  %i.e = add nsw i32 %i.b, %.neg.i.i
  %i.f = sdiv i32 %i.d, 400
  %i.g = add nsw i32 %i.e, %i.f
  %i.h = sext i32 %i.d to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = add nsw i32 %i.g, %i.k
  %i.m = srem i32 %i.l, 7
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [2 x i8], ptr @"switch.table._ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h797fbeeb879d1c7fE", i64 %i.n
  %switch.gep = getelementptr i8, ptr %i.o, i64 12
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.p = trunc i32 %.8.val to i16
  %i.q = and i16 %i.p, 511
  %i.r = add nuw nsw i16 %i.q, 6
  %i.s = add nsw i16 %i.r, %switch.load
  %i.t = udiv i16 %i.s, 7
  %i.u = trunc nuw nsw i16 %i.t to i8
  ret i8 %i.u
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i64 -66245516071199, 66121194247199) i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$22unix_timestamp_seconds17h8568d98cf1aa9827E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 2 ; 2 uses
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.61.0.copyload = load i32, ptr %.sroa.61.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.7.0.copyload = load i24, ptr %.sroa.7.0..sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.3.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.61.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.61.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.3.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.7.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.7.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.7.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  ret i64 %i.ad
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i128 -66245516071199000000000, 66121194247199000000000) i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$26unix_timestamp_nanoseconds17h69dbc1d2695dba51E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 2 ; 2 uses
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.71.0.copyload = load i32, ptr %.sroa.71.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.8.0.copyload = load i24, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.6.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.4.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.6.0.copyload to i64
  %i.f = ashr i32 %.sroa.71.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.71.0.copyload, 511
  %i.n = add nsw i32 %.neg.i.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.4.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i.i = trunc i24 %.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i.i = lshr i24 %.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i.i = lshr i24 %.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i.i
  %neg11.i.i = sext i8 %narrow.i.i to i64
  %narrow14.i.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i.i
  %.neg7.i.i = sext i8 %narrow14.i.i to i64
  %narrow15.i.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i.i
  %neg.i.i = sext i8 %narrow15.i.i to i64
  %reass.add.i.i = add nsw i64 %neg.i.i, %i.d
  %reass.mul.i.i = mul nsw i64 %reass.add.i.i, 60
  %reass.add12.i.i = add nsw i64 %neg11.i.i, %i.e
  %reass.mul13.i.i = mul nsw i64 %reass.add12.i.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  ret i128 %i.ai
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i128 -66245516071199000000, 66121194247199000000) i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_microseconds17h2028fbd112cadd72E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000
  ret i128 %i.aj
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i64 -66245516071199000, 66121194247199000) i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_milliseconds17h4fac17dc882169cdE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 1 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.7.0.copyload = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.sroa.8.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 4 ; 3 uses
  %i.a = icmp ult i8 %.sroa.5.sroa.5.0.copyload, 24
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i8 %.sroa.5.sroa.4.0.copyload, 60
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i8 %.sroa.5.sroa.0.0.copyload, 60
  %i.d = zext nneg i8 %.sroa.5.sroa.4.0.copyload to i64
  %i.e = zext nneg i8 %.sroa.5.sroa.5.0.copyload to i64
  %i.f = ashr i32 %.sroa.5.sroa.7.0.copyload, 10
  %i.g = add nsw i32 %i.f, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 1461
  %i.j = sdiv i64 %i.i, 4
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = sdiv i32 %i.g, 400
  %i.m = and i32 %.sroa.5.sroa.7.0.copyload, 511
  %i.n = add nsw i32 %.neg.i, %i.m
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  tail call void @llvm.assume(i1 %i.c)
  %i.s = zext nneg i8 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.5.sroa.8.0.copyload to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i = lshr i24 %.sroa.5.sroa.8.0.copyload, 16
  %.sroa.01.2.extract.trunc.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i to i8 ; 3 uses
  %i.t = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i, -26
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc.i.i, 26
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp slt i8 %.sroa.01.1.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i, -60
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp slt i8 %.sroa.01.0.extract.trunc.i.i, 60
  tail call void @llvm.assume(i1 %i.y)
  %narrow.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i
  %neg11.i = sext i8 %narrow.i to i64
  %narrow14.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i
  %.neg7.i = sext i8 %narrow14.i to i64
  %narrow15.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i
  %neg.i = sext i8 %narrow15.i to i64
  %reass.add.i = add nsw i64 %neg.i, %i.d
  %reass.mul.i = mul nsw i64 %reass.add.i, 60
  %reass.add12.i = add nsw i64 %neg11.i, %i.e
  %reass.mul13.i = mul nsw i64 %reass.add12.i, 3600
  %i.z = or disjoint i64 %i.s, -31619087683200
  %i.aa = add nsw i64 %i.z, %.neg7.i
  %i.ab = add nsw i64 %i.aa, %reass.mul.i
  %i.ac = add nsw i64 %i.ab, %reass.mul13.i
  %i.ad = add nsw i64 %i.ac, %i.r
  %i.ae = icmp ult i32 %.sroa.0.0.copyload, 1000000000
  %i.af = sext i64 %i.ad to i128
  %i.ag = mul nsw i128 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = zext nneg i32 %.sroa.0.0.copyload to i128
  %i.ai = add nsw i128 %i.ag, %i.ah
  %i.aj = sdiv i128 %i.ai, 1000000
  %i.ak = trunc nsw i128 %i.aj to i64
  ret i64 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17h2ca5501a3c05760cE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @373, i64 27 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17h18defd37a25c90faE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
"_ZN4core5tuple69_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2lt17he23ea79208eb1b10E.exit":
  %.val7.i = load i32, ptr %1, align 4, !alias.scope !29884, !noalias !29885, !noundef !57 ; 2 uses
  %i.a = icmp eq i32 %.val7.i, 1
  %i.b = icmp eq i32 %.val7.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 30
  %.sroa.0.1.in.i = select i1 %i.a, i1 %i.d, i1 %i.b
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hacdca22dc7cc7323E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 24 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [96 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 13 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [128 x i8], align 8               ; 19 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [72 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [72 x i8], align 8               ; 16 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [72 x i8], align 8               ; 12 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [72 x i8], align 8               ; 12 uses
  %i.af = alloca [72 x i8], align 8               ; 12 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 19 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [72 x i8], align 8               ; 12 uses
  %i.aw = alloca [72 x i8], align 8               ; 12 uses
  %i.ax = alloca [16 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 11 uses
  %i.be = alloca [16 x i8], align 8               ; 10 uses
  %i.bf = alloca [56 x i8], align 8               ; 10 uses
  %i.bg = alloca [56 x i8], align 8               ; 10 uses
  %.sroa.14.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [56 x i8], align 8               ; 11 uses
  %i.bj = alloca [64 x i8], align 8               ; 22 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.10.i.sroa.5.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.bl = alloca [16 x i8], align 8               ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 7 uses
  %i.bn = alloca [48 x i8], align 8               ; 7 uses
  %i.bo = alloca [24 x i8], align 8               ; 13 uses
  %i.bp = alloca [48 x i8], align 8               ; 7 uses
  %i.bq = alloca [56 x i8], align 8               ; 18 uses
  %i.br = alloca [344 x i8], align 8              ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [344 x i8], align 8              ; 8 uses
  %i.bu = alloca [88 x i8], align 8               ; 17 uses
  %.sroa.7.sroa.8.sroa.9.sroa.9 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.20.sroa.7 = alloca [16 x i8], align 8    ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30798)
  %i.bw = load ptr, ptr %1, align 8, !alias.scope !30796, !noalias !30799, !nonnull !57, !noundef !57
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !30800, !nonnull !57, !noundef !57
  %i.bz = load i64, ptr %2, align 8, !range !71, !alias.scope !30801, !noalias !30802, !noundef !57
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cb = trunc nuw i64 %i.bz to i1
  %i.cc = load ptr, ptr %i.ca, align 8, !alias.scope !30801, !noalias !30802, !nonnull !57, !align !61
  %.sroa.05.0.i.i = select i1 %i.cb, ptr %i.ca, ptr %i.cc ; 4 uses
  %i.cd = load ptr, ptr %.sroa.05.0.i.i, align 8, !noalias !30802, !nonnull !57, !noundef !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !30800, !nonnull !57, !noundef !57
  %i.cg = icmp eq ptr %i.by, %i.cf
  %.sink1421.sroa.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink1421.sroa.gep2196 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink1421.sroa.gep2198 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sink1421.sroa.gep2199 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink1421.sroa.gep2201 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sink1421.sroa.gep2202 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink1421.sroa.gep2204 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sink1421.sroa.gep2205 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br i1 %i.cg, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !30800
  store ptr @2223, ptr %i.bp, align 8, !noalias !30800
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 1, ptr %i.ch, align 8, !noalias !30800
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr null, ptr %i.ci, align 8, !noalias !30800
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cj, align 8, !noalias !30800
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 0, ptr %i.ck, align 8, !noalias !30800
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2224) #80, !noalias !30800
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !30800
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !30801, !noalias !30802, !noundef !57 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  %i.cn = tail call fastcc i64 @"_ZN4heed4envs3env12Env$LT$T$GT$12raw_open_dbi17h22b14340deb78d57E"(ptr noundef nonnull %i.cm, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @802, i64 21, i32 noundef 0), !noalias !30803 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i = trunc i64 %i.cn to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %i.cn, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i to i32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.sroa.020.0.extract.trunc.i.i.i, 22
  br i1 %.not.i.i.i, label %bb.h, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i": ; preds = %bb.d
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bo, i32 noundef %.sroa.020.0.extract.trunc.i.i.i, i32 %.sroa.4.0.extract.trunc.i.i.i), !noalias !30800
  %.pr.i.i = load i32, ptr %i.bo, align 8, !noalias !30800
  switch i32 %.pr.i.i, label %bb.g [
    i32 5, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i"
    i32 1, label %bb.f
  ]

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i": ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !noalias !30800
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2201) #80, !noalias !30800
  unreachable

bb.f:                                             ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !range !143, !noalias !30800, !noundef !57
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.ec, label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %.sroa.758.8.copyload.i = load i64, ptr %i.bo, align 8, !noalias !30804
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.11.8.copyload.i = load i64, ptr %.sroa.11.8..sroa_idx.i, align 8, !noalias !30804
  %.sroa.14.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.14.8.copyload.i = load i32, ptr %.sroa.14.8..sroa_idx.i, align 8, !noalias !30804
  %.sroa.17.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %.sroa.17.8.copyload.i = load i32, ptr %.sroa.17.8..sroa_idx.i, align 4, !noalias !30804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !30800
  br label %bb.ef

bb.h:                                             ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i", %bb.d
  %i.cr = phi i32 [ %.pre.i.i, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i" ], [ %.sroa.4.0.extract.trunc.i.i.i, %bb.d ]
  %i.cs = load ptr, ptr %i.bx, align 8, !noalias !30800, !nonnull !57, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !30800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !30805
  call void @llvm.experimental.noalias.scope.decl(metadata !30806)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.sroa.5.i.i)
  %i.ct = load ptr, ptr %.sroa.05.0.i.i, align 8, !noalias !30807, !nonnull !57, !noundef !57
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !30808, !nonnull !57, !noundef !57
  %i.cw = icmp eq ptr %i.cs, %i.cv
  br i1 %i.cw, label %bb.j, label %bb.i, !prof !58

end_hunk_5
begin_hunk_6_@"_ZN115_$LT$index_scheduler..upgrade..v1_30..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hacdca22dc7cc7323E":bb.a

bb.jp:                                            ; preds = %bb.jo
  %i.aoo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !31345
  unreachable

"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesEncode$GT$12bytes_encode17haf959bc4097a4a3fE.exit.thread.i.i": ; preds = %bb.jm
  store ptr %.sroa.6.015.i.i.i, ptr %i.aol, align 8, !noalias !31345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31345
  br label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i"

"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i": ; preds = %"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesEncode$GT$12bytes_encode17haf959bc4097a4a3fE.exit.thread.i.i", %_ZN10serde_json3ser6to_vec17h196f1e100b59659aE.exit.i.i.i
  %.sroa.8.022.i.i = phi ptr [ %i.aol, %"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesEncode$GT$12bytes_encode17haf959bc4097a4a3fE.exit.thread.i.i" ], [ %.sroa.6.0.copyload.i.i.i, %_ZN10serde_json3ser6to_vec17h196f1e100b59659aE.exit.i.i.i ]
  %.sroa.12.021.i.i = phi i64 [ ptrtoint (ptr @4882 to i64), %"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesEncode$GT$12bytes_encode17haf959bc4097a4a3fE.exit.thread.i.i" ], [ %.sroa.9.0.copyload.i.i.i, %_ZN10serde_json3ser6to_vec17h196f1e100b59659aE.exit.i.i.i ]
  %i.aop = inttoptr i64 %.sroa.12.021.i.i to ptr
  br label %bb.kb

bb.jq:                                            ; preds = %_ZN10serde_json3ser6to_vec17h196f1e100b59659aE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !31053
  store i64 7, ptr %i.k, align 8, !noalias !31053
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @763, ptr %i.aoq, align 8, !noalias !31053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !31053
  %i.aor = icmp sgt i64 %.sroa.9.0.copyload.i.i.i, -1
  br i1 %i.aor, label %bb.js, label %bb.jr, !prof !144

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31053
  store ptr @2127, ptr %i.b, align 8, !noalias !31053
  %i.aos = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 279, ptr %i.aos, align 8, !noalias !31053
  store ptr %i.b, ptr %i.c, align 8, !noalias !31053
  %i.aot = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.aot, align 8, !noalias !31053
  %i.aou = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.aou, align 8, !noalias !31053
  %i.aov = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aov, align 8, !noalias !31053
  %i.aow = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.aow, align 8, !noalias !31053
  call void @_ZN4core9panicking18panic_nounwind_fmt17h622822847ebd61beE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, i1 noundef zeroext false, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #83, !noalias !31053
  unreachable

bb.js:                                            ; preds = %bb.jq
  store i64 %.sroa.9.0.copyload.i.i.i, ptr %i.j, align 8, !noalias !31053
  %i.aox = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.6.0.copyload.i.i.i, ptr %i.aox, align 8, !noalias !31053
  %i.aoy = call noundef i32 @mdb_put(ptr noundef nonnull %i.cm, i32 noundef %i.zd, ptr noundef nonnull %i.k, ptr noundef nonnull %i.j, i32 noundef 0) #79, !noalias !31053
  %i.aoz = invoke { i32, i32 } @_ZN4heed3mdb10lmdb_error10mdb_result17h91f495da5828afd4E(i32 noundef %i.aoy)
          to label %bb.jv unwind label %bb.jt, !noalias !31053 ; 2 uses

bb.jt:                                            ; preds = %bb.jw, %bb.js
  %i.apa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %cond.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %cond.i.i, label %.body126, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !31347
  br label %.body126

bb.jv:                                            ; preds = %bb.js
  %i.apb = extractvalue { i32, i32 } %i.aoz, 0    ; 2 uses
  %.not137.i.i = icmp eq i32 %i.apb, 22
  br i1 %.not137.i.i, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.apc = extractvalue { i32, i32 } %i.aoz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !31053
  invoke void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, i32 noundef %i.apb, i32 %i.apc)
          to label %bb.jz unwind label %bb.jt, !noalias !31053

bb.jx:                                            ; preds = %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !31053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !31053
  %cond88.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %cond88.i.i, label %bb.ke, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !31348
  br label %bb.ke

bb.jz:                                            ; preds = %bb.jw
  %.sroa.039.0.copyload40.i = load i32, ptr %i.i, align 8, !noalias !31349 ; 2 uses
  %.sroa.8.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.8.0.copyload42.i = load i32, ptr %.sroa.8.0..sroa_idx41.i, align 4, !noalias !31349
  %.sroa.843.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.843.0.copyload45.i = load ptr, ptr %.sroa.843.0..sroa_idx44.i, align 8, !noalias !31349
  %.sroa.9.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.9.0.copyload47.i = load ptr, ptr %.sroa.9.0..sroa_idx46.i, align 8, !noalias !31349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !31053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !31053
  %cond89.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %cond89.i.i, label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i", label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !31350
  br label %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i"

"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i": ; preds = %bb.ka, %bb.jz
  %.not35.i = icmp eq i32 %.sroa.039.0.copyload40.i, 5
  br i1 %.not35.i, label %bb.ke, label %bb.kb

bb.kb:                                            ; preds = %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i", %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i"
  %.sroa.039.091.i = phi i32 [ 2, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i" ], [ %.sroa.039.0.copyload40.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i" ]
  %.sroa.8.090.i = phi i32 [ undef, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i" ], [ %.sroa.8.0.copyload42.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i" ]
  %.sroa.843.089.i = phi ptr [ %.sroa.8.022.i.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i" ], [ %.sroa.843.0.copyload45.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i" ]
  %.sroa.9.088.i = phi ptr [ %i.aop, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.thread82.i" ], [ %.sroa.9.0.copyload47.i, %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i" ]
  %i.apd = ptrtoint ptr %.sroa.843.089.i to i64
  br label %bb.kd

bb.kc:                                            ; preds = %.invoke, %.noexc.i.i119, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i104", %bb.gw, %bb.kd
  %i.ape = landingpad { ptr, i32 }
          cleanup
  br label %.body126

.body126:                                         ; preds = %.loopexit.i.i.i.i112, %bb.jj, %bb.jo, %bb.jt, %bb.ju, %bb.kc
  %eh.lpad-body127 = phi { ptr, i32 } [ %i.ape, %bb.kc ], [ %i.aon, %bb.jo ], [ %i.apa, %bb.ju ], [ %lpad.phi.i.i.i.i, %.loopexit.i.i.i.i112 ], [ %lpad.phi.i.i.i.i, %bb.jj ], [ %i.apa, %bb.jt ]
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$index_scheduler..upgrade..v1_30..Network$GT$17h9b45ddbfdd712122E"(ptr noalias noundef align 8 dereferenceable(88) %i.bu) #81
          to label %common.resume unwind label %bb.kh

bb.kd:                                            ; preds = %bb.gx, %bb.kb
  %.sroa.14192.0 = phi ptr [ %.sroa.9.088.i, %bb.kb ], [ %i.zc, %bb.gx ]
  %.sroa.12.0 = phi i64 [ %i.apd, %bb.kb ], [ %.sroa.738.0.copyload.i, %bb.gx ]
  %.sroa.10191.0 = phi i32 [ %.sroa.8.090.i, %bb.kb ], [ %.pre.i.i107, %bb.gx ]
  %.sroa.8190.0 = phi i32 [ %.sroa.039.091.i, %bb.kb ], [ %.pr.i.i105, %bb.gx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  store i64 127, ptr %i.br, align 8
  %.sroa.2.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %.sroa.8190.0, ptr %.sroa.2.0..sroa_idx212, align 8
  %.sroa.3213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 %.sroa.10191.0, ptr %.sroa.3213.0..sroa_idx, align 4
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.4214.0..sroa_idx, align 8
  %.sroa.5215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %.sroa.14192.0, ptr %.sroa.5215.0..sroa_idx, align 8
  %i.apf = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.br)
          to label %bb.kg unwind label %bb.kc

bb.ke:                                            ; preds = %"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h3f23241c74e91d84E.exit.i", %bb.jy, %bb.jx
  call fastcc void @"_ZN4core3ptr61drop_in_place$LT$index_scheduler..upgrade..v1_30..Network$GT$17h9b45ddbfdd712122E"(ptr noalias noundef align 8 dereferenceable(88) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.kf

bb.kf:                                            ; preds = %bb.eg, %bb.kg, %bb.ke, %bb.ef
  %.sroa.0.0 = phi ptr [ %i.mz, %bb.ef ], [ %i.apf, %bb.kg ], [ null, %bb.ke ], [ null, %bb.eg ]
  ret ptr %.sroa.0.0

bb.kg:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call fastcc void @"_ZN4core3ptr61drop_in_place$LT$index_scheduler..upgrade..v1_30..Network$GT$17h9b45ddbfdd712122E"(ptr noalias noundef align 8 dereferenceable(88) %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.kf

bb.kh:                                            ; preds = %bb.kj, %.body126
  %i.apg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

.thread276:                                       ; preds = %bb.gt, %bb.gs, %.critedge.i.i.i.i, %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E.exit.i.i.i.i.i", %.body.i.i.i.i.i.i, %.thread284
  %eh.lpad-body282 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread284 ], [ %.pn.ph.i.i.i.i.i.i, %"_ZN4core3ptr92drop_in_place$LT$$LP$alloc..string..String$C$index_scheduler..upgrade..v1_30..Remote$RP$$GT$17h4b4ed9695d491ef6E.exit.i.i.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %.pn.i.i.i.i91, %.critedge.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.gt ], [ %i.ys, %bb.gs ] ; 3 uses
  switch i64 %.sroa.0145.0, label %bb.ki [
    i64 -9223372036854775808, label %.thread293
    i64 0, label %.thread293
  ]

bb.ki:                                            ; preds = %.thread276
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8147.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8147.0, i64 noundef %.sroa.0145.0, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !31351
  br label %.thread293

bb.kj:                                            ; preds = %.thread
  %i.aph = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$index_scheduler..upgrade..v1_29..Remote$GT$$GT$17h0006b0039bc1aa83E"(ptr noalias noundef align 8 dereferenceable(24) %i.bv) #81
          to label %.thread293 unwind label %bb.kh

.thread293:                                       ; preds = %.thread276, %.thread276, %bb.ki, %bb.kj
  %.pn.pn264298 = phi { ptr, i32 } [ %i.aph, %bb.kj ], [ %eh.lpad-body282, %.thread276 ], [ %eh.lpad-body282, %.thread276 ], [ %eh.lpad-body282, %bb.ki ] ; 3 uses
  switch i64 %.sroa.8134.0.ph, label %bb.kk [
    i64 -9223372036854775808, label %common.resume
    i64 0, label %common.resume
  ]

bb.kk:                                            ; preds = %.thread293
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.ph) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0.ph, i64 noundef %.sroa.8134.0.ph, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !31352
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN115_$LT$index_scheduler..upgrade..v1_37..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17hf1746ae02b84fba2E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @373, i64 27 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN115_$LT$index_scheduler..upgrade..v1_37..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17h8c0716bc9d485611E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
"_ZN4core5tuple69_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2lt17he23ea79208eb1b10E.exit":
  %.val7.i = load i32, ptr %1, align 4, !alias.scope !31356, !noalias !31357, !noundef !57 ; 2 uses
  %i.a = icmp eq i32 %.val7.i, 1
  %i.b = icmp eq i32 %.val7.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 37
  %.sroa.0.1.in.i = select i1 %i.a, i1 %i.d, i1 %i.b
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @"_ZN115_$LT$index_scheduler..upgrade..v1_37..MigrateNetwork$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17h72b9cc5dd6638de6E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [96 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 13 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [128 x i8], align 8               ; 19 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [72 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [72 x i8], align 8               ; 16 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [48 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [80 x i8], align 8               ; 14 uses
  %i.ah = alloca [8 x i8], align 8                ; 3 uses
  %i.ai = alloca [48 x i8], align 8               ; 8 uses
  %i.aj = alloca [72 x i8], align 8               ; 6 uses
  %i.ak = alloca [48 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 10 uses
  %i.am = alloca [72 x i8], align 8               ; 14 uses
  %i.an = alloca [24 x i8], align 8               ; 10 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [72 x i8], align 8               ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 11 uses
  %i.bb = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.097.i.i.i.i.i.i.i = alloca [7 x i8], align 8 ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.7.sroa.0.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 25 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [72 x i8], align 8               ; 12 uses
  %i.bj = alloca [24 x i8], align 8               ; 9 uses
  %i.bk = alloca [16 x i8], align 8               ; 7 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 7 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [16 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 7 uses
  %i.bq = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.046.i.i.i.i.i.i.i = alloca [6 x i8], align 8 ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 11 uses
  %i.bs = alloca [16 x i8], align 8               ; 12 uses
  %i.bt = alloca [88 x i8], align 8               ; 16 uses
  %i.bu = alloca [96 x i8], align 8               ; 11 uses
  %i.bv = alloca [88 x i8], align 8               ; 14 uses
  %i.bw = alloca [96 x i8], align 8               ; 11 uses
  %.sroa.19.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.18.i.i.i.i.sroa.7.i.i = alloca [56 x i8], align 8 ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.11.i.i.sroa.9.i.i = alloca [56 x i8], align 8 ; 7 uses
  %i.by = alloca [88 x i8], align 8               ; 10 uses
  %i.bz = alloca [64 x i8], align 8               ; 22 uses
  %i.ca = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.10.i.sroa.6.i.i = alloca [56 x i8], align 8 ; 6 uses
  %i.cb = alloca [16 x i8], align 8               ; 6 uses
  %i.cc = alloca [16 x i8], align 8               ; 6 uses
  %i.cd = alloca [48 x i8], align 8               ; 7 uses
  %i.ce = alloca [24 x i8], align 8               ; 13 uses
  %i.cf = alloca [48 x i8], align 8               ; 7 uses
  %i.cg = alloca [88 x i8], align 8               ; 17 uses
  %i.ch = alloca [344 x i8], align 8              ; 8 uses
  %i.ci = alloca [344 x i8], align 8              ; 9 uses
  %i.cj = alloca [112 x i8], align 8              ; 20 uses
  %i.ck = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.7.sroa.9 = alloca [24 x i8], align 8     ; 4 uses
  %.sroa.7.sroa.10 = alloca [16 x i8], align 8    ; 4 uses
  %.sroa.20.sroa.9 = alloca [24 x i8], align 8    ; 6 uses
  %.sroa.20.sroa.11 = alloca [16 x i8], align 8   ; 6 uses
  %i.cl = alloca [16 x i8], align 1               ; 2 uses
  %i.cm = alloca [24 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32607)
  %i.cn = load ptr, ptr %1, align 8, !alias.scope !32605, !noalias !32608, !nonnull !57, !noundef !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !32609, !nonnull !57, !noundef !57
  %i.cq = load i64, ptr %2, align 8, !range !71, !alias.scope !32610, !noalias !32611, !noundef !57
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cs = trunc nuw i64 %i.cq to i1
  %i.ct = load ptr, ptr %i.cr, align 8, !alias.scope !32610, !noalias !32611, !nonnull !57, !align !61
  %.sroa.05.0.i.i = select i1 %i.cs, ptr %i.cr, ptr %i.ct ; 4 uses
  %i.cu = load ptr, ptr %.sroa.05.0.i.i, align 8, !noalias !32611, !nonnull !57, !noundef !57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !32609, !nonnull !57, !noundef !57
  %i.cx = icmp eq ptr %i.cp, %i.cw
  %.sink2419.sroa.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sink2419.sroa.gep3808 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink2419.sroa.gep3810 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sink2419.sroa.gep3811 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink2419.sroa.gep3813 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sink2419.sroa.gep3814 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink2419.sroa.gep3816 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sink2419.sroa.gep3817 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br i1 %i.cx, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !32609
  store ptr @2223, ptr %i.cf, align 8, !noalias !32609
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 1, ptr %i.cy, align 8, !noalias !32609
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store ptr null, ptr %i.cz, align 8, !noalias !32609
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.da, align 8, !noalias !32609
  %i.db = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store i64 0, ptr %i.db, align 8, !noalias !32609
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2224) #80, !noalias !32609
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !32609
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !32610, !noalias !32611, !noundef !57 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  %i.de = tail call fastcc i64 @"_ZN4heed4envs3env12Env$LT$T$GT$12raw_open_dbi17h22b14340deb78d57E"(ptr noundef nonnull %i.dd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @802, i64 21, i32 noundef 0), !noalias !32612 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i = trunc i64 %i.de to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %i.de, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i to i32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.sroa.020.0.extract.trunc.i.i.i, 22
  br i1 %.not.i.i.i, label %bb.h, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i": ; preds = %bb.d
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ce, i32 noundef %.sroa.020.0.extract.trunc.i.i.i, i32 %.sroa.4.0.extract.trunc.i.i.i), !noalias !32609
  %.pr.i.i = load i32, ptr %i.ce, align 8, !noalias !32609
  switch i32 %.pr.i.i, label %bb.g [
    i32 5, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i"
    i32 1, label %bb.f
  ]

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit._crit_edge.i.i": ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !noalias !32609
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2201) #80, !noalias !32609
  unreachable

bb.f:                                             ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %i.df = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !range !143, !noalias !32609, !noundef !57
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.ff, label %bb.g
end_hunk_6
begin_hunk_7_@"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h801d4cfa44385f5eE":bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17h023338ac4058e0c7E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.au) #81
          to label %bb.j unwind label %bb.s, !noalias !33400

bb.h:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17h023338ac4058e0c7E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.aw)
          to label %bb.l unwind label %bb.k, !noalias !33400

bb.j:                                             ; preds = %bb.k, %bb.g
  %.pn2.i.i = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn.i.i, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 368
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17h023338ac4058e0c7E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.ax) #81
          to label %bb.m unwind label %bb.s, !noalias !33400

bb.k:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 368
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17h023338ac4058e0c7E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.az)
          to label %bb.o unwind label %bb.n, !noalias !33400

bb.m:                                             ; preds = %bb.n, %bb.j
  %.pn4.i.i = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %.pn2.i.i, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 488
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17h023338ac4058e0c7E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.ba) #81
          to label %.body2 unwind label %bb.s, !noalias !33400

bb.n:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 488
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$milli..update..new..extract..cache..BalancedCaches$GT$17h023338ac4058e0c7E"(ptr noalias noundef readonly align 8 dereferenceable(120) %i.bc)
          to label %bb.q unwind label %bb.p, !noalias !33400

.body2:                                           ; preds = %bb.p, %bb.m
  %.pn6.i.i = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %.pn4.i.i, %bb.m ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 616
  %.val9.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !33404, !noalias !33400
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 624
  %.val10.i.i = load i64, ptr %i.be, align 8, !alias.scope !33404, !noalias !33400, !noundef !57
  tail call fastcc void @"_ZN4core3ptr148drop_in_place$LT$std..collections..hash..map..HashMap$LT$u16$C$$LP$core..option..Option$LT$usize$GT$$C$core..option..Option$LT$usize$GT$$RP$$GT$$GT$17hf266dba4aa888f7aE"(ptr %.val9.i.i, i64 %.val10.i.i) #81, !noalias !33405
  %i.bf = icmp eq i64 %i.ak, %i.ai
  br i1 %i.bf, label %.loopexit.i, label %.lr.ph12.i.i

bb.p:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body2

bb.q:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 616
  %.val.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !33404, !noalias !33400 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 624
  %.val8.i.i = load i64, ptr %i.bi, align 8, !alias.scope !33404, !noalias !33400, !noundef !57 ; 4 uses
  %i.bj = icmp eq i64 %.val8.i.i, 0
  br i1 %i.bj, label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.bk = mul i64 %.val8.i.i, 40
  %i.bl = icmp slt i64 %.val8.i.i, 461168601842738790
  tail call void @llvm.assume(i1 %i.bl), !noalias !33400
  %i.bm = and i64 %i.bk, -16                      ; 2 uses
  %i.bn = add i64 %i.bm, 48                       ; 2 uses
  %i.bo = add nsw i64 %.val8.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 4 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = icmp ult i64 %i.bp, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bq), !noalias !33400
  tail call void @llvm.assume(i1 %i.br), !noalias !33400
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !33400
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit.i.i", label %bb.r

bb.r:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  %i.bt = sub i64 -48, %i.bm
  %i.bu = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.bt
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !33405
  br label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit.i.i"

bb.s:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.e
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !33405
  unreachable

"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit.i.i": ; preds = %bb.r, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, %bb.q, %bb.c, %.lr.ph.i.i
  %i.bw = icmp eq i64 %i.ak, %i.ai
  br i1 %i.bw, label %"_ZN4core3ptr283drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h399148690ccc9e5cE.exit", label %.lr.ph.i.i

.lr.ph12.i.i:                                     ; preds = %.body2, %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.by, %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i" ], [ %i.ak, %.body2 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [672 x i8], ptr %i.ag, i64 %.sroa.0.110.i.i ; 2 uses
  %i.by = add i64 %.sroa.0.110.i.i, 1             ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 664
  %i.ca = load i8, ptr %i.bz, align 1, !range !74, !alias.scope !33406, !noalias !33400, !noundef !57
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.t, label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i"

bb.t:                                             ; preds = %.lr.ph12.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h64bfcae30fe78c52E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.cc)
          to label %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i" unwind label %bb.u, !noalias !33400

"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i": ; preds = %bb.t, %.lr.ph12.i.i
  %i.cd = icmp eq i64 %i.by, %i.ai
  br i1 %i.cd, label %.loopexit.i, label %.lr.ph12.i.i

bb.u:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !33407
  unreachable

.loopexit.i:                                      ; preds = %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit8.i.i", %.body2
  %i.cf = shl nuw i64 672, %.sroa.7.011.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %i.cf, i64 noundef 8) #79, !noalias !33400
  store i64 0, ptr %1, align 8, !alias.scope !33381, !noalias !33382
  br label %common.resume

"_ZN4core3ptr283drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h399148690ccc9e5cE.exit": ; preds = %"_ZN4core3ptr248drop_in_place$LT$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$GT$17hcc89bda5399b3cdaE.exit.i.i"
  %i.cg = shl nuw i64 672, %.sroa.7.011.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %i.cg, i64 noundef 8) #79, !noalias !33400
  br label %.backedge.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN4core3ptr283drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$milli..update..new..thread_local..MostlySendWrapper$LT$core..cell..RefCell$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17h399148690ccc9e5cE.exit", %.thread.i.i
  %i.ch = icmp eq i64 %.sroa.0.0.add.i.i.i.i.i.i.i.i, 504
  br i1 %i.ch, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread7", label %.thread.i.i

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread7": ; preds = %.backedge.i.i.i.i.i.i.i.i
  store i64 0, ptr %1, align 8, !alias.scope !33381, !noalias !33382
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread"

common.resume:                                    ; preds = %bb.v, %.loopexit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn6.i.i, %.loopexit.i ], [ %i.ci, %bb.v ]
  resume { ptr, i32 } %common.resume.op

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread": ; preds = %bb.a, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread7"
  store i64 2, ptr %0, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.y
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h64bfcae30fe78c52E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.a)
          to label %common.resume unwind label %bb.ab

bb.w:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hcea77a1718135217E.exit.i.i
  %.sroa.7.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(648) %.sroa.7.0..sroa_idx13.i.i, i64 648, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0.copyload12.i.i, ptr %i.a, align 8, !alias.scope !33408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33409)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.b, ptr noundef nonnull align 8 dereferenceable(656) %i.a, i64 656, i1 false), !alias.scope !33410
  store i64 2, ptr %i.a, align 8, !alias.scope !33411, !noalias !33409
  %i.cj = load i64, ptr %i.b, align 8, !range !72, !noundef !57
  %.not1 = icmp eq i64 %i.cj, 2
  br i1 %.not1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull align 8 dereferenceable(656) %i.b, i64 656, i1 false)
  call fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h64bfcae30fe78c52E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  invoke fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h64bfcae30fe78c52E"(ptr noalias noundef align 8 dereferenceable(656) %i.b)
          to label %bb.aa unwind label %bb.v

bb.z:                                             ; preds = %bb.x, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc620af8bb005a44cE.exit.thread"
  ret void

bb.aa:                                            ; preds = %bb.y
  call fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$milli..update..new..extract..searchable..extract_word_docids..WordDocidsBalancedCaches$GT$$GT$17h64bfcae30fe78c52E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(656) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ck = icmp eq i64 %i.h, %i.ad
  br i1 %i.ck, label %.thread.i.i.preheader, label %.preheader1.i.i.i.i.i.i.i.preheader

bb.ab:                                            ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN116_$LT$index_scheduler..upgrade..v1_38..FixupIndexTasks$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17h916887a8f1af1c09E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @377, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN116_$LT$index_scheduler..upgrade..v1_38..FixupIndexTasks$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17he5de8775963b4822E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
bb.a:
  %.val8.i.i = load i32, ptr %1, align 4, !alias.scope !33423, !noalias !33424, !noundef !57
  %cond.i = icmp eq i32 %.val8.i.i, 1
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val6.i.i = load i32, ptr %i.a, align 4
  %i.b = icmp eq i32 %.val6.i.i, 38
  %or.cond = select i1 %cond.i, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN4core3ops5range11RangeBounds8contains17h864dca6226b1438dE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !alias.scope !33425, !noalias !33426, !noundef !57
  %i.e = icmp ult i32 %i.d, 2
  br label %_ZN4core3ops5range11RangeBounds8contains17h864dca6226b1438dE.exit

_ZN4core3ops5range11RangeBounds8contains17h864dca6226b1438dE.exit: ; preds = %bb.a, %bb.b
  %.sroa.06.0.i = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %.sroa.06.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @"_ZN116_$LT$index_scheduler..upgrade..v1_38..FixupIndexTasks$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17h82a15c39c913f911E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %i.c = alloca [72 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 16 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [80 x i8], align 8                ; 15 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [80 x i8], align 8                ; 10 uses
  %.sroa.16.i.i.i = alloca [24 x i8], align 8     ; 13 uses
  %.sroa.842.sroa.7.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.7.sroa.6.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 14 uses
  %i.m = alloca [64 x i8], align 8                ; 15 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [64 x i8], align 8                ; 14 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [64 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.825.i.i.i322 = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.7.i.i.i323 = alloca [16 x i8], align 8   ; 5 uses
  %.sroa.10.i.i.i324 = alloca [16 x i8], align 8  ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 14 uses
  %i.v = alloca [64 x i8], align 8                ; 15 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [64 x i8], align 8                ; 14 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [64 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 13 uses
  %.sroa.825.i.i.i = alloca [16 x i8], align 8    ; 6 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %.sroa.10.i.i.i = alloca [16 x i8], align 8     ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 14 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 11 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 11 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [24 x i8], align 8               ; 9 uses
  %i.ap = alloca [24 x i8], align 8               ; 11 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [344 x i8], align 8              ; 7 uses
  %i.as = alloca [344 x i8], align 8              ; 7 uses
  %i.at = alloca [344 x i8], align 8              ; 7 uses
  %i.au = alloca [792 x i8], align 8              ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 8 uses
  %i.aw = alloca [344 x i8], align 8              ; 15 uses
  %i.ax = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.10670 = alloca [16 x i8], align 8        ; 6 uses
  %i.ay = alloca [72 x i8], align 8               ; 16 uses
  %i.az = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.10646 = alloca [16 x i8], align 8        ; 6 uses
  %i.ba = alloca [72 x i8], align 8               ; 16 uses
  %i.bb = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.8612.sroa.7 = alloca [24 x i8], align 8  ; 6 uses
  %i.bc = alloca [72 x i8], align 8               ; 16 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [784 x i8], align 8              ; 11 uses
  %i.bf = alloca [16 x i8], align 8               ; 9 uses
  %i.bg = alloca [24 x i8], align 8               ; 11 uses
  %i.bh = alloca [24 x i8], align 8               ; 10 uses
  %i.bi = alloca [24 x i8], align 8               ; 10 uses
  %i.bj = alloca [24 x i8], align 8               ; 9 uses
  %i.bk = alloca [344 x i8], align 8              ; 22 uses
  %.sroa.6.sroa.17 = alloca [68 x i8], align 4    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue3new17h9b33964fd73cd59bE(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  %i.bl = load i64, ptr %i.bk, align 8, !range !80, !noundef !57 ; 2 uses
  %.not = icmp eq i64 %i.bl, 152
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.0679.0.copyload = load i64, ptr %i.bm, align 8 ; 2 uses
  %.sroa.5680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.5680.0.copyload = load i32, ptr %.sroa.5680.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.563.sroa.6.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %.sroa.563.sroa.6.0.copyload = load i32, ptr %.sroa.563.sroa.6.0..sroa.563.0..sroa_idx.sroa_idx, align 4
  %.sroa.563.sroa.7.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.563.sroa.7.0.copyload = load i64, ptr %.sroa.563.sroa.7.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.sroa.8.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.sroa.563.sroa.10.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.sroa.563.sroa.10.0.copyload = load i64, ptr %.sroa.563.sroa.10.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.sroa.11.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.sroa.563.sroa.13.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %.sroa.563.sroa.13.0.copyload = load i64, ptr %.sroa.563.sroa.13.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.sroa.14.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %.sroa.563.sroa.14.0.copyload = load i32, ptr %.sroa.563.sroa.14.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.sroa.15.0..sroa.563.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.6.sroa.17, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.563.sroa.15.0..sroa.563.0..sroa_idx.sroa_idx, i64 68, i1 false)
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 136
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.664.0..sroa_idx, i64 208, i1 false)
  %.sroa.2.sroa.12.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bn = load <2 x i32>, ptr %.sroa.563.sroa.8.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bo = load <2 x i32>, ptr %.sroa.563.sroa.11.0..sroa.563.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.2.sroa.12.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.6.sroa.17, i64 68, i1 false)
  store i64 %i.bl, ptr %i.aw, align 8
  store i64 %.sroa.0679.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  store i32 %.sroa.5680.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i32 %.sroa.563.sroa.6.0.copyload, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 4
  store i64 %.sroa.563.sroa.7.0.copyload, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store <2 x i32> %i.bn, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.563.sroa.10.0.copyload, ptr %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store <2 x i32> %i.bo, ptr %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.10.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store i64 %.sroa.563.sroa.13.0.copyload, ptr %.sroa.2.sroa.10.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.11.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store i32 %.sroa.563.sroa.14.0.copyload, ptr %.sroa.2.sroa.11.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %i.bp = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.17)
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  %.sroa.7682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.7682.0.copyload = load i64, ptr %.sroa.7682.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.sroa.8683.0.copyload = load i32, ptr %.sroa.8683.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.sroa.10685.0.copyload = load i64, ptr %.sroa.10685.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.sroa.11686.0.copyload = load i32, ptr %.sroa.11686.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %.sroa.13688.0.copyload = load i64, ptr %.sroa.13688.0..sroa_idx, align 8 ; 3 uses
  %.sroa.14689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %.sroa.14689.0.copyload = load i32, ptr %.sroa.14689.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr null, ptr %i.bj, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  store i64 0, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store ptr null, ptr %i.bi, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store i64 0, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr null, ptr %i.bh, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store i64 0, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$4iter17h6add7d9b9fef1befE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bg, i64 %.sroa.0679.0.copyload, i32 %.sroa.5680.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.d unwind label %.thread711

.thread711:                                       ; preds = %bb.e, %bb.jg, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit296", %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit268", %bb.c, %.loopexit902, %bb.i, %.loopexit909
  %.sroa.057.1.ph = phi i8 [ 0, %.loopexit909 ], [ 1, %bb.i ], [ 0, %.loopexit902 ], [ 1, %bb.c ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit268" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit296" ], [ 1, %bb.jg ], [ 1, %bb.e ]
  %.sroa.055.1.ph = phi i8 [ 1, %.loopexit909 ], [ 1, %bb.i ], [ 0, %.loopexit902 ], [ 1, %bb.c ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit268" ], [ 1, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit296" ], [ 1, %bb.jg ], [ 1, %bb.e ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
end_hunk_7
begin_hunk_8_@"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_array17h761b9a5fa2683a55E":bb.a
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @73, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_debug17h1e0651aef8bd01aeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @387, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_debug17hec6c016e10f6044eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @388, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8to_value17h244e6d00d235aed3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !57, !noundef !57
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !57 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36304
  %.idx = mul nuw nsw i64 %i.f, 56                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.thread.i.i.i.i", label %bb.a

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store i64 0, ptr %i.b, align 8, !noalias !36304
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !36304
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h67fb3eca0ececd34E.exit

bb.a:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !36305
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 9) 8) #79, !noalias !36305 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %.preheader.i.i.preheader.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %.idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #80, !noalias !36304
  unreachable

.preheader.i.i.preheader.i.i.i.i:                 ; preds = %bb.a
  store i64 %i.f, ptr %i.b, align 8, !noalias !36304
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !36304
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36307)
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.c, %.preheader.i.i.preheader.i.i.i.i
  %.val20.i.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ 0, %.preheader.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36308
  invoke void @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h18705804cd257f94E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n)
          to label %bb.c unwind label %.body.i.i.i.i, !noalias !36309

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !36310
  %i.p = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36308
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %_ZN4core4iter6traits8iterator8Iterator7collect17h67fb3eca0ececd34E.exit, label %.preheader.i.i.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.preheader.i.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !alias.scope !36311, !noalias !36312
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h066d47c01294d70eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #81
          to label %bb.e unwind label %bb.d, !noalias !36304

bb.d:                                             ; preds = %.body.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !36304
  unreachable

bb.e:                                             ; preds = %.body.i.i.i.i
  resume { ptr, i32 } %i.r

_ZN4core4iter6traits8iterator8Iterator7collect17h67fb3eca0ececd34E.exit: ; preds = %bb.c, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.thread.i.i.i.i"
  %i.t = phi ptr [ %i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.thread.i.i.i.i" ], [ %i.m, %bb.c ]
  store i64 %i.f, ptr %i.t, align 8, !alias.scope !36311, !noalias !36312
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36304
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8to_value17h9806b943564e3cd6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !57, !noundef !57 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !57 ; 10 uses
  %i.e = mul i64 %i.d, 56                         ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.d, 164703072086692425
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !36344
  %i.g = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #79, !noalias !36344 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #80, !noalias !36345
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = icmp samesign ule i64 %i.d, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign eq i64 %i.d, 0
  br i1 %i.j, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6eb75520e6a461efE.exit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i"
  %xtraiter = and i64 %i.d, 1
  %i.k = icmp eq i64 %i.d, 1
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.d, 288230376151711742
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %i.l = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.r, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l
  %.val21.i.i.i.i.i.i.i.i.i = load i8, ptr %i.m, align 1, !range !74, !alias.scope !36346, !noalias !36347, !noundef !57
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.l ; 3 uses
  store i8 0, ptr %i.n, align 8, !noalias !36348
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 4, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !36348
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %.val21.i.i.i.i.i.i.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !36348
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  %.val21.i.i.i.i.i.i.i.i.i.1 = load i8, ptr %i.p, align 1, !range !74, !alias.scope !36346, !noalias !36347, !noundef !57
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.o ; 3 uses
  store i8 0, ptr %i.q, align 8, !noalias !36348
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 4, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !36348
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i8 %.val21.i.i.i.i.i.i.i.i.i.1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !36348
  %i.r = add nuw nsw i64 %i.l, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6eb75520e6a461efE.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h6eb75520e6a461efE.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6eb75520e6a461efE.exit, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h6eb75520e6a461efE.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.r, %_ZN4core4iter6traits8iterator8Iterator7collect17h6eb75520e6a461efE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %.epil.init
  %.val21.i.i.i.i.i.i.i.i.i.epil = load i8, ptr %i.s, align 1, !range !74, !alias.scope !36346, !noalias !36347, !noundef !57
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.epil.init ; 3 uses
  store i8 0, ptr %i.t, align 8, !noalias !36348
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 4, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !36348
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i8 %.val21.i.i.i.i.i.i.i.i.i.epil, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !36348
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h6eb75520e6a461efE.exit

_ZN4core4iter6traits8iterator8Iterator7collect17h6eb75520e6a461efE.exit: ; preds = %.preheader.i.i.i.i.i.i.epil.preheader, %_ZN4core4iter6traits8iterator8Iterator7collect17h6eb75520e6a461efE.exit.loopexit.unr-lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd28fec5a73d3c3dbE.exit.i.i.i.i.i.i"
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.u, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9type_name17h27a2810965127e81E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @67, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9type_name17hc00ec58b3bbfc597E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @67, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17h1734ab77e639cf64E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !36351, !noundef !57 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !36351, !nonnull !57
  %i.f = getelementptr i8, ptr %i.e, i64 %i.b
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.g
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @52, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17h2d700df3531bd2fcE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17h9dfc871a1d07b3e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17h463bf237978c8fc2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN96_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17hf28d197d6941cea9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17ha376beadf54845c0E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !36354, !noundef !57 ; 3 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !36354, !nonnull !57
  %i.f = getelementptr [56 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr i8, ptr %i.f, i64 -56
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.g
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @49, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17hdf5d26c353d159ebE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17h4cbac0fca3112c64E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17hfe9664689993227bE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17h152484bbd46c99dbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef -1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView5first17h1f8d9c2ce68f3f46E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17h152484bbd46c99dbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef 0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView5first17h54038098a2791e6fE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !36357, !noundef !57 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !36357, !nonnull !57
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.e
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @52, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView5first17h5d0c994a6c37ef79E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17h9dfc871a1d07b3e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef 0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView5first17hd61f49eee4e99c91E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN96_$LT$milli..prompt..document..ParseableArray$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17hf28d197d6941cea9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i64 noundef 0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView5first17hdfdce49f0fe2f212E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN103_$LT$milli..prompt..fields..BorrowedFields$LT$D$GT$$u20$as$u20$liquid_core..model..array..ArrayView$GT$3get17h4cbac0fca3112c64E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i64 noundef 0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView5first17hf31cd6bf9c3ba3aeE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !36360, !noundef !57 ; 2 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !36360, !nonnull !57
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.e
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @49, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h209054c7f24b63f6E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h2be3420d58d41531E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h35b7c33dd2123c5fE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h41b72ebdbe7bf177E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h57e6a3515264bfe4E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h6ccf5ed0f9601b0aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h7ea100b86e4c1d0dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h85df62439491bcd5E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h8aee66c2650b6c13E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h96f4da2093e08f07E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h9ebc819ddf275e01E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView6is_nil17h9fa9073e9b12993dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

end_hunk_8
begin_hunk_9_@_ZN11liquid_core5model5value4view9ValueView9is_scalar17h24d9d289028f2d18E:"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit"
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h3229e2f13d3a8fa1E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h389ec66623d34f06E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h3d1fe0a800a0c78dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h44e79eff9a44379cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_scalar17hdb9356d7ef3f0b57E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  %i.b = load i64, ptr %i.a, align 8, !range !146, !noundef !57 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36386)
  %i.c = icmp eq i64 %i.b, 7
  br i1 %i.c, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !36387)
  call void @llvm.experimental.noalias.scope.decl(metadata !36388)
  %i.d = icmp samesign ugt i64 %i.b, 1
  br i1 %i.d, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !36389)
  call void @llvm.experimental.noalias.scope.decl(metadata !36390)
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !36391)
  call void @llvm.experimental.noalias.scope.decl(metadata !36392)
  call void @llvm.experimental.noalias.scope.decl(metadata !36393)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !36394, !noundef !57
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %bb.e, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit"

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !36394, !noundef !57 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.e
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !36394, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !36394
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i"
  %i.l = icmp ne i64 %i.b, 7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h5817c2b42f36f98eE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h6686045aac87df7aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h6e16e283278bfb51E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h7bb0b1d694e17b8cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h82f4ec6c5a711bdeE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h8ba53e587d76d40cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h8be8f39e06bb6bcdE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h9253a1f3f4f41db5E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17h947bd7d6b6cb9719E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17ha0b4d837d9baaea7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17ha6c185f2621dab75E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17ha8f825b3c5353574E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17hc6413c80ec857ecaE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17hc846c4f4b129b781E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17hd1a92ea46c5fc377E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17hf678ff90dfd17c85E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17hf746a4529b75bf8aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17hb4dfc7b709b2276fE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$11query_state17haea7d4e90f8dc16dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  %.sroa.0.0 = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$8as_debug17h7755a98ab707ec08E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @389, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$9as_object17h733f59e16430dc4bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @75, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$9type_name17hcddfbd2d725846a6E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @16, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$11query_state17h3bdd13325a2e18e3E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #2 {
bb.a:
  switch i8 %1, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.e
    i8 3, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !range !74, !noundef !57
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !range !74, !noundef !57
  %i.c = xor i8 %i.b, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !range !74, !noundef !57
  %i.e = xor i8 %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.a, %bb.b ], [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ 0, %bb.a ]
  %i.f = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$6render17hecaf00286af4cd89E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @390, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$6source17hf6ebcb7bb807309dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @390, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$8as_debug17h55767c0bcdc5e7ecE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @34, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$8to_value17hed9b8ff0a878d22cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 17)) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #18 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !74, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$9as_scalar17h60a3e74b29750454E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 9)) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #18 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !74, !noundef !57
  store i64 4, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$9type_name17h134962caebe27026E"(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @391, i64 7 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$6render17hbd874dbaf56393cbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @392, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$7to_kstr17hbea6430406690d32E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !57, !align !64, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !57
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$8as_debug17h28519b6c9e91a199E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @393, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$9as_scalar17h843cf6f76cd7161aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !57, !align !64, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !57
  store i64 0, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$9type_name17ha1e0b1f7650b76fdE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @394, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN120_$LT$index_scheduler..upgrade..v1_38..RemoveOrphanBatches$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17h9466a80a340e3b51E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @397, i64 21 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN120_$LT$index_scheduler..upgrade..v1_38..RemoveOrphanBatches$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17h81ad4d19e351bd1fE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
"_ZN4core5tuple69_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2lt17he23ea79208eb1b10E.exit":
  %.val7.i = load i32, ptr %1, align 4, !alias.scope !36398, !noalias !36399, !noundef !57 ; 2 uses
  %i.a = icmp eq i32 %.val7.i, 1
  %i.b = icmp eq i32 %.val7.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 38
  %.sroa.0.1.in.i = select i1 %i.a, i1 %i.d, i1 %i.b
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @"_ZN120_$LT$index_scheduler..upgrade..v1_38..RemoveOrphanBatches$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17hda38b30c79dde64fE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [80 x i8], align 8                ; 9 uses
  %i.i = alloca [80 x i8], align 8                ; 14 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 10 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [344 x i8], align 8               ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [344 x i8], align 8               ; 8 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 10 uses
  %i.aj = alloca [24 x i8], align 8               ; 14 uses
  %i.ak = alloca [4 x i8], align 4                ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 10 uses
  %i.am = alloca [344 x i8], align 8              ; 7 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 11 uses
  %i.ao = alloca [344 x i8], align 8              ; 9 uses
  %.sroa.7.sroa.8 = alloca [100 x i8], align 4    ; 6 uses
  %i.ap = alloca [112 x i8], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call fastcc void @_ZN15index_scheduler5queue7batches10BatchQueue3new17hf629dc8b3ce4add5E(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  %i.aq = load i64, ptr %i.ao, align 8, !range !80, !noundef !57 ; 2 uses
  %.not = icmp eq i64 %i.aq, 152
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0134.0.copyload = load i64, ptr %i.ar, align 8 ; 5 uses
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.4135.0.copyload = load i32, ptr %.sroa.4135.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.7.sroa.8, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.5136.0..sroa_idx, i64 100, i1 false)
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep688 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink.sroa.gep690 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.sroa.gep691 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sink.sroa.gep693 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.sroa.gep694 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sink.sroa.gep696 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sink.sroa.gep697 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.7146.0..sroa_idx, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.7.sroa.8, i64 100, i1 false)
  store i64 %i.aq, ptr %i.x, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.0134.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 %.sroa.4135.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %i.as = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8)
  br label %bb.bl

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.7.sroa.8, i64 100, i1 false)
  store i64 %.sroa.0134.0.copyload, ptr %i.ap, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %.sroa.4135.0.copyload, ptr %.sroa.38.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call fastcc void @_ZN15index_scheduler5queue7batches10BatchQueue13all_batch_ids17h8c1f38a9e0411b88E(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.at = load i64, ptr %i.am, align 8, !range !80, !noundef !57 ; 2 uses
  %.not230 = icmp eq i64 %i.at, 152
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  br i1 %.not230, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.322.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.5152.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.sroa.2.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  store i64 %i.at, ptr %i.v, align 8
  %i.av = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E.exit327"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %1, ptr %i.w, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 0, ptr %i.ay, align 8
  store ptr @404, ptr %i.aw, align 8
  store i64 22, ptr %i.ax, align 8
  invoke fastcc void @"_ZN4heed9databases8database49DatabaseOpenOptions$LT$T$C$KC$C$DC$C$C$C$CDUP$GT$6create17h02f55b3dda60d263E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w, ptr noalias noundef align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.f

"_ZN4core3ptr229drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..lazy_decode..LazyDecode$LT$heed_types..serde_json..SerdeJson$LT$meilisearch_types..batches..Batch$GT$$GT$$GT$$GT$17h392fb203f260f4b3E.exit": ; preds = %bb.cv, %bb.cu, %.body287, %bb.as, %bb.f
  %.pn244 = phi { ptr, i32 } [ %i.az, %bb.f ], [ %eh.lpad-body288, %.body287 ], [ %eh.lpad-body288, %bb.as ], [ %.pn.ph, %bb.cu ], [ %.pn.ph, %bb.cv ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$roaring..bitmap..RoaringBitmap$GT$17hbde527c173eecb31E"(ptr noalias noundef align 8 dereferenceable(24) %i.an) #81
  resume { ptr, i32 } %.pn244

bb.f:                                             ; preds = %_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.i, %bb.m, %bb.l, %bb.j, %bb.n, %bb.h, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr229drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..lazy_decode..LazyDecode$LT$heed_types..serde_json..SerdeJson$LT$meilisearch_types..batches..Batch$GT$$GT$$GT$$GT$17h392fb203f260f4b3E.exit"

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ba = load i32, ptr %i.al, align 8, !range !145, !noundef !57 ; 2 uses
  %.not232 = icmp eq i32 %i.ba, 5
  br i1 %.not232, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.4159.0.copyload = load i32, ptr %.sroa.4159.0..sroa_idx, align 4
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5160.0.copyload = load i64, ptr %.sroa.5160.0..sroa_idx, align 8
  %.sroa.6161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bb = load <2 x i32>, ptr %.sroa.6161.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i32 %i.ba, ptr %i.u, align 8
  store i32 %.sroa.4159.0.copyload, ptr %.sroa.237.0..sroa_idx, align 4
  store i64 %.sroa.5160.0.copyload, ptr %.sroa.338.0..sroa_idx, align 8
  store <2 x i32> %i.bb, ptr %.sroa.439.0..sroa_idx, align 8
  %i.bc = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h76d8d0ae0c451a61E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.db unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noundef !57 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.experimental.noalias.scope.decl(metadata !36458)
  %i.bh = load i64, ptr %2, align 8, !range !71, !alias.scope !36458, !noalias !36459, !noundef !57
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bj = trunc nuw i64 %i.bh to i1
  %i.bk = load ptr, ptr %i.bi, align 8, !alias.scope !36458, !noalias !36459, !nonnull !57, !align !61
  %.sroa.0.0.i = select i1 %i.bj, ptr %i.bi, ptr %i.bk ; 3 uses
  %i.bl = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !36459, !nonnull !57, !noundef !57
end_hunk_9
begin_hunk_10_@"_ZN124_$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h86fff4cbad95aeb0E":bb.a
  br label %"_ZN189_$LT$$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h2d63b2cce32f78abE.exit.i"

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.bk, i64 72, i1 false), !noalias !37312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37312
  %i.cb = load i64, ptr %i.d, align 8, !range !91, !alias.scope !37324, !noalias !37312, !noundef !57
  %i.cc = icmp eq i64 %i.cb, -9223372036854775803
  br i1 %i.cc, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17he58f49b22575bf74E.exit.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hac7f4c13cf586152E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.d)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17he58f49b22575bf74E.exit.i.i" unwind label %bb.q, !noalias !37317

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17he58f49b22575bf74E.exit.i.i": ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37312
  br label %bb.p

bb.x:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !37317
  unreachable

"_ZN189_$LT$$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h2d63b2cce32f78abE.exit.i": ; preds = %bb.u, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i"
  %.sroa.038.0.i = phi i64 [ -9223372036854775808, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i" ], [ %.sroa.038.0.copyload39.i, %bb.u ]
  %.sroa.7.0.i = phi ptr [ %i.bo, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i" ], [ %.sroa.7.0.copyload41.i, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !37312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !37307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !37307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !37307
  %i.ce = load i8, ptr %i.al, align 8, !range !74, !alias.scope !37296, !noalias !37295, !noundef !57
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.l
  %.val27.i = load i64, ptr %i.p, align 8, !alias.scope !37296, !noalias !37295, !noundef !57
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val28.i = load i64, ptr %i.cg, align 8, !alias.scope !37296, !noalias !37295, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37325
  store i64 24, ptr %i.b, align 8, !noalias !37307
  %i.ch = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val27.i, i64 noundef %.val28.i), !noalias !37326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37325
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !alias.scope !37295, !noalias !37296
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !37295, !noalias !37296
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h4a92ff9eefa18b02E.exit"

bb.z:                                             ; preds = %"_ZN189_$LT$$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h2d63b2cce32f78abE.exit.i"
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !37296, !noalias !37295, !noundef !57
  %i.cl = add i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 1, !alias.scope !37296, !noalias !37295
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %"_ZN189_$LT$$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h2d63b2cce32f78abE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !37307
  store i64 %.sroa.038.0.i, ptr %i.k, align 8, !noalias !37307
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !37307
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.i, i64 56, i1 false), !noalias !37307
  %i.cm = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17haeec60909f4f4b33E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.ac unwind label %bb.ab, !noalias !37295 ; 10 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$core..result..Result$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$C$serde_json..error..Error$GT$$GT$17h111a2ee26c636724E"(ptr noalias noundef align 8 dereferenceable(72) %i.k) #81
          to label %common.resume.i unwind label %bb.ag, !noalias !37295

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !37307
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %i.cm, ptr %i.co, align 8, !noalias !37307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !37307
  %i.cp = load i64, ptr %i.l, align 8, !range !83, !noalias !37307, !noundef !57 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, -9223372036854775808
  br i1 %i.cq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %bb.am, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !37307, !nonnull !57, !align !61, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.not67.i = icmp eq ptr %i.cm, null
  br i1 %.not67.i, label %.thread61.i, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !37327)
  call void @llvm.experimental.noalias.scope.decl(metadata !37328)
  call void @llvm.experimental.noalias.scope.decl(metadata !37329)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !37330, !noalias !37307, !noundef !57 ; 4 uses
  %i.cu = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.cu, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i: ; preds = %bb.af
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !37330, !noalias !37307, !nonnull !57, !noundef !57
  %i.cw = shl i64 %.val1.i.i.i.i, 3
  %i.cx = icmp slt i64 %.val1.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.cx), !noalias !37329
  %i.cy = and i64 %i.cw, -16                      ; 2 uses
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add nsw i64 %.val1.i.i.i.i, 17
  %i.db = add i64 %i.da, %i.cz                    ; 3 uses
  %i.dc = icmp uge i64 %i.db, %i.cz
  call void @llvm.assume(i1 %i.dc), !noalias !37329
  %i.dd = icmp ult i64 %i.db, 9223372036854775793
  call void @llvm.assume(i1 %i.dd), !noalias !37329
  %i.de = sub nuw nsw i64 -16, %i.cy
  %i.df = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.de
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.df, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !37331, !inline_history !92
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i, %bb.af
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h737a762b1bd6a592E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.l), !noalias !37295, !inline_history !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37307
  br label %bb.al

bb.ag:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !37295
  unreachable

.thread61.i:                                      ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i", %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37307
  br label %bb.al

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !37332)
  call void @llvm.experimental.noalias.scope.decl(metadata !37333)
  %i.dh = load i64, ptr %i.cm, align 8, !range !88, !alias.scope !37334, !noalias !37335, !noundef !57
  switch i64 %i.dh, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i" [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.val1.i.i.i.i32.i = load i64, ptr %i.di, align 8, !alias.scope !37334, !noalias !37335, !noundef !57 ; 2 uses
  %i.dj = icmp eq i64 %.val1.i.i.i.i32.i, 0
  br i1 %i.dj, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.ai
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.val.i.i.i.i33.i = load ptr, ptr %i.dk, align 8, !alias.scope !37334, !noalias !37335, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i33.i, i64 noundef %.val1.i.i.i.i32.i, i64 noundef 1) #79, !noalias !37336
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i"

bb.aj:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dl)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i" unwind label %bb.ak, !noalias !37335

bb.ak:                                            ; preds = %bb.aj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 40, i64 noundef 8) #79, !noalias !37335
  br label %common.resume.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i": ; preds = %bb.aj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.ai, %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 40, i64 noundef 8) #79, !noalias !37335
  br label %.thread61.i

bb.al:                                            ; preds = %.thread61.i, %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i", %bb.k
  %.sroa.9.2.i = phi ptr [ %i.cm, %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hd649b7ceafe66e09E.exit.i.i" ], [ %i.ao, %bb.k ], [ %i.cs, %.thread61.i ]
  %.val29.i = load i64, ptr %i.p, align 8, !alias.scope !37296, !noalias !37295
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val30.i = load i64, ptr %i.dn, align 8, !alias.scope !37296, !noalias !37295
  %i.do = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3b4979117a0d89efE(ptr noalias noundef nonnull align 8 %.sroa.9.2.i, i64 %.val29.i, i64 %.val30.i), !noalias !37295
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !alias.scope !37295, !noalias !37296
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !37295, !noalias !37296
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h4a92ff9eefa18b02E.exit"

bb.am:                                            ; preds = %bb.ad
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.211.0.copyload.i = load ptr, ptr %.sroa.211.0..sroa_idx.i, align 8, !noalias !37307
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.318.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i, i64 56, i1 false), !noalias !37296
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37307
  store i64 %i.cp, ptr %0, align 8, !alias.scope !37295, !noalias !37296
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.211.0.copyload.i, ptr %.sroa.217.0..sroa_idx.i, align 8, !alias.scope !37295, !noalias !37296
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h4a92ff9eefa18b02E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h4a92ff9eefa18b02E.exit": ; preds = %bb.al, %bb.am, %bb.i, %bb.y
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN126_$LT$index_scheduler..upgrade..v1_50..MigrateDynamicSearchRules$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$11description17h9d8000bc937e6d06E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @425, i64 34 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN126_$LT$index_scheduler..upgrade..v1_50..MigrateDynamicSearchRules$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$12must_upgrade17hde1d336a920f26f2E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #2 {
"_ZN4core5tuple69_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2lt17he23ea79208eb1b10E.exit":
  %.val7.i = load i32, ptr %1, align 4, !alias.scope !37340, !noalias !37341, !noundef !57 ; 2 uses
  %i.a = icmp eq i32 %.val7.i, 1
  %i.b = icmp eq i32 %.val7.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 50
  %.sroa.0.1.in.i = select i1 %i.a, i1 %i.d, i1 %i.b
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @"_ZN126_$LT$index_scheduler..upgrade..v1_50..MigrateDynamicSearchRules$u20$as$u20$index_scheduler..upgrade..UpgradeIndexScheduler$GT$7upgrade17ha3c8c9bfff05e188E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [208 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [208 x i8], align 8               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [344 x i8], align 8               ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 16               ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [96 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [344 x i8], align 8               ; 5 uses
  %i.r = alloca [344 x i8], align 8               ; 8 uses
  %.sroa.5123 = alloca [16 x i8], align 8         ; 4 uses
  %i.s = alloca [344 x i8], align 8               ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [344 x i8], align 8               ; 6 uses
  %i.v = alloca [344 x i8], align 8               ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 4                ; 4 uses
  %i.y = alloca [784 x i8], align 8               ; 19 uses
  %i.z = alloca [344 x i8], align 8               ; 6 uses
  %i.aa = alloca [192 x i8], align 8              ; 7 uses
  %i.ab = alloca [288 x i8], align 8              ; 11 uses
  %i.ac = alloca [168 x i8], align 8              ; 14 uses
  %i.ad = alloca [32 x i8], align 8               ; 10 uses
  %.sroa.8193 = alloca [312 x i8], align 8        ; 2 uses
  %i.ae = alloca [344 x i8], align 8              ; 7 uses
  %.sroa.6 = alloca [128 x i8], align 8           ; 6 uses
  %i.af = alloca [128 x i8], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue3new17h9b33964fd73cd59bE(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2)
  %i.ag = load i64, ptr %i.ae, align 8, !range !80, !noundef !57 ; 2 uses
  %.not = icmp eq i64 %i.ag, 152
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(128) %i.ah, i64 128, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.689.0..sroa_idx, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6, i64 128, i1 false)
  store i64 %i.ag, ptr %i.v, align 8
  %i.ai = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.af, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37423)
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !37421, !noalias !37424, !nonnull !57, !noundef !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !37425, !nonnull !57, !noundef !57
  %i.am = load i64, ptr %2, align 8, !range !71, !alias.scope !37426, !noalias !37427, !noundef !57
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = trunc nuw i64 %i.am to i1
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !37426, !noalias !37427, !nonnull !57, !align !61
  %.sroa.0.0.i.i = select i1 %i.ao, ptr %i.an, ptr %i.ap ; 3 uses
  %i.aq = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !37427, !nonnull !57, !noundef !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !37425, !nonnull !57, !noundef !57
  %i.at = icmp eq ptr %i.al, %i.as
  br i1 %i.at, label %bb.e, label %bb.d, !prof !58

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !37425
  store ptr @2223, ptr %i.m, align 8, !noalias !37425
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.au, align 8, !noalias !37425
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.av, align 8, !noalias !37425
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aw, align 8, !noalias !37425
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.ax, align 8, !noalias !37425
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2225) #80, !noalias !37425
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !37425
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !37426, !noalias !37427, !noundef !57 ; 4 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !60

bb.f:                                             ; preds = %bb.e
  %i.ba = tail call fastcc i64 @"_ZN4heed4envs3env12Env$LT$T$GT$12raw_open_dbi17h22b14340deb78d57E"(ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @828, i64 20, i32 noundef 262144), !noalias !37428 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i = trunc i64 %i.ba to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %i.ba, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i to i32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.sroa.020.0.extract.trunc.i.i.i, 22
  br i1 %.not.i.i.i, label %bb.i, label %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"

"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i": ; preds = %bb.f
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, i32 noundef %.sroa.020.0.extract.trunc.i.i.i, i32 %.sroa.4.0.extract.trunc.i.i.i), !noalias !37425
  %i.bb = load i32, ptr %i.l, align 16, !noalias !37425
  %.not3.i.i = icmp eq i32 %i.bb, 5
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !noalias !37429
  br i1 %.not3.i.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2201) #80, !noalias !37425
  unreachable

bb.h:                                             ; preds = %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bc = load <2 x i32>, ptr %.sroa.10.0..sroa_idx.i, align 16, !noalias !37429
  %i.bd = load <2 x i64>, ptr %i.l, align 16, !noalias !37429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 127, ptr %i.u, align 8
  store <2 x i64> %i.bd, ptr %.sroa.216.0..sroa_idx, align 8
  store <2 x i32> %i.bc, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.be = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17ha6b155e913d27dcbE"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.au

bb.i:                                             ; preds = %bb.f, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i"
  %i.bf = phi i32 [ %.sroa.4.0.extract.trunc.i.i.i, %bb.f ], [ %.pre.i.i, %"_ZN4heed4envs3env12Env$LT$T$GT$17raw_init_database17h113e7efcbe164ec3E.exit.i.i" ] ; 2 uses
  %i.bg = load ptr, ptr %i.ak, align 8, !noalias !37425, !nonnull !57, !noundef !57 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !37425
  %i.bh = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !37430, !nonnull !57, !noundef !57
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !37431, !nonnull !57, !noundef !57
  %i.bk = icmp eq ptr %i.bg, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !37431
  store ptr @2206, ptr %i.k, align 8, !noalias !37431
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.bl, align 8, !noalias !37431
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.bm, align 8, !noalias !37431
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bn, align 8, !noalias !37431
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.bo, align 8, !noalias !37431
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2213) #80, !noalias !37431
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !37431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !37432
  store ptr null, ptr %i.i, align 8, !noalias !37432
  %i.bp = call noundef i32 @mdb_cursor_open(ptr noundef nonnull %i.az, i32 noundef %i.bf, ptr noundef nonnull %i.i) #79, !noalias !37432
  %i.bq = call { i32, i32 } @_ZN4heed3mdb10lmdb_error10mdb_result17h91f495da5828afd4E(i32 noundef %i.bp), !noalias !37432 ; 2 uses
  %i.br = extractvalue { i32, i32 } %i.bq, 0      ; 2 uses
  %.not6.i.i = icmp eq i32 %i.br, 22
  br i1 %.not6.i.i, label %_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.thread.i, label %_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.i

_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.thread.i: ; preds = %bb.k
  %i.bs = load ptr, ptr %i.i, align 8, !noalias !37432, !noundef !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !37432
  br label %bb.m

_ZN4heed6cursor8RoCursor3new17h4eb16cdd8c1fe9eeE.exit.i: ; preds = %bb.k
  %i.bt = extractvalue { i32, i32 } %i.bq, 1
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, i32 noundef %i.br, i32 %i.bt), !noalias !37431
  %.pr.i = load i32, ptr %i.j, align 8, !noalias !37431 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !37432
end_hunk_10
begin_hunk_11_@_ZN4core4iter8adapters7flatten17and_then_or_clear17h3b327a0aba0b18d8E:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !131348)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !131349, !noalias !131350, !noundef !57 ; 7 uses
  %.not.i5.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i5.i.i.i.i.i.i.i, label %bb.ap, label %bb.u

bb.u:                                             ; preds = %.split28.us.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !131351)
  call void @llvm.experimental.noalias.scope.decl(metadata !131352)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !131353, !noalias !131354, !nonnull !57, !noundef !57
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.thread.i12.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i6.i.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i6.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store ptr %i.ca, ptr %i.bv, align 8, !alias.scope !131353, !noalias !131354
  %.sroa.0.0.copyload3.i7.i.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !noalias !131355 ; 2 uses
  %.sroa.7.0..sroa_idx4.i8.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.7.i4.i.i.sroa.4.0..sroa.7.0..sroa_idx4.i8.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.7.i4.i.i.sroa.5.0..sroa.7.0..sroa_idx4.i8.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.not2.i9.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload3.i7.i.i.i.i.i.i.i, null
  br i1 %.not2.i9.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.thread.i12.i.i.i.i.i.i.i, label %.noexc.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.thread.i12.i.i.i.i.i.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i6.i.i.i.i.i.i.i, %bb.u
  store ptr null, ptr %i.bv, align 8, !alias.scope !131349, !noalias !131350
  br label %bb.ap

.noexc.i.i.i:                                     ; preds = %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i6.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.us.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.us.peel.i.i.i.i.i.i.i
  %.sroa.7.sroa.6.1.ph.in.i.i.i.i.i = phi ptr [ %.sroa.7.i4.i.i.sroa.5.0..sroa.7.0..sroa_idx4.i8.i.i.sroa_idx.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i6.i.i.i.i.i.i.i ], [ %.sroa.7.i.i.i.sroa.12.0..sroa.7.0..sroa_idx4.i.us.peel.i.i.sroa_idx.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.us.peel.i.i.i.i.i.i.i ], [ %.sroa.7.i.i.i.sroa.12.0..sroa.7.0..sroa_idx4.i.us.i.i.sroa_idx.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.us.i.i.i.i.i.i.i ], [ %.sroa.7.i.i.i.sroa.12.0..sroa.7.0..sroa_idx4.i.i.i.sroa_idx.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.i.i.i.i.i.i.i ]
  %.sroa.7.sroa.5.1.ph.in.i.i.i.i.i = phi ptr [ %.sroa.7.i4.i.i.sroa.4.0..sroa.7.0..sroa_idx4.i8.i.i.sroa_idx.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i6.i.i.i.i.i.i.i ], [ %.sroa.7.i.i.i.sroa.11.0..sroa.7.0..sroa_idx4.i.us.peel.i.i.sroa_idx.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.us.peel.i.i.i.i.i.i.i ], [ %.sroa.7.i.i.i.sroa.11.0..sroa.7.0..sroa_idx4.i.us.i.i.sroa_idx.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.us.i.i.i.i.i.i.i ], [ %.sroa.7.i.i.i.sroa.11.0..sroa.7.0..sroa_idx4.i.i.i.sroa_idx.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.i.i.i.i.i.i.i ]
  %.sroa.7.sroa.0.1.ph.in.i.i.i.i.i = phi ptr [ %.sroa.7.0..sroa_idx4.i8.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i6.i.i.i.i.i.i.i ], [ %.sroa.7.0..sroa_idx4.i.us.peel.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.us.peel.i.i.i.i.i.i.i ], [ %.sroa.7.0..sroa_idx4.i.us.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.us.i.i.i.i.i.i.i ], [ %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.ph.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload3.i7.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i6.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload3.i.us.peel.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.us.peel.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload3.i.us.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.us.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload3.i.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.i.i.i.i.i.i.i.i ]
  %.sroa.7.sroa.0.1.ph.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.0.1.ph.in.i.i.i.i.i, align 8, !noalias !131356
  %.sroa.7.sroa.5.1.ph.i.i.i.i.i = load ptr, ptr %.sroa.7.sroa.5.1.ph.in.i.i.i.i.i, align 8, !noalias !131356, !nonnull !57, !noundef !57
  %.sroa.7.sroa.6.1.ph.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.6.1.ph.in.i.i.i.i.i, align 8, !noalias !131356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !131357
  call void @_ZN5milli6update3new15vector_document20entry_from_raw_value17h9421dfb5847b21a4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.sroa.5.1.ph.i.i.i.i.i, i64 noundef %.sroa.7.sroa.6.1.ph.i.i.i.i.i, i1 noundef zeroext false), !noalias !131358
  %i.cb = load i64, ptr %i.a, align 8, !range !199, !noalias !131357, !noundef !57 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cb, -9223372036854775800
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.029.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !noalias !131357 ; 13 uses
  %.sroa.530.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.530.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.530.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !131357 ; 11 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %bb.v

bb.v:                                             ; preds = %.noexc.i.i.i
  %i.cd = icmp ne i64 %i.cb, -9223372036854775802
  call void @llvm.assume(i1 %i.cd)
  %i.ce = xor i64 %i.cb, -9223372036854775808
  %i.cf = icmp slt i64 %i.cb, 0
  %i.cg = select i1 %i.cf, i64 %i.ce, i64 6
  switch i64 %i.cg, label %bb.w [
    i64 0, label %bb.aa
    i64 1, label %bb.ac
    i64 2, label %bb.ae
    i64 3, label %bb.ag
    i64 4, label %bb.ai
    i64 5, label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i"
    i64 6, label %bb.ak
  ]

bb.w:                                             ; preds = %bb.v
  %i.ch = inttoptr i64 %.sroa.029.0.copyload.i.i.i.i.i.i to ptr ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !131359)
  call void @llvm.experimental.noalias.scope.decl(metadata !131360)
  %i.ci = load i64, ptr %i.ch, align 8, !range !88, !alias.scope !131361, !noalias !131362, !noundef !57
  switch i64 %i.ci, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i.i.i" [
    i64 0, label %bb.x
    i64 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !131361, !noalias !131362, !noundef !57 ; 2 uses
  %i.ck = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ck, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !131361, !noalias !131362, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !131363
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cm)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i.i.i" unwind label %bb.z, !noalias !131362

bb.z:                                             ; preds = %bb.y
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 40, i64 noundef 8) #79, !noalias !131362
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i.i.i": ; preds = %bb.y, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.x, %bb.w
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 40, i64 noundef 8) #79, !noalias !131362
  br label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i"

bb.aa:                                            ; preds = %bb.v
  %i.co = icmp eq i64 %.sroa.029.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.co, label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.530.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.530.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.029.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !131364
  br label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i"

bb.ac:                                            ; preds = %bb.v
  %i.cp = icmp eq i64 %.sroa.029.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.cp, label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.530.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.530.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.029.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !131365
  br label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i"

bb.ae:                                            ; preds = %bb.v
  %i.cq = icmp eq i64 %.sroa.029.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.cq, label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i", label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.530.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.530.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.029.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !131366
  br label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i"

bb.ag:                                            ; preds = %bb.v
  %i.cr = icmp eq i64 %.sroa.029.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.cr, label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.530.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.530.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.029.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !131367
  br label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i"

bb.ai:                                            ; preds = %bb.v
  %i.cs = icmp eq i64 %.sroa.029.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.cs, label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.530.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.530.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.029.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !131368
  br label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i"

bb.ak:                                            ; preds = %bb.v
  %i.ct = icmp eq i64 %i.cb, 0
  br i1 %i.ct, label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cu = inttoptr i64 %.sroa.029.0.copyload.i.i.i.i.i.i to ptr
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cu, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !131369
  br label %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i"

"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i": ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i.i.i.i.i.i", %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !131357
  br label %_ZN4core3ops8function6FnOnce9call_once17h3aa16198f39b5e01E.exit

bb.am:                                            ; preds = %.noexc.i.i.i
  %.sroa.631.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cv = load <2 x i64>, ptr %.sroa.631.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !131357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !131357
  %i.cw = ptrtoint ptr %.sroa.0.1.ph.i.i.i.i.i to i64
  %i.cx = ptrtoint ptr %.sroa.530.0.copyload.i.i.i.i.i.i to i64
  br label %_ZN4core3ops8function6FnOnce9call_once17h3aa16198f39b5e01E.exit

bb.an:                                            ; preds = %bb.a
  store i64 98, ptr %0, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h3aa16198f39b5e01E.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  ret void

bb.ap:                                            ; preds = %.split28.us.i.i.i.i.i.i.i, %bb.p, %_ZN4core3ops8function6FnOnce9call_once17h4eb2a6cfecfccb8fE.exit.thread.i12.i.i.i.i.i.i.i
  store i64 3, ptr %1, align 8
  br label %_ZN4core3ops8function6FnOnce9call_once17h3aa16198f39b5e01E.exit

_ZN4core3ops8function6FnOnce9call_once17h3aa16198f39b5e01E.exit: ; preds = %bb.o, %bb.am, %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i", %bb.ap
  %.sroa.0.030 = phi i64 [ 98, %bb.ap ], [ 95, %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i" ], [ %.sroa.0.08.i.ph.i.i, %bb.o ], [ 97, %bb.am ]
  %.sroa.9.028 = phi i64 [ undef, %bb.ap ], [ -9223372036854775795, %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i" ], [ %.sroa.7.i.i.i.sroa.0.0, %bb.o ], [ %i.cw, %bb.am ]
  %.sroa.11.026 = phi i64 [ undef, %bb.ap ], [ 0, %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i" ], [ %.sroa.7.i.i.i.sroa.7.0, %bb.o ], [ %.sroa.7.sroa.0.1.ph.i.i.i.i.i, %bb.am ]
  %.sroa.12.024 = phi i64 [ undef, %bb.ap ], [ ptrtoint (ptr @432 to i64), %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i" ], [ %.sroa.7.i.i.i.sroa.8.0, %bb.o ], [ %.sroa.029.0.copyload.i.i.i.i.i.i, %bb.am ]
  %.sroa.13.022 = phi i64 [ undef, %bb.ap ], [ 12, %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i" ], [ %.sroa.7.i.i.i.sroa.9.0, %bb.o ], [ %i.cx, %bb.am ]
  %i.cy = phi <2 x i64> [ undef, %bb.ap ], [ undef, %"_ZN4core3ptr67drop_in_place$LT$milli..vector..parsed_vectors..RawVectorsError$GT$17he8618d82f6f6512dE.exit.i.i.i.i.i.i" ], [ %i.bi, %bb.o ], [ %i.cv, %bb.am ]
  store i64 %.sroa.0.030, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.028, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.026, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12.024, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.13.022, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.cy, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.16, i64 264, i1 false)
  br label %bb.ao
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h08fd32d4464cb69dE(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h172780bfee611e5eE(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h25cd19b191a9e10dE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h2d4832f14d1583b7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h4eb7be6be4218c7aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h7b151433b0e5a5e5E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h7b474b631e4d5c75E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h815ce40dd843aef7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h81bb9aec1c66e198E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17ha2f183813e482a5eE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17ha4da73b530f002d4E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hb538b3f1f4019d2bE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hbb2db0e442644dffE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @2111, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h110eacd27e044382E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !131370
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h2e8d36f945f445f8E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !131371
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h4971e8d6b4a26b4cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h5de9a338815d2db7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h6b9f86f589283bfcE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !131372
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h75ea8da9302af5aeE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !131373
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h8938ab36b3d64e2aE(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(2) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN57_$LT$http..error..Error$u20$as$u20$core..error..Error$GT$6source17h354f005a20a4fafeE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h89e506463aaa03faE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN68_$LT$index_scheduler..error..Error$u20$as$u20$core..error..Error$GT$6source17h5c61966c5d5d1b10E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h8ae05ed61c303494E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN63_$LT$serde_json..error..Error$u20$as$u20$core..error..Error$GT$6source17h2cb007fb824b2bbeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h8f63373cb6f64f16E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !131374
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17ha82e0646d509a3aaE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hce257671ed5f6bd7E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h5e056953e8921354E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h6dfc49ce9b6929c2E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h9925ea57aefd1e4dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17ha11d3c5f056d3fd1E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h2413ba68719f8abaE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h2d3fbe0ae48658cfE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h7454978c3d5274d9E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h7930cef9626f6725E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h7fcbd873a2570a8fE(ptr noalias nonnull readonly align 1 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h9ddb43b511a14b37E(ptr noalias readonly align 1 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17ha23bce275666c2c8E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hae07e388f851344aE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hc41b9d7157014f58E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hc7de838ead3bb498E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hd67c31a3f10fd15eE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
end_hunk_11
