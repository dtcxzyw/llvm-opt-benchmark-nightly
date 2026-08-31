Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.04?download=true
inline.NumInlined: 4752
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN3zip4read15find_data_start17ha6c5364fb9146275E:bb.a

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17hc969966dfa3192acE"(ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !5212
  br label %"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10try_insert17h50ba3a47619d37dbE.exit"

"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10try_insert17h50ba3a47619d37dbE.exit": ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5212
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.z, align 8
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10try_insert17h50ba3a47619d37dbE.exit", %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4read15find_data_start17hef07581f3f685ce9E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 4 dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !13
  %i.e = tail call { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17hb97dd089350561d0E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %2, i64 noundef 0, i64 noundef %i.d) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.e, 1
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.433.0..sroa_idx, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN3zip4spec14FixedSizeBlock5parse17h260f720f75de33aeE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 4 dereferenceable(4) %2)
  %i.i = load i8, ptr %i.b, align 8, !range !83, !noundef !13
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.056.0.copyload = load i8, ptr %i.k, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %.sroa.759.0.copyload = load i16, ptr %.sroa.759.0..sroa_idx, align 1
  %.sroa.860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %.sroa.1062.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %.sroa.1062.0.copyload = load i32, ptr %.sroa.1062.0..sroa_idx, align 1
  %.sroa.1163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  %.sroa.1365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  %.sroa.1365.0.copyload = load i8, ptr %.sroa.1365.0..sroa_idx, align 1
  %.sroa.267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load <2 x i16>, ptr %.sroa.557.0..sroa_idx, align 1
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.m = load <2 x i16>, ptr %.sroa.1163.0..sroa_idx, align 1
  %i.n = load <2 x i32>, ptr %.sroa.860.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 %.sroa.056.0.copyload, ptr %0, align 8
  store <2 x i16> %i.l, ptr %.sroa.267.0..sroa_idx, align 1
  store i16 %.sroa.759.0.copyload, ptr %.sroa.469.0..sroa_idx, align 1
  store <2 x i32> %i.n, ptr %.sroa.570.0..sroa_idx, align 1
  store i32 %.sroa.1062.0.copyload, ptr %.sroa.772.0..sroa_idx, align 1
  store <2 x i16> %i.m, ptr %.sroa.873.0..sroa_idx, align 1
  %.sroa.1075.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %.sroa.1365.0.copyload, ptr %.sroa.1075.0..sroa_idx, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.sroa.1344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  %.sroa.1344.0.copyload = load i16, ptr %.sroa.1344.0..sroa_idx, align 1
  %.sroa.1445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %.sroa.1445.0.copyload = load i16, ptr %.sroa.1445.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = zext i16 %.sroa.1344.0.copyload to i64
  %i.p = zext i16 %.sroa.1445.0.copyload to i64
  %i.q = load i64, ptr %i.c, align 8, !noundef !13
  %i.r = add nuw nsw i64 %i.o, 30
  %i.s = add nuw nsw i64 %i.r, %i.p
  %i.t = add i64 %i.s, %i.q                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5218
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !5218
  store i64 1, ptr %i.a, align 8, !noalias !5218
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.w = load atomic i32, ptr %i.v acquire, align 8, !noalias !5221
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10try_insert17h50ba3a47619d37dbE.exit", label %bb.f, !prof !85

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17hc969966dfa3192acE"(ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !5218
  br label %"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10try_insert17h50ba3a47619d37dbE.exit"

"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10try_insert17h50ba3a47619d37dbE.exit": ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5218
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.z, align 8
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10try_insert17h50ba3a47619d37dbE.exit", %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4read18make_crypto_reader17h4b98446d11ed0898E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 1 captures(address, read_provenance) %3, i64 %4, i64 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %.sroa.39 = alloca [24 x i8], align 8           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.d = load i16, ptr %i.c, align 8, !range !5224, !noundef !13
  %i.e = icmp eq i16 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.f, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @236, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 32, ptr %.sroa.529.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %i.g = and i64 %5, 65535
  %.not39 = icmp eq i64 %i.g, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.j, %bb.o, %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  br i1 %.not39, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.h, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.p, %bb.h
  %.sroa.4.0 = phi i64 [ %.sroa.632.0.copyload, %bb.p ], [ undef, %bb.h ]
  %.sroa.07.0 = phi ptr [ %i.w, %bb.p ], [ null, %bb.h ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0, ptr %i.i, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.j, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @237, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 71, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.k:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.l = load i8, ptr %i.k, align 4, !range !83, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.o = load i32, ptr %i.n, align 4, !noundef !13
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw i64 %i.p, 32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.035.0.copyload = load i48, ptr %i.r, align 4 ; 2 uses
  %i.s = trunc i48 %.sroa.035.0.copyload to i1
  %i.t = lshr i48 %.sroa.035.0.copyload, 16
  %i.u = and i48 %i.t, 4294901760
  %i.v = or disjoint i48 %i.u, 1
  %6 = zext nneg i48 %i.v to i64
  %7 = select i1 %i.s, i64 %6, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.437.0.insert.insert = phi i64 [ %7, %bb.m ], [ %i.q, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN3zip9zipcrypto24ZipCryptoReader$LT$R$GT$3new17hb27450a5ff8b14eaE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  call void @"_ZN3zip9zipcrypto24ZipCryptoReader$LT$R$GT$8validate17h032504e71604b62bE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, i64 %.sroa.437.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %i.b, align 8, !noundef !13 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.d

bb.p:                                             ; preds = %bb.n
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.632.0.copyload = load i64, ptr %.sroa.632.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4read18make_crypto_reader17hb2f54c243d9f685dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 1 captures(address, read_provenance) %3, i64 %4, i64 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %.sroa.39 = alloca [24 x i8], align 8           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.d = load i16, ptr %i.c, align 8, !range !5224, !noundef !13
  %i.e = icmp eq i16 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.f, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @236, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 32, ptr %.sroa.529.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %i.g = and i64 %5, 65535
  %.not39 = icmp eq i64 %i.g, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.j, %bb.o, %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  br i1 %.not39, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.h, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.p, %bb.h
  %.sroa.4.0 = phi i64 [ %.sroa.632.0.copyload, %bb.p ], [ undef, %bb.h ]
  %.sroa.07.0 = phi ptr [ %i.w, %bb.p ], [ null, %bb.h ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0, ptr %i.i, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.j, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @237, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 71, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.k:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.l = load i8, ptr %i.k, align 4, !range !83, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.o = load i32, ptr %i.n, align 4, !noundef !13
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw i64 %i.p, 32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.035.0.copyload = load i48, ptr %i.r, align 4 ; 2 uses
  %i.s = trunc i48 %.sroa.035.0.copyload to i1
  %i.t = lshr i48 %.sroa.035.0.copyload, 16
  %i.u = and i48 %i.t, 4294901760
  %i.v = or disjoint i48 %i.u, 1
  %6 = zext nneg i48 %i.v to i64
  %7 = select i1 %i.s, i64 %6, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.437.0.insert.insert = phi i64 [ %7, %bb.m ], [ %i.q, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN3zip9zipcrypto24ZipCryptoReader$LT$R$GT$3new17h2140b2f65a37f3efE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  call void @"_ZN3zip9zipcrypto24ZipCryptoReader$LT$R$GT$8validate17h426f6cc05535d10aE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, i64 %.sroa.437.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %i.b, align 8, !noundef !13 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.d

bb.p:                                             ; preds = %bb.n
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.632.0.copyload = load i64, ptr %.sroa.632.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4read18make_crypto_reader17hba8bf91c762cf1f4E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 1 captures(address, read_provenance) %3, i64 %4, i64 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %.sroa.39 = alloca [24 x i8], align 8           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.d = load i16, ptr %i.c, align 8, !range !5224, !noundef !13
  %i.e = icmp eq i16 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.f, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @236, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 32, ptr %.sroa.529.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %i.g = and i64 %5, 65535
  %.not39 = icmp eq i64 %i.g, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.j, %bb.o, %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  br i1 %.not39, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.h, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.p, %bb.h
  %.sroa.4.0 = phi i64 [ %.sroa.632.0.copyload, %bb.p ], [ undef, %bb.h ]
  %.sroa.07.0 = phi ptr [ %i.w, %bb.p ], [ null, %bb.h ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0, ptr %i.i, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.j, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @237, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 71, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.k:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.l = load i8, ptr %i.k, align 4, !range !83, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.o = load i32, ptr %i.n, align 4, !noundef !13
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw i64 %i.p, 32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.035.0.copyload = load i48, ptr %i.r, align 4 ; 2 uses
  %i.s = trunc i48 %.sroa.035.0.copyload to i1
  %i.t = lshr i48 %.sroa.035.0.copyload, 16
  %i.u = and i48 %i.t, 4294901760
  %i.v = or disjoint i48 %i.u, 1
  %6 = zext nneg i48 %i.v to i64
  %7 = select i1 %i.s, i64 %6, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.437.0.insert.insert = phi i64 [ %7, %bb.m ], [ %i.q, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN3zip9zipcrypto24ZipCryptoReader$LT$R$GT$3new17h159350b107abc202E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  call void @"_ZN3zip9zipcrypto24ZipCryptoReader$LT$R$GT$8validate17h5590e1f4f68ca988E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, i64 %.sroa.437.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %i.b, align 8, !noundef !13 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.d

bb.p:                                             ; preds = %bb.n
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.632.0.copyload = load i64, ptr %.sroa.632.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4read26central_header_to_zip_file17h8187fee2eb005a6cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [208 x i8], align 8               ; 42 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.26 = alloca [176 x i8], align 8          ; 5 uses
  %i.r = alloca [208 x i8], align 8               ; 11 uses
  %i.s = alloca [48 x i8], align 8                ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val38 = load i64, ptr %i.t, align 8, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_ZN3zip4spec14FixedSizeBlock5parse17h49b4eaf66d4aaa3aE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.u = load i8, ptr %i.s, align 8, !range !83, !noundef !13
  %i.v = trunc nuw i8 %i.u to i1
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %i.w = load <4 x i16>, ptr %.sroa.5106.0..sroa_idx, align 1 ; 5 uses
  %.sroa.9110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  %.sroa.9110.0.copyload = load i32, ptr %.sroa.9110.0..sroa_idx, align 1 ; 2 uses
  %.sroa.10111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 21
  %.sroa.10111.0.copyload = load i32, ptr %.sroa.10111.0..sroa_idx, align 1 ; 2 uses
  %.sroa.11112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  %.sroa.11112.0.copyload = load i32, ptr %.sroa.11112.0..sroa_idx, align 1 ; 2 uses
  %.sroa.12113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 29
  %.sroa.12113.0.copyload = load i16, ptr %.sroa.12113.0..sroa_idx, align 1 ; 2 uses
  %.sroa.13114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 31 ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0105.0.copyload = load i8, ptr %i.x, align 8
  %.sroa.13114.0.copyload = load i8, ptr %.sroa.13114.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0105.0.copyload, ptr %i.y, align 8
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store <4 x i16> %i.w, ptr %.sroa.2116.0..sroa_idx, align 1
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i32 %.sroa.9110.0.copyload, ptr %.sroa.6120.0..sroa_idx, align 1
  %.sroa.7121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i32 %.sroa.10111.0.copyload, ptr %.sroa.7121.0..sroa_idx, align 1
  %.sroa.8122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i32 %.sroa.11112.0.copyload, ptr %.sroa.8122.0..sroa_idx, align 1
  %.sroa.9123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i16 %.sroa.12113.0.copyload, ptr %.sroa.9123.0..sroa_idx, align 1
  %.sroa.10124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.13114.0.copyload, ptr %.sroa.10124.0..sroa_idx, align 1
  store i64 2, ptr %0, align 8
  br label %bb.ct

bb.c:                                             ; preds = %bb.a
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %.sroa.585.0.copyload = load i16, ptr %.sroa.585.0..sroa_idx, align 1 ; 2 uses
  %.sroa.15.0.copyload = load i16, ptr %.sroa.13114.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 33
  %.sroa.16.0.copyload = load i16, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 39
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.1994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 43
  %.sroa.1994.0.copyload = load i32, ptr %.sroa.1994.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  %i.z = load i64, ptr %2, align 8, !noundef !13
  %i.aa = extractelement <4 x i16> %i.w, i64 0    ; 2 uses
  %i.ab = trunc i16 %i.aa to i8                   ; 2 uses
  %i.ac = and i16 %i.aa, 2048                     ; 2 uses
  %.not99.i = icmp eq i16 %i.ac, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5225
  %i.ad = zext i16 %.sroa.12113.0.copyload to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5230
  call void @llvm.experimental.noalias.scope.decl(metadata !5234)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5237
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, i64 noundef range(i64 0, 65536) %i.ad, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !5237
  %i.ae = load i64, ptr %i.h, align 8, !range !31, !noalias !5237, !noundef !13
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !32, !noalias !5237, !noundef !13 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.af, label %bb.d, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i", !prof !33

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !5237
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ah, i64 %i.aj) #38, !noalias !5238
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i": ; preds = %bb.c
  %i.ak = load ptr, ptr %i.ai, align 8, !noalias !5237, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5237
  store i64 %i.ah, ptr %i.i, align 8, !alias.scope !5234, !noalias !5230
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !5234, !noalias !5230
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ad, ptr %i.am, align 8, !alias.scope !5234, !noalias !5230
  %i.an = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !5239 ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 9 uses
  %i.ap = extractvalue { ptr, i64 } %i.an, 1      ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5230
  %i.aq = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.ao, i64 noundef %i.ap)
          to label %bb.g unwind label %bb.e, !noalias !5240 ; 2 uses

bb.e:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  br label %common.resume.sink.split.i

bb.g:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, 0) %i.ap, i64 noundef 1) #30, !noalias !5240
  br label %bb.j

common.resume.sink.split.i:                       ; preds = %.thread.i, %bb.f
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ar, %bb.f ], [ %.pn114274.i, %.thread.i ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, 0) %i.ap, i64 noundef 1) #30, !noalias !5241
  br label %common.resume

common.resume:                                    ; preds = %bb.co, %bb.e, %common.resume.sink.split.i, %bb.r, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.ar, %bb.e ], [ %.pn114274.i, %.thread.i ], [ %.pn112.i, %bb.r ], [ %i.hu, %bb.co ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = ptrtoint ptr %i.aq to i64
  br label %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread

bb.k:                                             ; preds = %bb.g
  store ptr %i.ao, ptr %i.q, align 8, !noalias !5225
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.ap, ptr %i.av, align 8, !noalias !5225
  %i.aw = zext i16 %.sroa.15.0.copyload to i64    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5242
  call void @llvm.experimental.noalias.scope.decl(metadata !5246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5249
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef range(i64 0, 65536) %i.aw, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.s, !noalias !5241

.noexc.i:                                         ; preds = %bb.k
  %i.ax = load i64, ptr %i.f, align 8, !range !31, !noalias !5249, !noundef !13
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !32, !noalias !5249, !noundef !13 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
end_hunk_0
