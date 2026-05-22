inline.NumInlined: 120
inline.NumDeleted: 7
begin_hunk_0_@_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_digest:bb.a
  %i.l = zext nneg i32 %i.i to i64
  %.064 = select i1 %or.cond3, i64 64, i64 %i.l
  %i.m = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.n = trunc i8 %.sroa.558.0.copyload to i1
  %i.o = getelementptr i8, ptr %.sroa.548.0.copyload, i64 %i.m
  %i.p = sub nsw i64 0, %.064
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.q, i64 %i.m, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext %i.n, i64 noundef %.sroa.649.0.copyload, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load <2 x i64>, ptr %i.d, align 16, !tbaa !10
  store <2 x i64> %i.t, ptr %i.a, align 16, !tbaa !10
  %i.u = load <2 x i64>, ptr %i.s, align 16, !tbaa !10
  store <2 x i64> %i.u, ptr %i.r, align 16, !tbaa !10
  %i.v = zext i8 %.sroa.457.0.copyload to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.v, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.sroa.4.0.copyload = load i8, ptr %.sroa.457.0..sroa_idx, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret i8 %.sroa.4.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i24 0, 131072) i24 @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_info(ptr noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !13
  %i.a = and i8 %.sroa.5.0.copyload, 1
  %.sroa.3.0.insert.ext = zext nneg i8 %i.a to i24
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %.sroa.4.0.copyload to i24
  %.sroa.2.0.insert.shift = shl nuw nsw i24 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.04.0.insert.ext = zext i8 %.sroa.0.0.copyload to i24
  %.sroa.04.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, %.sroa.04.0.insert.ext
  ret i24 %.sroa.04.0.insert.insert
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_free(ptr noundef captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !17
  tail call void @free(ptr noundef %.sroa.44.0.copyload) #23
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #23
  tail call void @free(ptr noundef %.sroa.6.0.copyload) #23
  tail call void @free(ptr noundef %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_copy(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %.sroa.072.0.copyload = load i8, ptr %0, align 8, !tbaa !10
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.473.0.copyload = load i8, ptr %.sroa.473.0..sroa_idx, align 1, !tbaa !10
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.574.0.copyload = load i8, ptr %.sroa.574.0..sroa_idx, align 2, !tbaa !13
  %.sroa.776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.776.0.copyload = load ptr, ptr %.sroa.776.0..sroa_idx, align 8, !tbaa !15
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.877.0.copyload = load ptr, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !17
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !19
  %i.a = and i8 %.sroa.574.0.copyload, 1
  %i.b = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #25 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, ptr noundef nonnull align 1 dereferenceable(64) %.sroa.877.0.copyload, i64 64, i1 false)
  %i.d = tail call noalias align 16 dereferenceable_or_null(64) ptr @aligned_alloc(i64 noundef 16, i64 noundef 64) #24 ; 5 uses
  %cond = icmp eq ptr %i.d, null
  br i1 %cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.e = tail call noalias align 16 dereferenceable_or_null(64) ptr @aligned_alloc(i64 noundef 16, i64 noundef 64) #24 ; 4 uses
  %.not88 = icmp eq ptr %i.e, null
  br i1 %.not88, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #23
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.776.0.copyload, i64 64, i1 false)
  %i.f = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #26 ; 7 uses
  %cond91 = icmp eq ptr %i.f, null
  br i1 %cond91, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = zext nneg i8 %i.a to i64
  %i.h = shl nuw nsw i64 %i.g, 16
  %i.i = zext i8 %.sroa.473.0.copyload to i64
  %i.j = shl nuw nsw i64 %i.i, 8
  %i.k = or disjoint i64 %i.h, %i.j
  %i.l = zext i8 %.sroa.072.0.copyload to i64
  %i.m = or disjoint i64 %i.k, %i.l
  store i64 %i.m, ptr %i.f, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !15
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.d) #23
  tail call void @free(ptr noundef nonnull %i.e) #23
  tail call void @free(ptr noundef nonnull %i.b) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.h, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.h ], [ %i.f, %bb.g ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_hash_with_key(ptr noundef writeonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [4 x <2 x i64>], align 16         ; 9 uses
  %i.c = alloca [4 x <2 x i64>], align 16         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <2 x i64> <i64 -4942790177982912921, i64 -6534734903820487822>, ptr %i.e, align 16, !tbaa !10
  store <2 x i64> <i64 -7276294671082564993, i64 6620516960021240235>, ptr %i.f, align 16, !tbaa !10
  %i.g = and i32 %1, 255
  %i.h = shl i32 %5, 8
  %i.i = and i32 %i.h, 65280
  %i.j = or disjoint i32 %i.i, %i.g
  %i.k = xor i32 %i.j, 1795745383
  %i.l = insertelement <4 x i32> <i32 poison, i32 -1150833019, i32 1013904242, i32 -1521486534>, i32 %i.k, i64 0
  store <4 x i32> %i.l, ptr %i.b, align 16, !tbaa !10
  store <2 x i64> <i64 -7276294671082564993, i64 6620516960021240235>, ptr %i.d, align 16, !tbaa !10
  call fastcc void @update(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %5, ptr noundef %4, i32 noundef %3, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load <2 x i64>, ptr %i.b, align 16, !tbaa !10
  store <2 x i64> %i.n, ptr %i.a, align 16, !tbaa !10
  %i.o = load <2 x i64>, ptr %i.d, align 16, !tbaa !10
  store <2 x i64> %i.o, ptr %i.m, align 16, !tbaa !10
  %i.p = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %i.p, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 64) #23
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update(ptr noundef nonnull captures(none) initializes((0, 64)) %0, ptr noundef nonnull captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4, ptr noundef readonly captures(none) %5) unnamed_addr #21 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %i.c = alloca [64 x i8], align 16               ; 6 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.d = zext i32 %2 to i64                       ; 3 uses
  %6 = sub nsw i64 64, %i.d
  %.narrow.i = icmp ugt i32 %2, 64
  %i.e = select i1 %.narrow.i, i64 0, i64 %6
  %i.f = getelementptr i8, ptr %i.c, i64 %i.d
  call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 0, i64 %i.e, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 %i.d, i1 false)
  %i.g = icmp eq i32 %4, 0                        ; 2 uses
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext %i.g, i1 noundef zeroext false, i64 noundef 64, ptr noundef nonnull %i.c)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i32 %4, 6                           ; 2 uses
  %i.i = and i32 %4, 63                           ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i32 %i.h, 0
  %or.cond.i = and i1 %i.j, %i.k                  ; 2 uses
  %i.l = sext i1 %or.cond.i to i32
  %.023.i = add nsw i32 %i.h, %i.l                ; 2 uses
  %.not.i.i = icmp eq i32 %.023.i, 0
  br i1 %.not.i.i, label %update_blocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext nneg i32 %.023.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.m = shl i64 %indvars.iv.next.i.i, 6
  %i.n = and i64 %i.m, 4294967232
  %i.o = add nuw nsw i64 %i.n, 64
  %i.p = shl i64 %indvars.iv.i.i, 6
  %i.q = and i64 %i.p, 4294967232
  %i.r = getelementptr i8, ptr %5, i64 %i.q
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.o, ptr noundef readonly %i.r)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %update_blocks.exit, label %.lr.ph.i.i, !llvm.loop !11

update_blocks.exit:                               ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.s = zext i32 %4 to i64                       ; 2 uses
  %i.t = getelementptr i8, ptr %5, i64 %i.s
  %i.u = zext nneg i32 %i.i to i64
  %i.v = select i1 %or.cond.i, i64 64, i64 %i.u   ; 2 uses
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr i8, ptr %i.t, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.x, i64 %i.v, i1 false)
  %i.y = add nuw nsw i64 %i.s, 64
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef %i.y, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.z = lshr i32 %4, 6                           ; 2 uses
  %i.aa = and i32 %4, 63                          ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = icmp ne i32 %i.z, 0
  %or.cond.i16 = and i1 %i.ab, %i.ac              ; 2 uses
  %i.ad = sext i1 %or.cond.i16 to i32
  %.023.i17 = add nsw i32 %i.z, %i.ad             ; 2 uses
  %.not.i.i18 = icmp eq i32 %.023.i17, 0
  br i1 %.not.i.i18, label %update_blocks.exit25, label %.lr.ph.preheader.i.i19

.lr.ph.preheader.i.i19:                           ; preds = %bb.d
  %wide.trip.count.i.i20 = zext nneg i32 %.023.i17 to i64
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.preheader.i.i19
  %indvars.iv.i.i22 = phi i64 [ 0, %.lr.ph.preheader.i.i19 ], [ %indvars.iv.next.i.i23, %.lr.ph.i.i21 ] ; 2 uses
  %indvars.iv.next.i.i23 = add nuw nsw i64 %indvars.iv.i.i22, 1 ; 3 uses
  %i.ae = shl i64 %indvars.iv.next.i.i23, 6
  %i.af = and i64 %i.ae, 4294967232
  %i.ag = shl i64 %indvars.iv.i.i22, 6
  %i.ah = and i64 %i.ag, 4294967232
  %i.ai = getelementptr i8, ptr %5, i64 %i.ah
  tail call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.af, ptr noundef readonly %i.ai)
  %exitcond.not.i.i24 = icmp eq i64 %indvars.iv.next.i.i23, %wide.trip.count.i.i20
  br i1 %exitcond.not.i.i24, label %update_blocks.exit25, label %.lr.ph.i.i21, !llvm.loop !11

update_blocks.exit25:                             ; preds = %.lr.ph.i.i21, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.aj = zext i32 %4 to i64                      ; 2 uses
  %i.ak = getelementptr i8, ptr %5, i64 %i.aj
  %i.al = zext nneg i32 %i.aa to i64
  %i.am = select i1 %or.cond.i16, i64 64, i64 %i.al ; 2 uses
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr i8, ptr %i.ak, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.ao, i64 %i.am, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef %i.aj, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %update_blocks.exit25, %update_blocks.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_hash_with_key_and_params(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly byval(%struct.Hacl_Hash_Blake2b_blake2_params_s) align 8 captures(none) %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [4 x <2 x i64>], align 16         ; 9 uses
  %i.c = alloca [4 x <2 x i64>], align 16         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <2 x i64> <i64 -4942790177982912921, i64 -6534734903820487822>, ptr %i.e, align 16, !tbaa !10
  store <2 x i64> <i64 -7276294671082564993, i64 6620516960021240235>, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = load i8, ptr %3, align 8, !tbaa !26      ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !21
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  %i.t = shl nuw i32 %i.s, 16
  %i.u = or disjoint i32 %i.p, %i.l
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28   ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = lshr i64 %i.z, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load i16, ptr %i.ad, align 8
  %i.af = zext i16 %i.ae to i32
  %i.ag = shl nuw i32 %i.af, 16
  %i.ah = xor i32 %i.ag, %i.ac
  %i.ai = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.x, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.aa, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 3
  %i.am = xor <4 x i32> %i.al, <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>
  %i.an = load <2 x i32>, ptr %i.h, align 1
  %i.ao = load <2 x i32>, ptr %i.j, align 1
  %i.ap = shufflevector <2 x i32> %i.an, <2 x i32> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aq = xor <4 x i32> %i.ap, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store <4 x i32> %i.am, ptr %i.b, align 16, !tbaa !10
  store <4 x i32> %i.aq, ptr %i.d, align 16, !tbaa !10
  call fastcc void @update(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %i.o, ptr noundef %4, i32 noundef %2, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.as = load <2 x i64>, ptr %i.b, align 16, !tbaa !10
  store <2 x i64> %i.as, ptr %i.a, align 16, !tbaa !10
  %i.at = load <2 x i64>, ptr %i.d, align 16, !tbaa !10
  store <2 x i64> %i.at, ptr %i.ar, align 16, !tbaa !10
  %i.au = zext i8 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %i.au, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 64) #23
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind allocsize(0,1) }
attributes #26 = { nounwind allocsize(0) }

end_hunk_0
