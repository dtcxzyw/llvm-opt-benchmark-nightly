inline.NumInlined: 790
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_Py_LibHacl_Hacl_Hash_SHA3_update_last_sha3:bb.a
  store <2 x i64> %i.bu, ptr %i.br, align 8, !tbaa !15
  %i.bv = getelementptr i8, ptr %1, i64 160       ; 2 uses
  %i.bw = load <2 x i64>, ptr %i.af, align 16
  %i.bx = load <2 x i64>, ptr %i.bv, align 8, !tbaa !15
  %i.by = xor <2 x i64> %i.bw, %i.bx
  store <2 x i64> %i.by, ptr %i.bv, align 8, !tbaa !15
  %i.bz = getelementptr i8, ptr %1, i64 176       ; 2 uses
  %i.ca = load <2 x i64>, ptr %i.ag, align 16
  %i.cb = load <2 x i64>, ptr %i.bz, align 8, !tbaa !15
  %i.cc = xor <2 x i64> %i.ca, %i.cb
  store <2 x i64> %i.cc, ptr %i.bz, align 8, !tbaa !15
  %i.cd = getelementptr i8, ptr %1, i64 192       ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !15
  %i.cf = xor i64 %.val1292, %i.ce
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  %i.cg = zext i8 %switch.load to i64
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  store i8 -128, ptr %i.ci, align 1, !tbaa !18
  call fastcc void @absorb_inner_32(ptr noundef %i.d, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i8 @_Py_LibHacl_Hacl_Hash_SHA3_get_alg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  ret i8 %.sroa.0.0.copyload
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_SHA3_malloc(i8 noundef zeroext %0) local_unnamed_addr #6 {
bb.a:
  %.off = add i8 %0, -8
  %switch = icmp ult i8 %.off, 6
  br i1 %switch, label %block_len.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

block_len.exit:                                   ; preds = %bb.a
  %i.c = zext nneg i8 %0 to i64
  %i.d = getelementptr i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -8
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = tail call noalias ptr @calloc(i64 noundef %switch.ext, i64 noundef 1) #20 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %block_len.exit
  %i.g = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 25, i64 noundef 8) #20 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.e) #19
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #21 ; 8 uses
  %cond = icmp eq ptr %i.i, null
  br i1 %cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %0, ptr %i.i, align 8, !tbaa !18
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.4.0..sroa_idx, i8 0, i64 7, i1 false)
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.g, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.g) #19
  tail call void @free(ptr noundef nonnull %i.e) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %block_len.exit
  %.3 = phi ptr [ null, %block_len.exit ], [ null, %bb.d ], [ %i.i, %bb.f ], [ %i.i, %bb.g ]
  ret ptr %.3
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_free(ptr noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21
  tail call void @free(ptr noundef %.sroa.4.0.copyload) #19
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #19
  tail call void @free(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_SHA3_copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %.sroa.038.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.439.0.copyload = load ptr, ptr %.sroa.439.0..sroa_idx, align 8, !tbaa !19
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.540.0.copyload = load ptr, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !21
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.641.0.copyload = load i64, ptr %.sroa.641.0..sroa_idx, align 8, !tbaa !15
  %.sroa.036.sroa.0.0.extract.trunc = trunc i64 %.sroa.038.0.copyload to i8
  %.sroa.036.sroa.0.0.extract.trunc.off = add i8 %.sroa.036.sroa.0.0.extract.trunc, -8
  %switch = icmp ult i8 %.sroa.036.sroa.0.0.extract.trunc.off, 6
  br i1 %switch, label %block_len.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

block_len.exit:                                   ; preds = %bb.a
  %switch.tableidx = add i64 %.sroa.038.0.copyload, 248
  %i.c = and i64 %switch.tableidx, 255
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = tail call noalias ptr @calloc(i64 noundef %switch.ext, i64 noundef 1) #20 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %switch.lookup

switch.lookup:                                    ; preds = %block_len.exit
  %switch.tableidx56 = add i64 %.sroa.038.0.copyload, 248
  %i.f = and i64 %switch.tableidx56, 255
  %switch.gep57 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.f
  %switch.load58 = load i8, ptr %switch.gep57, align 1
  %switch.ext59 = zext i8 %switch.load58 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.540.0.copyload, i64 %switch.ext59, i1 false)
  %i.g = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 25, i64 noundef 8) #20 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = and i64 %.sroa.038.0.copyload, 255
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  tail call void @free(ptr noundef nonnull %i.d) #19
  br label %bb.g

bb.d:                                             ; preds = %switch.lookup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.g, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.439.0.copyload, i64 200, i1 false)
  %i.j = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #21 ; 6 uses
  %cond = icmp eq ptr %i.j, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.i, ptr %i.j, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.g, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.641.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.g) #19
  tail call void @free(ptr noundef nonnull %i.d) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f, %block_len.exit
  %.3 = phi ptr [ null, %block_len.exit ], [ null, %bb.c ], [ null, %bb.f ], [ %i.j, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_reset(ptr nofree noundef captures(none) initializes((24, 32)) %0) local_unnamed_addr #13 {
bb.a:
  %.sroa.0.sroa.4 = alloca [7 x i8], align 1      ; 4 uses
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !18
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.4, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.47.0..sroa_idx, i64 7, i1 false)
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.a = load <2 x ptr>, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !23
  %.sroa.58.0.copyload = load ptr, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.58.0.copyload, i8 0, i64 200, i1 false)
  store i8 %.sroa.0.0.copyload, ptr %0, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.4, i64 7, i1 false), !tbaa.struct !24
  store <2 x ptr> %i.a, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !23
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.4)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_SHA3_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 2 uses
  %.sroa.697 = alloca [7 x i8], align 1           ; 2 uses
  %4 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 3 uses
  %.sroa.0159.0.copyload = load i8, ptr %0, align 8, !tbaa !18 ; 28 uses
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.5162.0.copyload = load i64, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !15 ; 13 uses
  %i.a = zext i32 %2 to i64                       ; 4 uses
  %i.b = xor i64 %.sroa.5162.0.copyload, -1
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i8 %.sroa.0159.0.copyload, -8 ; 2 uses
  %i.d = icmp ult i8 %switch.tableidx, 6
  br i1 %i.d, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.g = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.g
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.h = urem i64 %.sroa.5162.0.copyload, %switch.ext
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp ne i64 %.sroa.5162.0.copyload, 0    ; 4 uses
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.d, label %switch.lookup398

bb.d:                                             ; preds = %switch.lookup
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable [
    i8 9, label %block_len.exit212
    i8 8, label %block_len.exit208
    i8 10, label %block_len.exit208.thread273
    i8 11, label %block_len.exit208.thread276
    i8 12, label %block_len.exit208.thread279
    i8 13, label %block_len.exit208
  ]

block_len.exit208.thread273:                      ; preds = %bb.d
  br label %block_len.exit212

block_len.exit208.thread276:                      ; preds = %bb.d
  br label %block_len.exit212

block_len.exit208.thread279:                      ; preds = %bb.d
  br label %block_len.exit212

default.unreachable:                              ; preds = %bb.d
  unreachable

switch.lookup398:                                 ; preds = %switch.lookup
  %i.k = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.l = getelementptr i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.k
  %switch.gep399 = getelementptr i8, ptr %i.l, i64 -8
  %switch.load400 = load i8, ptr %switch.gep399, align 1
  %switch.ext401 = zext i8 %switch.load400 to i64
  %i.m = urem i64 %.sroa.5162.0.copyload, %switch.ext401
  %i.n = trunc nuw nsw i64 %i.m to i32
  br label %block_len.exit208

block_len.exit208:                                ; preds = %bb.d, %bb.d, %switch.lookup398
  %.0194 = phi i32 [ %i.n, %switch.lookup398 ], [ 136, %bb.d ], [ 136, %bb.d ] ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable393 [
    i8 9, label %block_len.exit212
    i8 8, label %bb.e
    i8 10, label %bb.f
    i8 11, label %bb.g
    i8 12, label %bb.h
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %block_len.exit208, %block_len.exit208
  br label %block_len.exit212

bb.f:                                             ; preds = %block_len.exit208
  br label %block_len.exit212

bb.g:                                             ; preds = %block_len.exit208
  br label %block_len.exit212

bb.h:                                             ; preds = %block_len.exit208
  br label %block_len.exit212

default.unreachable393:                           ; preds = %block_len.exit208
  unreachable

block_len.exit212:                                ; preds = %bb.d, %block_len.exit208.thread279, %block_len.exit208.thread276, %block_len.exit208.thread273, %block_len.exit208, %bb.e, %bb.f, %bb.g, %bb.h
  %.0194272 = phi i32 [ %.0194, %block_len.exit208 ], [ %.0194, %bb.e ], [ %.0194, %bb.h ], [ %.0194, %bb.f ], [ %.0194, %bb.g ], [ 104, %block_len.exit208.thread273 ], [ 72, %block_len.exit208.thread276 ], [ 168, %block_len.exit208.thread279 ], [ 144, %bb.d ] ; 7 uses
  %.0.i211 = phi i32 [ 144, %block_len.exit208 ], [ 136, %bb.e ], [ 168, %bb.h ], [ 104, %bb.f ], [ 72, %bb.g ], [ 104, %block_len.exit208.thread273 ], [ 72, %block_len.exit208.thread276 ], [ 168, %block_len.exit208.thread279 ], [ 144, %bb.d ]
  %i.o = sub nsw i32 %.0.i211, %.0194272
  %.not = icmp ugt i32 %2, %i.o
  br i1 %.not, label %bb.i, label %switch.lookup403

switch.lookup403:                                 ; preds = %block_len.exit212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.sroa.4119.0.copyload = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.p = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.q = getelementptr i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.p
  %switch.gep404 = getelementptr i8, ptr %i.q, i64 -8
  %switch.load405 = load i8, ptr %switch.gep404, align 1
  %switch.ext406 = zext i8 %switch.load405 to i64
  %i.r = urem i64 %.sroa.5162.0.copyload, %switch.ext406
  %i.s = icmp eq i64 %i.r, 0
  %or.cond3 = and i1 %i.j, %i.s
  %switch.tableidx407 = add nsw i8 %.sroa.0159.0.copyload, -8
  %i.t = zext nneg i8 %switch.tableidx407 to i64  ; 2 uses
  br i1 %or.cond3, label %switch.lookup408, label %switch.lookup413

switch.lookup408:                                 ; preds = %switch.lookup403
  %switch.gep409 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.t
  %switch.load410 = load i8, ptr %switch.gep409, align 1
  %switch.ext411 = zext i8 %switch.load410 to i64
  br label %block_len.exit216

switch.lookup413:                                 ; preds = %switch.lookup403
  %switch.gep414 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.t
  %switch.load415 = load i8, ptr %switch.gep414, align 1
  %switch.ext416 = zext i8 %switch.load415 to i64
  %i.u = urem i64 %.sroa.5162.0.copyload, %switch.ext416
  br label %block_len.exit216

block_len.exit216:                                ; preds = %switch.lookup408, %switch.lookup413
  %.0195 = phi i64 [ %i.u, %switch.lookup413 ], [ %switch.ext411, %switch.lookup408 ]
  %i.v = getelementptr i8, ptr %.sroa.4119.0.copyload, i64 %.0195
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %1, i64 %i.a, i1 false)
  %i.w = add i64 %.sroa.5162.0.copyload, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %.sink.split

bb.i:                                             ; preds = %block_len.exit212
  %i.x = icmp eq i32 %.0194272, 0
  br i1 %i.x, label %switch.lookup418, label %bb.o

switch.lookup418:                                 ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.697, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, i64 7, i1 false)
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5103.0.copyload = load ptr, ptr %.sroa.5103.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.6104.0.copyload = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 3 uses
  %i.y = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.z = getelementptr i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.y
  %switch.gep419 = getelementptr i8, ptr %i.z, i64 -8
  %switch.load420 = load i8, ptr %switch.gep419, align 1
  %switch.ext421 = zext i8 %switch.load420 to i64
  %i.aa = urem i64 %.sroa.5162.0.copyload, %switch.ext421
  %i.ab = icmp eq i64 %i.aa, 0
  %or.cond5 = and i1 %i.j, %i.ab
  br i1 %or.cond5, label %block_len.exit222, label %switch.lookup423

switch.lookup423:                                 ; preds = %switch.lookup418
  %i.ac = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.ad = getelementptr i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.ac
  %switch.gep424 = getelementptr i8, ptr %i.ad, i64 -8
  %switch.load425 = load i8, ptr %switch.gep424, align 1
  %switch.ext426 = zext i8 %switch.load425 to i64
  %i.ae = urem i64 %.sroa.5162.0.copyload, %switch.ext426
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %switch.lookup428, label %block_len.exit222

block_len.exit222:                                ; preds = %switch.lookup418, %switch.lookup423
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0159.0.copyload, ptr noundef %.sroa.5103.0.copyload, ptr noundef %.sroa.6104.0.copyload, i32 noundef 1)
  br label %switch.lookup428

switch.lookup428:                                 ; preds = %block_len.exit222, %switch.lookup423
  %i.ag = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.ah = getelementptr i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.ag
  %switch.gep429 = getelementptr i8, ptr %i.ah, i64 -8
  %switch.load430 = load i8, ptr %switch.gep429, align 1
  %switch.ext431 = zext i8 %switch.load430 to i32
  %i.ai = urem i32 %2, %switch.ext431
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %switch.lookup433

bb.j:                                             ; preds = %switch.lookup428
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable367 [
    i8 9, label %block_len.exit232.thread
    i8 8, label %block_len.exit232
    i8 10, label %block_len.exit232.thread294
    i8 11, label %block_len.exit232.thread296
    i8 12, label %block_len.exit232.thread298
    i8 13, label %block_len.exit232
  ]

block_len.exit232.thread:                         ; preds = %bb.j
  %i.ak = add i32 %2, -144
  br label %block_len.exit236.thread

block_len.exit232.thread294:                      ; preds = %bb.j
  %i.al = add i32 %2, -104
  br label %block_len.exit236.thread303

block_len.exit232.thread296:                      ; preds = %bb.j
  %i.am = add i32 %2, -72
  br label %block_len.exit236.thread307

block_len.exit232.thread298:                      ; preds = %bb.j
  %i.an = add i32 %2, -168
  br label %block_len.exit236.thread311

default.unreachable367:                           ; preds = %bb.j
  unreachable

switch.lookup433:                                 ; preds = %switch.lookup428
  %i.ao = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.ap = getelementptr i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.ao
  %switch.gep434 = getelementptr i8, ptr %i.ap, i64 -8
  %switch.load435 = load i8, ptr %switch.gep434, align 1
  %switch.ext436 = zext i8 %switch.load435 to i32
  %i.aq = urem i32 %2, %switch.ext436
  br label %block_len.exit232

block_len.exit232:                                ; preds = %bb.j, %bb.j, %switch.lookup433
  %.0197 = phi i32 [ %i.aq, %switch.lookup433 ], [ 136, %bb.j ], [ 136, %bb.j ]
  %i.ar = sub i32 %2, %.0197                      ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable368 [
    i8 9, label %block_len.exit236.thread
    i8 8, label %block_len.exit236
    i8 10, label %block_len.exit236.thread303
    i8 11, label %block_len.exit236.thread307
    i8 12, label %block_len.exit236.thread311
    i8 13, label %block_len.exit236
  ]

default.unreachable368:                           ; preds = %block_len.exit232
  unreachable

block_len.exit236.thread:                         ; preds = %block_len.exit232.thread, %block_len.exit232
  %.ph = phi i32 [ %i.ak, %block_len.exit232.thread ], [ %i.ar, %block_len.exit232 ]
  %i.as = udiv i32 %.ph, 144
  br label %block_len.exit238.thread

block_len.exit236.thread303:                      ; preds = %block_len.exit232.thread294, %block_len.exit232
  %.ph302 = phi i32 [ %i.al, %block_len.exit232.thread294 ], [ %i.ar, %block_len.exit232 ]
  %i.at = udiv i32 %.ph302, 104
  br label %block_len.exit238.thread317

block_len.exit236.thread307:                      ; preds = %block_len.exit232.thread296, %block_len.exit232
  %.ph306 = phi i32 [ %i.am, %block_len.exit232.thread296 ], [ %i.ar, %block_len.exit232 ]
  %i.au = udiv i32 %.ph306, 72
  br label %block_len.exit238.thread321

block_len.exit236.thread311:                      ; preds = %block_len.exit232.thread298, %block_len.exit232
  %.ph310 = phi i32 [ %i.an, %block_len.exit232.thread298 ], [ %i.ar, %block_len.exit232 ]
  %i.av = udiv i32 %.ph310, 168
  br label %block_len.exit238.thread325

block_len.exit236:                                ; preds = %block_len.exit232, %block_len.exit232
  %i.aw = udiv i32 %i.ar, 136                     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable369 [
    i8 9, label %block_len.exit238.thread
    i8 8, label %block_len.exit238
    i8 10, label %block_len.exit238.thread317
    i8 11, label %block_len.exit238.thread321
    i8 12, label %block_len.exit238.thread325
    i8 13, label %block_len.exit238
  ]

default.unreachable369:                           ; preds = %block_len.exit236
  unreachable

block_len.exit238.thread:                         ; preds = %block_len.exit236.thread, %block_len.exit236
  %.ph313 = phi i32 [ %i.as, %block_len.exit236.thread ], [ %i.aw, %block_len.exit236 ]
  %i.ax = mul i32 %.ph313, 144                    ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  br label %block_len.exit240

block_len.exit238.thread317:                      ; preds = %block_len.exit236.thread303, %block_len.exit236
  %.ph316 = phi i32 [ %i.at, %block_len.exit236.thread303 ], [ %i.aw, %block_len.exit236 ]
  %i.ba = mul nuw i32 %.ph316, 104                ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  br label %block_len.exit240

block_len.exit238.thread321:                      ; preds = %block_len.exit236.thread307, %block_len.exit236
  %.ph320 = phi i32 [ %i.au, %block_len.exit236.thread307 ], [ %i.aw, %block_len.exit236 ]
  %i.bd = mul nuw i32 %.ph320, 72                 ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  br label %block_len.exit240

block_len.exit238.thread325:                      ; preds = %block_len.exit236.thread311, %block_len.exit236
  %.ph324 = phi i32 [ %i.av, %block_len.exit236.thread311 ], [ %i.aw, %block_len.exit236 ]
  %i.bg = mul i32 %.ph324, 168                    ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %1, i64 %i.bh
  br label %block_len.exit240

block_len.exit238:                                ; preds = %block_len.exit236, %block_len.exit236
  %i.bj = mul nuw i32 %i.aw, 136                  ; 6 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable370 [
    i8 9, label %block_len.exit240
    i8 8, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.k
  ]

bb.k:                                             ; preds = %block_len.exit238, %block_len.exit238
  br label %block_len.exit240

bb.l:                                             ; preds = %block_len.exit238
  br label %block_len.exit240

bb.m:                                             ; preds = %block_len.exit238
  br label %block_len.exit240

bb.n:                                             ; preds = %block_len.exit238
  br label %block_len.exit240

default.unreachable370:                           ; preds = %block_len.exit238
  unreachable

block_len.exit240:                                ; preds = %block_len.exit238.thread325, %block_len.exit238.thread321, %block_len.exit238.thread317, %block_len.exit238.thread, %block_len.exit238, %bb.k, %bb.l, %bb.m, %bb.n
  %i.bm = phi ptr [ %i.bl, %block_len.exit238 ], [ %i.bl, %bb.k ], [ %i.az, %block_len.exit238.thread ], [ %i.bl, %bb.l ], [ %i.bl, %bb.m ], [ %i.bc, %block_len.exit238.thread317 ], [ %i.bf, %block_len.exit238.thread321 ], [ %i.bi, %block_len.exit238.thread325 ], [ %i.bl, %bb.n ]
  %i.bn = phi i32 [ %i.bj, %block_len.exit238 ], [ %i.bj, %bb.k ], [ %i.ax, %block_len.exit238.thread ], [ %i.bj, %bb.l ], [ %i.bj, %bb.m ], [ %i.ba, %block_len.exit238.thread317 ], [ %i.bd, %block_len.exit238.thread321 ], [ %i.bg, %block_len.exit238.thread325 ], [ %i.bj, %bb.n ] ; 2 uses
  %.0.i239 = phi i32 [ 144, %block_len.exit238 ], [ 136, %bb.k ], [ 144, %block_len.exit238.thread ], [ 104, %bb.l ], [ 72, %bb.m ], [ 104, %block_len.exit238.thread317 ], [ 72, %block_len.exit238.thread321 ], [ 168, %block_len.exit238.thread325 ], [ 168, %bb.n ]
  %i.bo = sub i32 %2, %i.bn
  %i.bp = udiv i32 %i.bn, %.0.i239
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0159.0.copyload, ptr noundef %.sroa.5103.0.copyload, ptr noundef %1, i32 noundef %i.bp)
  %i.bq = zext i32 %i.bo to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6104.0.copyload, ptr align 1 %i.bm, i64 %i.bq, i1 false)
  %i.br = add i64 %.sroa.5162.0.copyload, %i.a
  store i8 %.sroa.0159.0.copyload, ptr %0, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.697, i64 7, i1 false)
  store ptr %.sroa.5103.0.copyload, ptr %.sroa.5103.0..sroa_idx, align 8, !tbaa !19
  br label %.sink.split

bb.o:                                             ; preds = %bb.i
  %.sroa.454.0.copyload328 = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable374 [
    i8 9, label %block_len.exit242.thread
    i8 8, label %block_len.exit242
    i8 10, label %block_len.exit242.thread330
    i8 11, label %block_len.exit242.thread334
    i8 12, label %block_len.exit242.thread338
    i8 13, label %block_len.exit242
  ]

block_len.exit242.thread:                         ; preds = %bb.o
  %i.bs = sub nsw i32 144, %.0194272              ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt
  br label %block_len.exit244

block_len.exit242.thread330:                      ; preds = %bb.o
  %i.bv = sub nsw i32 104, %.0194272              ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  br label %block_len.exit244

block_len.exit242.thread334:                      ; preds = %bb.o
  %i.by = sub nsw i32 72, %.0194272               ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz
  br label %block_len.exit244

block_len.exit242.thread338:                      ; preds = %bb.o
  %i.cb = sub nuw nsw i32 168, %.0194272          ; 2 uses
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  br label %block_len.exit244

default.unreachable374:                           ; preds = %bb.o
  unreachable

block_len.exit242:                                ; preds = %bb.o, %bb.o
  %i.ce = sub nsw i32 136, %.0194272              ; 6 uses
  %i.cf = zext i32 %i.ce to i64                   ; 6 uses
  %i.cg = getelementptr i8, ptr %1, i64 %i.cf     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable389 [
    i8 9, label %block_len.exit244
    i8 8, label %bb.p
    i8 10, label %bb.q
    i8 11, label %bb.r
    i8 12, label %bb.s
    i8 13, label %bb.p
  ]

bb.p:                                             ; preds = %block_len.exit242, %block_len.exit242
  br label %block_len.exit244

bb.q:                                             ; preds = %block_len.exit242
  br label %block_len.exit244

bb.r:                                             ; preds = %block_len.exit242
  br label %block_len.exit244

bb.s:                                             ; preds = %block_len.exit242
  br label %block_len.exit244

default.unreachable389:                           ; preds = %block_len.exit242
  unreachable

block_len.exit244:                                ; preds = %block_len.exit242.thread338, %block_len.exit242.thread334, %block_len.exit242.thread330, %block_len.exit242.thread, %block_len.exit242, %bb.p, %bb.q, %bb.r, %bb.s
  %i.ch = phi ptr [ %i.cg, %block_len.exit242 ], [ %i.cg, %bb.p ], [ %i.bu, %block_len.exit242.thread ], [ %i.cg, %bb.q ], [ %i.cg, %bb.r ], [ %i.bx, %block_len.exit242.thread330 ], [ %i.ca, %block_len.exit242.thread334 ], [ %i.cd, %block_len.exit242.thread338 ], [ %i.cg, %bb.s ] ; 2 uses
  %i.ci = phi i64 [ %i.cf, %block_len.exit242 ], [ %i.cf, %bb.p ], [ %i.bt, %block_len.exit242.thread ], [ %i.cf, %bb.q ], [ %i.cf, %bb.r ], [ %i.bw, %block_len.exit242.thread330 ], [ %i.bz, %block_len.exit242.thread334 ], [ %i.cc, %block_len.exit242.thread338 ], [ %i.cf, %bb.s ] ; 2 uses
  %i.cj = phi i32 [ %i.ce, %block_len.exit242 ], [ %i.ce, %bb.p ], [ %i.bs, %block_len.exit242.thread ], [ %i.ce, %bb.q ], [ %i.ce, %bb.r ], [ %i.bv, %block_len.exit242.thread330 ], [ %i.by, %block_len.exit242.thread334 ], [ %i.cb, %block_len.exit242.thread338 ], [ %i.ce, %bb.s ] ; 2 uses
  %.0.i243 = phi i64 [ 144, %block_len.exit242 ], [ 136, %bb.p ], [ 144, %block_len.exit242.thread ], [ 104, %bb.q ], [ 72, %bb.r ], [ 104, %block_len.exit242.thread330 ], [ 72, %block_len.exit242.thread334 ], [ 168, %block_len.exit242.thread338 ], [ 168, %bb.s ]
  %i.ck = urem i64 %.sroa.5162.0.copyload, %.0.i243
  %i.cl = icmp eq i64 %i.ck, 0
  %or.cond10 = and i1 %i.j, %i.cl
  %switch.tableidx437 = add nsw i8 %.sroa.0159.0.copyload, -8
  %i.cm = zext nneg i8 %switch.tableidx437 to i64 ; 2 uses
  br i1 %or.cond10, label %switch.lookup438, label %switch.lookup443

switch.lookup438:                                 ; preds = %block_len.exit244
  %switch.gep439 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.cm
  %switch.load440 = load i8, ptr %switch.gep439, align 1
  %switch.ext441 = zext i8 %switch.load440 to i64
  br label %block_len.exit246

switch.lookup443:                                 ; preds = %block_len.exit244
  %switch.gep444 = getelementptr inbounds nuw i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.cm
  %switch.load445 = load i8, ptr %switch.gep444, align 1
  %switch.ext446 = zext i8 %switch.load445 to i64
  %i.cn = urem i64 %.sroa.5162.0.copyload, %switch.ext446
  br label %block_len.exit246

block_len.exit246:                                ; preds = %switch.lookup438, %switch.lookup443
  %.0198 = phi i64 [ %i.cn, %switch.lookup443 ], [ %switch.ext441, %switch.lookup438 ]
  %i.co = getelementptr i8, ptr %.sroa.454.0.copyload328, i64 %.0198
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %1, i64 %i.ci, i1 false)
  %i.cp = add i64 %i.ci, %.sroa.5162.0.copyload   ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store ptr %.sroa.454.0.copyload328, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21
  store i64 %i.cp, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !15
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !18 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.cr = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.cs = getelementptr i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.cr
  %switch.gep449 = getelementptr i8, ptr %i.cs, i64 -8
  %switch.load450 = load i8, ptr %switch.gep449, align 1
  %switch.ext451 = zext i8 %switch.load450 to i64
  %i.ct = urem i64 %i.cp, %switch.ext451
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = icmp ne i64 %i.cp, 0
  %or.cond12 = and i1 %i.cv, %i.cu
  br i1 %or.cond12, label %block_len.exit252, label %switch.lookup453

switch.lookup453:                                 ; preds = %block_len.exit246
  %i.cw = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.cx = getelementptr i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.cw
  %switch.gep454 = getelementptr i8, ptr %i.cx, i64 -8
  %switch.load455 = load i8, ptr %switch.gep454, align 1
  %switch.ext456 = zext i8 %switch.load455 to i64
  %i.cy = urem i64 %i.cp, %switch.ext456
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %switch.lookup460, label %block_len.exit252

block_len.exit252:                                ; preds = %block_len.exit246, %switch.lookup453
  %switch.tableidx474 = add i8 %.sroa.0.0.copyload, -8 ; 2 uses
  %i.da = icmp ult i8 %switch.tableidx474, 6
  br i1 %i.da, label %switch.lookup475, label %bb.t

bb.t:                                             ; preds = %block_len.exit252
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.dc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #17 ; 0 uses
  tail call void @exit(i32 noundef 253) #18
  unreachable

switch.lookup475:                                 ; preds = %block_len.exit252
  %switch.tableidx457 = shl nuw nsw i8 %.sroa.0159.0.copyload, 3
  %i.dd = add nsw i8 %switch.tableidx457, -64
  %switch.shiftamt = zext nneg i8 %i.dd to i48
  %switch.downshift = lshr i48 -131218626015096, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  %i.de = shl nuw nsw i8 %switch.tableidx474, 3
  %switch.shiftamt477 = zext nneg i8 %i.de to i48
  %switch.downshift478 = lshr i48 -131218626015096, %switch.shiftamt477
  %switch.masked479 = trunc i48 %switch.downshift478 to i8
  %i.df = udiv i8 %switch.masked, %switch.masked479
  %.zext381 = zext nneg i8 %i.df to i32
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0.0.copyload, ptr noundef %.sroa.5.0.copyload, ptr noundef %.sroa.454.0.copyload328, i32 noundef %.zext381)
  br label %switch.lookup460

switch.lookup460:                                 ; preds = %switch.lookup475, %switch.lookup453
  %i.dg = sub i32 %2, %i.cj                       ; 9 uses
  %i.dh = zext i32 %i.dg to i64
  %i.di = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.dj = getelementptr i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.di
  %switch.gep461 = getelementptr i8, ptr %i.dj, i64 -8
  %switch.load462 = load i8, ptr %switch.gep461, align 1
  %switch.ext463 = zext i8 %switch.load462 to i32
  %i.dk = urem i32 %i.dg, %switch.ext463
  %i.dl = icmp ne i32 %i.dk, 0
  %.not203 = icmp eq i32 %2, %i.cj
  %or.cond206 = select i1 %i.dl, i1 true, i1 %.not203
  br i1 %or.cond206, label %switch.lookup465, label %bb.u

bb.u:                                             ; preds = %switch.lookup460
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable386 [
    i8 9, label %block_len.exit262.thread
    i8 8, label %block_len.exit262
    i8 10, label %block_len.exit262.thread343
    i8 11, label %block_len.exit262.thread345
    i8 12, label %block_len.exit262.thread347
    i8 13, label %block_len.exit262
  ]

block_len.exit262.thread:                         ; preds = %bb.u
  %i.dm = add i32 %i.dg, -144
  br label %block_len.exit266.thread

block_len.exit262.thread343:                      ; preds = %bb.u
  %i.dn = add i32 %i.dg, -104
  br label %block_len.exit266.thread353

block_len.exit262.thread345:                      ; preds = %bb.u
  %i.do = add i32 %i.dg, -72
  br label %block_len.exit266.thread357

block_len.exit262.thread347:                      ; preds = %bb.u
  %i.dp = add i32 %i.dg, -168
  br label %block_len.exit266.thread361

default.unreachable386:                           ; preds = %bb.u
  unreachable

switch.lookup465:                                 ; preds = %switch.lookup460
  %i.dq = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.dr = getelementptr i8, ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.dq
end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32:.preheader
  %i.ds = xor i64 %i.dr, %i.dm
  %i.dt = xor i64 %i.ds, %i.dl                    ; 3 uses
  %i.du = xor i64 %i.dk, %i.cu
  %i.dv = xor i64 %i.du, %i.dj
  %i.dw = xor i64 %i.dv, %i.di
  %i.dx = xor i64 %i.dw, %i.dh                    ; 3 uses
  %i.dy = xor i64 %i.dg, %i.ct
  %i.dz = xor i64 %i.dy, %i.df
  %i.ea = xor i64 %i.dz, %i.de
  %i.eb = xor i64 %i.ea, %i.dd                    ; 3 uses
  %i.ec = xor i64 %i.dc, %i.cs
  %i.ed = xor i64 %i.ec, %i.db
  %i.ee = xor i64 %i.ed, %i.da
  %i.ef = xor i64 %i.ee, %i.cz                    ; 3 uses
  %i.eg = xor i64 %i.cy, %i.cr
  %i.eh = xor i64 %i.eg, %i.cx
  %i.ei = xor i64 %i.eh, %i.cw
  %i.ej = xor i64 %i.ei, %i.cv                    ; 3 uses
  %i.ek = tail call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 1)
  %i.el = xor i64 %i.ej, %i.ek                    ; 5 uses
  %i.em = xor i64 %i.el, %i.dp                    ; 4 uses
  store i64 %i.em, ptr %2, align 8, !tbaa !15
  %i.en = xor i64 %i.el, %i.do                    ; 2 uses
  %i.eo = xor i64 %i.el, %i.dn                    ; 2 uses
  %i.ep = xor i64 %i.el, %i.dm                    ; 2 uses
  %i.eq = xor i64 %i.el, %i.dl                    ; 3 uses
  store i64 %i.eq, ptr %i.cb, align 8, !tbaa !15
  %i.er = tail call i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 1)
  %i.es = xor i64 %i.er, %i.dt                    ; 5 uses
  %i.et = xor i64 %i.es, %i.cu                    ; 2 uses
  %i.eu = xor i64 %i.es, %i.dk                    ; 3 uses
  store i64 %i.eu, ptr %i.al, align 8, !tbaa !15
  %i.ev = xor i64 %i.es, %i.dj                    ; 2 uses
  %i.ew = xor i64 %i.es, %i.di                    ; 2 uses
  %i.ex = xor i64 %i.es, %i.dh                    ; 2 uses
  %i.ey = tail call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 1)
  %i.ez = xor i64 %i.ey, %i.dx                    ; 5 uses
  %i.fa = xor i64 %i.ez, %i.ct                    ; 3 uses
  store i64 %i.fa, ptr %i.aa, align 8, !tbaa !15
  %i.fb = xor i64 %i.ez, %i.dg                    ; 2 uses
  %i.fc = xor i64 %i.ez, %i.df                    ; 2 uses
  %i.fd = xor i64 %i.ez, %i.de                    ; 2 uses
  %i.fe = xor i64 %i.ez, %i.dd                    ; 3 uses
  store i64 %i.fe, ptr %i.ch, align 8, !tbaa !15
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 1)
  %i.fg = xor i64 %i.ff, %i.eb                    ; 5 uses
  %i.fh = xor i64 %i.fg, %i.cs                    ; 2 uses
  %i.fi = xor i64 %i.fg, %i.dc                    ; 2 uses
  %i.fj = xor i64 %i.fg, %i.db                    ; 2 uses
  %i.fk = xor i64 %i.fg, %i.da                    ; 2 uses
  %i.fl = xor i64 %i.fg, %i.cz                    ; 2 uses
  %i.fm = tail call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 1)
  %i.fn = xor i64 %i.ef, %i.fm                    ; 5 uses
  %i.fo = xor i64 %i.fn, %i.cr                    ; 2 uses
  %i.fp = xor i64 %i.fn, %i.cy                    ; 2 uses
  %i.fq = xor i64 %i.fn, %i.cx                    ; 2 uses
  %i.fr = xor i64 %i.fn, %i.cw                    ; 2 uses
  %i.fs = xor i64 %i.cv, %i.fn                    ; 2 uses
  %i.ft = tail call i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 1) ; 4 uses
  store i64 %i.ft, ptr %i.ax, align 8, !tbaa !15
  %i.fu = tail call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 3) ; 4 uses
  store i64 %i.fu, ptr %i.ao, align 8, !tbaa !15
  %i.fv = tail call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 6) ; 4 uses
  store i64 %i.fv, ptr %i.ba, align 8, !tbaa !15
  %i.fw = tail call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 10) ; 4 uses
  store i64 %i.fw, ptr %i.bs, align 8, !tbaa !15
  %i.fx = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 15) ; 4 uses
  store i64 %i.fx, ptr %i.bv, align 8, !tbaa !15
  %i.fy = tail call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 21) ; 3 uses
  %i.fz = tail call i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 28) ; 3 uses
  %i.ga = tail call i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 36) ; 4 uses
  store i64 %i.ga, ptr %i.bp, align 8, !tbaa !15
  %i.gb = tail call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 45) ; 3 uses
  %i.gc = tail call i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 55) ; 4 uses
  store i64 %i.gc, ptr %i.ce, align 8, !tbaa !15
  %i.gd = tail call i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 2) ; 4 uses
  store i64 %i.gd, ptr %i.cn, align 8, !tbaa !15
  %i.ge = tail call i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 14) ; 3 uses
  %i.gf = tail call i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 27) ; 4 uses
  store i64 %i.gf, ptr %i.bm, align 8, !tbaa !15
  %i.gg = tail call i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 41) ; 4 uses
  store i64 %i.gg, ptr %i.ck, align 8, !tbaa !15
  %i.gh = tail call i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 56) ; 4 uses
  store i64 %i.gh, ptr %i.by, align 8, !tbaa !15
  %i.gi = tail call i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 8) ; 3 uses
  %i.gj = tail call i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 25) ; 3 uses
  %i.gk = tail call i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 43) ; 3 uses
  %i.gl = tail call i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 62) ; 4 uses
  store i64 %i.gl, ptr %i.cb, align 8, !tbaa !15
  %i.gm = tail call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 18) ; 3 uses
  %i.gn = tail call i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 39) ; 4 uses
  store i64 %i.gn, ptr %i.ch, align 8, !tbaa !15
  %i.go = tail call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 61) ; 3 uses
  %i.gp = tail call i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 20) ; 3 uses
  %i.gq = tail call i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 44) ; 3 uses
  %i.gr = xor i64 %i.gq, -1
  %i.gs = and i64 %i.gk, %i.gr
  %i.gt = xor i64 %i.gk, -1
  %i.gu = and i64 %i.fy, %i.gt
  %i.gv = xor i64 %i.gu, %i.gq                    ; 2 uses
  %i.gw = xor i64 %i.fy, -1
  %i.gx = and i64 %i.ge, %i.gw
  %i.gy = xor i64 %i.gx, %i.gk                    ; 2 uses
  %i.gz = xor i64 %i.ge, -1
  %i.ha = and i64 %i.em, %i.gz
  %i.hb = xor i64 %i.ha, %i.fy                    ; 2 uses
  %i.hc = xor i64 %i.em, -1
  %i.hd = and i64 %i.gq, %i.hc
  %i.he = xor i64 %i.ge, %i.hd                    ; 2 uses
  store i64 %i.gv, ptr %i.w, align 8, !tbaa !15
  store i64 %i.gy, ptr %i.aa, align 8, !tbaa !15
  store i64 %i.hb, ptr %i.ab, align 8, !tbaa !15
  store i64 %i.he, ptr %i.af, align 8, !tbaa !15
  %i.hf = xor i64 %i.gp, -1
  %i.hg = and i64 %i.fu, %i.hf
  %i.hh = xor i64 %i.hg, %i.fz                    ; 2 uses
  %i.hi = xor i64 %i.fu, -1
  %i.hj = and i64 %i.gb, %i.hi
  %i.hk = xor i64 %i.hj, %i.gp                    ; 2 uses
  %i.hl = xor i64 %i.gb, -1
  %i.hm = and i64 %i.go, %i.hl
  %i.hn = xor i64 %i.hm, %i.fu                    ; 2 uses
  %i.ho = xor i64 %i.go, -1
  %i.hp = and i64 %i.fz, %i.ho
  %i.hq = xor i64 %i.hp, %i.gb                    ; 2 uses
  %i.hr = xor i64 %i.fz, -1
  %i.hs = and i64 %i.gp, %i.hr
  %i.ht = xor i64 %i.go, %i.hs                    ; 2 uses
  store i64 %i.hh, ptr %i.ai, align 8, !tbaa !15
  store i64 %i.hk, ptr %i.al, align 8, !tbaa !15
  store i64 %i.hn, ptr %i.ao, align 8, !tbaa !15
  store i64 %i.hq, ptr %i.ar, align 8, !tbaa !15
  store i64 %i.ht, ptr %i.au, align 8, !tbaa !15
  %i.hu = xor i64 %i.fv, -1
  %i.hv = and i64 %i.gj, %i.hu
  %i.hw = xor i64 %i.hv, %i.ft                    ; 2 uses
  %i.hx = xor i64 %i.gj, -1
  %i.hy = and i64 %i.gi, %i.hx
  %i.hz = xor i64 %i.hy, %i.fv                    ; 2 uses
  %i.ia = xor i64 %i.gi, -1
  %i.ib = and i64 %i.gm, %i.ia
  %i.ic = xor i64 %i.ib, %i.gj                    ; 2 uses
  %i.id = xor i64 %i.gm, -1
  %i.ie = and i64 %i.ft, %i.id
  %i.if = xor i64 %i.ie, %i.gi                    ; 2 uses
  %i.ig = xor i64 %i.ft, -1
  %i.ih = and i64 %i.fv, %i.ig
  %i.ii = xor i64 %i.gm, %i.ih                    ; 2 uses
  store i64 %i.hw, ptr %i.ax, align 8, !tbaa !15
  store i64 %i.hz, ptr %i.ba, align 8, !tbaa !15
  store i64 %i.ic, ptr %i.bd, align 8, !tbaa !15
  store i64 %i.if, ptr %i.bg, align 8, !tbaa !15
  store i64 %i.ii, ptr %i.bj, align 8, !tbaa !15
  %i.ij = xor i64 %i.ga, -1
  %i.ik = and i64 %i.fw, %i.ij
  %i.il = xor i64 %i.ik, %i.gf                    ; 2 uses
  %i.im = xor i64 %i.fw, -1
  %i.in = and i64 %i.fx, %i.im
  %i.io = xor i64 %i.in, %i.ga                    ; 2 uses
  %i.ip = xor i64 %i.fx, -1
  %i.iq = and i64 %i.gh, %i.ip
  %i.ir = xor i64 %i.iq, %i.fw                    ; 2 uses
  %i.is = xor i64 %i.gh, -1
  %i.it = and i64 %i.gf, %i.is
  %i.iu = xor i64 %i.it, %i.fx                    ; 2 uses
  %i.iv = xor i64 %i.gf, -1
  %i.iw = and i64 %i.ga, %i.iv
  %i.ix = xor i64 %i.gh, %i.iw                    ; 2 uses
  store i64 %i.il, ptr %i.bm, align 8, !tbaa !15
  store i64 %i.io, ptr %i.bp, align 8, !tbaa !15
  store i64 %i.ir, ptr %i.bs, align 8, !tbaa !15
  store i64 %i.iu, ptr %i.bv, align 8, !tbaa !15
  store i64 %i.ix, ptr %i.by, align 8, !tbaa !15
  %i.iy = xor i64 %i.gc, -1
  %i.iz = and i64 %i.gn, %i.iy
  %i.ja = xor i64 %i.iz, %i.gl                    ; 2 uses
  %i.jb = xor i64 %i.gn, -1
  %i.jc = and i64 %i.gg, %i.jb
  %i.jd = xor i64 %i.jc, %i.gc                    ; 2 uses
  %i.je = xor i64 %i.gg, -1
  %i.jf = and i64 %i.gd, %i.je
  %i.jg = xor i64 %i.jf, %i.gn                    ; 2 uses
  %i.jh = xor i64 %i.gd, -1
  %i.ji = and i64 %i.gl, %i.jh
  %i.jj = xor i64 %i.ji, %i.gg                    ; 2 uses
  %i.jk = xor i64 %i.gl, -1
  %i.jl = and i64 %i.gc, %i.jk
  %i.jm = xor i64 %i.gd, %i.jl                    ; 2 uses
  store i64 %i.ja, ptr %i.cb, align 8, !tbaa !15
  store i64 %i.jd, ptr %i.ce, align 8, !tbaa !15
  store i64 %i.jg, ptr %i.ch, align 8, !tbaa !15
  store i64 %i.jj, ptr %i.ck, align 8, !tbaa !15
  store i64 %i.jm, ptr %i.cn, align 8, !tbaa !15
  %i.jn = getelementptr [8 x i8], ptr @_Py_LibHacl_Hacl_Hash_SHA3_keccak_rndc, i64 %indvars.iv
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !15
  %i.jp = xor i64 %i.gs, %i.jo
  %i.jq = xor i64 %i.jp, %i.em                    ; 2 uses
  store i64 %i.jq, ptr %2, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %bb.a, label %bb.b, !llvm.loop !25
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_shake128(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [25 x i64], align 16              ; 39 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 18 uses
  %i.d = alloca [256 x i8], align 16              ; 5 uses
  %4 = alloca [32 x i64], align 16                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  %.not = icmp ult i32 %3, 168
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv i32 %3, 168
  %wide.trip.count = zext nneg i32 %i.e to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = load <2 x i64>, ptr %i.a, align 16, !tbaa !15
  %.phi.trans.insert565 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load <2 x i64>, ptr %.phi.trans.insert565, align 16, !tbaa !15
  %.phi.trans.insert569 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load <2 x i64>, ptr %.phi.trans.insert569, align 16, !tbaa !15
  %.phi.trans.insert573 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load <2 x i64>, ptr %.phi.trans.insert573, align 16, !tbaa !15
  %.phi.trans.insert577 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.pre578 = load i64, ptr %.phi.trans.insert577, align 16, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi i64 [ %.pre578, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.l = phi <2 x i64> [ %i.g, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.m = phi <2 x i64> [ %i.h, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.n = phi <2 x i64> [ %i.i, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.o = phi <2 x i64> [ %i.j, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.p = urem i32 %3, 168
  %i.q = zext i32 %3 to i64
  %i.r = getelementptr i8, ptr %2, i64 %i.q
  %i.s = zext nneg i32 %i.p to i64                ; 3 uses
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = getelementptr i8, ptr %i.c, i64 %i.s
  store i8 31, ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.val511 = load i64, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aj = load <2 x i64>, ptr %i.c, align 16
  %i.ak = xor <2 x i64> %i.aj, %i.l
  store <2 x i64> %i.ak, ptr %i.a, align 16, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.an = load <2 x i64>, ptr %i.w, align 16
  %i.ao = xor <2 x i64> %i.an, %i.m
  store <2 x i64> %i.ao, ptr %i.al, align 16, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.x, align 16
  %i.as = xor <2 x i64> %i.ar, %i.n
  store <2 x i64> %i.as, ptr %i.ap, align 16, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.y, align 16
  %i.aw = xor <2 x i64> %i.av, %i.o
  store <2 x i64> %i.aw, ptr %i.at, align 16, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.ay = xor i64 %.val511, %i.k
  store i64 %i.ay, ptr %i.ax, align 16, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.aa, align 8
  %i.bc = load <2 x i64>, ptr %i.az, align 8, !tbaa !15
  %i.bd = xor <2 x i64> %i.bb, %i.bc
  store <2 x i64> %i.bd, ptr %i.az, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.bg = load <2 x i64>, ptr %i.ab, align 8
  %i.bh = load <2 x i64>, ptr %i.be, align 8, !tbaa !15
  %i.bi = xor <2 x i64> %i.bg, %i.bh
  store <2 x i64> %i.bi, ptr %i.be, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.ac, align 8
  %i.bm = load <2 x i64>, ptr %i.bj, align 8, !tbaa !15
  %i.bn = xor <2 x i64> %i.bl, %i.bm
  store <2 x i64> %i.bn, ptr %i.bj, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.bq = load <2 x i64>, ptr %i.ad, align 8
  %i.br = load <2 x i64>, ptr %i.bo, align 8, !tbaa !15
  %i.bs = xor <2 x i64> %i.bq, %i.br
  store <2 x i64> %i.bs, ptr %i.bo, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.bv = load <2 x i64>, ptr %i.ae, align 8
  %i.bw = load <2 x i64>, ptr %i.bt, align 8, !tbaa !15
  %i.bx = xor <2 x i64> %i.bv, %i.bw
  store <2 x i64> %i.bx, ptr %i.bt, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.ca = load <2 x i64>, ptr %i.af, align 8
  %i.cb = load <2 x i64>, ptr %i.by, align 8, !tbaa !15
  %i.cc = xor <2 x i64> %i.ca, %i.cb
  store <2 x i64> %i.cc, ptr %i.by, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.cf = load <2 x i64>, ptr %i.ag, align 8
  %i.cg = load <2 x i64>, ptr %i.cd, align 8, !tbaa !15
  %i.ch = xor <2 x i64> %i.cf, %i.cg
  store <2 x i64> %i.ch, ptr %i.cd, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.ah, align 8
  %i.cl = load <2 x i64>, ptr %i.ci, align 8, !tbaa !15
  %i.cm = xor <2 x i64> %i.ck, %i.cl
  store <2 x i64> %i.cm, ptr %i.ci, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 167
  store i8 -128, ptr %i.cn, align 1, !tbaa !18
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %.not539 = icmp ult i32 %1, 168
  br i1 %.not539, label %._crit_edge537, label %.lr.ph536

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.co = mul nuw nsw i64 %indvars.iv, 168
  %i.cp = getelementptr i8, ptr %2, i64 %i.co
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, i8 0, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.b, ptr noundef nonnull align 1 dereferenceable(168) %i.cp, i64 168, i1 false)
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !26

.lr.ph536:                                        ; preds = %._crit_edge
  %i.cq = udiv i32 %1, 168
  %wide.trip.count559 = zext nneg i32 %i.cq to i64
  %.pre579.pre = load i64, ptr %i.a, align 16, !tbaa !15
  %.pre580.pre = load i64, ptr %i.aq, align 8, !tbaa !15
  %.pre581.pre = load i64, ptr %i.ba, align 16, !tbaa !15
  %.pre582.pre = load i64, ptr %i.bo, align 8, !tbaa !15
  %.pre583.pre = load i64, ptr %i.bz, align 16, !tbaa !15
  %.pre584.pre = load i64, ptr %i.at, align 16, !tbaa !15
  %.pre585.pre = load i64, ptr %i.be, align 8, !tbaa !15
  %.pre586.pre = load i64, ptr %i.bp, align 16, !tbaa !15
  %.pre587.pre = load i64, ptr %i.cd, align 8, !tbaa !15
  %.pre588.pre = load i64, ptr %i.au, align 8, !tbaa !15
  %.pre589.pre = load i64, ptr %i.bf, align 16, !tbaa !15
  %.pre590.pre = load i64, ptr %i.bt, align 8, !tbaa !15
  %.pre591.pre = load i64, ptr %i.ce, align 16, !tbaa !15
  %.pre592.pre = load i64, ptr %i.ax, align 16, !tbaa !15
  %.pre593.pre = load i64, ptr %i.bj, align 8, !tbaa !15
  %.pre594.pre = load i64, ptr %i.bu, align 16, !tbaa !15
  %.pre595.pre = load i64, ptr %i.ci, align 8, !tbaa !15
  %.pre596.pre = load i64, ptr %i.az, align 8, !tbaa !15
  %.pre597.pre = load i64, ptr %i.bk, align 16, !tbaa !15
  %.pre598.pre = load i64, ptr %i.by, align 8, !tbaa !15
  %.pre599.pre = load i64, ptr %i.cj, align 16, !tbaa !15
  %.promoted684 = load i64, ptr %i.ai, align 8, !tbaa !15
  %.promoted = load i64, ptr %i.al, align 16, !tbaa !15
  %.promoted687 = load i64, ptr %i.am, align 8, !tbaa !15
  %.promoted689 = load i64, ptr %i.ap, align 16, !tbaa !15
  br label %bb.b

._crit_edge537.loopexit:                          ; preds = %bb.c
  store i64 %i.jo, ptr %i.ce, align 16, !tbaa !15
  store i64 %i.jl, ptr %i.cd, align 8, !tbaa !15
  store i64 %i.ju, ptr %i.cj, align 16, !tbaa !15
  store i64 %i.jr, ptr %i.ci, align 8, !tbaa !15
  br label %._crit_edge537

._crit_edge537:                                   ; preds = %._crit_edge537.loopexit, %._crit_edge
  %.200..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.200..sroa_idx, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %4, ptr noundef nonnull align 16 dereferenceable(200) %i.a, i64 200, i1 false)
  %i.cr = urem i32 %1, 168
  %i.cs = zext i32 %1 to i64
  %i.ct = getelementptr i8, ptr %0, i64 %i.cs
  %i.cu = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr i8, ptr %i.ct, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr nonnull align 16 %4, i64 %i.cu, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.b:                                             ; preds = %.lr.ph536, %bb.c
  %.lcssa647690 = phi i64 [ %.promoted689, %.lr.ph536 ], [ %i.hm, %bb.c ]
  %.lcssa645688 = phi i64 [ %.promoted687, %.lr.ph536 ], [ %i.hj, %bb.c ]
  %.lcssa643686 = phi i64 [ %.promoted, %.lr.ph536 ], [ %i.hg, %bb.c ]
  %.lcssa641685 = phi i64 [ %.promoted684, %.lr.ph536 ], [ %i.hd, %bb.c ]
  %.pre599 = phi i64 [ %.pre599.pre, %.lr.ph536 ], [ %i.ju, %bb.c ]
  %.pre598 = phi i64 [ %.pre598.pre, %.lr.ph536 ], [ %i.jf, %bb.c ]
  %.pre597 = phi i64 [ %.pre597.pre, %.lr.ph536 ], [ %i.iq, %bb.c ]
  %.pre596 = phi i64 [ %.pre596.pre, %.lr.ph536 ], [ %i.ib, %bb.c ]
  %.pre595 = phi i64 [ %.pre595.pre, %.lr.ph536 ], [ %i.jr, %bb.c ]
  %.pre594 = phi i64 [ %.pre594.pre, %.lr.ph536 ], [ %i.jc, %bb.c ]
  %.pre593 = phi i64 [ %.pre593.pre, %.lr.ph536 ], [ %i.in, %bb.c ]
  %.pre592 = phi i64 [ %.pre592.pre, %.lr.ph536 ], [ %i.hy, %bb.c ]
  %.pre591 = phi i64 [ %.pre591.pre, %.lr.ph536 ], [ %i.jo, %bb.c ]
  %.pre590 = phi i64 [ %.pre590.pre, %.lr.ph536 ], [ %i.iz, %bb.c ]
  %.pre589 = phi i64 [ %.pre589.pre, %.lr.ph536 ], [ %i.ik, %bb.c ]
  %.pre588 = phi i64 [ %.pre588.pre, %.lr.ph536 ], [ %i.hv, %bb.c ]
  %.pre587 = phi i64 [ %.pre587.pre, %.lr.ph536 ], [ %i.jl, %bb.c ]
  %.pre586 = phi i64 [ %.pre586.pre, %.lr.ph536 ], [ %i.iw, %bb.c ]
  %.pre585 = phi i64 [ %.pre585.pre, %.lr.ph536 ], [ %i.ih, %bb.c ]
  %.pre584 = phi i64 [ %.pre584.pre, %.lr.ph536 ], [ %i.hs, %bb.c ]
  %.pre583 = phi i64 [ %.pre583.pre, %.lr.ph536 ], [ %i.ji, %bb.c ]
  %.pre582 = phi i64 [ %.pre582.pre, %.lr.ph536 ], [ %i.it, %bb.c ]
  %.pre581 = phi i64 [ %.pre581.pre, %.lr.ph536 ], [ %i.ie, %bb.c ]
  %.pre580 = phi i64 [ %.pre580.pre, %.lr.ph536 ], [ %i.hp, %bb.c ]
  %.pre579 = phi i64 [ %.pre579.pre, %.lr.ph536 ], [ %i.jy, %bb.c ]
  %indvars.iv556 = phi i64 [ 0, %.lr.ph536 ], [ %indvars.iv.next557, %bb.c ] ; 2 uses
  %i.cx = mul nuw nsw i64 %indvars.iv556, 168
  %i.cy = getelementptr i8, ptr %0, i64 %i.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.cy, ptr noundef nonnull align 16 dereferenceable(168) %i.a, i64 168, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  store i64 %i.hd, ptr %i.ai, align 8, !tbaa !15
  store i64 %i.hg, ptr %i.al, align 16, !tbaa !15
  store i64 %i.hj, ptr %i.am, align 8, !tbaa !15
  store i64 %i.hm, ptr %i.ap, align 16, !tbaa !15
  store i64 %i.jy, ptr %i.a, align 16, !tbaa !15
  store i64 %i.ji, ptr %i.bz, align 16, !tbaa !15
  store i64 %i.hs, ptr %i.at, align 16, !tbaa !15
  store i64 %i.ie, ptr %i.ba, align 16, !tbaa !15
  store i64 %i.hv, ptr %i.au, align 8, !tbaa !15
  store i64 %i.ih, ptr %i.be, align 8, !tbaa !15
  store i64 %i.iz, ptr %i.bt, align 8, !tbaa !15
  store i64 %i.jc, ptr %i.bu, align 16, !tbaa !15
  store i64 %i.iw, ptr %i.bp, align 16, !tbaa !15
  store i64 %i.it, ptr %i.bo, align 8, !tbaa !15
  store i64 %i.jf, ptr %i.by, align 8, !tbaa !15
  store i64 %i.hp, ptr %i.aq, align 8, !tbaa !15
  store i64 %i.hy, ptr %i.ax, align 16, !tbaa !15
  store i64 %i.ib, ptr %i.az, align 8, !tbaa !15
  store i64 %i.ik, ptr %i.bf, align 16, !tbaa !15
  store i64 %i.in, ptr %i.bj, align 8, !tbaa !15
  store i64 %i.iq, ptr %i.bk, align 16, !tbaa !15
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %exitcond560.not = icmp eq i64 %indvars.iv.next557, %wide.trip.count559
  br i1 %exitcond560.not, label %._crit_edge537.loopexit, label %bb.b, !llvm.loop !27

bb.d:                                             ; preds = %bb.b, %bb.d
  %i.cz = phi i64 [ %.lcssa647690, %bb.b ], [ %i.hm, %bb.d ] ; 2 uses
  %i.da = phi i64 [ %.lcssa645688, %bb.b ], [ %i.hj, %bb.d ] ; 2 uses
  %i.db = phi i64 [ %.lcssa643686, %bb.b ], [ %i.hg, %bb.d ] ; 2 uses
  %i.dc = phi i64 [ %.lcssa641685, %bb.b ], [ %i.hd, %bb.d ] ; 2 uses
  %i.dd = phi i64 [ %.pre599, %bb.b ], [ %i.ju, %bb.d ] ; 2 uses
  %i.de = phi i64 [ %.pre598, %bb.b ], [ %i.jf, %bb.d ] ; 2 uses
  %i.df = phi i64 [ %.pre597, %bb.b ], [ %i.iq, %bb.d ] ; 2 uses
  %i.dg = phi i64 [ %.pre596, %bb.b ], [ %i.ib, %bb.d ] ; 2 uses
  %i.dh = phi i64 [ %.pre595, %bb.b ], [ %i.jr, %bb.d ] ; 2 uses
  %i.di = phi i64 [ %.pre594, %bb.b ], [ %i.jc, %bb.d ] ; 2 uses
  %i.dj = phi i64 [ %.pre593, %bb.b ], [ %i.in, %bb.d ] ; 2 uses
  %i.dk = phi i64 [ %.pre592, %bb.b ], [ %i.hy, %bb.d ] ; 2 uses
  %i.dl = phi i64 [ %.pre591, %bb.b ], [ %i.jo, %bb.d ] ; 2 uses
  %i.dm = phi i64 [ %.pre590, %bb.b ], [ %i.iz, %bb.d ] ; 2 uses
  %i.dn = phi i64 [ %.pre589, %bb.b ], [ %i.ik, %bb.d ] ; 2 uses
  %i.do = phi i64 [ %.pre588, %bb.b ], [ %i.hv, %bb.d ] ; 2 uses
  %i.dp = phi i64 [ %.pre587, %bb.b ], [ %i.jl, %bb.d ] ; 2 uses
  %i.dq = phi i64 [ %.pre586, %bb.b ], [ %i.iw, %bb.d ] ; 2 uses
  %i.dr = phi i64 [ %.pre585, %bb.b ], [ %i.ih, %bb.d ] ; 2 uses
  %i.ds = phi i64 [ %.pre584, %bb.b ], [ %i.hs, %bb.d ] ; 2 uses
  %i.dt = phi i64 [ %.pre583, %bb.b ], [ %i.ji, %bb.d ] ; 2 uses
  %i.du = phi i64 [ %.pre582, %bb.b ], [ %i.it, %bb.d ] ; 2 uses
  %i.dv = phi i64 [ %.pre581, %bb.b ], [ %i.ie, %bb.d ] ; 2 uses
  %i.dw = phi i64 [ %.pre580, %bb.b ], [ %i.hp, %bb.d ] ; 2 uses
  %i.dx = phi i64 [ %.pre579, %bb.b ], [ %i.jy, %bb.d ] ; 2 uses
  %indvars.iv552 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next553, %bb.d ] ; 2 uses
  %i.dy = xor i64 %i.dw, %i.dx
  %i.dz = xor i64 %i.dy, %i.dv
  %i.ea = xor i64 %i.dz, %i.du
  %i.eb = xor i64 %i.ea, %i.dt                    ; 3 uses
  %i.ec = xor i64 %i.ds, %i.dc
  %i.ed = xor i64 %i.ec, %i.dr
  %i.ee = xor i64 %i.ed, %i.dq
  %i.ef = xor i64 %i.ee, %i.dp                    ; 3 uses
  %i.eg = xor i64 %i.do, %i.db
  %i.eh = xor i64 %i.eg, %i.dn
  %i.ei = xor i64 %i.eh, %i.dm
  %i.ej = xor i64 %i.ei, %i.dl                    ; 3 uses
  %i.ek = xor i64 %i.dk, %i.da
  %i.el = xor i64 %i.ek, %i.dj
  %i.em = xor i64 %i.el, %i.di
  %i.en = xor i64 %i.em, %i.dh                    ; 3 uses
  %i.eo = xor i64 %i.dg, %i.cz
  %i.ep = xor i64 %i.eo, %i.df
  %i.eq = xor i64 %i.ep, %i.de
  %i.er = xor i64 %i.eq, %i.dd                    ; 3 uses
  %i.es = call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 1)
  %i.et = xor i64 %i.er, %i.es                    ; 5 uses
  %i.eu = xor i64 %i.et, %i.dx                    ; 3 uses
  %i.ev = xor i64 %i.et, %i.dw                    ; 2 uses
  %i.ew = xor i64 %i.et, %i.dv                    ; 2 uses
  %i.ex = xor i64 %i.et, %i.du                    ; 2 uses
  %i.ey = xor i64 %i.et, %i.dt                    ; 2 uses
  %i.ez = call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 1)
  %i.fa = xor i64 %i.ez, %i.eb                    ; 5 uses
  %i.fb = xor i64 %i.fa, %i.dc                    ; 2 uses
  %i.fc = xor i64 %i.fa, %i.ds                    ; 2 uses
  %i.fd = xor i64 %i.fa, %i.dr                    ; 2 uses
  %i.fe = xor i64 %i.fa, %i.dq                    ; 2 uses
  %i.ff = xor i64 %i.fa, %i.dp                    ; 2 uses
  %i.fg = call i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 1)
  %i.fh = xor i64 %i.fg, %i.ef                    ; 5 uses
  %i.fi = xor i64 %i.fh, %i.db                    ; 2 uses
  %i.fj = xor i64 %i.fh, %i.do                    ; 2 uses
  %i.fk = xor i64 %i.fh, %i.dn                    ; 2 uses
  %i.fl = xor i64 %i.fh, %i.dm                    ; 2 uses
  %i.fm = xor i64 %i.fh, %i.dl                    ; 2 uses
  %i.fn = call i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 1)
  %i.fo = xor i64 %i.fn, %i.ej                    ; 5 uses
  %i.fp = xor i64 %i.fo, %i.da                    ; 2 uses
  %i.fq = xor i64 %i.fo, %i.dk                    ; 2 uses
  %i.fr = xor i64 %i.fo, %i.dj                    ; 2 uses
  %i.fs = xor i64 %i.fo, %i.di                    ; 2 uses
  %i.ft = xor i64 %i.fo, %i.dh                    ; 2 uses
  %i.fu = call i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 1)
  %i.fv = xor i64 %i.en, %i.fu                    ; 5 uses
  %i.fw = xor i64 %i.fv, %i.cz                    ; 2 uses
  %i.fx = xor i64 %i.fv, %i.dg                    ; 2 uses
  %i.fy = xor i64 %i.fv, %i.df                    ; 2 uses
  %i.fz = xor i64 %i.fv, %i.de                    ; 2 uses
  %i.ga = xor i64 %i.dd, %i.fv                    ; 2 uses
  %i.gb = call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 1) ; 3 uses
  %i.gc = call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 3) ; 3 uses
  %i.gd = call i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 6) ; 3 uses
  %i.ge = call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 10) ; 3 uses
  %i.gf = call i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 15) ; 3 uses
  %i.gg = call i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 21) ; 3 uses
  %i.gh = call i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 28) ; 3 uses
  %i.gi = call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 36) ; 3 uses
  %i.gj = call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 45) ; 3 uses
  %i.gk = call i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 55) ; 3 uses
  %i.gl = call i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 2) ; 3 uses
  %i.gm = call i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 14) ; 3 uses
  %i.gn = call i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 27) ; 3 uses
  %i.go = call i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 41) ; 3 uses
  %i.gp = call i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 56) ; 3 uses
  %i.gq = call i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 8) ; 3 uses
  %i.gr = call i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 25) ; 3 uses
  %i.gs = call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 43) ; 3 uses
  %i.gt = call i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 62) ; 3 uses
  %i.gu = call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 18) ; 3 uses
  %i.gv = call i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 39) ; 3 uses
  %i.gw = call i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 61) ; 3 uses
  %i.gx = call i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fx, i64 20) ; 3 uses
  %i.gy = call i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 44) ; 3 uses
  %i.gz = xor i64 %i.gy, -1
  %i.ha = and i64 %i.gs, %i.gz
  %i.hb = xor i64 %i.gs, -1
  %i.hc = and i64 %i.gg, %i.hb
  %i.hd = xor i64 %i.hc, %i.gy                    ; 3 uses
  %i.he = xor i64 %i.gg, -1
  %i.hf = and i64 %i.gm, %i.he
  %i.hg = xor i64 %i.hf, %i.gs                    ; 3 uses
  %i.hh = xor i64 %i.gm, -1
  %i.hi = and i64 %i.eu, %i.hh
  %i.hj = xor i64 %i.hi, %i.gg                    ; 3 uses
  %i.hk = xor i64 %i.eu, -1
  %i.hl = and i64 %i.gy, %i.hk
  %i.hm = xor i64 %i.gm, %i.hl                    ; 3 uses
  %i.hn = xor i64 %i.gx, -1
  %i.ho = and i64 %i.gc, %i.hn
  %i.hp = xor i64 %i.ho, %i.gh                    ; 3 uses
  %i.hq = xor i64 %i.gc, -1
  %i.hr = and i64 %i.gj, %i.hq
  %i.hs = xor i64 %i.hr, %i.gx                    ; 3 uses
  %i.ht = xor i64 %i.gj, -1
  %i.hu = and i64 %i.gw, %i.ht
  %i.hv = xor i64 %i.hu, %i.gc                    ; 3 uses
  %i.hw = xor i64 %i.gw, -1
  %i.hx = and i64 %i.gh, %i.hw
  %i.hy = xor i64 %i.hx, %i.gj                    ; 3 uses
  %i.hz = xor i64 %i.gh, -1
  %i.ia = and i64 %i.gx, %i.hz
  %i.ib = xor i64 %i.gw, %i.ia                    ; 3 uses
  %i.ic = xor i64 %i.gd, -1
  %i.id = and i64 %i.gr, %i.ic
  %i.ie = xor i64 %i.id, %i.gb                    ; 3 uses
  %i.if = xor i64 %i.gr, -1
  %i.ig = and i64 %i.gq, %i.if
  %i.ih = xor i64 %i.ig, %i.gd                    ; 3 uses
  %i.ii = xor i64 %i.gq, -1
  %i.ij = and i64 %i.gu, %i.ii
  %i.ik = xor i64 %i.ij, %i.gr                    ; 3 uses
  %i.il = xor i64 %i.gu, -1
  %i.im = and i64 %i.gb, %i.il
  %i.in = xor i64 %i.im, %i.gq                    ; 3 uses
  %i.io = xor i64 %i.gb, -1
  %i.ip = and i64 %i.gd, %i.io
  %i.iq = xor i64 %i.gu, %i.ip                    ; 3 uses
  %i.ir = xor i64 %i.gi, -1
  %i.is = and i64 %i.ge, %i.ir
  %i.it = xor i64 %i.is, %i.gn                    ; 3 uses
  %i.iu = xor i64 %i.ge, -1
  %i.iv = and i64 %i.gf, %i.iu
  %i.iw = xor i64 %i.iv, %i.gi                    ; 3 uses
  %i.ix = xor i64 %i.gf, -1
  %i.iy = and i64 %i.gp, %i.ix
  %i.iz = xor i64 %i.iy, %i.ge                    ; 3 uses
  %i.ja = xor i64 %i.gp, -1
  %i.jb = and i64 %i.gn, %i.ja
  %i.jc = xor i64 %i.jb, %i.gf                    ; 3 uses
  %i.jd = xor i64 %i.gn, -1
  %i.je = and i64 %i.gi, %i.jd
  %i.jf = xor i64 %i.gp, %i.je                    ; 3 uses
  %i.jg = xor i64 %i.gk, -1
  %i.jh = and i64 %i.gv, %i.jg
  %i.ji = xor i64 %i.jh, %i.gt                    ; 3 uses
  %i.jj = xor i64 %i.gv, -1
  %i.jk = and i64 %i.go, %i.jj
  %i.jl = xor i64 %i.jk, %i.gk                    ; 3 uses
  %i.jm = xor i64 %i.go, -1
  %i.jn = and i64 %i.gl, %i.jm
  %i.jo = xor i64 %i.jn, %i.gv                    ; 3 uses
  %i.jp = xor i64 %i.gl, -1
  %i.jq = and i64 %i.gt, %i.jp
  %i.jr = xor i64 %i.jq, %i.go                    ; 3 uses
  %i.js = xor i64 %i.gt, -1
  %i.jt = and i64 %i.gk, %i.js
  %i.ju = xor i64 %i.gl, %i.jt                    ; 3 uses
  %i.jv = getelementptr [8 x i8], ptr @_Py_LibHacl_Hacl_Hash_SHA3_keccak_rndc, i64 %indvars.iv552
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !15
  %i.jx = xor i64 %i.ha, %i.jw
  %i.jy = xor i64 %i.jx, %i.eu                    ; 3 uses
  %indvars.iv.next553 = add nuw nsw i64 %indvars.iv552, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next553, 24
  br i1 %exitcond555.not, label %bb.c, label %bb.d, !llvm.loop !28
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_shake256(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [25 x i64], align 16              ; 39 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 18 uses
  %i.d = alloca [256 x i8], align 16              ; 5 uses
  %4 = alloca [32 x i64], align 16                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  %.not = icmp ult i32 %3, 136
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv i32 %3, 136
  %wide.trip.count = zext nneg i32 %i.e to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = load <2 x i64>, ptr %i.a, align 16, !tbaa !15
  %.phi.trans.insert565 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load <2 x i64>, ptr %.phi.trans.insert565, align 16, !tbaa !15
  %.phi.trans.insert569 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load <2 x i64>, ptr %.phi.trans.insert569, align 16, !tbaa !15
  %.phi.trans.insert573 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load <2 x i64>, ptr %.phi.trans.insert573, align 16, !tbaa !15
  %.phi.trans.insert577 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.pre578 = load i64, ptr %.phi.trans.insert577, align 16, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi i64 [ %.pre578, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.l = phi <2 x i64> [ %i.g, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.m = phi <2 x i64> [ %i.h, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.n = phi <2 x i64> [ %i.i, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.o = phi <2 x i64> [ %i.j, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.p = urem i32 %3, 136
  %i.q = zext i32 %3 to i64
  %i.r = getelementptr i8, ptr %2, i64 %i.q
  %i.s = zext nneg i32 %i.p to i64                ; 3 uses
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = getelementptr i8, ptr %i.c, i64 %i.s
  store i8 31, ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.val511 = load i64, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aj = load <2 x i64>, ptr %i.c, align 16
  %i.ak = xor <2 x i64> %i.aj, %i.l
  store <2 x i64> %i.ak, ptr %i.a, align 16, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.an = load <2 x i64>, ptr %i.w, align 16
  %i.ao = xor <2 x i64> %i.an, %i.m
  store <2 x i64> %i.ao, ptr %i.al, align 16, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.x, align 16
  %i.as = xor <2 x i64> %i.ar, %i.n
  store <2 x i64> %i.as, ptr %i.ap, align 16, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.y, align 16
  %i.aw = xor <2 x i64> %i.av, %i.o
  store <2 x i64> %i.aw, ptr %i.at, align 16, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.ay = xor i64 %.val511, %i.k
  store i64 %i.ay, ptr %i.ax, align 16, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.aa, align 8
  %i.bc = load <2 x i64>, ptr %i.az, align 8, !tbaa !15
  %i.bd = xor <2 x i64> %i.bb, %i.bc
  store <2 x i64> %i.bd, ptr %i.az, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.bg = load <2 x i64>, ptr %i.ab, align 8
  %i.bh = load <2 x i64>, ptr %i.be, align 8, !tbaa !15
  %i.bi = xor <2 x i64> %i.bg, %i.bh
  store <2 x i64> %i.bi, ptr %i.be, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.ac, align 8
  %i.bm = load <2 x i64>, ptr %i.bj, align 8, !tbaa !15
  %i.bn = xor <2 x i64> %i.bl, %i.bm
  store <2 x i64> %i.bn, ptr %i.bj, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.bq = load <2 x i64>, ptr %i.ad, align 8
  %i.br = load <2 x i64>, ptr %i.bo, align 8, !tbaa !15
  %i.bs = xor <2 x i64> %i.bq, %i.br
  store <2 x i64> %i.bs, ptr %i.bo, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.bv = load <2 x i64>, ptr %i.ae, align 8
  %i.bw = load <2 x i64>, ptr %i.bt, align 8, !tbaa !15
  %i.bx = xor <2 x i64> %i.bv, %i.bw
  store <2 x i64> %i.bx, ptr %i.bt, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.ca = load <2 x i64>, ptr %i.af, align 8
  %i.cb = load <2 x i64>, ptr %i.by, align 8, !tbaa !15
  %i.cc = xor <2 x i64> %i.ca, %i.cb
  store <2 x i64> %i.cc, ptr %i.by, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.cf = load <2 x i64>, ptr %i.ag, align 8
  %i.cg = load <2 x i64>, ptr %i.cd, align 8, !tbaa !15
  %i.ch = xor <2 x i64> %i.cf, %i.cg
  store <2 x i64> %i.ch, ptr %i.cd, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.ah, align 8
  %i.cl = load <2 x i64>, ptr %i.ci, align 8, !tbaa !15
  %i.cm = xor <2 x i64> %i.ck, %i.cl
  store <2 x i64> %i.cm, ptr %i.ci, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 135
  store i8 -128, ptr %i.cn, align 1, !tbaa !18
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %.not539 = icmp ult i32 %1, 136
  br i1 %.not539, label %._crit_edge537, label %.lr.ph536

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.co = mul nuw nsw i64 %indvars.iv, 136
  %i.cp = getelementptr i8, ptr %2, i64 %i.co
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, i8 0, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.b, ptr noundef nonnull align 1 dereferenceable(136) %i.cp, i64 136, i1 false)
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !29

.lr.ph536:                                        ; preds = %._crit_edge
  %i.cq = udiv i32 %1, 136
  %wide.trip.count559 = zext nneg i32 %i.cq to i64
  %.pre579.pre = load i64, ptr %i.a, align 16, !tbaa !15
  %.pre580.pre = load i64, ptr %i.aq, align 8, !tbaa !15
  %.pre581.pre = load i64, ptr %i.ba, align 16, !tbaa !15
  %.pre582.pre = load i64, ptr %i.bo, align 8, !tbaa !15
  %.pre583.pre = load i64, ptr %i.bz, align 16, !tbaa !15
  %.pre584.pre = load i64, ptr %i.at, align 16, !tbaa !15
  %.pre585.pre = load i64, ptr %i.be, align 8, !tbaa !15
  %.pre586.pre = load i64, ptr %i.bp, align 16, !tbaa !15
  %.pre587.pre = load i64, ptr %i.cd, align 8, !tbaa !15
  %.pre588.pre = load i64, ptr %i.au, align 8, !tbaa !15
  %.pre589.pre = load i64, ptr %i.bf, align 16, !tbaa !15
  %.pre590.pre = load i64, ptr %i.bt, align 8, !tbaa !15
  %.pre591.pre = load i64, ptr %i.ce, align 16, !tbaa !15
  %.pre592.pre = load i64, ptr %i.ax, align 16, !tbaa !15
  %.pre593.pre = load i64, ptr %i.bj, align 8, !tbaa !15
  %.pre594.pre = load i64, ptr %i.bu, align 16, !tbaa !15
  %.pre595.pre = load i64, ptr %i.ci, align 8, !tbaa !15
  %.pre596.pre = load i64, ptr %i.az, align 8, !tbaa !15
  %.pre597.pre = load i64, ptr %i.bk, align 16, !tbaa !15
  %.pre598.pre = load i64, ptr %i.by, align 8, !tbaa !15
  %.pre599.pre = load i64, ptr %i.cj, align 16, !tbaa !15
  %.promoted684 = load i64, ptr %i.ai, align 8, !tbaa !15
  %.promoted = load i64, ptr %i.al, align 16, !tbaa !15
  %.promoted687 = load i64, ptr %i.am, align 8, !tbaa !15
  %.promoted689 = load i64, ptr %i.ap, align 16, !tbaa !15
  br label %bb.b

._crit_edge537.loopexit:                          ; preds = %bb.c
  store i64 %i.ji, ptr %i.bz, align 16, !tbaa !15
  store i64 %i.jo, ptr %i.ce, align 16, !tbaa !15
  store i64 %i.iz, ptr %i.bt, align 8, !tbaa !15
  store i64 %i.jc, ptr %i.bu, align 16, !tbaa !15
  store i64 %i.jl, ptr %i.cd, align 8, !tbaa !15
  store i64 %i.ju, ptr %i.cj, align 16, !tbaa !15
  store i64 %i.jr, ptr %i.ci, align 8, !tbaa !15
  store i64 %i.jf, ptr %i.by, align 8, !tbaa !15
  br label %._crit_edge537

._crit_edge537:                                   ; preds = %._crit_edge537.loopexit, %._crit_edge
  %.200..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.200..sroa_idx, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %4, ptr noundef nonnull align 16 dereferenceable(200) %i.a, i64 200, i1 false)
  %i.cr = urem i32 %1, 136
  %i.cs = zext i32 %1 to i64
  %i.ct = getelementptr i8, ptr %0, i64 %i.cs
  %i.cu = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr i8, ptr %i.ct, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr nonnull align 16 %4, i64 %i.cu, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.b:                                             ; preds = %.lr.ph536, %bb.c
  %.lcssa647690 = phi i64 [ %.promoted689, %.lr.ph536 ], [ %i.hm, %bb.c ]
  %.lcssa645688 = phi i64 [ %.promoted687, %.lr.ph536 ], [ %i.hj, %bb.c ]
  %.lcssa643686 = phi i64 [ %.promoted, %.lr.ph536 ], [ %i.hg, %bb.c ]
  %.lcssa641685 = phi i64 [ %.promoted684, %.lr.ph536 ], [ %i.hd, %bb.c ]
  %.pre599 = phi i64 [ %.pre599.pre, %.lr.ph536 ], [ %i.ju, %bb.c ]
  %.pre598 = phi i64 [ %.pre598.pre, %.lr.ph536 ], [ %i.jf, %bb.c ]
  %.pre597 = phi i64 [ %.pre597.pre, %.lr.ph536 ], [ %i.iq, %bb.c ]
  %.pre596 = phi i64 [ %.pre596.pre, %.lr.ph536 ], [ %i.ib, %bb.c ]
  %.pre595 = phi i64 [ %.pre595.pre, %.lr.ph536 ], [ %i.jr, %bb.c ]
  %.pre594 = phi i64 [ %.pre594.pre, %.lr.ph536 ], [ %i.jc, %bb.c ]
  %.pre593 = phi i64 [ %.pre593.pre, %.lr.ph536 ], [ %i.in, %bb.c ]
  %.pre592 = phi i64 [ %.pre592.pre, %.lr.ph536 ], [ %i.hy, %bb.c ]
  %.pre591 = phi i64 [ %.pre591.pre, %.lr.ph536 ], [ %i.jo, %bb.c ]
  %.pre590 = phi i64 [ %.pre590.pre, %.lr.ph536 ], [ %i.iz, %bb.c ]
  %.pre589 = phi i64 [ %.pre589.pre, %.lr.ph536 ], [ %i.ik, %bb.c ]
  %.pre588 = phi i64 [ %.pre588.pre, %.lr.ph536 ], [ %i.hv, %bb.c ]
  %.pre587 = phi i64 [ %.pre587.pre, %.lr.ph536 ], [ %i.jl, %bb.c ]
  %.pre586 = phi i64 [ %.pre586.pre, %.lr.ph536 ], [ %i.iw, %bb.c ]
  %.pre585 = phi i64 [ %.pre585.pre, %.lr.ph536 ], [ %i.ih, %bb.c ]
  %.pre584 = phi i64 [ %.pre584.pre, %.lr.ph536 ], [ %i.hs, %bb.c ]
  %.pre583 = phi i64 [ %.pre583.pre, %.lr.ph536 ], [ %i.ji, %bb.c ]
  %.pre582 = phi i64 [ %.pre582.pre, %.lr.ph536 ], [ %i.it, %bb.c ]
  %.pre581 = phi i64 [ %.pre581.pre, %.lr.ph536 ], [ %i.ie, %bb.c ]
  %.pre580 = phi i64 [ %.pre580.pre, %.lr.ph536 ], [ %i.hp, %bb.c ]
  %.pre579 = phi i64 [ %.pre579.pre, %.lr.ph536 ], [ %i.jy, %bb.c ]
  %indvars.iv556 = phi i64 [ 0, %.lr.ph536 ], [ %indvars.iv.next557, %bb.c ] ; 2 uses
  %i.cx = mul nuw nsw i64 %indvars.iv556, 136
  %i.cy = getelementptr i8, ptr %0, i64 %i.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %i.cy, ptr noundef nonnull align 16 dereferenceable(136) %i.a, i64 136, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  store i64 %i.hd, ptr %i.ai, align 8, !tbaa !15
  store i64 %i.hg, ptr %i.al, align 16, !tbaa !15
  store i64 %i.hj, ptr %i.am, align 8, !tbaa !15
  store i64 %i.hm, ptr %i.ap, align 16, !tbaa !15
  store i64 %i.jy, ptr %i.a, align 16, !tbaa !15
  store i64 %i.hs, ptr %i.at, align 16, !tbaa !15
  store i64 %i.ie, ptr %i.ba, align 16, !tbaa !15
  store i64 %i.hv, ptr %i.au, align 8, !tbaa !15
  store i64 %i.ih, ptr %i.be, align 8, !tbaa !15
  store i64 %i.iw, ptr %i.bp, align 16, !tbaa !15
  store i64 %i.it, ptr %i.bo, align 8, !tbaa !15
  store i64 %i.hp, ptr %i.aq, align 8, !tbaa !15
  store i64 %i.hy, ptr %i.ax, align 16, !tbaa !15
  store i64 %i.ib, ptr %i.az, align 8, !tbaa !15
  store i64 %i.ik, ptr %i.bf, align 16, !tbaa !15
  store i64 %i.in, ptr %i.bj, align 8, !tbaa !15
  store i64 %i.iq, ptr %i.bk, align 16, !tbaa !15
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %exitcond560.not = icmp eq i64 %indvars.iv.next557, %wide.trip.count559
  br i1 %exitcond560.not, label %._crit_edge537.loopexit, label %bb.b, !llvm.loop !30

bb.d:                                             ; preds = %bb.b, %bb.d
  %i.cz = phi i64 [ %.lcssa647690, %bb.b ], [ %i.hm, %bb.d ] ; 2 uses
  %i.da = phi i64 [ %.lcssa645688, %bb.b ], [ %i.hj, %bb.d ] ; 2 uses
  %i.db = phi i64 [ %.lcssa643686, %bb.b ], [ %i.hg, %bb.d ] ; 2 uses
  %i.dc = phi i64 [ %.lcssa641685, %bb.b ], [ %i.hd, %bb.d ] ; 2 uses
  %i.dd = phi i64 [ %.pre599, %bb.b ], [ %i.ju, %bb.d ] ; 2 uses
  %i.de = phi i64 [ %.pre598, %bb.b ], [ %i.jf, %bb.d ] ; 2 uses
  %i.df = phi i64 [ %.pre597, %bb.b ], [ %i.iq, %bb.d ] ; 2 uses
  %i.dg = phi i64 [ %.pre596, %bb.b ], [ %i.ib, %bb.d ] ; 2 uses
  %i.dh = phi i64 [ %.pre595, %bb.b ], [ %i.jr, %bb.d ] ; 2 uses
  %i.di = phi i64 [ %.pre594, %bb.b ], [ %i.jc, %bb.d ] ; 2 uses
  %i.dj = phi i64 [ %.pre593, %bb.b ], [ %i.in, %bb.d ] ; 2 uses
  %i.dk = phi i64 [ %.pre592, %bb.b ], [ %i.hy, %bb.d ] ; 2 uses
  %i.dl = phi i64 [ %.pre591, %bb.b ], [ %i.jo, %bb.d ] ; 2 uses
  %i.dm = phi i64 [ %.pre590, %bb.b ], [ %i.iz, %bb.d ] ; 2 uses
  %i.dn = phi i64 [ %.pre589, %bb.b ], [ %i.ik, %bb.d ] ; 2 uses
  %i.do = phi i64 [ %.pre588, %bb.b ], [ %i.hv, %bb.d ] ; 2 uses
  %i.dp = phi i64 [ %.pre587, %bb.b ], [ %i.jl, %bb.d ] ; 2 uses
  %i.dq = phi i64 [ %.pre586, %bb.b ], [ %i.iw, %bb.d ] ; 2 uses
  %i.dr = phi i64 [ %.pre585, %bb.b ], [ %i.ih, %bb.d ] ; 2 uses
  %i.ds = phi i64 [ %.pre584, %bb.b ], [ %i.hs, %bb.d ] ; 2 uses
  %i.dt = phi i64 [ %.pre583, %bb.b ], [ %i.ji, %bb.d ] ; 2 uses
  %i.du = phi i64 [ %.pre582, %bb.b ], [ %i.it, %bb.d ] ; 2 uses
  %i.dv = phi i64 [ %.pre581, %bb.b ], [ %i.ie, %bb.d ] ; 2 uses
  %i.dw = phi i64 [ %.pre580, %bb.b ], [ %i.hp, %bb.d ] ; 2 uses
  %i.dx = phi i64 [ %.pre579, %bb.b ], [ %i.jy, %bb.d ] ; 2 uses
  %indvars.iv552 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next553, %bb.d ] ; 2 uses
  %i.dy = xor i64 %i.dw, %i.dx
  %i.dz = xor i64 %i.dy, %i.dv
  %i.ea = xor i64 %i.dz, %i.du
  %i.eb = xor i64 %i.ea, %i.dt                    ; 3 uses
  %i.ec = xor i64 %i.ds, %i.dc
  %i.ed = xor i64 %i.ec, %i.dr
  %i.ee = xor i64 %i.ed, %i.dq
  %i.ef = xor i64 %i.ee, %i.dp                    ; 3 uses
  %i.eg = xor i64 %i.do, %i.db
  %i.eh = xor i64 %i.eg, %i.dn
  %i.ei = xor i64 %i.eh, %i.dm
  %i.ej = xor i64 %i.ei, %i.dl                    ; 3 uses
  %i.ek = xor i64 %i.dk, %i.da
  %i.el = xor i64 %i.ek, %i.dj
  %i.em = xor i64 %i.el, %i.di
  %i.en = xor i64 %i.em, %i.dh                    ; 3 uses
  %i.eo = xor i64 %i.dg, %i.cz
  %i.ep = xor i64 %i.eo, %i.df
  %i.eq = xor i64 %i.ep, %i.de
  %i.er = xor i64 %i.eq, %i.dd                    ; 3 uses
  %i.es = call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 1)
  %i.et = xor i64 %i.er, %i.es                    ; 5 uses
  %i.eu = xor i64 %i.et, %i.dx                    ; 3 uses
  %i.ev = xor i64 %i.et, %i.dw                    ; 2 uses
  %i.ew = xor i64 %i.et, %i.dv                    ; 2 uses
  %i.ex = xor i64 %i.et, %i.du                    ; 2 uses
  %i.ey = xor i64 %i.et, %i.dt                    ; 2 uses
  %i.ez = call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 1)
  %i.fa = xor i64 %i.ez, %i.eb                    ; 5 uses
  %i.fb = xor i64 %i.fa, %i.dc                    ; 2 uses
  %i.fc = xor i64 %i.fa, %i.ds                    ; 2 uses
  %i.fd = xor i64 %i.fa, %i.dr                    ; 2 uses
  %i.fe = xor i64 %i.fa, %i.dq                    ; 2 uses
  %i.ff = xor i64 %i.fa, %i.dp                    ; 2 uses
  %i.fg = call i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 1)
  %i.fh = xor i64 %i.fg, %i.ef                    ; 5 uses
  %i.fi = xor i64 %i.fh, %i.db                    ; 2 uses
  %i.fj = xor i64 %i.fh, %i.do                    ; 2 uses
  %i.fk = xor i64 %i.fh, %i.dn                    ; 2 uses
  %i.fl = xor i64 %i.fh, %i.dm                    ; 2 uses
  %i.fm = xor i64 %i.fh, %i.dl                    ; 2 uses
  %i.fn = call i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 1)
  %i.fo = xor i64 %i.fn, %i.ej                    ; 5 uses
  %i.fp = xor i64 %i.fo, %i.da                    ; 2 uses
  %i.fq = xor i64 %i.fo, %i.dk                    ; 2 uses
  %i.fr = xor i64 %i.fo, %i.dj                    ; 2 uses
  %i.fs = xor i64 %i.fo, %i.di                    ; 2 uses
  %i.ft = xor i64 %i.fo, %i.dh                    ; 2 uses
  %i.fu = call i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 1)
  %i.fv = xor i64 %i.en, %i.fu                    ; 5 uses
  %i.fw = xor i64 %i.fv, %i.cz                    ; 2 uses
  %i.fx = xor i64 %i.fv, %i.dg                    ; 2 uses
  %i.fy = xor i64 %i.fv, %i.df                    ; 2 uses
  %i.fz = xor i64 %i.fv, %i.de                    ; 2 uses
  %i.ga = xor i64 %i.dd, %i.fv                    ; 2 uses
  %i.gb = call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 1) ; 3 uses
  %i.gc = call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 3) ; 3 uses
  %i.gd = call i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 6) ; 3 uses
  %i.ge = call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 10) ; 3 uses
  %i.gf = call i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 15) ; 3 uses
  %i.gg = call i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 21) ; 3 uses
  %i.gh = call i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 28) ; 3 uses
  %i.gi = call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 36) ; 3 uses
  %i.gj = call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 45) ; 3 uses
  %i.gk = call i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 55) ; 3 uses
  %i.gl = call i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 2) ; 3 uses
  %i.gm = call i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 14) ; 3 uses
  %i.gn = call i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 27) ; 3 uses
  %i.go = call i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 41) ; 3 uses
  %i.gp = call i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 56) ; 3 uses
  %i.gq = call i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 8) ; 3 uses
  %i.gr = call i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 25) ; 3 uses
  %i.gs = call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 43) ; 3 uses
  %i.gt = call i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 62) ; 3 uses
  %i.gu = call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 18) ; 3 uses
  %i.gv = call i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 39) ; 3 uses
  %i.gw = call i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 61) ; 3 uses
  %i.gx = call i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fx, i64 20) ; 3 uses
  %i.gy = call i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 44) ; 3 uses
  %i.gz = xor i64 %i.gy, -1
  %i.ha = and i64 %i.gs, %i.gz
  %i.hb = xor i64 %i.gs, -1
  %i.hc = and i64 %i.gg, %i.hb
  %i.hd = xor i64 %i.hc, %i.gy                    ; 3 uses
  %i.he = xor i64 %i.gg, -1
  %i.hf = and i64 %i.gm, %i.he
  %i.hg = xor i64 %i.hf, %i.gs                    ; 3 uses
  %i.hh = xor i64 %i.gm, -1
  %i.hi = and i64 %i.eu, %i.hh
  %i.hj = xor i64 %i.hi, %i.gg                    ; 3 uses
  %i.hk = xor i64 %i.eu, -1
  %i.hl = and i64 %i.gy, %i.hk
  %i.hm = xor i64 %i.gm, %i.hl                    ; 3 uses
  %i.hn = xor i64 %i.gx, -1
  %i.ho = and i64 %i.gc, %i.hn
  %i.hp = xor i64 %i.ho, %i.gh                    ; 3 uses
  %i.hq = xor i64 %i.gc, -1
  %i.hr = and i64 %i.gj, %i.hq
  %i.hs = xor i64 %i.hr, %i.gx                    ; 3 uses
  %i.ht = xor i64 %i.gj, -1
  %i.hu = and i64 %i.gw, %i.ht
  %i.hv = xor i64 %i.hu, %i.gc                    ; 3 uses
  %i.hw = xor i64 %i.gw, -1
  %i.hx = and i64 %i.gh, %i.hw
  %i.hy = xor i64 %i.hx, %i.gj                    ; 3 uses
  %i.hz = xor i64 %i.gh, -1
  %i.ia = and i64 %i.gx, %i.hz
  %i.ib = xor i64 %i.gw, %i.ia                    ; 3 uses
  %i.ic = xor i64 %i.gd, -1
  %i.id = and i64 %i.gr, %i.ic
  %i.ie = xor i64 %i.id, %i.gb                    ; 3 uses
  %i.if = xor i64 %i.gr, -1
  %i.ig = and i64 %i.gq, %i.if
  %i.ih = xor i64 %i.ig, %i.gd                    ; 3 uses
  %i.ii = xor i64 %i.gq, -1
  %i.ij = and i64 %i.gu, %i.ii
  %i.ik = xor i64 %i.ij, %i.gr                    ; 3 uses
  %i.il = xor i64 %i.gu, -1
  %i.im = and i64 %i.gb, %i.il
  %i.in = xor i64 %i.im, %i.gq                    ; 3 uses
  %i.io = xor i64 %i.gb, -1
  %i.ip = and i64 %i.gd, %i.io
  %i.iq = xor i64 %i.gu, %i.ip                    ; 3 uses
  %i.ir = xor i64 %i.gi, -1
  %i.is = and i64 %i.ge, %i.ir
  %i.it = xor i64 %i.is, %i.gn                    ; 3 uses
  %i.iu = xor i64 %i.ge, -1
  %i.iv = and i64 %i.gf, %i.iu
  %i.iw = xor i64 %i.iv, %i.gi                    ; 3 uses
  %i.ix = xor i64 %i.gf, -1
  %i.iy = and i64 %i.gp, %i.ix
  %i.iz = xor i64 %i.iy, %i.ge                    ; 3 uses
  %i.ja = xor i64 %i.gp, -1
  %i.jb = and i64 %i.gn, %i.ja
  %i.jc = xor i64 %i.jb, %i.gf                    ; 3 uses
  %i.jd = xor i64 %i.gn, -1
  %i.je = and i64 %i.gi, %i.jd
  %i.jf = xor i64 %i.gp, %i.je                    ; 3 uses
  %i.jg = xor i64 %i.gk, -1
  %i.jh = and i64 %i.gv, %i.jg
  %i.ji = xor i64 %i.jh, %i.gt                    ; 3 uses
  %i.jj = xor i64 %i.gv, -1
  %i.jk = and i64 %i.go, %i.jj
  %i.jl = xor i64 %i.jk, %i.gk                    ; 3 uses
  %i.jm = xor i64 %i.go, -1
  %i.jn = and i64 %i.gl, %i.jm
  %i.jo = xor i64 %i.jn, %i.gv                    ; 3 uses
  %i.jp = xor i64 %i.gl, -1
  %i.jq = and i64 %i.gt, %i.jp
  %i.jr = xor i64 %i.jq, %i.go                    ; 3 uses
  %i.js = xor i64 %i.gt, -1
  %i.jt = and i64 %i.gk, %i.js
  %i.ju = xor i64 %i.gl, %i.jt                    ; 3 uses
  %i.jv = getelementptr [8 x i8], ptr @_Py_LibHacl_Hacl_Hash_SHA3_keccak_rndc, i64 %indvars.iv552
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !15
  %i.jx = xor i64 %i.ha, %i.jw
  %i.jy = xor i64 %i.jx, %i.eu                    ; 3 uses
  %indvars.iv.next553 = add nuw nsw i64 %indvars.iv552, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next553, 24
  br i1 %exitcond555.not, label %bb.c, label %bb.d, !llvm.loop !31
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_224(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [25 x i64], align 16              ; 24 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 18 uses
  %i.d = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  %.not = icmp ult i32 %2, 144
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv i32 %2, 144
  %wide.trip.count = zext nneg i32 %i.e to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = load <2 x i64>, ptr %i.a, align 16, !tbaa !15
  %.phi.trans.insert529 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load <2 x i64>, ptr %.phi.trans.insert529, align 16, !tbaa !15
  %.phi.trans.insert533 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load <2 x i64>, ptr %.phi.trans.insert533, align 16, !tbaa !15
  %.phi.trans.insert537 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load <2 x i64>, ptr %.phi.trans.insert537, align 16, !tbaa !15
  %.phi.trans.insert541 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.pre542 = load i64, ptr %.phi.trans.insert541, align 16, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi i64 [ %.pre542, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.l = phi <2 x i64> [ %i.g, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.m = phi <2 x i64> [ %i.h, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.n = phi <2 x i64> [ %i.i, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.o = phi <2 x i64> [ %i.j, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.p = urem i32 %2, 144
  %i.q = zext i32 %2 to i64
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = zext nneg i32 %i.p to i64                ; 3 uses
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = getelementptr i8, ptr %i.c, i64 %i.s
  store i8 6, ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.val508 = load i64, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ai = load <2 x i64>, ptr %i.c, align 16
  %i.aj = xor <2 x i64> %i.ai, %i.l
  store <2 x i64> %i.aj, ptr %i.a, align 16, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = load <2 x i64>, ptr %i.w, align 16
  %i.am = xor <2 x i64> %i.al, %i.m
  store <2 x i64> %i.am, ptr %i.ak, align 16, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ao = load <2 x i64>, ptr %i.x, align 16
  %i.ap = xor <2 x i64> %i.ao, %i.n
  store <2 x i64> %i.ap, ptr %i.an, align 16, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ar = load <2 x i64>, ptr %i.y, align 16
  %i.as = xor <2 x i64> %i.ar, %i.o
  store <2 x i64> %i.as, ptr %i.aq, align 16, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.au = xor i64 %.val508, %i.k
  store i64 %i.au, ptr %i.at, align 16, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.aa, align 8
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !tbaa !15
  %i.ay = xor <2 x i64> %i.aw, %i.ax
  store <2 x i64> %i.ay, ptr %i.av, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ab, align 8
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !tbaa !15
  %i.bc = xor <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.az, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.ac, align 8
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !15
  %i.bg = xor <2 x i64> %i.be, %i.bf
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.ad, align 8
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !tbaa !15
  %i.bk = xor <2 x i64> %i.bi, %i.bj
  store <2 x i64> %i.bk, ptr %i.bh, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.bm = load <2 x i64>, ptr %i.ae, align 8
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !tbaa !15
  %i.bo = xor <2 x i64> %i.bm, %i.bn
  store <2 x i64> %i.bo, ptr %i.bl, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  %i.bq = load <2 x i64>, ptr %i.af, align 8
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !tbaa !15
  %i.bs = xor <2 x i64> %i.bq, %i.br
  store <2 x i64> %i.bs, ptr %i.bp, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.bu = load <2 x i64>, ptr %i.ag, align 8
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !tbaa !15
  %i.bw = xor <2 x i64> %i.bu, %i.bv
  store <2 x i64> %i.bw, ptr %i.bt, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.by = load <2 x i64>, ptr %i.ah, align 8
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !tbaa !15
  %i.ca = xor <2 x i64> %i.by, %i.bz
  store <2 x i64> %i.ca, ptr %i.bx, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 143
  store i8 -128, ptr %i.cb, align 1, !tbaa !18
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %0, ptr noundef nonnull align 16 dereferenceable(28) %i.a, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.cc = mul nuw nsw i64 %indvars.iv, 144
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.f, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.b, ptr noundef nonnull align 1 dereferenceable(144) %i.cd, i64 144, i1 false)
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !32
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_256(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [25 x i64], align 16              ; 24 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 18 uses
  %i.d = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  %.not = icmp ult i32 %2, 136
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv i32 %2, 136
  %wide.trip.count = zext nneg i32 %i.e to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = load <2 x i64>, ptr %i.a, align 16, !tbaa !15
  %.phi.trans.insert529 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load <2 x i64>, ptr %.phi.trans.insert529, align 16, !tbaa !15
  %.phi.trans.insert533 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load <2 x i64>, ptr %.phi.trans.insert533, align 16, !tbaa !15
  %.phi.trans.insert537 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load <2 x i64>, ptr %.phi.trans.insert537, align 16, !tbaa !15
  %.phi.trans.insert541 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.pre542 = load i64, ptr %.phi.trans.insert541, align 16, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi i64 [ %.pre542, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.l = phi <2 x i64> [ %i.g, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.m = phi <2 x i64> [ %i.h, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.n = phi <2 x i64> [ %i.i, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.o = phi <2 x i64> [ %i.j, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.p = urem i32 %2, 136
  %i.q = zext i32 %2 to i64
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = zext nneg i32 %i.p to i64                ; 3 uses
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = getelementptr i8, ptr %i.c, i64 %i.s
  store i8 6, ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.val508 = load i64, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ai = load <2 x i64>, ptr %i.c, align 16
  %i.aj = xor <2 x i64> %i.ai, %i.l
  store <2 x i64> %i.aj, ptr %i.a, align 16, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = load <2 x i64>, ptr %i.w, align 16
  %i.am = xor <2 x i64> %i.al, %i.m
  store <2 x i64> %i.am, ptr %i.ak, align 16, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ao = load <2 x i64>, ptr %i.x, align 16
  %i.ap = xor <2 x i64> %i.ao, %i.n
  store <2 x i64> %i.ap, ptr %i.an, align 16, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ar = load <2 x i64>, ptr %i.y, align 16
  %i.as = xor <2 x i64> %i.ar, %i.o
  store <2 x i64> %i.as, ptr %i.aq, align 16, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.au = xor i64 %.val508, %i.k
  store i64 %i.au, ptr %i.at, align 16, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.aa, align 8
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !tbaa !15
  %i.ay = xor <2 x i64> %i.aw, %i.ax
  store <2 x i64> %i.ay, ptr %i.av, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ab, align 8
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !tbaa !15
  %i.bc = xor <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.az, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.ac, align 8
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !15
  %i.bg = xor <2 x i64> %i.be, %i.bf
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.ad, align 8
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !tbaa !15
  %i.bk = xor <2 x i64> %i.bi, %i.bj
  store <2 x i64> %i.bk, ptr %i.bh, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.bm = load <2 x i64>, ptr %i.ae, align 8
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !tbaa !15
  %i.bo = xor <2 x i64> %i.bm, %i.bn
  store <2 x i64> %i.bo, ptr %i.bl, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  %i.bq = load <2 x i64>, ptr %i.af, align 8
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !tbaa !15
  %i.bs = xor <2 x i64> %i.bq, %i.br
  store <2 x i64> %i.bs, ptr %i.bp, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.bu = load <2 x i64>, ptr %i.ag, align 8
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !tbaa !15
  %i.bw = xor <2 x i64> %i.bu, %i.bv
  store <2 x i64> %i.bw, ptr %i.bt, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.by = load <2 x i64>, ptr %i.ah, align 8
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !tbaa !15
  %i.ca = xor <2 x i64> %i.by, %i.bz
  store <2 x i64> %i.ca, ptr %i.bx, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 135
  store i8 -128, ptr %i.cb, align 1, !tbaa !18
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.cc = mul nuw nsw i64 %indvars.iv, 136
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, i8 0, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.b, ptr noundef nonnull align 1 dereferenceable(136) %i.cd, i64 136, i1 false)
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !33
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_384(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [25 x i64], align 16              ; 24 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 18 uses
  %i.d = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  %.not = icmp ult i32 %2, 104
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv i32 %2, 104
  %wide.trip.count = zext nneg i32 %i.e to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = load <2 x i64>, ptr %i.a, align 16, !tbaa !15
  %.phi.trans.insert529 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load <2 x i64>, ptr %.phi.trans.insert529, align 16, !tbaa !15
  %.phi.trans.insert533 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load <2 x i64>, ptr %.phi.trans.insert533, align 16, !tbaa !15
  %.phi.trans.insert537 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load <2 x i64>, ptr %.phi.trans.insert537, align 16, !tbaa !15
  %.phi.trans.insert541 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.pre542 = load i64, ptr %.phi.trans.insert541, align 16, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi i64 [ %.pre542, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.l = phi <2 x i64> [ %i.g, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.m = phi <2 x i64> [ %i.h, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.n = phi <2 x i64> [ %i.i, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.o = phi <2 x i64> [ %i.j, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.p = urem i32 %2, 104
  %i.q = zext i32 %2 to i64
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = zext nneg i32 %i.p to i64                ; 3 uses
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = getelementptr i8, ptr %i.c, i64 %i.s
  store i8 6, ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.val508 = load i64, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ai = load <2 x i64>, ptr %i.c, align 16
  %i.aj = xor <2 x i64> %i.ai, %i.l
  store <2 x i64> %i.aj, ptr %i.a, align 16, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = load <2 x i64>, ptr %i.w, align 16
  %i.am = xor <2 x i64> %i.al, %i.m
  store <2 x i64> %i.am, ptr %i.ak, align 16, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ao = load <2 x i64>, ptr %i.x, align 16
  %i.ap = xor <2 x i64> %i.ao, %i.n
  store <2 x i64> %i.ap, ptr %i.an, align 16, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ar = load <2 x i64>, ptr %i.y, align 16
  %i.as = xor <2 x i64> %i.ar, %i.o
  store <2 x i64> %i.as, ptr %i.aq, align 16, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.au = xor i64 %.val508, %i.k
  store i64 %i.au, ptr %i.at, align 16, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.aa, align 8
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !tbaa !15
  %i.ay = xor <2 x i64> %i.aw, %i.ax
  store <2 x i64> %i.ay, ptr %i.av, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ab, align 8
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !tbaa !15
  %i.bc = xor <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.az, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.ac, align 8
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !15
  %i.bg = xor <2 x i64> %i.be, %i.bf
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.ad, align 8
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !tbaa !15
  %i.bk = xor <2 x i64> %i.bi, %i.bj
  store <2 x i64> %i.bk, ptr %i.bh, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.bm = load <2 x i64>, ptr %i.ae, align 8
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !tbaa !15
  %i.bo = xor <2 x i64> %i.bm, %i.bn
  store <2 x i64> %i.bo, ptr %i.bl, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  %i.bq = load <2 x i64>, ptr %i.af, align 8
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !tbaa !15
  %i.bs = xor <2 x i64> %i.bq, %i.br
  store <2 x i64> %i.bs, ptr %i.bp, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.bu = load <2 x i64>, ptr %i.ag, align 8
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !tbaa !15
  %i.bw = xor <2 x i64> %i.bu, %i.bv
  store <2 x i64> %i.bw, ptr %i.bt, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.by = load <2 x i64>, ptr %i.ah, align 8
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !tbaa !15
  %i.ca = xor <2 x i64> %i.by, %i.bz
  store <2 x i64> %i.ca, ptr %i.bx, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 103
  store i8 -128, ptr %i.cb, align 1, !tbaa !18
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.cc = mul nuw nsw i64 %indvars.iv, 104
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.f, i8 0, i64 152, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.b, ptr noundef nonnull align 1 dereferenceable(104) %i.cd, i64 104, i1 false)
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !34
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_sha3_512(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [25 x i64], align 16              ; 24 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 18 uses
  %i.d = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  %.not = icmp ult i32 %2, 72
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv i32 %2, 72
  %wide.trip.count = zext nneg i32 %i.e to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = load <2 x i64>, ptr %i.a, align 16, !tbaa !15
  %.phi.trans.insert529 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load <2 x i64>, ptr %.phi.trans.insert529, align 16, !tbaa !15
  %.phi.trans.insert533 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load <2 x i64>, ptr %.phi.trans.insert533, align 16, !tbaa !15
  %.phi.trans.insert537 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load <2 x i64>, ptr %.phi.trans.insert537, align 16, !tbaa !15
  %.phi.trans.insert541 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.pre542 = load i64, ptr %.phi.trans.insert541, align 16, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi i64 [ %.pre542, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.l = phi <2 x i64> [ %i.g, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.m = phi <2 x i64> [ %i.h, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.n = phi <2 x i64> [ %i.i, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  %i.o = phi <2 x i64> [ %i.j, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.p = urem i32 %2, 72
  %i.q = zext i32 %2 to i64
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = zext nneg i32 %i.p to i64                ; 3 uses
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = getelementptr i8, ptr %i.c, i64 %i.s
  store i8 6, ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.val508 = load i64, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ai = load <2 x i64>, ptr %i.c, align 16
  %i.aj = xor <2 x i64> %i.ai, %i.l
  store <2 x i64> %i.aj, ptr %i.a, align 16, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = load <2 x i64>, ptr %i.w, align 16
  %i.am = xor <2 x i64> %i.al, %i.m
  store <2 x i64> %i.am, ptr %i.ak, align 16, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ao = load <2 x i64>, ptr %i.x, align 16
  %i.ap = xor <2 x i64> %i.ao, %i.n
  store <2 x i64> %i.ap, ptr %i.an, align 16, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ar = load <2 x i64>, ptr %i.y, align 16
  %i.as = xor <2 x i64> %i.ar, %i.o
  store <2 x i64> %i.as, ptr %i.aq, align 16, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.au = xor i64 %.val508, %i.k
  store i64 %i.au, ptr %i.at, align 16, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.aa, align 8
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !tbaa !15
  %i.ay = xor <2 x i64> %i.aw, %i.ax
  store <2 x i64> %i.ay, ptr %i.av, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ab, align 8
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !tbaa !15
  %i.bc = xor <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.az, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.ac, align 8
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !15
  %i.bg = xor <2 x i64> %i.be, %i.bf
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.ad, align 8
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !tbaa !15
  %i.bk = xor <2 x i64> %i.bi, %i.bj
  store <2 x i64> %i.bk, ptr %i.bh, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.bm = load <2 x i64>, ptr %i.ae, align 8
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !tbaa !15
  %i.bo = xor <2 x i64> %i.bm, %i.bn
  store <2 x i64> %i.bo, ptr %i.bl, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  %i.bq = load <2 x i64>, ptr %i.af, align 8
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !tbaa !15
  %i.bs = xor <2 x i64> %i.bq, %i.br
  store <2 x i64> %i.bs, ptr %i.bp, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.bu = load <2 x i64>, ptr %i.ag, align 8
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !tbaa !15
  %i.bw = xor <2 x i64> %i.bu, %i.bv
  store <2 x i64> %i.bw, ptr %i.bt, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.by = load <2 x i64>, ptr %i.ah, align 8
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !tbaa !15
  %i.ca = xor <2 x i64> %i.by, %i.bz
  store <2 x i64> %i.ca, ptr %i.bx, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 71
  store i8 -128, ptr %i.cb, align 1, !tbaa !18
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.cc = mul nuw nsw i64 %indvars.iv, 72
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.f, i8 0, i64 184, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, ptr noundef nonnull align 1 dereferenceable(72) %i.cd, i64 72, i1 false)
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !35
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_SHA3_state_malloc() local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 25, i64 noundef 8) #20
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_state_free(ptr noundef captures(none) %0) local_unnamed_addr #15 {
bb.a:
  tail call void @free(ptr noundef %0) #19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_shake128_absorb_nblocks(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %.not = icmp ult i32 %2, 168
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = udiv i32 %2, 168
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = mul nuw nsw i64 %indvars.iv, 168
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i8 0, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, ptr noundef nonnull align 1 dereferenceable(168) %i.e, i64 168, i1 false)
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.a, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_shake128_absorb_final(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 18 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.c = urem i32 %2, 168
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %i.f = zext nneg i32 %i.c to i64                ; 3 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr i8, ptr %i.e, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.h, i64 %i.f, i1 false)
  %i.i = getelementptr i8, ptr %i.a, i64 %i.f
  store i8 31, ptr %i.i, align 1, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.val92 = load i64, ptr %i.u, align 16
  %i.v = load <2 x i64>, ptr %i.a, align 16
  %i.w = load <2 x i64>, ptr %0, align 8, !tbaa !15
  %i.x = xor <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.z = load <2 x i64>, ptr %i.j, align 16
  %i.aa = load <2 x i64>, ptr %i.y, align 8, !tbaa !15
  %i.ab = xor <2 x i64> %i.z, %i.aa
  store <2 x i64> %i.ab, ptr %i.y, align 8, !tbaa !15
  %i.ac = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.k, align 16
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !15
  %i.af = xor <2 x i64> %i.ad, %i.ae
  store <2 x i64> %i.af, ptr %i.ac, align 8, !tbaa !15
  %i.ag = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ah = load <2 x i64>, ptr %i.l, align 16
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !tbaa !15
  %i.aj = xor <2 x i64> %i.ah, %i.ai
  store <2 x i64> %i.aj, ptr %i.ag, align 8, !tbaa !15
  %i.ak = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.al = load <2 x i64>, ptr %i.m, align 16
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !tbaa !15
  %i.an = xor <2 x i64> %i.al, %i.am
  store <2 x i64> %i.an, ptr %i.ak, align 8, !tbaa !15
  %i.ao = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.n, align 16
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !tbaa !15
  %i.ar = xor <2 x i64> %i.ap, %i.aq
  store <2 x i64> %i.ar, ptr %i.ao, align 8, !tbaa !15
  %i.as = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.at = load <2 x i64>, ptr %i.o, align 16
  %i.au = load <2 x i64>, ptr %i.as, align 8, !tbaa !15
  %i.av = xor <2 x i64> %i.at, %i.au
  store <2 x i64> %i.av, ptr %i.as, align 8, !tbaa !15
  %i.aw = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.ax = load <2 x i64>, ptr %i.p, align 16
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !tbaa !15
  %i.az = xor <2 x i64> %i.ax, %i.ay
  store <2 x i64> %i.az, ptr %i.aw, align 8, !tbaa !15
  %i.ba = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.q, align 16
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !tbaa !15
  %i.bd = xor <2 x i64> %i.bb, %i.bc
  store <2 x i64> %i.bd, ptr %i.ba, align 8, !tbaa !15
  %i.be = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.bf = load <2 x i64>, ptr %i.r, align 16
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !tbaa !15
  %i.bh = xor <2 x i64> %i.bf, %i.bg
  store <2 x i64> %i.bh, ptr %i.be, align 8, !tbaa !15
  %i.bi = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.bj = load <2 x i64>, ptr %i.s, align 16
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !tbaa !15
  %i.bl = xor <2 x i64> %i.bj, %i.bk
  store <2 x i64> %i.bl, ptr %i.bi, align 8, !tbaa !15
  %i.bm = getelementptr i8, ptr %0, i64 176       ; 2 uses
  %i.bn = load <2 x i64>, ptr %i.t, align 16
  %i.bo = load <2 x i64>, ptr %i.bm, align 8, !tbaa !15
  %i.bp = xor <2 x i64> %i.bn, %i.bo
  store <2 x i64> %i.bp, ptr %i.bm, align 8, !tbaa !15
  %i.bq = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !15
  %i.bs = xor i64 %.val92, %i.br
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 167
  store i8 -128, ptr %i.bt, align 1, !tbaa !18
  call void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 poison, ptr noundef nonnull %i.b, ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_shake128_squeeze_nblocks(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp ult i32 %2, 168
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = udiv i32 %2, 168
  %i.b = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 80         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 120        ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 160        ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 128        ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 168        ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 176        ; 4 uses
  %i.p = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.t = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 152        ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 192        ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv567 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next568, %bb.c ] ; 2 uses
  %i.z = mul nuw nsw i64 %indvars.iv567, 168
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.aa, ptr noundef nonnull align 8 dereferenceable(168) %0, i64 168, i1 false)
  %.pre = load i64, ptr %0, align 8, !tbaa !15
  %.pre571 = load i64, ptr %i.b, align 8, !tbaa !15
  %.pre572 = load i64, ptr %i.c, align 8, !tbaa !15
  %.pre573 = load i64, ptr %i.d, align 8, !tbaa !15
  %.pre574 = load i64, ptr %i.e, align 8, !tbaa !15
  %.pre575 = load i64, ptr %i.g, align 8, !tbaa !15
  %.pre576 = load i64, ptr %i.h, align 8, !tbaa !15
  %.pre577 = load i64, ptr %i.i, align 8, !tbaa !15
  %.pre578 = load i64, ptr %i.j, align 8, !tbaa !15
  %.pre579 = load i64, ptr %i.l, align 8, !tbaa !15
  %.pre580 = load i64, ptr %i.m, align 8, !tbaa !15
  %.pre581 = load i64, ptr %i.n, align 8, !tbaa !15
  %.pre582 = load i64, ptr %i.o, align 8, !tbaa !15
  %.pre583 = load i64, ptr %i.q, align 8, !tbaa !15
  %.pre584 = load i64, ptr %i.r, align 8, !tbaa !15
  %.pre585 = load i64, ptr %i.s, align 8, !tbaa !15
  %.pre586 = load i64, ptr %i.t, align 8, !tbaa !15
  %.pre587 = load i64, ptr %i.v, align 8, !tbaa !15
  %.pre588 = load i64, ptr %i.w, align 8, !tbaa !15
  %.pre589 = load i64, ptr %i.x, align 8, !tbaa !15
  %.pre590 = load i64, ptr %i.y, align 8, !tbaa !15
  %.promoted = load i64, ptr %i.f, align 8, !tbaa !15
  %.promoted591 = load i64, ptr %i.k, align 8, !tbaa !15
  %.promoted592 = load i64, ptr %i.p, align 8, !tbaa !15
  %.promoted593 = load i64, ptr %i.u, align 8, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next568, %wide.trip.count
  br i1 %exitcond570.not, label %._crit_edge, label %bb.b, !llvm.loop !37

bb.d:                                             ; preds = %bb.b, %bb.d
  %i.ab = phi i64 [ %.promoted593, %bb.b ], [ %i.ep, %bb.d ] ; 2 uses
  %i.ac = phi i64 [ %.promoted592, %bb.b ], [ %i.em, %bb.d ] ; 2 uses
  %i.ad = phi i64 [ %.promoted591, %bb.b ], [ %i.ej, %bb.d ] ; 2 uses
  %i.ae = phi i64 [ %.promoted, %bb.b ], [ %i.eg, %bb.d ] ; 2 uses
  %i.af = phi i64 [ %.pre590, %bb.b ], [ %i.gx, %bb.d ] ; 2 uses
  %i.ag = phi i64 [ %.pre589, %bb.b ], [ %i.gi, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ %.pre588, %bb.b ], [ %i.ft, %bb.d ] ; 2 uses
  %i.ai = phi i64 [ %.pre587, %bb.b ], [ %i.fe, %bb.d ] ; 2 uses
  %i.aj = phi i64 [ %.pre586, %bb.b ], [ %i.gu, %bb.d ] ; 2 uses
  %i.ak = phi i64 [ %.pre585, %bb.b ], [ %i.gf, %bb.d ] ; 2 uses
  %i.al = phi i64 [ %.pre584, %bb.b ], [ %i.fq, %bb.d ] ; 2 uses
  %i.am = phi i64 [ %.pre583, %bb.b ], [ %i.fb, %bb.d ] ; 2 uses
  %i.an = phi i64 [ %.pre582, %bb.b ], [ %i.gr, %bb.d ] ; 2 uses
  %i.ao = phi i64 [ %.pre581, %bb.b ], [ %i.gc, %bb.d ] ; 2 uses
  %i.ap = phi i64 [ %.pre580, %bb.b ], [ %i.fn, %bb.d ] ; 2 uses
  %i.aq = phi i64 [ %.pre579, %bb.b ], [ %i.ey, %bb.d ] ; 2 uses
  %i.ar = phi i64 [ %.pre578, %bb.b ], [ %i.go, %bb.d ] ; 2 uses
  %i.as = phi i64 [ %.pre577, %bb.b ], [ %i.fz, %bb.d ] ; 2 uses
  %i.at = phi i64 [ %.pre576, %bb.b ], [ %i.fk, %bb.d ] ; 2 uses
  %i.au = phi i64 [ %.pre575, %bb.b ], [ %i.ev, %bb.d ] ; 2 uses
  %i.av = phi i64 [ %.pre574, %bb.b ], [ %i.gl, %bb.d ] ; 2 uses
  %i.aw = phi i64 [ %.pre573, %bb.b ], [ %i.fw, %bb.d ] ; 2 uses
  %i.ax = phi i64 [ %.pre572, %bb.b ], [ %i.fh, %bb.d ] ; 2 uses
  %i.ay = phi i64 [ %.pre571, %bb.b ], [ %i.es, %bb.d ] ; 2 uses
  %i.az = phi i64 [ %.pre, %bb.b ], [ %i.ha, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ba = xor i64 %i.ay, %i.az
  %i.bb = xor i64 %i.ba, %i.ax
  %i.bc = xor i64 %i.bb, %i.aw
  %i.bd = xor i64 %i.bc, %i.av                    ; 3 uses
  %i.be = xor i64 %i.au, %i.ae
  %i.bf = xor i64 %i.be, %i.at
  %i.bg = xor i64 %i.bf, %i.as
  %i.bh = xor i64 %i.bg, %i.ar                    ; 3 uses
  %i.bi = xor i64 %i.aq, %i.ad
  %i.bj = xor i64 %i.bi, %i.ap
  %i.bk = xor i64 %i.bj, %i.ao
  %i.bl = xor i64 %i.bk, %i.an                    ; 3 uses
  %i.bm = xor i64 %i.am, %i.ac
  %i.bn = xor i64 %i.bm, %i.al
  %i.bo = xor i64 %i.bn, %i.ak
  %i.bp = xor i64 %i.bo, %i.aj                    ; 3 uses
  %i.bq = xor i64 %i.ai, %i.ab
  %i.br = xor i64 %i.bq, %i.ah
  %i.bs = xor i64 %i.br, %i.ag
  %i.bt = xor i64 %i.bs, %i.af                    ; 3 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 1)
  %i.bv = xor i64 %i.bt, %i.bu                    ; 5 uses
  %i.bw = xor i64 %i.bv, %i.az                    ; 4 uses
  store i64 %i.bw, ptr %0, align 8, !tbaa !15
  %i.bx = xor i64 %i.bv, %i.ay                    ; 2 uses
  %i.by = xor i64 %i.bv, %i.ax                    ; 2 uses
  %i.bz = xor i64 %i.bv, %i.aw                    ; 2 uses
  %i.ca = xor i64 %i.bv, %i.av                    ; 3 uses
  store i64 %i.ca, ptr %i.e, align 8, !tbaa !15
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 1)
  %i.cc = xor i64 %i.cb, %i.bd                    ; 5 uses
  %i.cd = xor i64 %i.cc, %i.ae                    ; 2 uses
  %i.ce = xor i64 %i.cc, %i.au                    ; 3 uses
  store i64 %i.ce, ptr %i.g, align 8, !tbaa !15
  %i.cf = xor i64 %i.cc, %i.at                    ; 2 uses
  %i.cg = xor i64 %i.cc, %i.as                    ; 2 uses
  %i.ch = xor i64 %i.cc, %i.ar                    ; 2 uses
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 1)
  %i.cj = xor i64 %i.ci, %i.bh                    ; 5 uses
  %i.ck = xor i64 %i.cj, %i.ad                    ; 3 uses
  store i64 %i.ck, ptr %i.k, align 8, !tbaa !15
  %i.cl = xor i64 %i.cj, %i.aq                    ; 2 uses
  %i.cm = xor i64 %i.cj, %i.ap                    ; 2 uses
  %i.cn = xor i64 %i.cj, %i.ao                    ; 2 uses
  %i.co = xor i64 %i.cj, %i.an                    ; 3 uses
  store i64 %i.co, ptr %i.o, align 8, !tbaa !15
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 1)
  %i.cq = xor i64 %i.cp, %i.bl                    ; 5 uses
  %i.cr = xor i64 %i.cq, %i.ac                    ; 2 uses
  %i.cs = xor i64 %i.cq, %i.am                    ; 2 uses
  %i.ct = xor i64 %i.cq, %i.al                    ; 2 uses
  %i.cu = xor i64 %i.cq, %i.ak                    ; 2 uses
  %i.cv = xor i64 %i.cq, %i.aj                    ; 2 uses
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 1)
  %i.cx = xor i64 %i.bp, %i.cw                    ; 5 uses
  %i.cy = xor i64 %i.cx, %i.ab                    ; 2 uses
  %i.cz = xor i64 %i.cx, %i.ai                    ; 2 uses
  %i.da = xor i64 %i.cx, %i.ah                    ; 2 uses
  %i.db = xor i64 %i.cx, %i.ag                    ; 2 uses
  %i.dc = xor i64 %i.af, %i.cx                    ; 2 uses
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 1) ; 4 uses
  store i64 %i.dd, ptr %i.c, align 8, !tbaa !15
  %i.de = tail call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 3) ; 4 uses
  store i64 %i.de, ptr %i.l, align 8, !tbaa !15
  %i.df = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 6) ; 4 uses
  store i64 %i.df, ptr %i.h, align 8, !tbaa !15
  %i.dg = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 10) ; 4 uses
  store i64 %i.dg, ptr %i.n, align 8, !tbaa !15
  %i.dh = tail call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 15) ; 4 uses
  store i64 %i.dh, ptr %i.s, align 8, !tbaa !15
  %i.di = tail call i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 21) ; 3 uses
  %i.dj = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 28) ; 3 uses
  %i.dk = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 36) ; 4 uses
  store i64 %i.dk, ptr %i.i, align 8, !tbaa !15
  %i.dl = tail call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 45) ; 3 uses
  %i.dm = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 55) ; 4 uses
  store i64 %i.dm, ptr %i.j, align 8, !tbaa !15
  %i.dn = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 2) ; 4 uses
  store i64 %i.dn, ptr %i.y, align 8, !tbaa !15
  %i.do = tail call i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 14) ; 3 uses
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 27) ; 4 uses
  store i64 %i.dp, ptr %i.d, align 8, !tbaa !15
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 41) ; 4 uses
  store i64 %i.dq, ptr %i.t, align 8, !tbaa !15
  %i.dr = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 56) ; 4 uses
  store i64 %i.dr, ptr %i.x, align 8, !tbaa !15
  %i.ds = tail call i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 8) ; 3 uses
  %i.dt = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 25) ; 3 uses
  %i.du = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 43) ; 3 uses
  %i.dv = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 62) ; 4 uses
  store i64 %i.dv, ptr %i.e, align 8, !tbaa !15
  %i.dw = tail call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 18) ; 3 uses
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 39) ; 4 uses
  store i64 %i.dx, ptr %i.o, align 8, !tbaa !15
  %i.dy = tail call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 61) ; 3 uses
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 20) ; 3 uses
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 44) ; 3 uses
  %i.eb = xor i64 %i.ea, -1
  %i.ec = and i64 %i.du, %i.eb
  %i.ed = xor i64 %i.ec, %i.bw                    ; 2 uses
  %i.ee = xor i64 %i.du, -1
  %i.ef = and i64 %i.di, %i.ee
  %i.eg = xor i64 %i.ef, %i.ea                    ; 2 uses
  %i.eh = xor i64 %i.di, -1
  %i.ei = and i64 %i.do, %i.eh
  %i.ej = xor i64 %i.ei, %i.du                    ; 2 uses
  %i.ek = xor i64 %i.do, -1
  %i.el = and i64 %i.bw, %i.ek
  %i.em = xor i64 %i.el, %i.di                    ; 2 uses
  %i.en = xor i64 %i.bw, -1
  %i.eo = and i64 %i.ea, %i.en
  %i.ep = xor i64 %i.do, %i.eo                    ; 2 uses
  store i64 %i.ed, ptr %0, align 8, !tbaa !15
  store i64 %i.eg, ptr %i.f, align 8, !tbaa !15
  store i64 %i.ej, ptr %i.k, align 8, !tbaa !15
  store i64 %i.em, ptr %i.p, align 8, !tbaa !15
  store i64 %i.ep, ptr %i.u, align 8, !tbaa !15
  %i.eq = xor i64 %i.dz, -1
  %i.er = and i64 %i.de, %i.eq
  %i.es = xor i64 %i.er, %i.dj                    ; 2 uses
  %i.et = xor i64 %i.de, -1
  %i.eu = and i64 %i.dl, %i.et
  %i.ev = xor i64 %i.eu, %i.dz                    ; 2 uses
  %i.ew = xor i64 %i.dl, -1
  %i.ex = and i64 %i.dy, %i.ew
  %i.ey = xor i64 %i.ex, %i.de                    ; 2 uses
  %i.ez = xor i64 %i.dy, -1
  %i.fa = and i64 %i.dj, %i.ez
  %i.fb = xor i64 %i.fa, %i.dl                    ; 2 uses
  %i.fc = xor i64 %i.dj, -1
  %i.fd = and i64 %i.dz, %i.fc
  %i.fe = xor i64 %i.dy, %i.fd                    ; 2 uses
  store i64 %i.es, ptr %i.b, align 8, !tbaa !15
  store i64 %i.ev, ptr %i.g, align 8, !tbaa !15
  store i64 %i.ey, ptr %i.l, align 8, !tbaa !15
  store i64 %i.fb, ptr %i.q, align 8, !tbaa !15
  store i64 %i.fe, ptr %i.v, align 8, !tbaa !15
  %i.ff = xor i64 %i.df, -1
  %i.fg = and i64 %i.dt, %i.ff
  %i.fh = xor i64 %i.fg, %i.dd                    ; 2 uses
  %i.fi = xor i64 %i.dt, -1
  %i.fj = and i64 %i.ds, %i.fi
  %i.fk = xor i64 %i.fj, %i.df                    ; 2 uses
  %i.fl = xor i64 %i.ds, -1
  %i.fm = and i64 %i.dw, %i.fl
  %i.fn = xor i64 %i.fm, %i.dt                    ; 2 uses
  %i.fo = xor i64 %i.dw, -1
  %i.fp = and i64 %i.dd, %i.fo
  %i.fq = xor i64 %i.fp, %i.ds                    ; 2 uses
  %i.fr = xor i64 %i.dd, -1
  %i.fs = and i64 %i.df, %i.fr
  %i.ft = xor i64 %i.dw, %i.fs                    ; 2 uses
  store i64 %i.fh, ptr %i.c, align 8, !tbaa !15
  store i64 %i.fk, ptr %i.h, align 8, !tbaa !15
  store i64 %i.fn, ptr %i.m, align 8, !tbaa !15
  store i64 %i.fq, ptr %i.r, align 8, !tbaa !15
  store i64 %i.ft, ptr %i.w, align 8, !tbaa !15
  %i.fu = xor i64 %i.dk, -1
  %i.fv = and i64 %i.dg, %i.fu
  %i.fw = xor i64 %i.fv, %i.dp                    ; 2 uses
  %i.fx = xor i64 %i.dg, -1
  %i.fy = and i64 %i.dh, %i.fx
  %i.fz = xor i64 %i.fy, %i.dk                    ; 2 uses
  %i.ga = xor i64 %i.dh, -1
  %i.gb = and i64 %i.dr, %i.ga
  %i.gc = xor i64 %i.gb, %i.dg                    ; 2 uses
  %i.gd = xor i64 %i.dr, -1
  %i.ge = and i64 %i.dp, %i.gd
  %i.gf = xor i64 %i.ge, %i.dh                    ; 2 uses
  %i.gg = xor i64 %i.dp, -1
  %i.gh = and i64 %i.dk, %i.gg
  %i.gi = xor i64 %i.dr, %i.gh                    ; 2 uses
  store i64 %i.fw, ptr %i.d, align 8, !tbaa !15
  store i64 %i.fz, ptr %i.i, align 8, !tbaa !15
  store i64 %i.gc, ptr %i.n, align 8, !tbaa !15
  store i64 %i.gf, ptr %i.s, align 8, !tbaa !15
  store i64 %i.gi, ptr %i.x, align 8, !tbaa !15
  %i.gj = xor i64 %i.dm, -1
  %i.gk = and i64 %i.dx, %i.gj
  %i.gl = xor i64 %i.gk, %i.dv                    ; 2 uses
  %i.gm = xor i64 %i.dx, -1
  %i.gn = and i64 %i.dq, %i.gm
  %i.go = xor i64 %i.gn, %i.dm                    ; 2 uses
  %i.gp = xor i64 %i.dq, -1
  %i.gq = and i64 %i.dn, %i.gp
  %i.gr = xor i64 %i.gq, %i.dx                    ; 2 uses
  %i.gs = xor i64 %i.dn, -1
  %i.gt = and i64 %i.dv, %i.gs
  %i.gu = xor i64 %i.gt, %i.dq                    ; 2 uses
  %i.gv = xor i64 %i.dv, -1
  %i.gw = and i64 %i.dm, %i.gv
  %i.gx = xor i64 %i.dn, %i.gw                    ; 2 uses
  store i64 %i.gl, ptr %i.e, align 8, !tbaa !15
  store i64 %i.go, ptr %i.j, align 8, !tbaa !15
  store i64 %i.gr, ptr %i.o, align 8, !tbaa !15
  store i64 %i.gu, ptr %i.t, align 8, !tbaa !15
  store i64 %i.gx, ptr %i.y, align 8, !tbaa !15
  %i.gy = getelementptr [8 x i8], ptr @_Py_LibHacl_Hacl_Hash_SHA3_keccak_rndc, i64 %indvars.iv
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !15
  %i.ha = xor i64 %i.gz, %i.ed                    ; 2 uses
  store i64 %i.ha, ptr %0, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !38
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @squeeze(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 72, 169) %1, i32 noundef range(i32 1, 0) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca [256 x i8], align 16                ; 4 uses
  %5 = alloca [32 x i64], align 16                ; 5 uses
  %6 = alloca [32 x i64], align 16                ; 3 uses
  %.not = icmp ugt i32 %1, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = udiv i32 %2, %1
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 80         ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 120        ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 160        ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 128        ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 168        ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 176        ; 4 uses
  %i.q = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 152        ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 192        ; 3 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext nneg i32 %umax to i64
  %.200..sroa_idx628 = getelementptr inbounds nuw i8, ptr %5, i64 200
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.200..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.200..sroa_idx, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %6, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  %i.aa = urem i32 %2, %1
  %i.ab = zext i32 %2 to i64
  %i.ac = getelementptr i8, ptr %3, i64 %i.ab
  %i.ad = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr i8, ptr %i.ac, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 16 %6, i64 %i.ad, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv583 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next584, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.200..sroa_idx628, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, ptr noundef nonnull align 16 dereferenceable(256) %5, i64 256, i1 false)
  %i.ag = trunc nuw nsw i64 %indvars.iv583 to i32
  %i.ah = mul i32 %1, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %3, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 16 dereferenceable(1) %4, i64 %i.b, i1 false)
  %.pre = load i64, ptr %0, align 8, !tbaa !15
  %.pre590 = load i64, ptr %i.c, align 8, !tbaa !15
  %.pre591 = load i64, ptr %i.d, align 8, !tbaa !15
  %.pre592 = load i64, ptr %i.e, align 8, !tbaa !15
  %.pre593 = load i64, ptr %i.f, align 8, !tbaa !15
  %.pre594 = load i64, ptr %i.h, align 8, !tbaa !15
  %.pre595 = load i64, ptr %i.i, align 8, !tbaa !15
  %.pre596 = load i64, ptr %i.j, align 8, !tbaa !15
  %.pre597 = load i64, ptr %i.k, align 8, !tbaa !15
  %.pre598 = load i64, ptr %i.m, align 8, !tbaa !15
  %.pre599 = load i64, ptr %i.n, align 8, !tbaa !15
  %.pre600 = load i64, ptr %i.o, align 8, !tbaa !15
  %.pre601 = load i64, ptr %i.p, align 8, !tbaa !15
  %.pre602 = load i64, ptr %i.r, align 8, !tbaa !15
  %.pre603 = load i64, ptr %i.s, align 8, !tbaa !15
  %.pre604 = load i64, ptr %i.t, align 8, !tbaa !15
  %.pre605 = load i64, ptr %i.u, align 8, !tbaa !15
  %.pre606 = load i64, ptr %i.w, align 8, !tbaa !15
  %.pre607 = load i64, ptr %i.x, align 8, !tbaa !15
  %.pre608 = load i64, ptr %i.y, align 8, !tbaa !15
  %.pre609 = load i64, ptr %i.z, align 8, !tbaa !15
  %.promoted = load i64, ptr %i.g, align 8, !tbaa !15
  %.promoted610 = load i64, ptr %i.l, align 8, !tbaa !15
  %.promoted611 = load i64, ptr %i.q, align 8, !tbaa !15
  %.promoted612 = load i64, ptr %i.v, align 8, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count
  br i1 %exitcond586.not, label %._crit_edge, label %bb.b, !llvm.loop !39

bb.d:                                             ; preds = %bb.b, %bb.d
  %i.ak = phi i64 [ %.promoted612, %bb.b ], [ %i.ey, %bb.d ] ; 2 uses
  %i.al = phi i64 [ %.promoted611, %bb.b ], [ %i.ev, %bb.d ] ; 2 uses
  %i.am = phi i64 [ %.promoted610, %bb.b ], [ %i.es, %bb.d ] ; 2 uses
  %i.an = phi i64 [ %.promoted, %bb.b ], [ %i.ep, %bb.d ] ; 2 uses
  %i.ao = phi i64 [ %.pre609, %bb.b ], [ %i.hg, %bb.d ] ; 2 uses
  %i.ap = phi i64 [ %.pre608, %bb.b ], [ %i.gr, %bb.d ] ; 2 uses
  %i.aq = phi i64 [ %.pre607, %bb.b ], [ %i.gc, %bb.d ] ; 2 uses
  %i.ar = phi i64 [ %.pre606, %bb.b ], [ %i.fn, %bb.d ] ; 2 uses
  %i.as = phi i64 [ %.pre605, %bb.b ], [ %i.hd, %bb.d ] ; 2 uses
  %i.at = phi i64 [ %.pre604, %bb.b ], [ %i.go, %bb.d ] ; 2 uses
  %i.au = phi i64 [ %.pre603, %bb.b ], [ %i.fz, %bb.d ] ; 2 uses
  %i.av = phi i64 [ %.pre602, %bb.b ], [ %i.fk, %bb.d ] ; 2 uses
  %i.aw = phi i64 [ %.pre601, %bb.b ], [ %i.ha, %bb.d ] ; 2 uses
  %i.ax = phi i64 [ %.pre600, %bb.b ], [ %i.gl, %bb.d ] ; 2 uses
  %i.ay = phi i64 [ %.pre599, %bb.b ], [ %i.fw, %bb.d ] ; 2 uses
  %i.az = phi i64 [ %.pre598, %bb.b ], [ %i.fh, %bb.d ] ; 2 uses
  %i.ba = phi i64 [ %.pre597, %bb.b ], [ %i.gx, %bb.d ] ; 2 uses
  %i.bb = phi i64 [ %.pre596, %bb.b ], [ %i.gi, %bb.d ] ; 2 uses
  %i.bc = phi i64 [ %.pre595, %bb.b ], [ %i.ft, %bb.d ] ; 2 uses
  %i.bd = phi i64 [ %.pre594, %bb.b ], [ %i.fe, %bb.d ] ; 2 uses
  %i.be = phi i64 [ %.pre593, %bb.b ], [ %i.gu, %bb.d ] ; 2 uses
  %i.bf = phi i64 [ %.pre592, %bb.b ], [ %i.gf, %bb.d ] ; 2 uses
  %i.bg = phi i64 [ %.pre591, %bb.b ], [ %i.fq, %bb.d ] ; 2 uses
  %i.bh = phi i64 [ %.pre590, %bb.b ], [ %i.fb, %bb.d ] ; 2 uses
  %i.bi = phi i64 [ %.pre, %bb.b ], [ %i.hj, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.bj = xor i64 %i.bh, %i.bi
  %i.bk = xor i64 %i.bj, %i.bg
  %i.bl = xor i64 %i.bk, %i.bf
  %i.bm = xor i64 %i.bl, %i.be                    ; 3 uses
  %i.bn = xor i64 %i.bd, %i.an
  %i.bo = xor i64 %i.bn, %i.bc
  %i.bp = xor i64 %i.bo, %i.bb
  %i.bq = xor i64 %i.bp, %i.ba                    ; 3 uses
  %i.br = xor i64 %i.az, %i.am
  %i.bs = xor i64 %i.br, %i.ay
  %i.bt = xor i64 %i.bs, %i.ax
  %i.bu = xor i64 %i.bt, %i.aw                    ; 3 uses
  %i.bv = xor i64 %i.av, %i.al
  %i.bw = xor i64 %i.bv, %i.au
  %i.bx = xor i64 %i.bw, %i.at
  %i.by = xor i64 %i.bx, %i.as                    ; 3 uses
  %i.bz = xor i64 %i.ar, %i.ak
  %i.ca = xor i64 %i.bz, %i.aq
  %i.cb = xor i64 %i.ca, %i.ap
  %i.cc = xor i64 %i.cb, %i.ao                    ; 3 uses
  %i.cd = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 1)
  %i.ce = xor i64 %i.cc, %i.cd                    ; 5 uses
  %i.cf = xor i64 %i.ce, %i.bi                    ; 4 uses
  store i64 %i.cf, ptr %0, align 8, !tbaa !15
  %i.cg = xor i64 %i.ce, %i.bh                    ; 2 uses
  %i.ch = xor i64 %i.ce, %i.bg                    ; 2 uses
  %i.ci = xor i64 %i.ce, %i.bf                    ; 2 uses
  %i.cj = xor i64 %i.ce, %i.be                    ; 3 uses
  store i64 %i.cj, ptr %i.f, align 8, !tbaa !15
  %i.ck = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 1)
  %i.cl = xor i64 %i.ck, %i.bm                    ; 5 uses
  %i.cm = xor i64 %i.cl, %i.an                    ; 2 uses
  %i.cn = xor i64 %i.cl, %i.bd                    ; 3 uses
  store i64 %i.cn, ptr %i.h, align 8, !tbaa !15
  %i.co = xor i64 %i.cl, %i.bc                    ; 2 uses
  %i.cp = xor i64 %i.cl, %i.bb                    ; 2 uses
  %i.cq = xor i64 %i.cl, %i.ba                    ; 2 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 1)
  %i.cs = xor i64 %i.cr, %i.bq                    ; 5 uses
  %i.ct = xor i64 %i.cs, %i.am                    ; 3 uses
  store i64 %i.ct, ptr %i.l, align 8, !tbaa !15
  %i.cu = xor i64 %i.cs, %i.az                    ; 2 uses
  %i.cv = xor i64 %i.cs, %i.ay                    ; 2 uses
  %i.cw = xor i64 %i.cs, %i.ax                    ; 2 uses
  %i.cx = xor i64 %i.cs, %i.aw                    ; 3 uses
  store i64 %i.cx, ptr %i.p, align 8, !tbaa !15
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 1)
  %i.cz = xor i64 %i.cy, %i.bu                    ; 5 uses
  %i.da = xor i64 %i.cz, %i.al                    ; 2 uses
  %i.db = xor i64 %i.cz, %i.av                    ; 2 uses
  %i.dc = xor i64 %i.cz, %i.au                    ; 2 uses
  %i.dd = xor i64 %i.cz, %i.at                    ; 2 uses
  %i.de = xor i64 %i.cz, %i.as                    ; 2 uses
  %i.df = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 1)
  %i.dg = xor i64 %i.by, %i.df                    ; 5 uses
  %i.dh = xor i64 %i.dg, %i.ak                    ; 2 uses
  %i.di = xor i64 %i.dg, %i.ar                    ; 2 uses
  %i.dj = xor i64 %i.dg, %i.aq                    ; 2 uses
  %i.dk = xor i64 %i.dg, %i.ap                    ; 2 uses
  %i.dl = xor i64 %i.ao, %i.dg                    ; 2 uses
  %i.dm = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 1) ; 4 uses
  store i64 %i.dm, ptr %i.d, align 8, !tbaa !15
  %i.dn = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 3) ; 4 uses
  store i64 %i.dn, ptr %i.m, align 8, !tbaa !15
  %i.do = tail call i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 6) ; 4 uses
  store i64 %i.do, ptr %i.i, align 8, !tbaa !15
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 10) ; 4 uses
  store i64 %i.dp, ptr %i.o, align 8, !tbaa !15
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 15) ; 4 uses
  store i64 %i.dq, ptr %i.t, align 8, !tbaa !15
  %i.dr = tail call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 21) ; 3 uses
  %i.ds = tail call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 28) ; 3 uses
  %i.dt = tail call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 36) ; 4 uses
  store i64 %i.dt, ptr %i.j, align 8, !tbaa !15
  %i.du = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 45) ; 3 uses
  %i.dv = tail call i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 55) ; 4 uses
  store i64 %i.dv, ptr %i.k, align 8, !tbaa !15
  %i.dw = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 2) ; 4 uses
  store i64 %i.dw, ptr %i.z, align 8, !tbaa !15
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 14) ; 3 uses
  %i.dy = tail call i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 27) ; 4 uses
  store i64 %i.dy, ptr %i.e, align 8, !tbaa !15
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 41) ; 4 uses
  store i64 %i.dz, ptr %i.u, align 8, !tbaa !15
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 56) ; 4 uses
  store i64 %i.ea, ptr %i.y, align 8, !tbaa !15
  %i.eb = tail call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 8) ; 3 uses
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 25) ; 3 uses
  %i.ed = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 43) ; 3 uses
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 62) ; 4 uses
  store i64 %i.ee, ptr %i.f, align 8, !tbaa !15
  %i.ef = tail call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 18) ; 3 uses
  %i.eg = tail call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 39) ; 4 uses
  store i64 %i.eg, ptr %i.p, align 8, !tbaa !15
  %i.eh = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 61) ; 3 uses
  %i.ei = tail call i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 20) ; 3 uses
  %i.ej = tail call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 44) ; 3 uses
  %i.ek = xor i64 %i.ej, -1
  %i.el = and i64 %i.ed, %i.ek
  %i.em = xor i64 %i.el, %i.cf                    ; 2 uses
  %i.en = xor i64 %i.ed, -1
  %i.eo = and i64 %i.dr, %i.en
  %i.ep = xor i64 %i.eo, %i.ej                    ; 2 uses
  %i.eq = xor i64 %i.dr, -1
  %i.er = and i64 %i.dx, %i.eq
  %i.es = xor i64 %i.er, %i.ed                    ; 2 uses
  %i.et = xor i64 %i.dx, -1
  %i.eu = and i64 %i.cf, %i.et
  %i.ev = xor i64 %i.eu, %i.dr                    ; 2 uses
  %i.ew = xor i64 %i.cf, -1
  %i.ex = and i64 %i.ej, %i.ew
  %i.ey = xor i64 %i.dx, %i.ex                    ; 2 uses
  store i64 %i.em, ptr %0, align 8, !tbaa !15
  store i64 %i.ep, ptr %i.g, align 8, !tbaa !15
  store i64 %i.es, ptr %i.l, align 8, !tbaa !15
  store i64 %i.ev, ptr %i.q, align 8, !tbaa !15
  store i64 %i.ey, ptr %i.v, align 8, !tbaa !15
  %i.ez = xor i64 %i.ei, -1
  %i.fa = and i64 %i.dn, %i.ez
  %i.fb = xor i64 %i.fa, %i.ds                    ; 2 uses
  %i.fc = xor i64 %i.dn, -1
  %i.fd = and i64 %i.du, %i.fc
  %i.fe = xor i64 %i.fd, %i.ei                    ; 2 uses
  %i.ff = xor i64 %i.du, -1
  %i.fg = and i64 %i.eh, %i.ff
  %i.fh = xor i64 %i.fg, %i.dn                    ; 2 uses
  %i.fi = xor i64 %i.eh, -1
  %i.fj = and i64 %i.ds, %i.fi
  %i.fk = xor i64 %i.fj, %i.du                    ; 2 uses
  %i.fl = xor i64 %i.ds, -1
  %i.fm = and i64 %i.ei, %i.fl
  %i.fn = xor i64 %i.eh, %i.fm                    ; 2 uses
  store i64 %i.fb, ptr %i.c, align 8, !tbaa !15
  store i64 %i.fe, ptr %i.h, align 8, !tbaa !15
  store i64 %i.fh, ptr %i.m, align 8, !tbaa !15
  store i64 %i.fk, ptr %i.r, align 8, !tbaa !15
  store i64 %i.fn, ptr %i.w, align 8, !tbaa !15
  %i.fo = xor i64 %i.do, -1
  %i.fp = and i64 %i.ec, %i.fo
  %i.fq = xor i64 %i.fp, %i.dm                    ; 2 uses
  %i.fr = xor i64 %i.ec, -1
  %i.fs = and i64 %i.eb, %i.fr
  %i.ft = xor i64 %i.fs, %i.do                    ; 2 uses
  %i.fu = xor i64 %i.eb, -1
  %i.fv = and i64 %i.ef, %i.fu
  %i.fw = xor i64 %i.fv, %i.ec                    ; 2 uses
  %i.fx = xor i64 %i.ef, -1
  %i.fy = and i64 %i.dm, %i.fx
  %i.fz = xor i64 %i.fy, %i.eb                    ; 2 uses
  %i.ga = xor i64 %i.dm, -1
  %i.gb = and i64 %i.do, %i.ga
  %i.gc = xor i64 %i.ef, %i.gb                    ; 2 uses
  store i64 %i.fq, ptr %i.d, align 8, !tbaa !15
  store i64 %i.ft, ptr %i.i, align 8, !tbaa !15
  store i64 %i.fw, ptr %i.n, align 8, !tbaa !15
  store i64 %i.fz, ptr %i.s, align 8, !tbaa !15
  store i64 %i.gc, ptr %i.x, align 8, !tbaa !15
  %i.gd = xor i64 %i.dt, -1
  %i.ge = and i64 %i.dp, %i.gd
  %i.gf = xor i64 %i.ge, %i.dy                    ; 2 uses
  %i.gg = xor i64 %i.dp, -1
  %i.gh = and i64 %i.dq, %i.gg
  %i.gi = xor i64 %i.gh, %i.dt                    ; 2 uses
  %i.gj = xor i64 %i.dq, -1
  %i.gk = and i64 %i.ea, %i.gj
  %i.gl = xor i64 %i.gk, %i.dp                    ; 2 uses
  %i.gm = xor i64 %i.ea, -1
  %i.gn = and i64 %i.dy, %i.gm
  %i.go = xor i64 %i.gn, %i.dq                    ; 2 uses
  %i.gp = xor i64 %i.dy, -1
  %i.gq = and i64 %i.dt, %i.gp
  %i.gr = xor i64 %i.ea, %i.gq                    ; 2 uses
  store i64 %i.gf, ptr %i.e, align 8, !tbaa !15
  store i64 %i.gi, ptr %i.j, align 8, !tbaa !15
  store i64 %i.gl, ptr %i.o, align 8, !tbaa !15
  store i64 %i.go, ptr %i.t, align 8, !tbaa !15
  store i64 %i.gr, ptr %i.y, align 8, !tbaa !15
  %i.gs = xor i64 %i.dv, -1
  %i.gt = and i64 %i.eg, %i.gs
  %i.gu = xor i64 %i.gt, %i.ee                    ; 2 uses
  %i.gv = xor i64 %i.eg, -1
  %i.gw = and i64 %i.dz, %i.gv
  %i.gx = xor i64 %i.gw, %i.dv                    ; 2 uses
  %i.gy = xor i64 %i.dz, -1
  %i.gz = and i64 %i.dw, %i.gy
  %i.ha = xor i64 %i.gz, %i.eg                    ; 2 uses
  %i.hb = xor i64 %i.dw, -1
  %i.hc = and i64 %i.ee, %i.hb
  %i.hd = xor i64 %i.hc, %i.dz                    ; 2 uses
  %i.he = xor i64 %i.ee, -1
  %i.hf = and i64 %i.dv, %i.he
  %i.hg = xor i64 %i.dw, %i.hf                    ; 2 uses
  store i64 %i.gu, ptr %i.f, align 8, !tbaa !15
  store i64 %i.gx, ptr %i.k, align 8, !tbaa !15
  store i64 %i.ha, ptr %i.p, align 8, !tbaa !15
  store i64 %i.hd, ptr %i.u, align 8, !tbaa !15
  store i64 %i.hg, ptr %i.z, align 8, !tbaa !15
  %i.hh = getelementptr [8 x i8], ptr @_Py_LibHacl_Hacl_Hash_SHA3_keccak_rndc, i64 %indvars.iv
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !15
  %i.hj = xor i64 %i.hi, %i.em                    ; 2 uses
  store i64 %i.hj, ptr %0, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !40
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = distinct !{!17, !14}
!18 = !{!8, !8, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 long", !12, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!12, !12, i64 0}
!24 = !{i64 7, i64 8, !19, i64 15, i64 8, !21, i64 23, i64 8, !15}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
end_hunk_1
