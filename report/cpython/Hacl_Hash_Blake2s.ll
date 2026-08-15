inline.NumInlined: 101
inline.NumDeleted: 7
begin_hunk_0_@_Py_LibHacl_Hacl_Hash_Blake2s_finish:bb.a
  store <4 x i32> %i.e, ptr %i.b, align 16
  %i.f = zext i32 %0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.f, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_malloc_with_params_and_key(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %.sroa.02.0.copyload = load i8, ptr %0, align 8, !tbaa !12
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.43.0.copyload = load i8, ptr %.sroa.43.0..sroa_idx, align 1, !tbaa !12 ; 4 uses
  %.sroa.4.0.insert.ext = zext i8 %.sroa.02.0.copyload to i16
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0.insert.ext, 8
  %.sroa.01.0.insert.ext = zext i8 %.sroa.43.0.copyload to i16
  %i.a = or disjoint i16 %.sroa.4.0.insert.shift, %.sroa.01.0.insert.ext
  %i.b = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #18 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %malloc_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 16, i64 noundef 4) #18 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 16, i64 noundef 4) #18 ; 10 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #17
  br label %.critedge.i

.critedge.i:                                      ; preds = %.thread.i, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %malloc_raw.exit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #19 ; 9 uses
  %cond.i = icmp eq ptr %i.h, null
  br i1 %cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i8 %.sroa.43.0.copyload, 0    ; 2 uses
  %.0183.i = select i1 %.not.i, i64 0, i64 64
  %i.i = zext i1 %1 to i8
  store i16 %i.a, ptr %i.h, align 8
  %.sroa.0108.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 %i.i, ptr %.sroa.0108.sroa.4.0..sroa_idx.i, align 2, !tbaa !13
  %.sroa.0108.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0108.sroa.5.0..sroa_idx.i, i8 0, i64 5, i1 false)
  %.sroa.0108.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.d, ptr %.sroa.0108.sroa.6.0..sroa_idx.i, align 8, !tbaa !15
  %.sroa.0108.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %.sroa.0108.sroa.7.0..sroa_idx.i, align 8, !tbaa !15
  %.sroa.4109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.b, ptr %.sroa.4109.0..sroa_idx.i, align 8, !tbaa !18
  %.sroa.5110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.0183.i, ptr %.sroa.5110.0..sroa_idx.i, align 8, !tbaa !20
  br i1 %.not.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #17
  tail call void @free(ptr noundef nonnull %i.f) #17
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %malloc_raw.exit

bb.g:                                             ; preds = %bb.e
  %i.j = zext i8 %.sroa.43.0.copyload to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr readonly align 1 %2, i64 %i.j, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload.i = load i16, ptr %.sroa.5.0..sroa_idx.i, align 2
  %i.k = zext i16 %.sroa.5.0.copyload.i to i32
  %i.l = shl nuw i32 %i.k, 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !6
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !20 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0.copyload.i = load i16, ptr %.sroa.10.0..sroa_idx.i, align 8
  %i.m = zext i16 %.sroa.10.0.copyload.i to i32
  %i.n = shl nuw i32 %i.m, 16
  %.sroa.1280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.1280.0.copyload.i = load ptr, ptr %.sroa.1280.0..sroa_idx.i, align 8, !tbaa !18
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.14.0.copyload.i = load ptr, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !18
  %i.o = getelementptr i8, ptr %i.f, i64 16
  %i.p = getelementptr i8, ptr %i.f, i64 32
  %i.q = getelementptr i8, ptr %i.f, i64 48
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.p, align 4, !tbaa !6
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.q, align 4, !tbaa !6
  %i.r = zext i8 %.sroa.0.0.copyload.i to i32
  %i.s = zext i8 %.sroa.43.0.copyload to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = or disjoint i32 %i.t, %i.r
  %i.v = or disjoint i32 %i.u, %i.l
  %i.w = trunc i64 %.sroa.8.0.copyload.i to i32
  %i.x = lshr i64 %.sroa.8.0.copyload.i, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = xor i32 %i.v, 1779033703
  %i.aa = xor i32 %.sroa.7.0.copyload.i, -1150833019
  %i.ab = xor i32 %i.w, 1013904242
  %i.ac = xor i32 %i.n, %i.y
  %i.ad = xor i32 %i.ac, -1521486534
  %i.ae = getelementptr i8, ptr %i.f, i64 4
  %i.af = getelementptr i8, ptr %i.f, i64 8
  %i.ag = getelementptr i8, ptr %i.f, i64 12
  %i.ah = load <2 x i32>, ptr %.sroa.1280.0.copyload.i, align 1
  %i.ai = load <2 x i32>, ptr %.sroa.14.0.copyload.i, align 1
  %i.aj = shufflevector <2 x i32> %i.ah, <2 x i32> %i.ai, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ak = xor <4 x i32> %i.aj, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store i32 %i.z, ptr %i.f, align 4, !tbaa !6
  store i32 %i.aa, ptr %i.ae, align 4, !tbaa !6
  store i32 %i.ab, ptr %i.af, align 4, !tbaa !6
  store i32 %i.ad, ptr %i.ag, align 4, !tbaa !6
  store <4 x i32> %i.ak, ptr %i.o, align 4, !tbaa !6
  br label %malloc_raw.exit

malloc_raw.exit:                                  ; preds = %.critedge.i, %bb.h, %bb.f, %bb.a
  %.3.i = phi ptr [ null, %bb.a ], [ null, %.critedge.i ], [ %i.h, %bb.h ], [ null, %bb.f ]
  ret ptr %.3.i
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_malloc_with_key(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %2 = alloca %struct.Hacl_Hash_Blake2b_blake2_params_s, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 32, ptr %2, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !18
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !18
  %i.c = call ptr @_Py_LibHacl_Hacl_Hash_Blake2s_malloc_with_params_and_key(ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_malloc() local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %0 = alloca %struct.Hacl_Hash_Blake2b_blake2_params_s, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx.i, i8 0, i64 6, i1 false)
  store <4 x i8> <i8 32, i8 0, i8 1, i8 1>, ptr %0, align 8, !tbaa !12
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx.i, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !18
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !18
  %i.c = call noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_malloc_with_params_and_key(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_reset_with_key_and_params(ptr nofree noundef captures(none) initializes((32, 40)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  tail call fastcc void @reset_raw(ptr noundef %0, ptr %1, ptr %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @reset_raw(ptr nofree noundef captures(none) initializes((32, 40)) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %.sroa.8120 = alloca [13 x i8], align 1         ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !12 ; 2 uses
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4126.0.copyload = load i8, ptr %.sroa.4126.0..sroa_idx, align 1, !tbaa !12
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5127.0.copyload = load i8, ptr %.sroa.5127.0..sroa_idx, align 2, !tbaa !13
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx, i64 13, i1 false)
  %.sroa.7129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.7129.0.copyload = load ptr, ptr %.sroa.7129.0..sroa_idx, align 8, !tbaa !15 ; 5 uses
  %.sroa.8130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.8130.0.copyload = load ptr, ptr %.sroa.8130.0..sroa_idx, align 8, !tbaa !18 ; 3 uses
  %i.a = getelementptr i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22    ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.b to i64                      ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.8130.0.copyload, i64 %i.d
  %i.f = sub nsw i64 64, %i.d
  %i.g = and i64 %i.f, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8130.0.copyload, ptr align 1 %2, i64 %i.d, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !20 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 8
  %i.h = zext i16 %.sroa.10.0.copyload to i32
  %i.i = shl nuw i32 %i.h, 16
  %.sroa.1285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.1285.0.copyload = load ptr, ptr %.sroa.1285.0..sroa_idx, align 8, !tbaa !18
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !18
  %i.j = getelementptr i8, ptr %.sroa.7129.0.copyload, i64 16
  %i.k = getelementptr i8, ptr %.sroa.7129.0.copyload, i64 32
  %i.l = getelementptr i8, ptr %.sroa.7129.0.copyload, i64 48
  %i.m = trunc i64 %.sroa.8.0.copyload to i32
  %i.n = lshr i64 %.sroa.8.0.copyload, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = xor i32 %i.i, %i.o
  %i.q = load <2 x i32>, ptr %1, align 8
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.k, align 4, !tbaa !6
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.l, align 4, !tbaa !6
  %i.r = insertelement <4 x i32> poison, i32 %i.m, i64 2
  %i.s = insertelement <4 x i32> %i.r, i32 %i.p, i64 3
  %i.t = shufflevector <2 x i32> %i.q, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> %i.s, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.v = xor <4 x i32> %i.u, <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>
  %i.w = load <2 x i32>, ptr %.sroa.1285.0.copyload, align 1
  %i.x = load <2 x i32>, ptr %.sroa.14.0.copyload, align 1
  %i.y = shufflevector <2 x i32> %i.w, <2 x i32> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.z = xor <4 x i32> %i.y, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store <4 x i32> %i.v, ptr %.sroa.7129.0.copyload, align 4, !tbaa !6
  store <4 x i32> %i.z, ptr %i.j, align 4, !tbaa !6
  %.not = icmp eq i8 %.sroa.0.0.copyload, 0
  %. = select i1 %.not, i64 0, i64 64
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload, ptr %0, align 8, !tbaa !12
  store i8 %.sroa.4126.0.copyload, ptr %.sroa.4126.0..sroa_idx, align 1, !tbaa !12
  store i8 %.sroa.5127.0.copyload, ptr %.sroa.5127.0..sroa_idx, align 2, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120, i64 13, i1 false)
  store ptr %.sroa.7129.0.copyload, ptr %.sroa.7129.0..sroa_idx, align 8, !tbaa !15
  store ptr %.sroa.8130.0.copyload, ptr %.sroa.8130.0..sroa_idx, align 8, !tbaa !18
  store i64 %., ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_reset_with_key(ptr nofree noundef captures(none) initializes((32, 40)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %.sroa.8120.i = alloca [13 x i8], align 1       ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !12 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !12 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8120.i)
  %.sroa.6128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx.i, i64 13, i1 false)
  %.sroa.7129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.7129.0.copyload.i = load ptr, ptr %.sroa.7129.0..sroa_idx.i, align 8, !tbaa !15 ; 8 uses
  %.sroa.8130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.8130.0.copyload.i = load ptr, ptr %.sroa.8130.0..sroa_idx.i, align 8, !tbaa !18 ; 3 uses
  %i.a = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.a, label %reset_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %.sroa.0.0.copyload.i to i64     ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.8130.0.copyload.i, i64 %i.b
  %i.d = sub nsw i64 64, %i.b
  %i.e = and i64 %i.d, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.c, i8 0, i64 %i.e, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8130.0.copyload.i, ptr readonly align 1 %1, i64 %i.b, i1 false)
  br label %reset_raw.exit

reset_raw.exit:                                   ; preds = %bb.a, %bb.b
  %..i = phi i64 [ 0, %bb.a ], [ 64, %bb.b ]
  %.sroa.0.1.insert.ext = zext i8 %.sroa.0.0.copyload.i to i32
  %.sroa.0.1.insert.shift = shl nuw nsw i32 %.sroa.0.1.insert.ext, 8
  %.sroa.0.0.insert.ext = zext i8 %.sroa.4.0.copyload.i to i32
  %.sroa.0.1.insert.insert = or disjoint i32 %.sroa.0.1.insert.shift, %.sroa.0.0.insert.ext
  %i.f = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 36
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.f, align 4, !tbaa !6
  %i.g = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 52
  store i32 -1694144372, ptr %i.g, align 4, !tbaa !6
  %i.h = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 56
  store i32 528734635, ptr %i.h, align 4, !tbaa !6
  %i.i = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 60
  store i32 1541459225, ptr %i.i, align 4, !tbaa !6
  %i.j = xor i32 %.sroa.0.1.insert.insert, 1795745383
  store i32 %i.j, ptr %.sroa.7129.0.copyload.i, align 4, !tbaa !6
  %i.k = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 4
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.k, align 4, !tbaa !6
  %i.l = getelementptr i8, ptr %.sroa.7129.0.copyload.i, i64 20
  store <4 x i32> <i32 -1694144372, i32 528734635, i32 1541459225, i32 1779033703>, ptr %i.l, align 4, !tbaa !6
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !12
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !12
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120.i, i64 13, i1 false)
  store ptr %.sroa.7129.0.copyload.i, ptr %.sroa.7129.0..sroa_idx.i, align 8, !tbaa !15
  store ptr %.sroa.8130.0.copyload.i, ptr %.sroa.8130.0..sroa_idx.i, align 8, !tbaa !18
  store i64 %..i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8120.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_reset(ptr nofree noundef captures(none) initializes((32, 40)) %0) local_unnamed_addr #9 {
_Py_LibHacl_Hacl_Hash_Blake2s_reset_with_key.exit:
  %.sroa.8120.i.i = alloca [13 x i8], align 1     ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8120.i.i)
  %.sroa.6128.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx.i.i, i64 13, i1 false)
  %.sroa.7129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.4.0.copyload.i.i to i32
  %i.a = xor i32 %.sroa.0.0.insert.ext.i, 1795745383
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load <2 x ptr>, ptr %.sroa.7129.0..sroa_idx.i.i, align 8, !tbaa !24
  %.sroa.7129.0.copyload.i.i = load ptr, ptr %.sroa.7129.0..sroa_idx.i.i, align 8, !tbaa !15 ; 7 uses
  %i.c = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 36
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.c, align 4, !tbaa !6
  %i.d = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 52
  store i32 -1694144372, ptr %i.d, align 4, !tbaa !6
  %i.e = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 56
  store i32 528734635, ptr %i.e, align 4, !tbaa !6
  %i.f = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 60
  store i32 1541459225, ptr %i.f, align 4, !tbaa !6
  store i32 %i.a, ptr %.sroa.7129.0.copyload.i.i, align 4, !tbaa !6
  %i.g = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 4
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.g, align 4, !tbaa !6
  %i.h = getelementptr i8, ptr %.sroa.7129.0.copyload.i.i, i64 20
  store <4 x i32> <i32 -1694144372, i32 528734635, i32 1541459225, i32 1779033703>, ptr %i.h, align 4, !tbaa !6
  store i8 0, ptr %0, align 8, !tbaa !12
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6128.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8120.i.i, i64 13, i1 false)
  store <2 x ptr> %i.b, ptr %.sroa.7129.0..sroa_idx.i.i, align 8, !tbaa !24
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8120.i.i)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_Blake2s_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %.sroa.0122 = alloca %struct.Hacl_Hash_Blake2s_block_state_t_s, align 8 ; 2 uses
  %.sroa.049 = alloca %struct.Hacl_Hash_Blake2s_block_state_t_s, align 8 ; 2 uses
  %.sroa.3145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.3145.0.copyload = load i64, ptr %.sroa.3145.0..sroa_idx, align 8, !tbaa !20 ; 7 uses
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = xor i64 %.sroa.3145.0.copyload, -1
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.sroa.3145.0.copyload, 63       ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne i64 %.sroa.3145.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e                    ; 3 uses
  %i.g = trunc nuw nsw i64 %i.d to i32
  %.0177 = select i1 %or.cond, i32 64, i32 %i.g   ; 2 uses
  %i.h = sub nuw nsw i32 64, %.0177               ; 3 uses
  %.not = icmp ugt i32 %2, %i.h
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0122, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.4135.0.copyload = load ptr, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !18 ; 2 uses
  %. = select i1 %or.cond, i64 64, i64 %i.d
  %i.i = getelementptr i8, ptr %.sroa.4135.0.copyload, i64 %.
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.a, i1 false)
  %i.j = add i64 %.sroa.3145.0.copyload, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0122, i64 24, i1 false), !tbaa.struct !25
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %.0177, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0117.0.copyload = load i64, ptr %0, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4118.0.copyload = load ptr, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5119.0.copyload = load ptr, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  %.sroa.6120.0.copyload = load ptr, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !18 ; 2 uses
  %i.l = and i64 %i.a, 63                         ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = trunc nuw nsw i64 %i.l to i32
  %.0180 = select i1 %i.m, i32 64, i32 %i.n
  %i.o = sub i32 %2, %.0180                       ; 2 uses
  %i.p = lshr i32 %i.o, 6                         ; 2 uses
  %i.q = and i32 %i.o, -64                        ; 2 uses
  %i.r = sub i32 %2, %i.q
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  br label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.lr.ph.i191, %.lr.ph.preheader.i
  %indvars.iv.i192 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i193, %.lr.ph.i191 ] ; 2 uses
  %indvars.iv.next.i193 = add nuw nsw i64 %indvars.iv.i192, 1 ; 3 uses
  %i.u = shl nuw nsw i64 %indvars.iv.next.i193, 6
  %i.v = add i64 %i.u, %.sroa.3145.0.copyload
  %i.w = shl nuw nsw i64 %indvars.iv.i192, 6
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  tail call fastcc void @update_block(ptr noundef %.sroa.4118.0.copyload, ptr noundef %.sroa.5119.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.v, ptr noundef readonly %i.x)
  %exitcond.not.i194 = icmp eq i64 %indvars.iv.next.i193, %wide.trip.count.i
  br i1 %exitcond.not.i194, label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195, label %.lr.ph.i191, !llvm.loop !10

_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195: ; preds = %.lr.ph.i191, %bb.e
  %i.y = zext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6120.0.copyload, ptr align 1 %i.t, i64 %i.y, i1 false)
  %i.z = add i64 %.sroa.3145.0.copyload, %i.a
  store i64 %.sroa.0117.0.copyload, ptr %0, align 8
  store ptr %.sroa.4118.0.copyload, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !15
  store ptr %.sroa.5119.0.copyload, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !15
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.aa = zext nneg i32 %i.h to i64               ; 3 uses
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.049, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.462.0.copyload = load ptr, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !18 ; 5 uses
  %.189 = select i1 %or.cond, i64 64, i64 %i.d
  %i.ac = getelementptr i8, ptr %.sroa.462.0.copyload, i64 %.189
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %1, i64 %i.aa, i1 false)
  %i.ad = add i64 %.sroa.3145.0.copyload, %i.aa   ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.049, i64 24, i1 false), !tbaa.struct !25
  store ptr %.sroa.462.0.copyload, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !18
  store i64 %i.ad, ptr %.sroa.3145.0..sroa_idx, align 8, !tbaa !20
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !tbaa !15 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15 ; 3 uses
  %i.ae = and i64 %i.ad, 63                       ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = icmp ne i64 %i.ad, 0
  %or.cond12 = and i1 %i.ag, %i.af
  %i.ah = trunc nuw nsw i64 %i.ae to i32
  %.0182 = select i1 %or.cond12, i32 64, i32 %i.ah ; 2 uses
  %i.ai = icmp eq i32 %.0182, 0
  br i1 %i.ai, label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit201, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %bb.f
  %i.aj = zext nneg i32 %.0182 to i64
  %i.ak = sub i64 %i.ad, %i.aj
  %i.al = add i64 %i.ak, 64
  tail call fastcc void @update_block(ptr noundef %.sroa.447.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.al, ptr noundef readonly %.sroa.462.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit201

_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit201: ; preds = %.lr.ph.i197, %bb.f
  %i.am = sub i32 %2, %i.h                        ; 3 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = and i64 %i.an, 63                       ; 2 uses
  %.not210 = icmp eq i64 %i.ao, 0
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.0183 = select i1 %.not210, i32 64, i32 %i.ap
  %i.aq = sub i32 %i.am, %.0183                   ; 2 uses
  %i.ar = lshr i32 %i.aq, 6                       ; 2 uses
  %i.as = and i32 %i.aq, -64                      ; 2 uses
  %i.at = sub i32 %i.am, %i.as
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr i8, ptr %i.ab, i64 %i.au
  %.not.i202 = icmp eq i32 %i.ar, 0
  br i1 %.not.i202, label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209, label %.lr.ph.preheader.i203

.lr.ph.preheader.i203:                            ; preds = %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit201
  %wide.trip.count.i204 = zext nneg i32 %i.ar to i64
  br label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %.lr.ph.i205, %.lr.ph.preheader.i203
  %indvars.iv.i206 = phi i64 [ 0, %.lr.ph.preheader.i203 ], [ %indvars.iv.next.i207, %.lr.ph.i205 ] ; 2 uses
  %indvars.iv.next.i207 = add nuw nsw i64 %indvars.iv.i206, 1 ; 3 uses
  %i.aw = shl nuw nsw i64 %indvars.iv.next.i207, 6
  %i.ax = add i64 %i.aw, %i.ad
  %i.ay = shl nuw nsw i64 %indvars.iv.i206, 6
  %i.az = getelementptr i8, ptr %i.ab, i64 %i.ay
  tail call fastcc void @update_block(ptr noundef %.sroa.447.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.ax, ptr noundef readonly %i.az)
  %exitcond.not.i208 = icmp eq i64 %indvars.iv.next.i207, %wide.trip.count.i204
  br i1 %exitcond.not.i208, label %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209, label %.lr.ph.i205, !llvm.loop !10

_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209: ; preds = %.lr.ph.i205, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit201
  %i.ba = zext i32 %i.at to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.462.0.copyload, ptr align 1 %i.av, i64 %i.ba, i1 false)
  %i.bb = add i64 %i.ad, %i.an
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  store ptr %.sroa.447.0.copyload, ptr %.sroa.447.0..sroa_idx, align 8, !tbaa !15
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  br label %.sink.split

.sink.split:                                      ; preds = %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209, %bb.c
  %.sroa.4135.0.copyload.sink = phi ptr [ %.sroa.4135.0.copyload, %bb.c ], [ %.sroa.462.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209 ], [ %.sroa.6120.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195 ]
  %.sink = phi i64 [ %i.j, %bb.c ], [ %i.bb, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit209 ], [ %i.z, %_Py_LibHacl_Hacl_Hash_Blake2s_update_multi.exit195 ]
  store ptr %.sroa.4135.0.copyload.sink, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !18
  store i64 %.sink, ptr %.sroa.3145.0..sroa_idx, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @_Py_LibHacl_Hacl_Hash_Blake2s_digest(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i32], align 16              ; 3 uses
  %i.d = alloca [16 x i32], align 16              ; 6 uses
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.457.0.copyload = load i8, ptr %.sroa.457.0..sroa_idx, align 1, !tbaa !12
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.558.0.copyload = load i8, ptr %.sroa.558.0..sroa_idx, align 2, !tbaa !13
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !tbaa !15
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.548.0.copyload = load ptr, ptr %.sroa.548.0..sroa_idx, align 8, !tbaa !18
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.649.0.copyload = load i64, ptr %.sroa.649.0..sroa_idx, align 8, !tbaa !20 ; 3 uses
  %i.e = and i64 %.sroa.649.0.copyload, 63        ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp ne i64 %.sroa.649.0.copyload, 0
  %or.cond = and i1 %i.g, %i.f
  %i.h = trunc nuw nsw i64 %i.e to i32
  %.0 = select i1 %or.cond, i32 64, i32 %i.h      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.447.0.copyload, i64 64, i1 false)
  %i.i = and i32 %.0, 63                          ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.k, %i.j
end_hunk_0
