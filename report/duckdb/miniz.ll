inline.NumInlined: 93
inline.NumDeleted: 15
begin_hunk_0_@_ZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmji:bb.a

bb.m:                                             ; preds = %bb.a, %_ZN12duckdb_miniz8mz_crc32EmPKhm.exit100, %bb.k, %bb.h, %bb.c
  %.052 = phi ptr [ null, %bb.c ], [ null, %bb.h ], [ %i.jn, %_ZN12duckdb_miniz8mz_crc32EmPKhm.exit100 ], [ null, %bb.k ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %.052
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN12duckdb_miniz39tdefl_write_image_to_png_file_in_memoryEPKviiiPm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef captures(none) initializes((0, 8)) %4) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noundef ptr @_ZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef 6, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @_ZN12duckdb_miniz22tdefl_compressor_allocEv() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(319352) ptr @malloc(i64 noundef 319352) #27
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN12duckdb_miniz21tdefl_compressor_freeEPNS_16tdefl_compressorE(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  tail call void @free(ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZN12duckdb_miniz28tinfl_decompress_mem_to_heapEPKvmPmi(ptr noundef %0, i64 noundef %1, ptr noundef captures(none) initializes((0, 8)) %2, i32 noundef %3) local_unnamed_addr #15 {
bb.a:
  %4 = alloca %"struct.duckdb_miniz::tinfl_decompressor_tag", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 0, ptr %2, align 8, !tbaa !50
  store i32 0, ptr %4, align 8, !tbaa !87
  %i.c = and i32 %3, -7
  %i.d = or disjoint i32 %i.c, 4                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.e = phi i64 [ 0, %bb.a ], [ %i.r, %bb.f ]    ; 2 uses
  %.036 = phi ptr [ null, %bb.a ], [ %i.u, %bb.f ] ; 6 uses
  %.034 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.f ]   ; 3 uses
  %.032 = phi i64 [ 0, %bb.a ], [ %spec.store.select, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.f = sub i64 %1, %.034
  store i64 %i.f, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.g = sub i64 %.032, %i.e
  store i64 %i.g, ptr %i.b, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.034 ; 2 uses
  %.not = icmp eq ptr %.036, null
  br i1 %.not, label %.split38, label %.split

.split38:                                         ; preds = %bb.b
  %i.i = call noundef i32 @_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j(ptr noundef nonnull %4, ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b, i32 noundef %i.d)
  br label %bb.c

.split:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.036, i64 %i.e
  %i.k = call noundef i32 @_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j(ptr noundef nonnull %4, ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %.036, ptr noundef nonnull %i.j, ptr noundef nonnull %i.b, i32 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %.split38, %.split
  %phi.call = phi i32 [ %i.k, %.split ], [ %i.i, %.split38 ] ; 3 uses
  %i.l = icmp slt i32 %phi.call, 0
  %i.m = icmp eq i32 %phi.call, 1
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !50
  %i.o = add i64 %i.n, %.034
  %i.p = load i64, ptr %i.b, align 8, !tbaa !50
  %i.q = load i64, ptr %2, align 8, !tbaa !50
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  store i64 %i.r, ptr %2, align 8, !tbaa !50
  %i.s = icmp eq i32 %phi.call, 0
  br i1 %i.s, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = shl i64 %.032, 1
  %spec.store.select = call i64 @llvm.umax.i64(i64 %i.t, i64 128) ; 2 uses
  %i.u = call ptr @realloc(ptr noundef %.036, i64 noundef %spec.store.select) #28 ; 2 uses
  %.not40 = icmp eq ptr %i.u, null
  br i1 %.not40, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e, %bb.c
  call void @free(ptr noundef %.036) #26
  store i64 0, ptr %2, align 8, !tbaa !50
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.b

.loopexit:                                        ; preds = %bb.d, %.thread
  %.2 = phi ptr [ null, %.thread ], [ %.036, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN12duckdb_miniz27tinfl_decompress_mem_to_memEPvmPKvmi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %5 = alloca %"struct.duckdb_miniz::tinfl_decompressor_tag", align 8 ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !50
  store i64 %3, ptr %i.b, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 0, ptr %5, align 8, !tbaa !87
  %i.c = and i32 %4, -7
  %i.d = or disjoint i32 %i.c, 4
  %i.e = call noundef i32 @_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.d)
  %.not = icmp eq i32 %i.e, 0
  %i.f = load i64, ptr %i.a, align 8
  %i.g = select i1 %.not, i64 %i.f, i64 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret i64 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN12duckdb_miniz32tinfl_decompress_mem_to_callbackEPKvPmPFiS1_iPvES3_i(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %5 = alloca %"struct.duckdb_miniz::tinfl_decompressor_tag", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.c = tail call noalias dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #27 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %5, align 8, !tbaa !87
  %i.d = and i32 %4, -7
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.025 = phi i64 [ 0, %bb.b ], [ %i.l, %bb.g ]   ; 3 uses
  %.024 = phi i64 [ 0, %bb.b ], [ %i.s, %bb.g ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.e = load i64, ptr %1, align 8, !tbaa !50
  %i.f = sub i64 %i.e, %.025
  store i64 %i.f, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.g = sub nuw nsw i64 32768, %.024
  store i64 %i.g, ptr %i.b, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.025
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.024 ; 2 uses
  %i.j = call noundef i32 @_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j(ptr noundef nonnull %5, ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, i32 noundef %i.d) ; 2 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !50
  %i.l = add i64 %i.k, %.025                      ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  %.not31 = icmp eq i64 %i.m, 0
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc i64 %i.m to i32
  %i.o = call noundef i32 %2(ptr noundef nonnull %i.i, i32 noundef %i.n, ptr noundef %3)
  %.not32 = icmp eq i32 %i.o, 0
  br i1 %.not32, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not33 = icmp eq i32 %i.j, 2
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.j, 0
  %i.q = zext i1 %i.p to i32
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.r = add i64 %i.m, %.024
  %i.s = and i64 %i.r, 32767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.c

.loopexit:                                        ; preds = %bb.d, %bb.f
  %.127.ph = phi i32 [ %i.q, %bb.f ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @free(ptr noundef nonnull %i.c) #26
  store i64 %i.l, ptr %1, align 8, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.loopexit
  %.0 = phi i32 [ %.127.ph, %.loopexit ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @_ZN12duckdb_miniz24tinfl_decompressor_allocEv() local_unnamed_addr #16 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(11000) ptr @malloc(i64 noundef 11000) #27 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN12duckdb_miniz23tinfl_decompressor_freeEPNS_22tinfl_decompressor_tagE(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  tail call void @free(ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN12duckdb_miniz18mz_zip_zero_structEPNS_14mz_zip_archiveE(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, i8 0, i64 112, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN12duckdb_miniz17mz_zip_reader_endEPNS_14mz_zip_archiveE(ptr noundef captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZN12duckdb_minizL26mz_zip_reader_end_internalEPNS_14mz_zip_archiveEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 6 uses
  %.not23.i = icmp eq ptr %i.b, null
  br i1 %.not23.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !210
  %.not24.i = icmp eq ptr %i.d, null
  br i1 %.not24.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211  ; 2 uses
  %.not25.i = icmp eq ptr %i.f, null
  br i1 %.not25.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !212
  %.not26.i = icmp eq i32 %i.h, 1
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.i, align 4, !tbaa !213
  br label %_ZN12duckdb_minizL26mz_zip_reader_end_internalEPNS_14mz_zip_archiveEi.exit

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.a, align 8, !tbaa !204
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !214
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !215
  tail call void %i.f(ptr noundef %i.k, ptr noundef %i.l), !inline_history !217
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !211
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !214
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !215
  tail call void %i.n(ptr noundef %i.o, ptr noundef %i.p), !inline_history !217
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !211
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !214
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !215
  tail call void %i.r(ptr noundef %i.s, ptr noundef %i.t), !inline_history !217
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !211
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !214
  tail call void %i.u(ptr noundef %i.v, ptr noundef nonnull %i.b), !inline_history !217
  store i32 0, ptr %i.g, align 4, !tbaa !212
  br label %_ZN12duckdb_minizL26mz_zip_reader_end_internalEPNS_14mz_zip_archiveEi.exit

_ZN12duckdb_minizL26mz_zip_reader_end_internalEPNS_14mz_zip_archiveEi.exit: ; preds = %bb.a, %bb.f, %bb.g
  %.0.i = phi i32 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN12duckdb_miniz18mz_zip_reader_initEPNS_14mz_zip_archiveEmj(ptr noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit, label %bb.c

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.c, align 4, !tbaa !213
  br label %.split

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !204
  %.not29.i = icmp eq ptr %i.e, null
  br i1 %.not29.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !212
  %.not30.i = icmp eq i32 %i.g, 0
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.h, align 4, !tbaa !213
  br label %.split

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !210  ; 2 uses
  %.not31.i = icmp eq ptr %i.j, null
  br i1 %.not31.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @_ZN12duckdb_miniz20miniz_def_alloc_funcEPvmm, ptr %i.i, align 8, !tbaa !210
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = phi ptr [ @_ZN12duckdb_miniz20miniz_def_alloc_funcEPvmm, %bb.g ], [ %i.j, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !211
  %.not32.i = icmp eq ptr %i.m, null
  br i1 %.not32.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @_ZN12duckdb_miniz19miniz_def_free_funcEPvS0_, ptr %i.l, align 8, !tbaa !211
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !219
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr @_ZN12duckdb_miniz22miniz_def_realloc_funcEPvS0_mm, ptr %i.n, align 8, !tbaa !219
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !213
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !214
  %i.s = tail call noundef ptr %i.k(ptr noundef %i.r, i64 noundef 1, i64 noundef 152), !inline_history !220 ; 3 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !204
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit.i, label %bb.m

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit.i: ; preds = %bb.l
  store i32 16, ptr %i.p, align 4, !tbaa !213
  br label %.split

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.s, i8 0, i64 152, i1 false)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !204  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 1, ptr %i.v, align 8, !tbaa !221
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 4, ptr %i.w, align 8, !tbaa !224
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  store i32 4, ptr %i.x, align 8, !tbaa !225
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i32 %2, ptr %i.y, align 8, !tbaa !226
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 100
  store i32 0, ptr %i.z, align 4, !tbaa !227
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  store i32 0, ptr %i.aa, align 8, !tbaa !228
  store i32 1, ptr %i.f, align 4, !tbaa !212
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.ab, align 8, !tbaa !229
  store i64 %1, ptr %0, align 8, !tbaa !230
  %i.ac = tail call fastcc noundef i32 @_ZN12duckdb_minizL30mz_zip_reader_read_central_dirEPNS_14mz_zip_archiveEj(ptr noundef nonnull %0, i32 noundef %2)
  %.not15 = icmp eq i32 %i.ac, 0
end_hunk_0
