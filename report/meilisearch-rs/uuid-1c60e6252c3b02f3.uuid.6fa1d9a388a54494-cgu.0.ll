Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/uuid-1c60e6252c3b02f3.uuid.6fa1d9a388a54494-cgu.0?download=true
inline.NumInlined: 319
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@"_ZN4uuid6parser92_$LT$impl$u20$core..convert..TryFrom$LT$alloc..string..String$GT$$u20$for$u20$uuid..Uuid$GT$8try_from17h866bd775deb8d918E":bb.a
  call void @_ZN4uuid6parser9try_parse17h599ddfeede7c2a47E(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 1 %.val, i64 %.val1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i8, ptr %i.f, align 8               ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.g, 5
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4a331f161444a5bbE"(ptr nonnull align 8 %1) #24
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx4.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.g, ptr %.sroa.4.0..sroa_idx2.i.i, align 8
  invoke fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h2662b006ae31b65fE(ptr noalias nonnull align 8 %i.b, ptr align 8 %i.a)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  store i32 9, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9d31ff021d90655fE"(ptr nonnull align 8 %1)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4a331f161444a5bbE.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d336a5866d2c9c3E"(ptr nonnull align 8 %1)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.h, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4a331f161444a5bbE.exit": ; preds = %bb.e
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d336a5866d2c9c3E"(ptr nonnull align 8 %1)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid6parser9try_parse17h599ddfeede7c2a47E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 17)) %0, ptr align 1 %1, i64 %2) unnamed_addr #9 !guid !112 {
bb.a:
  switch i64 %2, label %bb.b [
    i64 32, label %bb.c
    i64 36, label %bb.e
    i64 38, label %bb.f
    i64 45, label %bb.i
  ]

bb.b:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.a
  store ptr %1, ptr %0, align 8
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.235.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4uuid6parser12parse_simple17h09c56f65bde52600E(ptr noalias align 8 %0, ptr align 1 %1, i64 32, i1 zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.b
  ret void

bb.e:                                             ; preds = %bb.a, %bb.r, %bb.h
  %.sroa.033.0 = phi ptr [ %i.ag, %bb.r ], [ %i.f, %bb.h ], [ %1, %bb.a ]
  tail call fastcc void @_ZN4uuid6parser16parse_hyphenated17h7a13680d9f9875aeE(ptr noalias align 8 %0, ptr align 1 %.sroa.033.0, i64 36)
  br label %bb.d

bb.f:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1
  %i.b = icmp eq i8 %i.a, 123
  br i1 %i.b, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 125
  br i1 %i.e, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.e

bb.i:                                             ; preds = %bb.a
  %i.g = load i8, ptr %1, align 1
  %i.h = icmp eq i8 %i.g, 117
  br i1 %i.h, label %bb.j, label %bb.b

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 114
  br i1 %i.k, label %bb.k, label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 110
  br i1 %i.n, label %bb.l, label %bb.b

bb.l:                                             ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 58
  br i1 %i.q, label %bb.m, label %bb.b

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 117
  br i1 %i.t, label %bb.n, label %bb.b

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 117
  br i1 %i.w, label %bb.o, label %bb.b

bb.o:                                             ; preds = %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 105
  br i1 %i.z, label %bb.p, label %bb.b

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 100
  br i1 %i.ac, label %bb.q, label %bb.b

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 58
  br i1 %i.af, label %bb.r, label %bb.b

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$10from_slice17h733ecb84ac98e671E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 !guid !113 {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 3 uses
  %i.b = icmp eq i64 %2, 16
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h349328e3014a3616E"(ptr nonnull align 1 %i.a, i64 16, ptr align 1 %1, i64 16, ptr nonnull align 8 @46)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.34.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 9, %bb.b ], [ 1, %bb.c ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$11from_fields17h8b1c81f1d7f50eabE"(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i32 %1, i16 %2, i16 %3, ptr nofree readonly align 1 captures(none) %4) unnamed_addr #9 !guid !114 {
bb.a:
  %i.a = lshr i16 %2, 8
  %i.b = trunc nuw i16 %i.a to i8
  %i.c = trunc i16 %2 to i8
  %i.d = lshr i16 %3, 8
  %i.e = trunc nuw i16 %i.d to i8
  %i.f = trunc i16 %3 to i8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <8 x i8>, ptr %4, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %5, ptr %0, align 1
  store i8 %i.b, ptr %.sroa.5.0..sroa_idx, align 1
  store i8 %i.c, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 %i.e, ptr %.sroa.7.0..sroa_idx, align 1
  store i8 %i.f, ptr %.sroa.8.0..sroa_idx, align 1
  store <8 x i8> %i.g, ptr %.sroa.9.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$12from_u128_le17h8e44e79bab64661cE"(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i128 %1) unnamed_addr #11 !guid !115 {
bb.a:
  store i128 %1, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$13from_bytes_le17hc5e2c4b96d81474aE"(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 !guid !116 {
bb.a:
  %i.a = load <16 x i8>, ptr %1, align 1
  %i.b = shufflevector <16 x i8> %i.a, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 5, i32 4, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i8> %i.b, ptr %0, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$13from_slice_le17heafae1bf445389fbE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 !guid !117 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 3 uses
  %i.b = icmp eq i64 %2, 16
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h349328e3014a3616E"(ptr nonnull align 1 %i.a, i64 16, ptr align 1 %1, i64 16, ptr nonnull align 8 @47)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load <16 x i8>, ptr %i.a, align 16
  %i.e = shufflevector <16 x i8> %i.d, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 5, i32 4, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i8> %i.e, ptr %i.c, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.34.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 9, %bb.b ], [ 1, %bb.c ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$13from_u64_pair17h9c7f3f75c3db5d19E"(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i64 %1, i64 %2) unnamed_addr #11 !guid !118 {
bb.a:
  %i.a = zext i64 %1 to i128
  %i.b = shl nuw i128 %i.a, 64
  %i.c = zext i64 %2 to i128
  %i.d = or disjoint i128 %i.b, %i.c
  %i.e = tail call i128 @llvm.bswap.i128(i128 %i.d)
  store i128 %i.e, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$14from_fields_le17h81d5c0468073af06E"(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i32 %1, i16 %2, i16 %3, ptr nofree readonly align 1 captures(none) %4) unnamed_addr #9 !guid !119 {
bb.a:
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.a = load <8 x i8>, ptr %4, align 1
  store i32 %1, ptr %0, align 1
  store i16 %2, ptr %.sroa.5.0..sroa_idx, align 1
  store i16 %3, ptr %.sroa.7.0..sroa_idx, align 1
  store <8 x i8> %i.a, ptr %.sroa.9.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$3max17h172cfd5d23c44012E"(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0) unnamed_addr #11 !guid !120 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$3nil17hc84c6fa78bc28138E"(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0) unnamed_addr #11 !guid !121 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$9from_u12817h4c14b6383e33f5caE"(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i128 %1) unnamed_addr #11 !guid !122 {
bb.a:
  %i.a = tail call i128 @llvm.bswap.i128(i128 %1)
  store i128 %i.a, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder10from_bytes17h906dc3a0e50decbbE(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 !guid !123 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4uuid7builder7Builder10from_slice17heaaff87daf41f594E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 !guid !124 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp eq i64 %2, 16
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.319.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h349328e3014a3616E"(ptr nonnull align 1 %i.a, i64 16, ptr align 1 %1, i64 16, ptr nonnull align 8 @46)
  %.sroa.3.4.copyload = load i32, ptr %i.a, align 4
  %.sroa.68.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.68.4.copyload = load i64, ptr %.sroa.68.4..sroa_idx, align 4
  %.sroa.7.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.7.sroa.0.0.copyload = load i32, ptr %.sroa.7.4..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.3.4.copyload, ptr %i.c, align 4
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.68.4.copyload, ptr %.sroa.225.0..sroa_idx, align 8
  %.sroa.326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.326.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder11from_fields17h3d12a1b7d4e38df5E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i32 %1, i16 %2, i16 %3, ptr nofree readonly align 1 captures(none) %4) unnamed_addr #9 !guid !125 {
bb.a:
  %i.a = lshr i16 %2, 8
  %i.b = trunc nuw i16 %i.a to i8
  %i.c = trunc i16 %2 to i8
  %i.d = lshr i16 %3, 8
  %i.e = trunc nuw i16 %i.d to i8
  %i.f = trunc i16 %3 to i8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <8 x i8>, ptr %4, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %5, ptr %0, align 1
  store i8 %i.b, ptr %.sroa.5.0..sroa_idx, align 1
  store i8 %i.c, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 %i.e, ptr %.sroa.7.0..sroa_idx, align 1
  store i8 %i.f, ptr %.sroa.8.0..sroa_idx, align 1
  store <8 x i8> %i.g, ptr %.sroa.9.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 1 ptr @_ZN4uuid7builder7Builder11set_variant17hb13e948af2b37513E(ptr nofree returned align 1 captures(ret: address, provenance) %0, i8 %1) unnamed_addr #9 !guid !126 {
bb.a:
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.28.0.copyload = load i8, ptr %.sroa.28.0..sroa_idx, align 1 ; 4 uses
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = and i8 %.sroa.28.0.copyload, 127
  br label %_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E.exit

bb.d:                                             ; preds = %bb.a
  %i.b = and i8 %.sroa.28.0.copyload, 63
  %i.c = or disjoint i8 %i.b, -128
  br label %_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E.exit

bb.e:                                             ; preds = %bb.a
  %i.d = and i8 %.sroa.28.0.copyload, 31
  %i.e = or disjoint i8 %i.d, -64
  br label %_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E.exit

bb.f:                                             ; preds = %bb.a
  %i.f = or i8 %.sroa.28.0.copyload, -32
  br label %_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E.exit

_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.a, %bb.c ], [ %i.c, %bb.d ], [ %i.e, %bb.e ], [ %i.f, %bb.f ]
  store i8 %.sroa.0.0.i, ptr %.sroa.28.0..sroa_idx, align 1
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 1 ptr @_ZN4uuid7builder7Builder11set_version17h58aa47bb28d2a073E(ptr nofree returned align 1 captures(ret: address, provenance) %0, i8 %1) unnamed_addr #9 !guid !127 {
bb.a:
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %.sroa.27.0.copyload = load i8, ptr %.sroa.27.0..sroa_idx, align 1
  %i.a = and i8 %.sroa.27.0.copyload, 15
  %i.b = shl i8 %1, 4
  %i.c = or disjoint i8 %i.a, %i.b
  store i8 %i.c, ptr %.sroa.27.0..sroa_idx, align 1
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4uuid7builder7Builder12from_u128_le17hd6922ccdbfb45116E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i128 %1) unnamed_addr #11 !guid !128 {
bb.a:
  store i128 %1, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) %0, ptr nofree align 1 captures(none) %1, i8 %2) unnamed_addr #9 !guid !129 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1               ; 4 uses
  switch i8 %2, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i8 %i.b, 127
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, 63
  %i.e = or disjoint i8 %i.d, -128
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.f = and i8 %i.b, 31
  %i.g = or disjoint i8 %i.f, -64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.h = or i8 %i.b, -32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i8 [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ]
  store i8 %.sroa.0.0, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder12with_version17h438e954e56f9fee4E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree align 1 captures(none) %1, i8 %2) unnamed_addr #9 !guid !130 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 15
  %i.d = shl i8 %2, 4
  %i.e = or disjoint i8 %i.c, %i.d
  store i8 %i.e, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder13from_bytes_le17ha13e1f9042b66c40E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 !guid !131 {
bb.a:
  %i.a = load <16 x i8>, ptr %1, align 1
  %i.b = shufflevector <16 x i8> %i.a, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 5, i32 4, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i8> %i.b, ptr %0, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4uuid7builder7Builder13from_slice_le17h634e61cf74164090E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 !guid !132 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp eq i64 %2, 16
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.667.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h349328e3014a3616E"(ptr nonnull align 1 %i.a, i64 16, ptr align 1 %1, i64 16, ptr nonnull align 8 @47)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.913.0.copyload.i = load i32, ptr %.sroa.913.0..sroa_idx.i, align 4
  %i.c = zext i32 %.sroa.913.0.copyload.i to i64
  %i.d = shl nuw i64 %i.c, 32
  %.sroa.1317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load <4 x i8>, ptr %.sroa.59.0..sroa_idx.i, align 4
  %i.f = shufflevector <4 x i8> %i.e, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.g = bitcast <4 x i8> %i.f to i32
  %i.h = zext i32 %i.g to i64
  %op.rdx = or disjoint i64 %i.d, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load <4 x i8>, ptr %i.a, align 4
  %i.k = shufflevector <4 x i8> %i.j, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load <4 x i8>, ptr %.sroa.1317.0..sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <4 x i8> %i.k, ptr %i.i, align 4
  store i64 %op.rdx, ptr %.sroa.583.0..sroa_idx, align 8
  store <4 x i8> %i.l, ptr %.sroa.684.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder14from_fields_le17ha1d89cede62792b0E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i32 %1, i16 %2, i16 %3, ptr nofree readonly align 1 captures(none) %4) unnamed_addr #9 !guid !133 {
bb.a:
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.a = load <8 x i8>, ptr %4, align 1
  store i32 %1, ptr %0, align 1
  store i16 %2, ptr %.sroa.2.0..sroa_idx, align 1
  store i16 %3, ptr %.sroa.3.0..sroa_idx, align 1
  store <8 x i8> %i.a, ptr %.sroa.4.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder14from_md5_bytes17h8e502b3cec812486E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 !guid !134 {
bb.a:
  %.sroa.4.sroa.3 = alloca [7 x i8], align 1      ; 2 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.211.0.copyload = load i8, ptr %.sroa.211.0..sroa_idx, align 1
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.sroa.312.0.copyload = load i8, ptr %.sroa.312.0..sroa_idx, align 1
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.413.0.copyload = load i8, ptr %.sroa.413.0..sroa_idx, align 1
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.514.0..sroa_idx, i64 7, i1 false)
end_hunk_0
