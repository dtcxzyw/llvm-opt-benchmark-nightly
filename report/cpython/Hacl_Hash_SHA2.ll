inline.NumInlined: 200
inline.NumDeleted: 16
begin_hunk_0_@sha512_update:bb.a
  store i64 %i.dfj, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !13
  %i.dfk = add i64 %i.dbz, %.sroa.11.0.copyload
  store i64 %i.dfk, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last(i64 %0, i64 %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = add i32 %2, -112
  %i.c = icmp ult i32 %i.b, -129                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.d = tail call noundef i64 @llvm.fshl.i64(i64 %1, i64 %0, i64 3)
  %i.e = shl i64 %0, 3
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, -7) %i.e)
  %i.h = zext i32 %2 to i64                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %3, i64 %i.h, i1 false)
  %i.i = getelementptr i8, ptr %i.a, i64 %i.h
  store i8 -128, ptr %i.i, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, i64 240, i64 112
  %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.f, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, align 16
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, i64 248, i64 120
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.g, ptr %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha512_update(ptr noundef nonnull %i.a, ptr noundef %4)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.gep18 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @sha512_update(ptr noundef nonnull %.sroa.gep18, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha512_finish(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 64)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %i.a)
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %i.s)
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %i.v)
  store i64 %i.b, ptr %1, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.k, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.n, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.q, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.t, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.w, ptr %.sroa.11.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_init(ptr noundef writeonly captures(none) initializes((0, 64)) %0) local_unnamed_addr #0 {
bb.a:
  store i64 -3766243637369397544, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr i8, ptr %0, i64 8
  store i64 7105036623409894663, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %0, i64 16
  store i64 -7973340178411365097, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr i8, ptr %0, i64 24
  store i64 1526699215303891257, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %0, i64 32
  store i64 7436329637833083697, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %0, i64 40
  store i64 -8163818279084223215, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %0, i64 48
  store i64 -2662702644619276377, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %0, i64 56
  store i64 5167115440072839076, ptr %i.g, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_nblocks(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %0, 7                           ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.b = shl nuw i64 %indvars.iv.i, 7
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  tail call fastcc void @sha512_update(ptr noundef readonly %i.c, ptr noundef %2)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, label %.lr.ph.i, !llvm.loop !15

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last(i64 %0, i64 %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = add i32 %2, -112
  %i.c = icmp ult i32 %i.b, -129                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.d = tail call noundef i64 @llvm.fshl.i64(i64 %1, i64 %0, i64 3)
  %i.e = shl i64 %0, 3
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, -7) %i.e)
  %i.h = zext i32 %2 to i64                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %3, i64 %i.h, i1 false)
  %i.i = getelementptr i8, ptr %i.a, i64 %i.h
  store i8 -128, ptr %i.i, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, i64 240, i64 112
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.f, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 16
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.c, i64 248, i64 120
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.g, ptr %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha512_update(ptr noundef nonnull %i.a, ptr noundef %4)
  br i1 %i.c, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.gep18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @sha512_update(ptr noundef nonnull %.sroa.gep18.i, ptr noundef %4)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_sha384_finish(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 48)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %i.a)
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  store i64 %i.b, ptr %1, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.k, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.n, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.q, ptr %.sroa.9.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_malloc_256() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #17 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 8, i64 noundef 4) #17 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.c, align 4, !tbaa !6
  %i.f = getelementptr i8, ptr %i.c, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.f, align 4, !tbaa !6
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_copy_256(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.023.0.copyload = load ptr, ptr %0, align 8, !tbaa !16
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.424.0.copyload = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !tbaa !19
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.525.0.copyload = load i64, ptr %.sroa.525.0..sroa_idx, align 8, !tbaa !13
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #17 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %.sroa.424.0.copyload, i64 64, i1 false)
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 8, i64 noundef 4) #17 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.023.0.copyload, i64 32, i1 false)
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.525.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_reset_256(ptr noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %.sroa.03.0.copyload, align 4, !tbaa !6
  %i.a = getelementptr i8, ptr %.sroa.03.0.copyload, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.a, align 4, !tbaa !6
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_SHA2_update_256(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @update_224_256(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i8 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext range(i8 0, 4) i8 @update_224_256(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %.sroa.3110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.3110.0.copyload = load i64, ptr %.sroa.3110.0..sroa_idx, align 8, !tbaa !13 ; 6 uses
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = sub i64 2305843009213693951, %.sroa.3110.0.copyload
  %i.c = icmp ult i64 %i.b, %i.a
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.sroa.3110.0.copyload, 63       ; 4 uses
  %i.e = icmp eq i64 %i.d, 0                      ; 2 uses
  %i.f = icmp ne i64 %.sroa.3110.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e                    ; 4 uses
  %i.g = trunc nuw nsw i64 %i.d to i32
  %.0142 = select i1 %or.cond, i32 64, i32 %i.g   ; 2 uses
  %i.h = sub nuw nsw i32 64, %.0142               ; 3 uses
  %.not = icmp ugt i32 %2, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %. = select i1 %or.cond, i64 64, i64 %i.d
  %i.i = add i64 %.sroa.3110.0.copyload, %i.a
  %.sroa.4100.0.copyload = load ptr, ptr %.sroa.4100.0..sroa_idx, align 8, !tbaa !19
  %i.j = load <2 x ptr>, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr i8, ptr %.sroa.4100.0.copyload, i64 %.
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %i.a, i1 false)
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !21
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %.0142, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.083.0.copyload = load ptr, ptr %0, align 8, !tbaa !16 ; 3 uses
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.484.0.copyload = load ptr, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %or.cond158 = xor i1 %i.e, %or.cond
  br i1 %or.cond158, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  tail call fastcc void @sha256_update(ptr noundef readonly %.sroa.484.0.copyload, ptr noundef %.sroa.083.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit: ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = and i64 %i.a, 63                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = trunc nuw nsw i64 %i.m to i32
  %.0145 = select i1 %i.n, i32 64, i32 %i.o
  %i.p = sub i32 %2, %.0145                       ; 2 uses
  %i.q = and i32 %i.p, -64                        ; 2 uses
  %i.r = sub i32 %2, %i.q
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %i.u = lshr i32 %i.p, 6                         ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit164, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.lr.ph.i160, %.lr.ph.preheader.i
  %indvars.iv.i161 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i162, %.lr.ph.i160 ] ; 2 uses
  %i.v = shl nuw i64 %indvars.iv.i161, 6
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  tail call fastcc void @sha256_update(ptr noundef readonly %i.w, ptr noundef %.sroa.083.0.copyload)
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %exitcond.not.i163 = icmp eq i64 %indvars.iv.next.i162, %wide.trip.count.i
  br i1 %exitcond.not.i163, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit164, label %.lr.ph.i160, !llvm.loop !10

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit164: ; preds = %.lr.ph.i160, %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit
  %i.x = zext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.484.0.copyload, ptr align 1 %i.t, i64 %i.x, i1 false)
  %i.y = add i64 %.sroa.3110.0.copyload, %i.a
  store ptr %.sroa.083.0.copyload, ptr %0, align 8, !tbaa !16
  store ptr %.sroa.484.0.copyload, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.h to i64                ; 3 uses
  %i.aa = getelementptr i8, ptr %1, i64 %i.z      ; 2 uses
  %.sroa.045.0.copyload = load ptr, ptr %0, align 8, !tbaa !16 ; 4 uses
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.446.0.copyload = load ptr, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !19 ; 5 uses
  %.154 = select i1 %or.cond, i64 64, i64 %i.d
  %i.ab = getelementptr i8, ptr %.sroa.446.0.copyload, i64 %.154
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %1, i64 %i.z, i1 false)
  %i.ac = add i64 %.sroa.3110.0.copyload, %i.z    ; 3 uses
  store ptr %.sroa.045.0.copyload, ptr %0, align 8, !tbaa !16
  store ptr %.sroa.446.0.copyload, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.ac, ptr %.sroa.3110.0..sroa_idx, align 8, !tbaa !13
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit170, label %.lr.ph.i166.preheader

.lr.ph.i166.preheader:                            ; preds = %bb.f
  tail call fastcc void @sha256_update(ptr noundef readonly %.sroa.446.0.copyload, ptr noundef %.sroa.045.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit170

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit170: ; preds = %.lr.ph.i166.preheader, %bb.f
  %i.ae = sub i32 %2, %i.h                        ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = and i64 %i.af, 63                       ; 2 uses
  %.not179 = icmp eq i64 %i.ag, 0
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %.0148 = select i1 %.not179, i32 64, i32 %i.ah
  %i.ai = sub i32 %i.ae, %.0148                   ; 2 uses
  %i.aj = and i32 %i.ai, -64                      ; 2 uses
  %i.ak = sub i32 %i.ae, %i.aj
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr i8, ptr %i.aa, i64 %i.al
  %i.an = lshr i32 %i.ai, 6                       ; 2 uses
  %.not.i171 = icmp eq i32 %i.an, 0
  br i1 %.not.i171, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit178, label %.lr.ph.preheader.i172

.lr.ph.preheader.i172:                            ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit170
  %wide.trip.count.i173 = zext nneg i32 %i.an to i64
  br label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %.lr.ph.i174, %.lr.ph.preheader.i172
  %indvars.iv.i175 = phi i64 [ 0, %.lr.ph.preheader.i172 ], [ %indvars.iv.next.i176, %.lr.ph.i174 ] ; 2 uses
  %i.ao = shl nuw i64 %indvars.iv.i175, 6
  %i.ap = getelementptr i8, ptr %i.aa, i64 %i.ao
  tail call fastcc void @sha256_update(ptr noundef readonly %i.ap, ptr noundef %.sroa.045.0.copyload)
  %indvars.iv.next.i176 = add nuw nsw i64 %indvars.iv.i175, 1 ; 2 uses
  %exitcond.not.i177 = icmp eq i64 %indvars.iv.next.i176, %wide.trip.count.i173
  br i1 %exitcond.not.i177, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit178, label %.lr.ph.i174, !llvm.loop !10

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit178: ; preds = %.lr.ph.i174, %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit170
  %i.aq = zext i32 %i.ak to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.446.0.copyload, ptr align 1 %i.am, i64 %i.aq, i1 false)
  %i.ar = add i64 %i.ac, %i.af
  store ptr %.sroa.045.0.copyload, ptr %0, align 8, !tbaa !16
  store ptr %.sroa.446.0.copyload, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

.sink.split:                                      ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit164, %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit178, %bb.c
  %.sink = phi i64 [ %i.i, %bb.c ], [ %i.ar, %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit178 ], [ %i.y, %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit164 ]
  store i64 %.sink, ptr %.sroa.3110.0..sroa_idx, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_digest_256(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca [8 x i32], align 16               ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13 ; 3 uses
  %i.c = and i64 %.sroa.5.0.copyload, 63          ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp ne i64 %.sroa.5.0.copyload, 0
  %or.cond = and i1 %i.e, %i.d
  %i.f = trunc nuw nsw i64 %i.c to i32
  %.0 = select i1 %or.cond, i32 64, i32 %i.f      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.copyload, i64 32, i1 false)
  %i.g = and i32 %.0, 63                          ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.i, %i.h
  %i.j = zext nneg i32 %i.g to i64
  %.023 = select i1 %or.cond3, i64 64, i64 %i.j
  %i.k = zext nneg i32 %.0 to i64                 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.k
  %i.m = sub nsw i64 0, %.023
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = icmp samesign ugt i32 %.0, 55            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.p = shl i64 %.sroa.5.0.copyload, 3
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.n, i64 %i.k, i1 false)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.k
  store i8 -128, ptr %i.r, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.o, i64 120, i64 56
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.q, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha256_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.o, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.gep19.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call fastcc void @sha256_update(ptr noundef nonnull %.sroa.gep19.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load <4 x i32>, ptr %i.b, align 16, !tbaa !6
  %i.u = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.t)
  store <4 x i32> %i.u, ptr %1, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load <4 x i32>, ptr %i.s, align 16, !tbaa !6
  %i.w = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.v)
  store <4 x i32> %i.w, ptr %.sroa.8.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_free_256(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  tail call void @free(ptr noundef %.sroa.0.0.copyload) #16
  tail call void @free(ptr noundef %.sroa.4.0.copyload) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_hash_256(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca [8 x i32], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.b, align 16, !tbaa !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.c, align 16, !tbaa !6
  %i.d = and i32 %2, 63                           ; 2 uses
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = lshr i32 %2, 6                           ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.g = shl nuw i64 %indvars.iv.i, 6
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  call fastcc void @sha256_update(ptr noundef readonly %i.h, ptr noundef nonnull %i.b)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit, label %.lr.ph.i, !llvm.loop !10

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit: ; preds = %.lr.ph.i, %bb.a
  %i.i = getelementptr i8, ptr %1, i64 %i.e
  %i.j = zext nneg i32 %i.d to i64                ; 3 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr i8, ptr %i.i, i64 %i.k
  %i.m = icmp samesign ugt i32 %i.d, 55           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.n = shl nuw nsw i64 %i.e, 3
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.l, i64 %i.j, i1 false)
  %i.p = getelementptr i8, ptr %i.a, i64 %i.j
  store i8 -128, ptr %i.p, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.m, i64 120, i64 56
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.o, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha256_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.m, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit

bb.b:                                             ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit
  %.sroa.gep19.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call fastcc void @sha256_update(ptr noundef nonnull %.sroa.gep19.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_last.exit: ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha256_update_nblocks.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.q = load <4 x i32>, ptr %i.b, align 16, !tbaa !6
  %i.r = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.q)
  store <4 x i32> %i.r, ptr %0, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load <4 x i32>, ptr %i.c, align 16, !tbaa !6
  %i.t = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.s)
  store <4 x i32> %i.t, ptr %.sroa.8.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_malloc_224() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #17 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 8, i64 noundef 4) #17 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %i.c, align 4, !tbaa !6
  %i.f = getelementptr i8, ptr %i.c, i64 16
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %i.f, align 4, !tbaa !6
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_reset_224(ptr noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %.sroa.03.0.copyload, align 4, !tbaa !6
  %i.a = getelementptr i8, ptr %.sroa.03.0.copyload, i64 16
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %i.a, align 4, !tbaa !6
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_SHA2_update_224(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @update_224_256(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_digest_224(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 28)) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca [8 x i32], align 16               ; 9 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13 ; 3 uses
  %i.c = and i64 %.sroa.5.0.copyload, 63          ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp ne i64 %.sroa.5.0.copyload, 0
  %or.cond = and i1 %i.e, %i.d
  %i.f = trunc nuw nsw i64 %i.c to i32
  %.0 = select i1 %or.cond, i32 64, i32 %i.f      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.0.copyload, i64 32, i1 false)
  %i.g = and i32 %.0, 63                          ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.i, %i.h
  %i.j = zext nneg i32 %i.g to i64
  %.023 = select i1 %or.cond3, i64 64, i64 %i.j
  %i.k = zext nneg i32 %.0 to i64                 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.k
  %i.m = sub nsw i64 0, %.023
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = icmp samesign ugt i32 %.0, 55            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.p = shl i64 %.sroa.5.0.copyload, 3
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.n, i64 %i.k, i1 false)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.k
  store i8 -128, ptr %i.r, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.o, i64 120, i64 56
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.q, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha256_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.o, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.gep19.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call fastcc void @sha256_update(ptr noundef nonnull %.sroa.gep19.i.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i32, ptr %i.s, align 16, !tbaa !6
  %i.u = tail call noundef i32 @llvm.bswap.i32(i32 %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !6
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !6
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = load <4 x i32>, ptr %i.b, align 16, !tbaa !6
  %i.ac = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ab)
  store <4 x i32> %i.ac, ptr %1, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.u, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.x, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.aa, ptr %.sroa.10.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_free_224(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !19
  tail call void @free(ptr noundef %.sroa.0.0.copyload.i) #16
  tail call void @free(ptr noundef %.sroa.4.0.copyload.i) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_hash_224(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca [8 x i32], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %i.b, align 16, !tbaa !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %i.c, align 16, !tbaa !6
  %i.d = and i32 %2, 63                           ; 2 uses
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = lshr i32 %2, 6                           ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.f to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.g = shl nuw i64 %indvars.iv.i.i, 6
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  call fastcc void @sha256_update(ptr noundef readonly %i.h, ptr noundef nonnull %i.b)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks.exit, label %.lr.ph.i.i, !llvm.loop !10

_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.i = getelementptr i8, ptr %1, i64 %i.e
  %i.j = zext nneg i32 %i.d to i64                ; 3 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr i8, ptr %i.i, i64 %i.k
  %i.m = icmp samesign ugt i32 %i.d, 55           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.n = shl nuw nsw i64 %i.e, 3
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.l, i64 %i.j, i1 false)
  %i.p = getelementptr i8, ptr %i.a, i64 %i.j
  store i8 -128, ptr %i.p, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.m, i64 120, i64 56
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.o, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha256_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.m, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit

bb.b:                                             ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks.exit
  %.sroa.gep19.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call fastcc void @sha256_update(ptr noundef nonnull %.sroa.gep19.i.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_last.exit: ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha224_update_nblocks.exit, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.s = load i32, ptr %i.c, align 16, !tbaa !6
  %i.t = tail call noundef i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = load i32, ptr %i.r, align 4, !tbaa !6
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = load i32, ptr %i.q, align 8, !tbaa !6
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = load <4 x i32>, ptr %i.b, align 16, !tbaa !6
  %i.z = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.y)
  store <4 x i32> %i.z, ptr %0, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.t, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.v, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.x, ptr %.sroa.10.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_malloc_512() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #17 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 8, i64 noundef 8) #17 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  store i64 7640891576956012808, ptr %i.c, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.c, i64 8
  store i64 -4942790177534073029, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %i.c, i64 16
  store i64 4354685564936845355, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr i8, ptr %i.c, i64 24
  store i64 -6534734903238641935, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr i8, ptr %i.c, i64 32
  store i64 5840696475078001361, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr i8, ptr %i.c, i64 40
  store i64 -7276294671716946913, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr i8, ptr %i.c, i64 48
  store i64 2270897969802886507, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr i8, ptr %i.c, i64 56
  store i64 6620516959819538809, ptr %i.l, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_copy_512(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.023.0.copyload = load ptr, ptr %0, align 8, !tbaa !22
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.424.0.copyload = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !tbaa !19
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.525.0.copyload = load i64, ptr %.sroa.525.0..sroa_idx, align 8, !tbaa !13
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #17 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.a, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.424.0.copyload, i64 128, i1 false)
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 8, i64 noundef 8) #17 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.023.0.copyload, i64 64, i1 false)
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.525.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_reset_512(ptr noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !22 ; 8 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7640891576956012808, ptr %.sroa.03.0.copyload, align 8, !tbaa !13
  %i.a = getelementptr i8, ptr %.sroa.03.0.copyload, i64 8
  store i64 -4942790177534073029, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %.sroa.03.0.copyload, i64 16
  store i64 4354685564936845355, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr i8, ptr %.sroa.03.0.copyload, i64 24
  store i64 -6534734903238641935, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %.sroa.03.0.copyload, i64 32
  store i64 5840696475078001361, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %.sroa.03.0.copyload, i64 40
  store i64 -7276294671716946913, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %.sroa.03.0.copyload, i64 48
  store i64 2270897969802886507, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %.sroa.03.0.copyload, i64 56
  store i64 6620516959819538809, ptr %i.g, align 8, !tbaa !13
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_SHA2_update_512(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @update_384_512(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i8 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext range(i8 0, 4) i8 @update_384_512(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %.sroa.3110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.3110.0.copyload = load i64, ptr %.sroa.3110.0..sroa_idx, align 8, !tbaa !13 ; 6 uses
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = xor i64 %.sroa.3110.0.copyload, -1
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.sroa.3110.0.copyload, 127      ; 4 uses
  %i.e = icmp eq i64 %i.d, 0                      ; 2 uses
  %i.f = icmp ne i64 %.sroa.3110.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e                    ; 4 uses
  %i.g = trunc nuw nsw i64 %i.d to i32
  %.0142 = select i1 %or.cond, i32 128, i32 %i.g  ; 2 uses
  %i.h = sub nuw nsw i32 128, %.0142              ; 3 uses
  %.not = icmp ugt i32 %2, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %. = select i1 %or.cond, i64 128, i64 %i.d
  %i.i = add i64 %.sroa.3110.0.copyload, %i.a
  %.sroa.4100.0.copyload = load ptr, ptr %.sroa.4100.0..sroa_idx, align 8, !tbaa !19
  %i.j = load <2 x ptr>, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr i8, ptr %.sroa.4100.0.copyload, i64 %.
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %i.a, i1 false)
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !21
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %.0142, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.083.0.copyload = load ptr, ptr %0, align 8, !tbaa !22 ; 3 uses
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.484.0.copyload = load ptr, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %or.cond158 = xor i1 %i.e, %or.cond
  br i1 %or.cond158, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  tail call fastcc void @sha512_update(ptr noundef readonly %.sroa.484.0.copyload, ptr noundef %.sroa.083.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit: ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = and i64 %i.a, 127                        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = trunc nuw nsw i64 %i.m to i32
  %.0145 = select i1 %i.n, i32 128, i32 %i.o
  %i.p = sub i32 %2, %.0145                       ; 2 uses
  %i.q = and i32 %i.p, -128                       ; 2 uses
  %i.r = sub i32 %2, %i.q
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %i.u = lshr i32 %i.p, 7                         ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit164, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.lr.ph.i160, %.lr.ph.preheader.i
  %indvars.iv.i161 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i162, %.lr.ph.i160 ] ; 2 uses
  %i.v = shl nuw i64 %indvars.iv.i161, 7
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  tail call fastcc void @sha512_update(ptr noundef readonly %i.w, ptr noundef %.sroa.083.0.copyload)
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %exitcond.not.i163 = icmp eq i64 %indvars.iv.next.i162, %wide.trip.count.i
  br i1 %exitcond.not.i163, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit164, label %.lr.ph.i160, !llvm.loop !15

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit164: ; preds = %.lr.ph.i160, %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit
  %i.x = zext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.484.0.copyload, ptr align 1 %i.t, i64 %i.x, i1 false)
  %i.y = add i64 %.sroa.3110.0.copyload, %i.a
  store ptr %.sroa.083.0.copyload, ptr %0, align 8, !tbaa !22
  store ptr %.sroa.484.0.copyload, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.h to i64                ; 3 uses
  %i.aa = getelementptr i8, ptr %1, i64 %i.z      ; 2 uses
  %.sroa.045.0.copyload = load ptr, ptr %0, align 8, !tbaa !22 ; 4 uses
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.446.0.copyload = load ptr, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !19 ; 5 uses
  %.154 = select i1 %or.cond, i64 128, i64 %i.d
  %i.ab = getelementptr i8, ptr %.sroa.446.0.copyload, i64 %.154
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %1, i64 %i.z, i1 false)
  %i.ac = add i64 %.sroa.3110.0.copyload, %i.z    ; 3 uses
  store ptr %.sroa.045.0.copyload, ptr %0, align 8, !tbaa !22
  store ptr %.sroa.446.0.copyload, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.ac, ptr %.sroa.3110.0..sroa_idx, align 8, !tbaa !13
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit170, label %.lr.ph.i166.preheader

.lr.ph.i166.preheader:                            ; preds = %bb.f
  tail call fastcc void @sha512_update(ptr noundef readonly %.sroa.446.0.copyload, ptr noundef %.sroa.045.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit170

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit170: ; preds = %.lr.ph.i166.preheader, %bb.f
  %i.ae = sub i32 %2, %i.h                        ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = and i64 %i.af, 127                      ; 2 uses
  %.not179 = icmp eq i64 %i.ag, 0
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %.0148 = select i1 %.not179, i32 128, i32 %i.ah
  %i.ai = sub i32 %i.ae, %.0148                   ; 2 uses
  %i.aj = and i32 %i.ai, -128                     ; 2 uses
  %i.ak = sub i32 %i.ae, %i.aj
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr i8, ptr %i.aa, i64 %i.al
  %i.an = lshr i32 %i.ai, 7                       ; 2 uses
  %.not.i171 = icmp eq i32 %i.an, 0
  br i1 %.not.i171, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit178, label %.lr.ph.preheader.i172

.lr.ph.preheader.i172:                            ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit170
  %wide.trip.count.i173 = zext nneg i32 %i.an to i64
  br label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %.lr.ph.i174, %.lr.ph.preheader.i172
  %indvars.iv.i175 = phi i64 [ 0, %.lr.ph.preheader.i172 ], [ %indvars.iv.next.i176, %.lr.ph.i174 ] ; 2 uses
  %i.ao = shl nuw i64 %indvars.iv.i175, 7
end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Hash_SHA2_digest_512:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.025.0.copyload, i64 64, i1 false)
  %i.g = and i32 %.0, 127                         ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.i, %i.h
  %i.j = zext nneg i32 %i.g to i64
  %.028 = select i1 %or.cond3, i64 128, i64 %i.j
  %i.k = zext nneg i32 %.0 to i64                 ; 4 uses
  %i.l = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.k
  %i.m = sub nsw i64 0, %.028
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = sub i64 %.sroa.5.0.copyload, %i.k
  %i.p = xor i64 %.sroa.5.0.copyload, -1
  %i.q = and i64 %i.o, %i.p
  %i.r = lshr i64 %i.q, 63
  %i.s = icmp samesign ugt i32 %.0, 111           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %.sroa.5.0.copyload, i64 3)
  %i.u = shl i64 %.sroa.5.0.copyload, 3
  %i.v = shl nuw nsw i64 %i.t, 56
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, -7) %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.n, i64 %i.k, i1 false)
  %i.x = getelementptr i8, ptr %i.a, i64 %i.k
  store i8 -128, ptr %i.x, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 240, i64 112
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.v, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 16
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 248, i64 120
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.w, ptr %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha512_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.s, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.gep18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @sha512_update(ptr noundef nonnull %.sroa.gep18.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.y = load i64, ptr %i.b, align 16, !tbaa !13
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !13
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13
  %i.ai = tail call noundef i64 @llvm.bswap.i64(i64 %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !13
  %i.al = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !13
  %i.ao = tail call noundef i64 @llvm.bswap.i64(i64 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aq = load i64, ptr %i.ap, align 16, !tbaa !13
  %i.ar = tail call noundef i64 @llvm.bswap.i64(i64 %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13
  %i.au = tail call noundef i64 @llvm.bswap.i64(i64 %i.at)
  store i64 %i.z, ptr %1, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.al, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ao, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.ar, ptr %.sroa.10.0..sroa_idx.i, align 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.au, ptr %.sroa.11.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_free_512(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  tail call void @free(ptr noundef %.sroa.0.0.copyload) #16
  tail call void @free(ptr noundef %.sroa.4.0.copyload) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_hash_512(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = alloca [8 x i64], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 7640891576956012808, ptr %i.b, align 16, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 -4942790177534073029, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 4354685564936845355, ptr %i.d, align 16, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 -6534734903238641935, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 5840696475078001361, ptr %i.f, align 16, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 -7276294671716946913, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 2270897969802886507, ptr %i.h, align 16, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store i64 6620516959819538809, ptr %i.i, align 8, !tbaa !13
  %i.j = and i32 %2, 127                          ; 2 uses
  %i.k = zext i32 %2 to i64                       ; 2 uses
  %i.l = lshr i32 %2, 7                           ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.m = shl nuw i64 %indvars.iv.i, 7
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  call fastcc void @sha512_update(ptr noundef readonly %i.n, ptr noundef nonnull %i.b)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, label %.lr.ph.i, !llvm.loop !15

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit: ; preds = %.lr.ph.i, %bb.a
  %i.o = getelementptr i8, ptr %1, i64 %i.k
  %i.p = zext nneg i32 %i.j to i64                ; 3 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr i8, ptr %i.o, i64 %i.q
  %i.s = icmp samesign ugt i32 %i.j, 111          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.t = shl nuw nsw i64 %i.k, 3
  %i.u = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, -7) %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.r, i64 %i.p, i1 false)
  %i.v = getelementptr i8, ptr %i.a, i64 %i.p
  store i8 -128, ptr %i.v, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 240, i64 112
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 0, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 16
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 248, i64 120
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.u, ptr %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha512_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.s, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

bb.b:                                             ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit
  %.sroa.gep18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @sha512_update(ptr noundef nonnull %.sroa.gep18.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_last.exit: ; preds = %_Py_LibHacl_Hacl_Hash_SHA2_sha512_update_nblocks.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = load i64, ptr %i.b, align 16, !tbaa !13
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = load i64, ptr %i.c, align 8, !tbaa !13
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = load i64, ptr %i.d, align 16, !tbaa !13
  %i.ab = tail call noundef i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !13
  %i.ad = tail call noundef i64 @llvm.bswap.i64(i64 %i.ac)
  %i.ae = load i64, ptr %i.f, align 16, !tbaa !13
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae)
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !13
  %i.ah = tail call noundef i64 @llvm.bswap.i64(i64 %i.ag)
  %i.ai = load i64, ptr %i.h, align 16, !tbaa !13
  %i.aj = tail call noundef i64 @llvm.bswap.i64(i64 %i.ai)
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !13
  %i.al = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  store i64 %i.x, ptr %0, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ad, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.af, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ah, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aj, ptr %.sroa.10.0..sroa_idx.i, align 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.al, ptr %.sroa.11.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_SHA2_malloc_384() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #17 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 8, i64 noundef 8) #17 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18 ; 5 uses
  %cond = icmp eq ptr %i.e, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  store i64 -3766243637369397544, ptr %i.c, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.c, i64 8
  store i64 7105036623409894663, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %i.c, i64 16
  store i64 -7973340178411365097, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr i8, ptr %i.c, i64 24
  store i64 1526699215303891257, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr i8, ptr %i.c, i64 32
  store i64 7436329637833083697, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr i8, ptr %i.c, i64 40
  store i64 -8163818279084223215, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr i8, ptr %i.c, i64 48
  store i64 -2662702644619276377, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr i8, ptr %i.c, i64 56
  store i64 5167115440072839076, ptr %i.l, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #16
  tail call void @free(ptr noundef nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ %i.e, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_reset_384(ptr noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !22 ; 8 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -3766243637369397544, ptr %.sroa.03.0.copyload, align 8, !tbaa !13
  %i.a = getelementptr i8, ptr %.sroa.03.0.copyload, i64 8
  store i64 7105036623409894663, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %.sroa.03.0.copyload, i64 16
  store i64 -7973340178411365097, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr i8, ptr %.sroa.03.0.copyload, i64 24
  store i64 1526699215303891257, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %.sroa.03.0.copyload, i64 32
  store i64 7436329637833083697, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %.sroa.03.0.copyload, i64 40
  store i64 -8163818279084223215, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %.sroa.03.0.copyload, i64 48
  store i64 -2662702644619276377, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %.sroa.03.0.copyload, i64 56
  store i64 5167115440072839076, ptr %i.g, align 8, !tbaa !13
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_SHA2_update_384(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @update_384_512(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_digest_384(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 48)) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = alloca [8 x i64], align 16               ; 11 uses
  %.sroa.025.0.copyload = load ptr, ptr %0, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13 ; 6 uses
  %i.c = and i64 %.sroa.5.0.copyload, 127         ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp ne i64 %.sroa.5.0.copyload, 0
  %or.cond = and i1 %i.e, %i.d
  %i.f = trunc nuw nsw i64 %i.c to i32
  %.0 = select i1 %or.cond, i32 128, i32 %i.f     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.025.0.copyload, i64 64, i1 false)
  %i.g = and i32 %.0, 127                         ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.i, %i.h
  %i.j = zext nneg i32 %i.g to i64
  %.028 = select i1 %or.cond3, i64 128, i64 %i.j
  %i.k = zext nneg i32 %.0 to i64                 ; 4 uses
  %i.l = getelementptr i8, ptr %.sroa.4.0.copyload, i64 %i.k
  %i.m = sub nsw i64 0, %.028
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = sub i64 %.sroa.5.0.copyload, %i.k
  %i.p = xor i64 %.sroa.5.0.copyload, -1
  %i.q = and i64 %i.o, %i.p
  %i.r = lshr i64 %i.q, 63
  %i.s = icmp samesign ugt i32 %.0, 111           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %.sroa.5.0.copyload, i64 3)
  %i.u = shl i64 %.sroa.5.0.copyload, 3
  %i.v = shl nuw nsw i64 %i.t, 56
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, -7) %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.n, i64 %i.k, i1 false)
  %i.x = getelementptr i8, ptr %i.a, i64 %i.k
  store i8 -128, ptr %i.x, align 1, !tbaa !12
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 240, i64 112
  %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.v, ptr %..sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 16
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, i64 248, i64 120
  %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i64 %i.w, ptr %..sroa.sel.sroa.sel.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  call fastcc void @sha512_update(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.s, label %bb.b, label %_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.gep18.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @sha512_update(ptr noundef nonnull %.sroa.gep18.i.i, ptr noundef nonnull %i.b)
  br label %_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last.exit

_Py_LibHacl_Hacl_Hash_SHA2_sha384_update_last.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.y = load i64, ptr %i.b, align 16, !tbaa !13
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !13
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13
  %i.ai = tail call noundef i64 @llvm.bswap.i64(i64 %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !13
  %i.al = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !13
  %i.ao = tail call noundef i64 @llvm.bswap.i64(i64 %i.an)
  store i64 %i.z, ptr %1, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.al, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ao, ptr %.sroa.9.0..sroa_idx.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_free_384(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !19
  tail call void @free(ptr noundef %.sroa.0.0.copyload.i) #16
  tail call void @free(ptr noundef %.sroa.4.0.copyload.i) #16
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA2_hash_384(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = alloca [8 x i64], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 -3766243637369397544, ptr %i.b, align 16, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 7105036623409894663, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 -7973340178411365097, ptr %i.d, align 16, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 1526699215303891257, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 7436329637833083697, ptr %i.f, align 16, !tbaa !13
end_hunk_1
