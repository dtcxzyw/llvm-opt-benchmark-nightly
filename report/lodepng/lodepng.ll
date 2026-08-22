Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_Z20lodepng_chunk_appendPPhPmPKh:bb.a

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %index36
  %wide.load37 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 %index36
  store <4 x i8> %wide.load37, ptr %i.be, align 1, !tbaa !20
  %index.next38 = add nuw i64 %index36, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next38, %n.vec35
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !187

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.bc, 0
  br i1 %cmp.n39, label %_ZL29lodepng_chunk_type_name_validPKh.exit.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec35, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !20
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.bj = and i64 %indvars.iv.next, 4294967295
  %.not23 = icmp eq i64 %i.ai, %i.bj
  br i1 %.not23, label %_ZL29lodepng_chunk_type_name_validPKh.exit.thread, label %vec.epilog.scalar.ph, !llvm.loop !188

_ZL29lodepng_chunk_type_name_validPKh.exit.thread: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.c, %bb.a, %bb.f, %bb.e, %bb.d, %_ZL29lodepng_chunk_type_name_validPKh.exit
  %.016 = phi i32 [ 121, %_ZL29lodepng_chunk_type_name_validPKh.exit ], [ 122, %bb.d ], [ 121, %bb.b ], [ 83, %bb.f ], [ 77, %bb.e ], [ 121, %bb.c ], [ 121, %bb.a ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %vec.epilog.scalar.ph ]
  ret i32 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext range(i8 0, 2) i8 @_ZL29lodepng_chunk_type_name_validPKh(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20
  %i.c = and i8 %i.b, -33
  %i.d = add i8 %i.c, -65
  %or.cond16 = icmp ult i8 %i.d, 26
  br i1 %or.cond16, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20
  %i.g = and i8 %i.f, -33
  %i.h = add i8 %i.g, -65
  %or.cond16.1 = icmp ult i8 %i.h, 26
  br i1 %or.cond16.1, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20
  %i.k = and i8 %i.j, -33
  %i.l = add i8 %i.k, -65
  %or.cond16.2 = icmp ult i8 %i.l, 26
  br i1 %or.cond16.2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20
  %i.o = and i8 %i.n, -33
  %i.p = add i8 %i.o, -65
  %or.cond16.3 = icmp ult i8 %i.p, 26
  %spec.select = zext i1 %or.cond16.3 to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.2 = phi i8 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select, %bb.d ]
  ret i8 %.2
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 84) i32 @_Z20lodepng_chunk_createPPhPmmPKcPKh(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !8      ; 5 uses
  %i.c = add i64 %i.b, %2                         ; 3 uses
  %.not.i.i = icmp ult i64 %i.c, %i.b
  br i1 %.not.i.i, label %_ZL21lodepng_chunk_createvP8ucvectormPKcPKh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i64 %i.c, 12                     ; 4 uses
  %i.e = icmp ult i64 %i.c, -12
  br i1 %i.e, label %bb.c, label %_ZL21lodepng_chunk_createvP8ucvectormPKcPKh.exit

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.b, 1
  %i.g = add i64 %i.d, %i.f
  %i.h = tail call noalias noundef ptr @realloc(ptr noundef %i.a, i64 noundef %i.g) #32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZL21lodepng_chunk_createvP8ucvectormPKcPKh.exit, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  %i.j = sub i64 0, %2
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -12 ; 2 uses
  %i.m = lshr i64 %2, 24
  %i.n = trunc i64 %i.m to i8
  store i8 %i.n, ptr %i.l, align 1, !tbaa !20
  %i.o = lshr i64 %2, 16
  %i.p = trunc i64 %i.o to i8
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 -11
  store i8 %i.p, ptr %i.q, align 1, !tbaa !20
  %i.r = lshr i64 %2, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 -10
  store i8 %i.s, ptr %i.t, align 1, !tbaa !20
  %i.u = trunc i64 %2 to i8
  %i.v = getelementptr inbounds i8, ptr %i.k, i64 -9
  store i8 %i.u, ptr %i.v, align 1, !tbaa !20
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.x = load i32, ptr %3, align 1, !tbaa !20, !alias.scope !189
  store i32 %i.x, ptr %i.w, align 1, !tbaa !20, !alias.scope !189
  %.not.i9.i = icmp eq i64 %2, 0
  br i1 %.not.i9.i, label %_ZL14lodepng_memcpyPvPKvm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.thread.i.i.i.i
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr readonly align 1 %4, i64 %2, i1 false), !tbaa !20, !alias.scope !193
  br label %_ZL14lodepng_memcpyPvPKvm.exit.i

_ZL14lodepng_memcpyPvPKvm.exit.i:                 ; preds = %.lr.ph.preheader.i.i, %.thread.i.i.i.i
  tail call void @_Z26lodepng_chunk_generate_crcPh(ptr noundef nonnull %i.l)
  br label %_ZL21lodepng_chunk_createvP8ucvectormPKcPKh.exit

_ZL21lodepng_chunk_createvP8ucvectormPKcPKh.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZL14lodepng_memcpyPvPKvm.exit.i
  %.sroa.6.0 = phi i64 [ %i.b, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %_ZL14lodepng_memcpyPvPKvm.exit.i ], [ %i.b, %bb.b ]
  %.sroa.0.1 = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %i.h, %_ZL14lodepng_memcpyPvPKvm.exit.i ], [ %i.a, %bb.b ]
  %.1.i = phi i32 [ 77, %bb.a ], [ 83, %bb.c ], [ 0, %_ZL14lodepng_memcpyPvPKvm.exit.i ], [ 77, %bb.b ]
  store ptr %.sroa.0.1, ptr %0, align 8, !tbaa !10
  store i64 %.sroa.6.0, ptr %1, align 8, !tbaa !8
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z23lodepng_color_mode_initP16LodePNGColorMode(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 6, ptr %0, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 8, ptr %i.b, align 4, !tbaa !200
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_Z26lodepng_color_mode_cleanupP16LodePNGColorMode(ptr nofree noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_Z21lodepng_palette_clearP16LodePNGColorMode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %_Z21lodepng_palette_clearP16LodePNGColorMode.exit

_Z21lodepng_palette_clearP16LodePNGColorMode.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_Z21lodepng_palette_clearP16LodePNGColorMode(ptr nofree noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 84) i32 @_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_(ptr nofree noundef captures(none) initializes((0, 8), (16, 40)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit

_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %0, ptr noundef nonnull readonly align 1 dereferenceable(40) %1, i64 40, i1 false), !tbaa !20, !alias.scope !202
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZL14lodepng_memcpyPvPKvm.exit, label %bb.c

bb.c:                                             ; preds = %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit
  %i.e = tail call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #30 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !201
  %.not10 = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !206  ; 2 uses
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not11 = icmp eq i64 %i.g, 0
  %spec.select = select i1 %.not11, i32 0, i32 83
  br label %_ZL14lodepng_memcpyPvPKvm.exit

bb.e:                                             ; preds = %bb.c
  %i.h = shl i64 %i.g, 2                          ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !201
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr readonly align 1 %i.i, i64 %i.h, i1 false), !tbaa !20, !alias.scope !207
  br label %_ZL14lodepng_memcpyPvPKvm.exit

_ZL14lodepng_memcpyPvPKvm.exit:                   ; preds = %bb.d, %.lr.ph.preheader.i, %bb.e, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit
  %.0 = phi i32 [ %spec.select, %bb.d ], [ 0, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit ], [ 0, %bb.e ], [ 0, %.lr.ph.preheader.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z23lodepng_color_mode_make16LodePNGColorTypej(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.LodePNGColorMode) align 8 captures(none) initializes((0, 40)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i32 %1, ptr %0, align 8, !tbaa !197
  store i32 %2, ptr %i.b, align 4, !tbaa !200
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef range(i32 0, 109) i32 @_Z19lodepng_palette_addP16LodePNGColorModehhhh(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #30 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !201
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %.critedge.i
  %.014.i = phi i64 [ %i.ad, %.critedge.i ], [ 0, %bb.b ] ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.f = shl nuw nsw i64 %.014.i, 2               ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.g, align 1, !tbaa !20
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !20
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 0, ptr %i.m, align 1, !tbaa !20
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 -1, ptr %i.p, align 1, !tbaa !20
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.r = shl i64 %.014.i, 2
  %i.s = or disjoint i64 %i.r, 4                  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !20
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !20
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 0, ptr %i.z, align 1, !tbaa !20
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  store i8 -1, ptr %i.ac, align 1, !tbaa !20
  %i.ad = add nuw nsw i64 %.014.i, 2              ; 2 uses
  %.not13.i.1 = icmp eq i64 %i.ad, 256
  br i1 %.not13.i.1, label %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit, label %.critedge.i, !llvm.loop !211

_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit: ; preds = %.critedge.i
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not18 = icmp eq ptr %.pr, null
  br i1 %.not18, label %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit, %bb.a
  %i.ae = phi ptr [ %.pr, %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit ], [ %i.b, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !206 ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 255
  br i1 %i.ah, label %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %i.ag, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai
  store i8 %1, ptr %i.aj, align 1, !tbaa !20
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.al = load i64, ptr %i.af, align 8, !tbaa !206
  %i.am = shl i64 %i.al, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %2, ptr %i.ao, align 1, !tbaa !20
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.aq = load i64, ptr %i.af, align 8, !tbaa !206
  %i.ar = shl i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 %3, ptr %i.at, align 1, !tbaa !20
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.av = load i64, ptr %i.af, align 8, !tbaa !206
  %i.aw = shl i64 %i.av, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 %4, ptr %i.ay, align 1, !tbaa !20
  %i.az = load i64, ptr %i.af, align 8, !tbaa !206
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.af, align 8, !tbaa !206
  br label %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.thread

_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.thread: ; preds = %bb.b, %bb.c, %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit, %bb.d
  %.0 = phi i32 [ 83, %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit ], [ 0, %bb.d ], [ 108, %bb.c ], [ 83, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z15lodepng_get_bppPK16LodePNGColorMode(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !197    ; 2 uses
  %i.b = icmp ult i32 %i.a, 7
  br i1 %i.b, label %switch.lookup, label %_ZL19lodepng_get_bpp_lct16LodePNGColorTypej.exit

switch.lookup:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !200
  %i.e = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.f = mul i32 %i.d, %switch.ext
  br label %_ZL19lodepng_get_bpp_lct16LodePNGColorTypej.exit

_ZL19lodepng_get_bpp_lct16LodePNGColorTypej.exit: ; preds = %bb.a, %switch.lookup
  %.0.i.i = phi i32 [ %i.f, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 5) i32 @_Z20lodepng_get_channelsPK16LodePNGColorMode(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !197    ; 2 uses
  %i.b = icmp ult i32 %i.a, 7
  br i1 %i.b, label %switch.lookup, label %_ZL19getNumColorChannels16LodePNGColorType.exit

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL19getNumColorChannels16LodePNGColorType.exit

_ZL19getNumColorChannels16LodePNGColorType.exit:  ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_Z25lodepng_is_greyscale_typePK16LodePNGColorMode(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !197
  %i.b = and i32 %i.a, -5
  %narrow = icmp eq i32 %i.b, 0
  %i.c = zext i1 %narrow to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_Z21lodepng_is_alpha_typePK16LodePNGColorMode(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !197
  %i.b = lshr i32 %i.a, 2
  %.lobit = and i32 %i.b, 1
end_hunk_0
begin_hunk_1_@_Z17lodepng_clear_iccP11LodePNGInfo:bb.a
  tail call void @free(ptr noundef %i.d) #31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 84) i32 @_Z16lodepng_set_exifP11LodePNGInfoPKhj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !263
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !264
  tail call void @free(ptr noundef %i.d) #31
  store i32 0, ptr %i.a, align 8, !tbaa !263
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.e, align 8, !tbaa !265
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = zext i32 %2 to i64                       ; 2 uses
  %i.g = tail call noalias noundef ptr @malloc(i64 noundef %i.f) #30 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.g, ptr %i.h, align 8, !tbaa !264
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZL14lodepng_memcpyPvPKvm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr readonly align 1 %1, i64 %i.f, i1 false), !tbaa !20, !alias.scope !266
  br label %_ZL14lodepng_memcpyPvPKvm.exit

_ZL14lodepng_memcpyPvPKvm.exit:                   ; preds = %bb.d, %.lr.ph.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %2, ptr %i.i, align 8, !tbaa !265
  store i32 1, ptr %i.a, align 8, !tbaa !263
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZL14lodepng_memcpyPvPKvm.exit
  %.0 = phi i32 [ 0, %_ZL14lodepng_memcpyPvPKvm.exit ], [ 83, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_Z18lodepng_clear_exifP11LodePNGInfo(ptr nofree noundef captures(none) initializes((136, 140), (152, 156)) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264
  tail call void @free(ptr noundef %i.b) #31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.c, align 8, !tbaa !263
  store ptr null, ptr %i.a, align 8, !tbaa !264
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.d, align 8, !tbaa !265
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z17lodepng_info_initP11LodePNGInfo(ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 140), (144, 160), (184, 188), (200, 204), (208, 212), (244, 248), (252, 372), (376, 424)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i32 6, ptr %i.a, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 8, ptr %i.c, align 4, !tbaa !200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !270
  store i32 0, ptr %0, align 8, !tbaa !271
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.j, align 8, !tbaa !273
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.k, align 8, !tbaa !274
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.l, align 8, !tbaa !275
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 0, ptr %i.m, align 4, !tbaa !276
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.g, i8 0, i64 84, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.h, i8 0, i64 120, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define void @_Z20lodepng_info_cleanupP11LodePNGInfo(ptr nofree noundef captures(none) initializes((32, 40)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit

_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !218
  %.not8.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i, label %_ZL19LodePNGText_cleanupP11LodePNGInfo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.09.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !214
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.09.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.i) #31
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !219
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.09.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.l) #31
  %i.m = add i64 %.09.i, 1                        ; 2 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !218
  %.not.i = icmp eq i64 %i.m, %i.n
  br i1 %.not.i, label %_ZL19LodePNGText_cleanupP11LodePNGInfo.exit, label %bb.c, !llvm.loop !228

_ZL19LodePNGText_cleanupP11LodePNGInfo.exit:      ; preds = %bb.c, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !214
  tail call void @free(ptr noundef %i.p) #31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !219
  tail call void @free(ptr noundef %i.r) #31
  tail call fastcc void @_ZL20LodePNGIText_cleanupP11LodePNGInfo(ptr noundef nonnull %0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !252
  tail call void @free(ptr noundef %i.t) #31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !253
  tail call void @free(ptr noundef %i.v) #31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !264
  tail call void @free(ptr noundef %i.y) #31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.z, align 8, !tbaa !263
  store ptr null, ptr %i.x, align 8, !tbaa !264
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.aa, align 8, !tbaa !265
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.ac) #31
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.ae) #31
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.ag) #31
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 124) i32 @_Z17lodepng_info_copyP11LodePNGInfoPKS_(ptr nofree noundef captures(none) initializes((32, 40)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i:
  tail call void @_Z20lodepng_info_cleanupP11LodePNGInfo(ptr noundef %0)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(424) %0, ptr noundef nonnull readonly align 1 dereferenceable(424) %1, i64 376, i1 false), !tbaa !20, !alias.scope !277
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i32 6, ptr %i.a, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 8, ptr %i.c, align 4, !tbaa !200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !264
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !265
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i8 0, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.e, i8 0, i64 68, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(40) %i.l, i64 40, i1 false), !tbaa !20, !alias.scope !281
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !201
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread, label %bb.a

bb.a:                                             ; preds = %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i
  %i.o = tail call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #30 ; 3 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !201
  %.not10.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !206  ; 2 uses
  br i1 %.not10.i, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl i64 %i.q, 2                          ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !201
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr readonly align 1 %i.s, i64 %i.r, i1 false), !tbaa !20, !alias.scope !285
  br label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread

_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit: ; preds = %bb.a
  %.not11.i.not = icmp eq i64 %i.q, 0
  br i1 %.not11.i.not, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread, label %_Z16lodepng_set_exifP11LodePNGInfoPKhj.exit

_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread: ; preds = %.lr.ph.preheader.i.i, %bb.b, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i, %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.v = load i64, ptr %i.u, align 8, !tbaa !218
  %.not18.i = icmp eq i64 %i.v, 0
  br i1 %.not18.i, label %.loopexit86, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.x = add i64 %.01419.i, 1                     ; 2 uses
  %i.y = load i64, ptr %i.u, align 8, !tbaa !218
  %.not.i62 = icmp eq i64 %i.x, %i.y
  br i1 %.not.i62, label %.loopexit86, label %bb.d, !llvm.loop !289

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.01419.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %bb.c ] ; 3 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !214
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.01419.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !219
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.01419.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10 ; 2 uses
  %strlen.i.i.i = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ae)
  %i.af = tail call fastcc noundef range(i32 0, 84) i32 @_ZL22lodepng_add_text_sizedP11LodePNGInfoPKcS2_m(ptr noundef nonnull %0, ptr noundef readonly %i.ab, ptr noundef nonnull readonly %i.ae, i64 noundef %strlen.i.i.i) ; 2 uses
  %.not17.i = icmp eq i32 %i.af, 0
  br i1 %.not17.i, label %bb.c, label %_Z16lodepng_set_exifP11LodePNGInfoPKhj.exit

.loopexit86:                                      ; preds = %bb.c, %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !229
  %.not24.i = icmp eq i64 %i.ai, 0
  br i1 %.not24.i, label %.loopexit, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %.loopexit86
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.am = add i64 %.02025.i, 1                    ; 2 uses
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !229
  %.not.i66 = icmp eq i64 %i.am, %i.an
  br i1 %.not.i66, label %.loopexit, label %bb.f, !llvm.loop !290

bb.f:                                             ; preds = %bb.e, %.lr.ph.i63
  %.02025.i = phi i64 [ 0, %.lr.ph.i63 ], [ %i.am, %bb.e ] ; 5 uses
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !230
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.02025.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !10
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !231
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.02025.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !232
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.02025.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !10
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !233
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.02025.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !10 ; 2 uses
  %strlen.i.i.i64 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.az)
  %i.ba = tail call fastcc noundef range(i32 0, 84) i32 @_ZL23lodepng_add_itext_sizedP11LodePNGInfoPKcS2_S2_S2_m(ptr noundef nonnull %0, ptr noundef readonly %i.aq, ptr noundef readonly %i.at, ptr noundef readonly %i.aw, ptr noundef nonnull readonly %i.az, i64 noundef %strlen.i.i.i64) ; 2 uses
  %.not23.i = icmp eq i32 %i.ba, 0
  br i1 %.not23.i, label %bb.e, label %_Z16lodepng_set_exifP11LodePNGInfoPKhj.exit

.loopexit:                                        ; preds = %bb.e, %.loopexit86
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !251
  %.not57 = icmp eq i32 %i.bc, 0
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !252
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !253
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !262
  %i.bj = tail call noundef i32 @_Z15lodepng_set_iccP11LodePNGInfoPKcPKhj(ptr noundef nonnull %0, ptr noundef %i.be, ptr noundef %i.bg, i32 noundef %i.bi) ; 2 uses
  %.not58.not = icmp eq i32 %i.bj, 0
  br i1 %.not58.not, label %bb.h, label %_Z16lodepng_set_exifP11LodePNGInfoPKhj.exit

bb.h:                                             ; preds = %bb.g, %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !263
  %.not59 = icmp eq i32 %i.bl, 0
  br i1 %.not59, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !264
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !265 ; 3 uses
  %i.bq = load i32, ptr %i.h, align 8, !tbaa !263
  %.not.i67 = icmp eq i32 %i.bq, 0
  br i1 %.not.i67, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !264
  tail call void @free(ptr noundef %i.br) #31
  store i32 0, ptr %i.h, align 8, !tbaa !263
  store i32 0, ptr %i.j, align 8, !tbaa !265
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bs = zext i32 %i.bp to i64                   ; 2 uses
  %i.bt = tail call noalias noundef ptr @malloc(i64 noundef %i.bs) #30 ; 3 uses
  store ptr %i.bt, ptr %i.i, align 8, !tbaa !264
  %.not12.i = icmp eq ptr %i.bt, null
  br i1 %.not12.i, label %_Z16lodepng_set_exifP11LodePNGInfoPKhj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i68 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i68, label %_Z16lodepng_set_exifP11LodePNGInfoPKhj.exit.thread, label %.lr.ph.preheader.i.i69

.lr.ph.preheader.i.i69:                           ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr readonly align 1 %i.bn, i64 %i.bs, i1 false), !tbaa !20, !alias.scope !291
  br label %_Z16lodepng_set_exifP11LodePNGInfoPKhj.exit.thread

_Z16lodepng_set_exifP11LodePNGInfoPKhj.exit.thread: ; preds = %bb.l, %.lr.ph.preheader.i.i69
  store i32 %i.bp, ptr %i.j, align 8, !tbaa !265
  store i32 1, ptr %i.h, align 8, !tbaa !263
  br label %bb.m

bb.m:                                             ; preds = %_Z16lodepng_set_exifP11LodePNGInfoPKhj.exit.thread, %bb.h
  %i.bu = tail call fastcc noundef i32 @_ZL25LodePNGUnknownChunks_copyP11LodePNGInfoPKS_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %_Z16lodepng_set_exifP11LodePNGInfoPKhj.exit

_Z16lodepng_set_exifP11LodePNGInfoPKhj.exit:      ; preds = %bb.d, %bb.f, %bb.k, %bb.m, %bb.g, %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit
  %.8 = phi i32 [ 83, %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit ], [ %i.bu, %bb.m ], [ 83, %bb.k ], [ %i.bj, %bb.g ], [ %i.ba, %bb.f ], [ %i.af, %bb.d ]
  ret i32 %.8
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 84) i32 @_ZL25LodePNGUnknownChunks_copyP11LodePNGInfoPKS_(ptr nofree noundef captures(none) initializes((400, 408)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.b) #31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.d) #31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.f) #31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.j = load i64, ptr %i.g, align 8, !tbaa !8    ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !8
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #30 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !10
  %.not29 = icmp ne ptr %i.k, null
  %.not30 = icmp eq i64 %i.j, 0                   ; 2 uses
  %or.cond = or i1 %.not29, %.not30
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02631 = phi i64 [ %i.q, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.02631
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.02631
  store i8 %i.n, ptr %i.p, align 1, !tbaa !20
end_hunk_1
begin_hunk_2_@_Z14lodepng_decodePPhPjS1_P12LodePNGStatePKhm:bb.a
  %i.aun = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.aum ; 2 uses
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !20 ; 2 uses
  br i1 %i.aul, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aup = trunc i64 %i.aud to i8
  %i.auq = and i8 %i.aup, 7
  %i.aur = lshr exact i8 -128, %i.auq
  %i.aus = or i8 %i.aur, %i.auo
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.6

bb.ef:                                            ; preds = %bb.ed
  %i.aut = trunc i64 %i.aud to i16
  %i.auu = and i16 %i.aut, 7
  %i.auv = ashr i16 -129, %i.auu
  %i.auw = trunc i16 %i.auv to i8
  %i.aux = and i8 %i.auo, %i.auw
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.6

_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.6:  ; preds = %bb.ef, %bb.ee
  %.sink.i.i93.i.i.6 = phi i8 [ %i.aus, %bb.ee ], [ %i.aux, %bb.ef ]
  store i8 %.sink.i.i93.i.i.6, ptr %i.aun, align 1, !tbaa !20
  br label %bb.eg

bb.eg:                                            ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.6, %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.5, %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.4, %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.3, %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.2, %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.1, %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond110.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond110.not.i.i.i, label %._crit_edge.i95.i.i, label %bb.dl, !llvm.loop !578

._crit_edge.i95.i.i:                              ; preds = %bb.eg
  %indvars.iv.next112.i.i.i = add nuw nsw i64 %indvars.iv111.i.i.i, 1 ; 2 uses
  %exitcond115.not.i.i.i = icmp eq i64 %indvars.iv.next112.i.i.i, %wide.trip.count114.i.i.i
  br i1 %exitcond115.not.i.i.i, label %._crit_edge89.split.i.i.i, label %.preheader81.i.i.i, !llvm.loop !579

._crit_edge89.split.i.i.i:                        ; preds = %._crit_edge.i95.i.i, %bb.dk
  %indvars.iv.next117.i.i.i = add nuw nsw i64 %indvars.iv116.i.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next117.i.i.i, 7
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.dk, !llvm.loop !580

.loopexit.i.i:                                    ; preds = %._crit_edge89.split.i.i.i, %._crit_edge96.us.6.i.i.i, %.preheader.lr.ph.us.6.i.i.i, %._crit_edge98.split.us.5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  br label %_ZL17removePaddingBitsPhPKhmmj.exit.i.i

_ZL17removePaddingBitsPhPKhmmj.exit.i.i:          ; preds = %._crit_edge.i.i.i, %.loopexit.i.i, %bb.db, %bb.cx
  br label %_ZL20postProcessScanlinesPhS_jjPK11LodePNGInfo.exit.i

_ZL20postProcessScanlinesPhS_jjPK11LodePNGInfo.exit.i: ; preds = %_ZL17removePaddingBitsPhPKhmmj.exit.i.i, %.thread.i.i, %bb.db, %bb.cw, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i370.i
  %.5.i.i = phi i32 [ %i.wa, %.thread.i.i ], [ 0, %_ZL17removePaddingBitsPhPKhmmj.exit.i.i ], [ %i.uk, %bb.cw ], [ %i.vo, %bb.db ], [ 31, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit.i370.i ]
  store i32 %.5.i.i, ptr %i.n, align 8, !tbaa !424
  br label %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit

_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit.thread.sink.split: ; preds = %bb.e, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit19.i.i, %_ZL22lodepng_pixel_overflowjjPK16LodePNGColorModeS1_.exit.i
  %.sink = phi i32 [ 92, %_Z15lodepng_get_bppPK16LodePNGColorMode.exit19.i.i ], [ 92, %_ZL22lodepng_pixel_overflowjjPK16LodePNGColorModeS1_.exit.i ], [ 83, %bb.e ] ; 2 uses
  store i32 %.sink, ptr %i.n, align 8, !tbaa !424
  br label %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit.thread

_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit.thread: ; preds = %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit.thread.sink.split, %bb.a
  %.ph = phi i32 [ %i.m, %bb.a ], [ %.sink, %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  br label %_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread87

_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit: ; preds = %.thread425.i, %.thread.i, %bb.cp, %bb.cr, %_ZL20postProcessScanlinesPhS_jjPK11LodePNGInfo.exit.i
  %i.auy = load ptr, ptr %i.k, align 8, !tbaa !10
  call void @free(ptr noundef %i.auy) #31
  %.pr = load i32, ptr %i.n, align 8, !tbaa !424  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %bb.eh, label %_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread87

bb.eh:                                            ; preds = %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit
  %i.auz = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ava = load i32, ptr %i.auz, align 4, !tbaa !581
  %.not44 = icmp eq i32 %i.ava, 0
  br i1 %.not44, label %_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread86, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.avb = load i32, ptr %i.s, align 8, !tbaa !197 ; 4 uses
  %i.avc = load i32, ptr %i.r, align 8, !tbaa !197
  %.not.i49 = icmp eq i32 %i.avb, %i.avc
  br i1 %.not.i49, label %bb.ej, label %.loopexit

bb.ej:                                            ; preds = %bb.ei
  %i.avd = load i32, ptr %i.y, align 4, !tbaa !200
  %i.ave = load i32, ptr %i.t, align 4, !tbaa !200
  %.not24.i = icmp eq i32 %i.avd, %i.ave
  br i1 %.not24.i, label %bb.ek, label %.loopexit

bb.ek:                                            ; preds = %bb.ej
  %i.avf = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.avg = load i32, ptr %i.avf, align 8, !tbaa !213 ; 2 uses
  %i.avh = load i32, ptr %i.bw, align 8, !tbaa !213
  %.not25.i = icmp eq i32 %i.avg, %i.avh
  br i1 %.not25.i, label %bb.el, label %.loopexit

bb.el:                                            ; preds = %bb.ek
  %.not26.i = icmp eq i32 %i.avg, 0
  br i1 %.not26.i, label %bb.ep, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.avi = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !296
  %i.avk = load i32, ptr %i.bx, align 4, !tbaa !296
  %.not27.i = icmp eq i32 %i.avj, %i.avk
  br i1 %.not27.i, label %bb.en, label %.loopexit

bb.en:                                            ; preds = %bb.em
  %i.avl = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.avm = load i32, ptr %i.avl, align 8, !tbaa !297
  %i.avn = load i32, ptr %i.by, align 8, !tbaa !297
  %.not28.i = icmp eq i32 %i.avm, %i.avn
  br i1 %.not28.i, label %bb.eo, label %.loopexit

bb.eo:                                            ; preds = %bb.en
  %i.avo = getelementptr inbounds nuw i8, ptr %3, i64 204
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !298
  %i.avq = load i32, ptr %i.bz, align 4, !tbaa !298
  %.not29.i = icmp eq i32 %i.avp, %i.avq
  br i1 %.not29.i, label %bb.ep, label %.loopexit

bb.ep:                                            ; preds = %bb.eo, %bb.el
  %i.avr = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.avs = load i64, ptr %i.avr, align 8, !tbaa !206 ; 2 uses
  %i.avt = load i64, ptr %i.bv, align 8, !tbaa !206
  %.not30.i = icmp eq i64 %i.avs, %i.avt
  br i1 %.not30.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %bb.ep
  %i.avu = shl i64 %i.avs, 2                      ; 2 uses
  %.not3133.i = icmp eq i64 %i.avu, 0
  br i1 %.not3133.i, label %_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread87, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.avv = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !201 ; 4 uses
  %i.avx = load ptr, ptr %i.ca, align 8, !tbaa !201 ; 4 uses
  br label %bb.eu

bb.eq:                                            ; preds = %bb.eu
  %i.avy = or disjoint i64 %.034.i, 1             ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.avy
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !20
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avx, i64 %i.avy
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !20
  %.not32.i.1 = icmp eq i8 %i.awa, %i.awc
  br i1 %.not32.i.1, label %bb.er, label %.loopexit

bb.er:                                            ; preds = %bb.eq
  %i.awd = or disjoint i64 %.034.i, 2             ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.awd
  %i.awf = load i8, ptr %i.awe, align 1, !tbaa !20
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avx, i64 %i.awd
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !20
  %.not32.i.2 = icmp eq i8 %i.awf, %i.awh
  br i1 %.not32.i.2, label %bb.es, label %.loopexit

bb.es:                                            ; preds = %bb.er
  %i.awi = or disjoint i64 %.034.i, 3             ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.awi
  %i.awk = load i8, ptr %i.awj, align 1, !tbaa !20
  %i.awl = getelementptr inbounds nuw i8, ptr %i.avx, i64 %i.awi
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !20
  %.not32.i.3 = icmp eq i8 %i.awk, %i.awm
  br i1 %.not32.i.3, label %bb.et, label %.loopexit

bb.et:                                            ; preds = %bb.es
  %i.awn = add nuw i64 %.034.i, 4                 ; 2 uses
  %.not31.i.3 = icmp eq i64 %i.awn, %i.avu
  br i1 %.not31.i.3, label %_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread87, label %bb.eu, !llvm.loop !299

bb.eu:                                            ; preds = %bb.et, %.lr.ph.i
  %.034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.awn, %bb.et ] ; 6 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %i.avw, i64 %.034.i
  %i.awp = load i8, ptr %i.awo, align 1, !tbaa !20
  %i.awq = getelementptr inbounds nuw i8, ptr %i.avx, i64 %.034.i
  %i.awr = load i8, ptr %i.awq, align 1, !tbaa !20
  %.not32.i = icmp eq i8 %i.awp, %i.awr
  br i1 %.not32.i, label %bb.eq, label %.loopexit

_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread86: ; preds = %bb.eh
  %i.aws = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !201 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.awt, null
  br i1 %.not.i.i.i50, label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i, label %bb.ev

bb.ev:                                            ; preds = %_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread86
  call void @free(ptr noundef nonnull %i.awt) #31
  br label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i

_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i: ; preds = %bb.ev, %_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(40) %i.r, i64 40, i1 false), !tbaa !20, !alias.scope !582
  %i.awu = load ptr, ptr %i.ca, align 8, !tbaa !201 ; 2 uses
  %.not.i51 = icmp eq ptr %i.awu, null
  br i1 %.not.i51, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread, label %bb.ew

bb.ew:                                            ; preds = %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i
  %i.awv = call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #30 ; 3 uses
  store ptr %i.awv, ptr %i.aws, align 8, !tbaa !201
  %.not10.i = icmp eq ptr %i.awv, null
  %i.aww = load i64, ptr %i.bv, align 8, !tbaa !206 ; 2 uses
  br i1 %.not10.i, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %.not11.i = icmp eq i64 %i.aww, 0
  br i1 %.not11.i, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

bb.ey:                                            ; preds = %bb.ew
  %i.awx = shl i64 %i.aww, 2                      ; 2 uses
  %.not.i.i = icmp eq i64 %i.awx, 0
  br i1 %.not.i.i, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread, label %.lr.ph.preheader.i.i52

.lr.ph.preheader.i.i52:                           ; preds = %bb.ey
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.awv, ptr nonnull readonly align 1 %i.awu, i64 %i.awx, i1 false), !tbaa !20, !alias.scope !586
  br label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread

_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread: ; preds = %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i, %bb.ey, %.lr.ph.preheader.i.i52, %bb.ex
  store i32 0, ptr %i.n, align 8, !tbaa !424
  br label %_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread87

_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit: ; preds = %bb.ex
  store i32 83, ptr %i.n, align 8, !tbaa !424
  br label %_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread87

.loopexit:                                        ; preds = %bb.eu, %bb.eq, %bb.er, %bb.es, %bb.ep, %bb.ei, %bb.ej, %bb.ek, %bb.em, %bb.en, %bb.eo
  %i.awy = load ptr, ptr %0, align 8, !tbaa !10   ; 2 uses
  switch i32 %i.avb, label %bb.ez [
    i32 2, label %bb.fa
    i32 6, label %bb.fa
  ]

bb.ez:                                            ; preds = %.loopexit
  %i.awz = load i32, ptr %i.y, align 4, !tbaa !590
  %i.axa = icmp eq i32 %i.awz, 8
  br i1 %i.axa, label %bb.fa, label %_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread87

bb.fa:                                            ; preds = %.loopexit, %.loopexit, %bb.ez
  %i.axb = load i32, ptr %1, align 4, !tbaa !13
  %i.axc = load i32, ptr %2, align 4, !tbaa !13
  %i.axd = icmp ult i32 %i.avb, 7
  br i1 %i.axd, label %switch.lookup392, label %_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode.exit

switch.lookup392:                                 ; preds = %bb.fa
  %i.axe = load i32, ptr %i.y, align 4, !tbaa !200
  %i.axf = zext nneg i32 %i.avb to i64
  %switch.gep393 = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.axf
  %switch.load394 = load i8, ptr %switch.gep393, align 1
  %switch.ext395 = zext i8 %switch.load394 to i32
  %i.axg = mul i32 %i.axe, %switch.ext395
  %i.axh = zext i32 %i.axg to i64
  br label %_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode.exit

_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode.exit: ; preds = %bb.fa, %switch.lookup392
  %.0.i.i.i.i54 = phi i64 [ %i.axh, %switch.lookup392 ], [ 0, %bb.fa ] ; 2 uses
  %i.axi = zext i32 %i.axb to i64
  %i.axj = zext i32 %i.axc to i64
  %i.axk = mul nuw i64 %i.axj, %i.axi             ; 2 uses
  %i.axl = lshr i64 %i.axk, 3
  %i.axm = mul i64 %i.axl, %.0.i.i.i.i54
  %i.axn = and i64 %i.axk, 7
  %i.axo = mul nuw nsw i64 %i.axn, %.0.i.i.i.i54
  %i.axp = add nuw nsw i64 %i.axo, 7
  %i.axq = lshr i64 %i.axp, 3
  %i.axr = add i64 %i.axq, %i.axm
  %i.axs = call noalias noundef ptr @malloc(i64 noundef %i.axr) #30 ; 3 uses
  store ptr %i.axs, ptr %0, align 8, !tbaa !10
  %.not46 = icmp eq ptr %i.axs, null
  br i1 %.not46, label %.thread90, label %bb.fb

bb.fb:                                            ; preds = %_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode.exit
  %i.axt = load i32, ptr %1, align 4, !tbaa !13
  %i.axu = load i32, ptr %2, align 4, !tbaa !13
  %i.axv = call noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef nonnull %i.axs, ptr noundef %i.awy, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, i32 noundef %i.axt, i32 noundef %i.axu)
  br label %.thread90

.thread90:                                        ; preds = %bb.fb, %_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode.exit
  %storemerge = phi i32 [ %i.axv, %bb.fb ], [ 83, %_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode.exit ]
  store i32 %storemerge, ptr %i.n, align 8, !tbaa !424
  call void @free(ptr noundef %i.awy) #31
  %.pre122 = load i32, ptr %i.n, align 8, !tbaa !424
  br label %_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread87

_ZL24lodepng_color_mode_equalPK16LodePNGColorModeS1_.exit.thread87: ; preds = %bb.et, %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread, %.thread90, %.preheader.i, %bb.ez, %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit, %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit.thread, %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit
  %.1 = phi i32 [ %.ph, %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit.thread ], [ 56, %bb.ez ], [ %.pr, %_ZL13decodeGenericPPhPjS1_P12LodePNGStatePKhm.exit ], [ 83, %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit ], [ 0, %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit.thread ], [ 0, %.preheader.i ], [ %.pre122, %.thread90 ], [ 0, %bb.et ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z21lodepng_decode_memoryPPhPjS1_PKhm16LodePNGColorTypej(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %1, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %7 = alloca %struct.LodePNGState, align 8       ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 1, ptr %i.a, align 4, !tbaa !591
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 16777216, ptr %i.d, align 8, !tbaa !463
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 16777216, ptr %i.e, align 8, !tbaa !502
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %7, i8 0, i64 52, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 80
  store <4 x i32> <i32 2, i32 1, i32 2048, i32 3>, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i32 128, ptr %i.g, align 8, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 100
  store i32 1, ptr %i.h, align 4, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 132
  store i32 1, ptr %i.j, align 4, !tbaa !592
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 136
  store i32 5, ptr %i.k, align 8, !tbaa !593
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 128
  store i32 1, ptr %i.l, align 8, !tbaa !594
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !595
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 172
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store i32 6, ptr %i.t, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 228
  store i32 8, ptr %i.v, align 4, !tbaa !200
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 216
  store i32 0, ptr %i.x, align 8, !tbaa !270
  store i32 0, ptr %i.s, align 8, !tbaa !271
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 212
  store i32 0, ptr %i.y, align 4, !tbaa !272
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 460
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 352
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 392
  store i32 0, ptr %i.ac, align 8, !tbaa !273
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 408
  store i32 0, ptr %i.ad, align 8, !tbaa !274
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 416
  store i32 0, ptr %i.ae, align 8, !tbaa !275
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 452
  store i32 0, ptr %i.af, align 4, !tbaa !276
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.z, i8 0, i64 84, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.aa, i8 0, i64 120, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 632
  store i32 1, ptr %i.ah, align 8, !tbaa !424
  store i32 %5, ptr %i.o, align 8, !tbaa !596
  store i32 %6, ptr %i.q, align 4, !tbaa !590
  store i32 0, ptr %i.b, align 8, !tbaa !535
  store i32 0, ptr %i.c, align 4, !tbaa !537
  %i.ai = call noundef i32 @_Z14lodepng_decodePPhPjS1_P12LodePNGStatePKhm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef %3, i64 noundef %4)
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !201 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_Z21lodepng_state_cleanupP12LodePNGState.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef nonnull %i.aj) #31
  br label %_Z21lodepng_state_cleanupP12LodePNGState.exit

_Z21lodepng_state_cleanupP12LodePNGState.exit:    ; preds = %bb.a, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  call void @_Z20lodepng_info_cleanupP11LodePNGInfo(ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret i32 %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z18lodepng_state_initP12LodePNGState(ptr nofree noundef writeonly captures(none) initializes((0, 140), (144, 164), (168, 220), (224, 348), (352, 368), (392, 396), (408, 412), (416, 420), (452, 456), (460, 580), (584, 636)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %i.a, align 4, !tbaa !591
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.b, align 8, !tbaa !597
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.c, align 4, !tbaa !598
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 16777216, ptr %i.d, align 8, !tbaa !463
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 16777216, ptr %i.e, align 8, !tbaa !502
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_2
begin_hunk_3_@_Z21lodepng_state_cleanupP12LodePNGState:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_Z20lodepng_info_cleanupP11LodePNGInfo(ptr noundef nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z16lodepng_decode32PPhPjS1_PKhm(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %1, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef i32 @_Z21lodepng_decode_memoryPPhPjS1_PKhm16LodePNGColorTypej(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 6, i32 noundef 8)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z16lodepng_decode24PPhPjS1_PKhm(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %1, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef i32 @_Z21lodepng_decode_memoryPPhPjS1_PKhm16LodePNGColorTypej(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2, i32 noundef 8)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z19lodepng_decode_filePPhPjS1_PKc16LodePNGColorTypej(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %1, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr null, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store ptr null, ptr %0, align 8, !tbaa !10
  store i32 0, ptr %2, align 4, !tbaa !13
  store i32 0, ptr %1, align 4, !tbaa !13
  %i.c = call noundef i32 @_Z17lodepng_load_filePPhPmPKc(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !8
  %i.e = tail call noundef i32 @_Z21lodepng_decode_memoryPPhPjS1_PKhm16LodePNGColorTypej(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %.pre, i64 noundef %i.d, i32 noundef %4, i32 noundef %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.pre) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z21lodepng_decode32_filePPhPjS1_PKc(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %1, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr null, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store ptr null, ptr %0, align 8, !tbaa !10
  store i32 0, ptr %2, align 4, !tbaa !13
  store i32 0, ptr %1, align 4, !tbaa !13
  %i.c = call noundef i32 @_Z17lodepng_load_filePPhPmPKc(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef readonly %3) ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !10 ; 2 uses
  br i1 %.not.i, label %bb.b, label %_Z19lodepng_decode_filePPhPjS1_PKc16LodePNGColorTypej.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !8
  %i.e = tail call noundef i32 @_Z21lodepng_decode_memoryPPhPjS1_PKhm16LodePNGColorTypej(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %.pre.i, i64 noundef %i.d, i32 noundef 6, i32 noundef 8)
  br label %_Z19lodepng_decode_filePPhPjS1_PKc16LodePNGColorTypej.exit

_Z19lodepng_decode_filePPhPjS1_PKc16LodePNGColorTypej.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.pre.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z21lodepng_decode24_filePPhPjS1_PKc(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %1, ptr nofree noundef captures(address_is_null) initializes((0, 4)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr null, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store ptr null, ptr %0, align 8, !tbaa !10
  store i32 0, ptr %2, align 4, !tbaa !13
  store i32 0, ptr %1, align 4, !tbaa !13
  %i.c = call noundef i32 @_Z17lodepng_load_filePPhPmPKc(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef readonly %3) ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !10 ; 2 uses
  br i1 %.not.i, label %bb.b, label %_Z19lodepng_decode_filePPhPjS1_PKc16LodePNGColorTypej.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !8
  %i.e = tail call noundef i32 @_Z21lodepng_decode_memoryPPhPjS1_PKhm16LodePNGColorTypej(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %.pre.i, i64 noundef %i.d, i32 noundef 2, i32 noundef 8)
  br label %_Z19lodepng_decode_filePPhPjS1_PKc16LodePNGColorTypej.exit

_Z19lodepng_decode_filePPhPjS1_PKc16LodePNGColorTypej.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.pre.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z29lodepng_decoder_settings_initP22LodePNGDecoderSettings(ptr nofree noundef writeonly captures(none) initializes((0, 80)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %i.a, align 4, !tbaa !591
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.b, align 8, !tbaa !597
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.c, align 4, !tbaa !598
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 16777216, ptr %i.d, align 8, !tbaa !463
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 16777216, ptr %i.e, align 8, !tbaa !502
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z29lodepng_encoder_settings_initP22LodePNGEncoderSettings(ptr nofree noundef writeonly captures(none) initializes((0, 60), (64, 84)) %0) local_unnamed_addr #6 {
bb.a:
  store <4 x i32> <i32 2, i32 1, i32 2048, i32 3>, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 128, ptr %i.a, align 8, !tbaa !139
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.b, align 4, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %i.d, align 4, !tbaa !592
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 5, ptr %i.e, align 8, !tbaa !593
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.f, align 8, !tbaa !594
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.h, align 8, !tbaa !595
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 124) i32 @_Z18lodepng_state_copyP12LodePNGStatePKS_(ptr nofree noundef captures(none) initializes((184, 192), (240, 248)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i

_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i: ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  tail call void @_Z20lodepng_info_cleanupP11LodePNGInfo(ptr noundef nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1, i64 640, i1 false), !tbaa.struct !599
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i32 6, ptr %i.d, align 8, !tbaa !197
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 8, ptr %i.f, align 4, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i32 6, ptr %i.g, align 8, !tbaa !197
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 8, ptr %i.i, align 4, !tbaa !200
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 0, ptr %i.k, align 8, !tbaa !270
  store i32 0, ptr %i.c, align 8, !tbaa !271
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 0, ptr %i.l, align 4, !tbaa !272
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i32 0, ptr %i.p, align 8, !tbaa !273
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 0, ptr %i.q, align 8, !tbaa !274
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 0, ptr %i.r, align 8, !tbaa !275
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 0, ptr %i.s, align 4, !tbaa !276
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.m, i8 0, i64 84, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.n, i8 0, i64 120, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(40) %i.u, i64 40, i1 false), !tbaa !20, !alias.scope !603
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !201
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i
  %i.x = tail call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #30 ; 3 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !201
  %.not10.i = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.z = load i64, ptr %i.y, align 8, !tbaa !206  ; 2 uses
  br i1 %.not10.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not11.i = icmp eq i64 %i.z, 0
  br i1 %.not11.i, label %select.unfold, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = shl i64 %i.z, 2                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %select.unfold, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !201
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr readonly align 1 %i.ab, i64 %i.aa, i1 false), !tbaa !20, !alias.scope !607
  br label %select.unfold

_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 83, ptr %i.ac, align 8, !tbaa !424
  br label %bb.f

select.unfold:                                    ; preds = %bb.d, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i, %bb.e, %.lr.ph.preheader.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !424
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.af = tail call noundef i32 @_Z17lodepng_info_copyP11LodePNGInfoPKS_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ae) ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !424
  br label %bb.f

bb.f:                                             ; preds = %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit, %select.unfold
  %.0 = phi i32 [ %i.af, %select.unfold ], [ 83, %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 124) i32 @_Z14lodepng_encodePPhPmPKhjjP12LodePNGState(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %struct.ucvector, align 8           ; 31 uses
  %7 = alloca %struct.LodePNGInfo, align 8        ; 55 uses
  %8 = alloca %struct.LodePNGColorMode, align 8   ; 10 uses
  %9 = alloca %struct.LodePNGColorStats, align 8  ; 14 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %10 = alloca %struct.LodePNGColorMode, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr null, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 0, ptr %i.b, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 6, ptr %i.h, align 8, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  store i32 8, ptr %i.j, align 4, !tbaa !200
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !270
  store i32 0, ptr %7, align 8, !tbaa !271
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !272
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 252 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 184 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !273
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !274
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  store i32 0, ptr %i.s, align 8, !tbaa !275
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 244 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !276
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.n, i8 0, i64 84, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.o, i8 0, i64 120, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store i32 6, ptr %8, align 8, !tbaa !197
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  store i32 8, ptr %i.w, align 4, !tbaa !200
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !10
  store i64 0, ptr %1, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 224 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !430  ; 2 uses
  %i.aa = icmp eq i32 %i.z, 3
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !611
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 240
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !442
  %i.af = add i64 %i.ae, -257
  %or.cond397 = icmp ult i64 %i.af, -256
  br i1 %or.cond397, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 7 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !612
  %i.ai = icmp ugt i32 %i.ah, 2
  br i1 %i.ai, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !270
  %i.al = icmp ugt i32 %i.ak, 1
  br i1 %i.al, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 228
  %i.an = load i32, ptr %i.am, align 4, !tbaa !429 ; 7 uses
  switch i32 %i.z, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread [
    i32 0, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 6, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.an)
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = and i32 %i.an, 31
  %switch.i = icmp ne i32 %i.aq, 0
  %or.cond.i = and i1 %i.ap, %switch.i
  br i1 %or.cond.i, label %_ZL18checkColorValidity16LodePNGColorTypej.exit, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ar = add i32 %i.an, -8
  %switch.and.i = and i32 %i.ar, -9
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %_ZL18checkColorValidity16LodePNGColorTypej.exit, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.as = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.an)
  %i.at = icmp eq i32 %i.as, 1
  %i.au = and i32 %i.an, 15
  %switch41.i = icmp ne i32 %i.au, 0
  %or.cond42.i = and i1 %i.at, %switch41.i
  br i1 %or.cond42.i, label %_ZL18checkColorValidity16LodePNGColorTypej.exit, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.j:                                             ; preds = %bb.f
  %i.av = add i32 %i.an, -8
  %switch.and37.i = and i32 %i.av, -9
  %switch.selectcmp38.i = icmp eq i32 %switch.and37.i, 0
  br i1 %switch.selectcmp38.i, label %_ZL18checkColorValidity16LodePNGColorTypej.exit, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

bb.k:                                             ; preds = %bb.f
  %i.aw = add i32 %i.an, -8
  %switch.and39.i = and i32 %i.aw, -9
  %switch.selectcmp40.i = icmp eq i32 %switch.and39.i, 0
  br i1 %switch.selectcmp40.i, label %_ZL18checkColorValidity16LodePNGColorTypej.exit, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread

_ZL18checkColorValidity16LodePNGColorTypej.exit:  ; preds = %bb.h, %bb.k, %bb.j, %bb.g, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 5 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !596
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 172
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !590 ; 7 uses
  switch i32 %i.ay, label %_ZL18checkColorValidity16LodePNGColorTypej.exit.thread [
    i32 0, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 6, label %bb.p
  ]

bb.l:                                             ; preds = %_ZL18checkColorValidity16LodePNGColorTypej.exit
  %i.bb = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ba)
  %i.bc = icmp eq i32 %i.bb, 1
end_hunk_3
begin_hunk_4_@_ZL17auto_choose_colorP16LodePNGColorModePKS_PK17LodePNGColorStats:bb.a
  %.081 = select i1 %or.cond.not, i32 %i.h, i32 %spec.store.select ; 2 uses
  %i.l = load i32, ptr %2, align 8, !tbaa !413
  %.not = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1068
  %i.n = load i32, ptr %i.m, align 4, !tbaa !409
  %.not90 = icmp ne i32 %i.n, 0
  %narrow = select i1 %.not90, i1 %.not, i1 false ; 4 uses
  %i.o = icmp ugt i32 %.081, 7
  %or.cond4.not = select i1 %narrow, i1 true, i1 %i.o
  %spec.store.select9 = select i1 %or.cond4.not, i32 %.081, i32 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !405  ; 5 uses
  %i.r = zext i32 %i.q to i64
  %i.s = icmp ult i32 %i.q, 3
  %i.t = icmp ult i32 %i.q, 5
  %i.u = icmp ult i32 %i.q, 17
  %i.v = select i1 %i.u, i32 4, i32 8
  %i.w = select i1 %i.t, i32 2, i32 %i.v
  %i.x = select i1 %i.s, i32 1, i32 %i.w          ; 3 uses
  %i.y = icmp ugt i32 %spec.store.select9, 8
  %i.z = add i32 %i.q, -257
  %i.aa = icmp ult i32 %i.z, -256
  %i.ab = shl nuw nsw i64 %i.r, 1
  %i.ac = icmp ult i64 %i.b, %i.ab
  %.not116 = or i1 %i.aa, %i.ac
  %i.ad = icmp eq i32 %i.d, 0
  %i.ae = select i1 %or.cond.not, i1 %i.ad, i1 false ; 2 uses
  %or.cond8.not = select i1 %narrow, i1 %i.ae, i1 false
  %.not94 = icmp ule i32 %spec.store.select9, %i.x
  %or.cond101.not = select i1 %or.cond8.not, i1 %.not94, i1 false
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !408
  %.not95 = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not95, i1 true, i1 %or.cond101.not
  %i.ai = select i1 %i.ah, i1 true, i1 %.not116
  %.185 = select i1 %i.ai, i1 true, i1 %i.y
  br i1 %.185, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !201 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_Z21lodepng_palette_clearP16LodePNGColorMode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.al) #31
  br label %_Z21lodepng_palette_clearP16LodePNGColorMode.exit

_Z21lodepng_palette_clearP16LodePNGColorMode.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.am = load i32, ptr %i.p, align 4, !tbaa !405
  %.not98118 = icmp eq i32 %i.am, 0
  br i1 %.not98118, label %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_Z21lodepng_palette_clearP16LodePNGColorMode.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %i.ao = phi i64 [ 0, %.lr.ph ], [ %i.cw, %bb.g ]
  %.086119 = phi i64 [ 0, %.lr.ph ], [ %i.cx, %bb.g ] ; 2 uses
  %i.ap = shl i64 %.086119, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !20
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !201 ; 2 uses
  %.not.i102 = icmp eq ptr %i.ay, null
  br i1 %.not.i102, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = tail call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #30 ; 2 uses
  store ptr %i.az, ptr %i.ak, align 8, !tbaa !201
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %.critedge.i.i
  %.014.i.i = phi i64 [ %i.ca, %.critedge.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.bc = shl nuw nsw i64 %.014.i.i, 2            ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i8 0, ptr %i.bd, align 1, !tbaa !20
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 0, ptr %i.bg, align 1, !tbaa !20
  %i.bh = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bc
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 0, ptr %i.bj, align 1, !tbaa !20
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  store i8 -1, ptr %i.bm, align 1, !tbaa !20
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.bo = shl i64 %.014.i.i, 2
  %i.bp = or disjoint i64 %i.bo, 4                ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  store i8 0, ptr %i.bq, align 1, !tbaa !20
  %i.br = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 0, ptr %i.bt, align 1, !tbaa !20
  %i.bu = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bp
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 0, ptr %i.bw, align 1, !tbaa !20
  %i.bx = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  store i8 -1, ptr %i.bz, align 1, !tbaa !20
  %i.ca = add nuw nsw i64 %.014.i.i, 2            ; 2 uses
  %.not13.i.i.1 = icmp eq i64 %i.ca, 256
  br i1 %.not13.i.i.1, label %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i, label %.critedge.i.i, !llvm.loop !211

_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i: ; preds = %.critedge.i.i
  %.pr.i = load ptr, ptr %i.ak, align 8, !tbaa !201 ; 2 uses
  %.not18.i = icmp eq ptr %.pr.i, null
  br i1 %.not18.i, label %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, label %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i._crit_edge

_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i._crit_edge: ; preds = %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i
  %.pre = load i64, ptr %i.an, align 8, !tbaa !206
  br label %bb.f

bb.f:                                             ; preds = %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i._crit_edge, %bb.d
  %i.cb = phi i64 [ %.pre, %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i._crit_edge ], [ %i.ao, %bb.d ] ; 2 uses
  %i.cc = phi ptr [ %.pr.i, %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i._crit_edge ], [ %i.ay, %bb.d ]
  %i.cd = icmp ugt i64 %i.cb, 255
  br i1 %i.cd, label %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = shl nuw nsw i64 %i.cb, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ce
  store i8 %i.ar, ptr %i.cf, align 1, !tbaa !20
  %i.cg = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.ch = load i64, ptr %i.an, align 8, !tbaa !206
  %i.ci = shl i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store i8 %i.at, ptr %i.ck, align 1, !tbaa !20
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.cm = load i64, ptr %i.an, align 8, !tbaa !206
  %i.cn = shl i64 %i.cm, 2
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i8 %i.av, ptr %i.cp, align 1, !tbaa !20
  %i.cq = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.cr = load i64, ptr %i.an, align 8, !tbaa !206
  %i.cs = shl i64 %i.cr, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 3
  store i8 %i.ax, ptr %i.cu, align 1, !tbaa !20
  %i.cv = load i64, ptr %i.an, align 8, !tbaa !206
  %i.cw = add i64 %i.cv, 1                        ; 2 uses
  store i64 %i.cw, ptr %i.an, align 8, !tbaa !206
  %i.cx = add i64 %.086119, 1                     ; 2 uses
  %i.cy = load i32, ptr %i.p, align 4, !tbaa !405
  %i.cz = zext i32 %i.cy to i64
  %.not98 = icmp eq i64 %i.cx, %i.cz
  br i1 %.not98, label %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, label %bb.d, !llvm.loop !622

_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread: ; preds = %bb.g, %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i, %bb.f, %bb.e, %_Z21lodepng_palette_clearP16LodePNGColorMode.exit
  %.1 = phi i32 [ 0, %_Z21lodepng_palette_clearP16LodePNGColorMode.exit ], [ 83, %_ZL32lodepng_color_mode_alloc_paletteP16LodePNGColorMode.exit.i ], [ 83, %bb.e ], [ 108, %bb.f ], [ 0, %bb.g ] ; 7 uses
  store i32 3, ptr %0, align 8, !tbaa !197
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.x, ptr %i.da, align 4, !tbaa !200
  %i.db = load i32, ptr %1, align 8, !tbaa !197
  %i.dc = icmp eq i32 %i.db, 3
  br i1 %i.dc, label %bb.h, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

bb.h:                                             ; preds = %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !206
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !206
  %.not100 = icmp ult i64 %i.de, %i.dg
  br i1 %.not100, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !200
  %i.dj = icmp eq i32 %i.di, %i.x
  br i1 %i.dj, label %bb.j, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

bb.j:                                             ; preds = %bb.i
  %i.dk = load ptr, ptr %i.ak, align 8, !tbaa !201 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.dk) #31
  br label %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i

_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i: ; preds = %bb.k, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %0, ptr noundef nonnull readonly align 1 dereferenceable(40) %1, i64 40, i1 false), !tbaa !20, !alias.scope !623
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !201
  %.not.i103 = icmp eq ptr %i.dm, null
  br i1 %.not.i103, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit, label %bb.l

bb.l:                                             ; preds = %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i
  %i.dn = tail call noalias noundef dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #30 ; 3 uses
  store ptr %i.dn, ptr %i.ak, align 8, !tbaa !201
  %.not10.i = icmp eq ptr %i.dn, null
  br i1 %.not10.i, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = load i64, ptr %i.dd, align 8, !tbaa !206
  %i.dp = shl i64 %i.do, 2                        ; 2 uses
  %.not.i.i104 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i104, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.dl, align 8, !tbaa !201
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr readonly align 1 %i.dq, i64 %i.dp, i1 false), !tbaa !20, !alias.scope !627
  br label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

bb.n:                                             ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %spec.store.select9, ptr %i.dr, align 4, !tbaa !200
  %i.ds = select i1 %narrow, i32 4, i32 6
  %i.dt = select i1 %narrow, i32 0, i32 2
  %i.du = select i1 %i.ae, i32 %i.dt, i32 %i.ds
  store i32 %i.du, ptr %0, align 8, !tbaa !197
  %.not97117 = icmp ne i32 %i.f, 0
  %.not97.not = select i1 %.not97117, i1 %i.k, i1 false
  br i1 %.not97.not, label %bb.o, label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

bb.o:                                             ; preds = %bb.n
  %notmask = shl nsw i32 -1, %spec.store.select9
  %i.dv = xor i32 %notmask, -1                    ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i16, ptr %i.dw, align 8, !tbaa !416
  %i.dy = zext i16 %i.dx to i32
  %i.dz = and i32 %i.dy, %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !296
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !417
  %i.ed = zext i16 %i.ec to i32
  %i.ee = and i32 %i.ed, %i.dv
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ee, ptr %i.ef, align 8, !tbaa !297
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !418
  %i.ei = zext i16 %i.eh to i32
  %i.ej = and i32 %i.ei, %i.dv
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !298
  store i32 1, ptr %i.i, align 8, !tbaa !213
  br label %_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit

_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_.exit: ; preds = %bb.l, %.lr.ph.preheader.i.i, %bb.m, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i, %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread, %bb.h, %bb.i, %bb.n, %bb.o
  %.2 = phi i32 [ 0, %bb.n ], [ 0, %bb.o ], [ %.1, %_Z19lodepng_palette_addP16LodePNGColorModehhhh.exit.thread ], [ %.1, %bb.i ], [ %.1, %bb.h ], [ %.1, %_Z26lodepng_color_mode_cleanupP16LodePNGColorMode.exit.i ], [ %.1, %.lr.ph.preheader.i.i ], [ %.1, %bb.m ], [ %.1, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 89) i32 @_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings(ptr nofree noundef nonnull captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 12 uses
  %i.b = alloca [7 x i32], align 16               ; 12 uses
  %i.c = alloca [8 x i64], align 16               ; 4 uses
  %i.d = alloca [8 x i64], align 16               ; 4 uses
  %i.e = alloca [8 x i64], align 16               ; 12 uses
  %i.f = alloca [7 x i32], align 16               ; 17 uses
  %i.g = alloca [7 x i32], align 16               ; 17 uses
  %i.h = alloca [8 x i64], align 16               ; 18 uses
  %i.i = alloca [8 x i64], align 16               ; 18 uses
  %i.j = alloca [8 x i64], align 16               ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 13 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !197  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 13 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !200  ; 5 uses
  %i.o = icmp ult i32 %i.l, 7
  br i1 %i.o, label %switch.lookup, label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit

switch.lookup:                                    ; preds = %bb.a
  %i.p = zext nneg i32 %i.l to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.q = mul i32 %i.n, %switch.ext
  br label %_Z15lodepng_get_bppPK16LodePNGColorMode.exit

_Z15lodepng_get_bppPK16LodePNGColorMode.exit:     ; preds = %bb.a, %switch.lookup
  %.0.i.i.i = phi i32 [ %i.q, %switch.lookup ], [ 0, %bb.a ] ; 16 uses
  %i.r = zext i32 %.0.i.i.i to i64                ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !270
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit
  %i.v = zext i32 %4 to i64                       ; 2 uses
  %i.w = zext i32 %3 to i64
  %i.x = mul nuw i64 %i.r, %i.w                   ; 3 uses
  %i.y = add nuw i64 %i.x, 7                      ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = mul i64 %i.z, %i.v                      ; 2 uses
  %i.ab = add i64 %i.aa, %i.v                     ; 3 uses
  store i64 %i.ab, ptr %1, align 8, !tbaa !8
  %i.ac = tail call noalias noundef ptr @malloc(i64 noundef %i.ab) #30 ; 4 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !10
  %.not101 = icmp ne ptr %i.ac, null
  %.not102 = icmp eq i64 %i.ab, 0
  %or.cond122 = or i1 %.not102, %.not101
  br i1 %or.cond122, label %.thread, label %bb.ad

.thread:                                          ; preds = %bb.b
  %i.ad = icmp ult i32 %.0.i.i.i, 8
  br i1 %i.ad, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.thread
  %i.ae = and i64 %i.y, 68719476728               ; 2 uses
  %.not104 = icmp eq i64 %i.x, %i.ae
  br i1 %.not104, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = tail call noalias noundef ptr @malloc(i64 noundef %i.aa) #30 ; 4 uses
  %.not105.not = icmp eq ptr %i.af, null
  br i1 %.not105.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL14addPaddingBitsPhPKhmmj(ptr noundef nonnull %i.af, ptr noundef %2, i64 noundef %i.ae, i64 noundef %i.x, i32 noundef %4)
  %i.ag = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.ac, ptr noundef nonnull %i.af, i32 noundef %3, i32 noundef %4, i32 %i.l, i32 %i.n, ptr noundef %6)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ 83, %bb.d ], [ %i.ag, %bb.e ]
  tail call void @free(ptr noundef %i.af) #31
  br label %bb.ad

bb.g:                                             ; preds = %bb.c, %.thread
  %i.ah = tail call fastcc noundef i32 @_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings(ptr noundef %i.ac, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %i.l, i32 %i.n, ptr noundef %6)
  br label %bb.ad

bb.h:                                             ; preds = %_Z15lodepng_get_bppPK16LodePNGColorMode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  call fastcc void @_ZL19Adam7_getpassvaluesPjS_PmS0_S0_jjj(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, i32 noundef %3, i32 noundef %4, i32 noundef %.0.i.i.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !8  ; 2 uses
  store i64 %i.aj, ptr %1, align 8, !tbaa !8
  %i.ak = tail call noalias noundef ptr @malloc(i64 noundef %i.aj) #30 ; 4 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !10
  %.not = icmp ne ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.am = load i64, ptr %i.al, align 8, !tbaa !8  ; 2 uses
  %i.an = tail call noalias noundef ptr @malloc(i64 noundef %i.am) #30 ; 30 uses
  %i.ao = icmp ne ptr %i.an, null
  %i.ap = icmp eq i64 %i.am, 0
  %or.cond.not126 = or i1 %i.ap, %i.ao
  %.not123 = and i1 %.not, %or.cond.not126
  br i1 %.not123, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  call fastcc void @_ZL19Adam7_getpassvaluesPjS_PmS0_S0_jjj(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %3, i32 noundef %4, i32 noundef %.0.i.i.i)
  %i.aq = icmp ugt i32 %.0.i.i.i, 7
  br i1 %i.aq, label %.preheader82.split.us.preheader.i, label %.preheader84.i

.preheader84.i:                                   ; preds = %bb.i
  %.not106.i = icmp eq i32 %.0.i.i.i, 0
  br i1 %.not106.i, label %_ZL15Adam7_interlacePhPKhjjj.exit.thread, label %.preheader84.split.us.i.preheader

.preheader84.split.us.i.preheader:                ; preds = %.preheader84.i
  %exitcond.not.i = icmp eq i32 %.0.i.i.i, 1
  %exitcond.not.i.1 = icmp eq i32 %.0.i.i.i, 2
  %exitcond.not.i.2 = icmp eq i32 %.0.i.i.i, 3
  %exitcond.not.i.3 = icmp eq i32 %.0.i.i.i, 4
  %exitcond.not.i.4 = icmp eq i32 %.0.i.i.i, 5
  %exitcond.not.i.5 = icmp eq i32 %.0.i.i.i, 6
  br label %.preheader84.split.us.i

_ZL15Adam7_interlacePhPKhjjj.exit.thread:         ; preds = %.preheader84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZL15Adam7_interlacePhPKhjjj.exit.split.us.preheader

.preheader84.split.us.i:                          ; preds = %.preheader84.split.us.i.preheader, %._crit_edge93.split.us.i
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %._crit_edge93.split.us.i ], [ 0, %.preheader84.split.us.i.preheader ] ; 8 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv120.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13 ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv120.i
end_hunk_4
begin_hunk_5_@_ZL6filterPhPKhjjPK16LodePNGColorModePK22LodePNGEncoderSettings:bb.a
  %.123050 = phi i32 [ %.022960, %.preheader14 ], [ %.2231, %bb.k ]
  %.123648 = phi i64 [ %.023559, %.preheader14 ], [ %.2237, %bb.k ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv125
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !10 ; 2 uses
  %i.ja = trunc nuw nsw i64 %indvars.iv125 to i32
  %i.jb = trunc i64 %indvars.iv125 to i8
  tail call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.iz, ptr noundef %i.ix, ptr noundef %.225258, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext %i.jb)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false), !tbaa !20, !alias.scope !1018
  br i1 %.not29141, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.h, %.lr.ph44
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.lr.ph44 ], [ 0, %bb.h ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 %indvars.iv117
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !20
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.je ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !13
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !13
  %indvars.iv.next118 = add i64 %indvars.iv117, 1 ; 2 uses
  %i.ji = and i64 %indvars.iv.next118, 4294967295
  %.not291 = icmp eq i64 %i.t, %i.ji
  br i1 %.not291, label %._crit_edge45, label %.lr.ph44, !llvm.loop !1021

._crit_edge45:                                    ; preds = %.lr.ph44, %bb.h
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv125 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !13
  %i.jl = add i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge45, %_ZL6ilog2im.exit
  %indvars.iv121 = phi i64 [ 0, %._crit_edge45 ], [ %indvars.iv.next122, %_ZL6ilog2im.exit ] ; 2 uses
  %.022847 = phi i64 [ 0, %._crit_edge45 ], [ %i.kh, %_ZL6ilog2im.exit ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv121
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !13 ; 3 uses
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %_ZL6ilog2im.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jp = zext i32 %i.jn to i64                   ; 4 uses
  %i.jq = icmp ugt i32 %i.jn, 65535               ; 2 uses
  %i.jr = lshr i64 %i.jp, 16
  %spec.select.i.i = select i1 %i.jq, i64 %i.jr, i64 %i.jp ; 3 uses
  %spec.select21.i.i = select i1 %i.jq, i64 16, i64 0 ; 2 uses
  %i.js = icmp samesign ugt i64 %spec.select.i.i, 255 ; 2 uses
  %i.jt = or disjoint i64 %spec.select21.i.i, 8
  %i.ju = lshr i64 %spec.select.i.i, 8
  %.116.i.i = select i1 %i.js, i64 %i.ju, i64 %spec.select.i.i ; 3 uses
  %.1.i.i = select i1 %i.js, i64 %i.jt, i64 %spec.select21.i.i ; 2 uses
  %i.jv = icmp samesign ugt i64 %.116.i.i, 15     ; 2 uses
  %i.jw = or disjoint i64 %.1.i.i, 4
  %i.jx = lshr i64 %.116.i.i, 4
  %.217.i.i = select i1 %i.jv, i64 %i.jx, i64 %.116.i.i ; 3 uses
  %.2.i.i = select i1 %i.jv, i64 %i.jw, i64 %.1.i.i ; 2 uses
  %i.jy = icmp samesign ugt i64 %.217.i.i, 3      ; 2 uses
  %i.jz = or disjoint i64 %.2.i.i, 2
  %i.ka = lshr i64 %.217.i.i, 2
  %.318.i.i = select i1 %i.jy, i64 %i.ka, i64 %.217.i.i
  %.3.i.i = select i1 %i.jy, i64 %i.jz, i64 %.2.i.i
  %i.kb = icmp samesign ugt i64 %.318.i.i, 1
  %i.kc = zext i1 %i.kb to i64
  %.4.i.i = add nuw nsw i64 %.3.i.i, %i.kc        ; 2 uses
  %i.kd = mul nuw nsw i64 %.4.i.i, %i.jp
  %.neg.i = shl nsw i64 -1, %.4.i.i
  %i.ke = add nsw i64 %.neg.i, %i.jp
  %i.kf = shl nsw i64 %i.ke, 1
  %i.kg = add nsw i64 %i.kf, %i.kd
  br label %_ZL6ilog2im.exit

_ZL6ilog2im.exit:                                 ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.kg, %bb.j ], [ 0, %bb.i ]
  %i.kh = add i64 %.0.i, %.022847                 ; 3 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %.not292 = icmp eq i64 %indvars.iv.next122, 256
  br i1 %.not292, label %bb.k, label %bb.i, !llvm.loop !1022

bb.k:                                             ; preds = %_ZL6ilog2im.exit
  %i.ki = icmp eq i64 %indvars.iv125, 0
  %i.kj = icmp ugt i64 %i.kh, %.123648
  %or.cond307 = select i1 %i.ki, i1 true, i1 %i.kj ; 2 uses
  %.2237 = select i1 %or.cond307, i64 %i.kh, i64 %.123648 ; 2 uses
  %.2231 = select i1 %or.cond307, i32 %i.ja, i32 %.123050 ; 4 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %.not289 = icmp eq i64 %indvars.iv.next126, 5
  br i1 %.not289, label %bb.l, label %bb.h, !llvm.loop !1023

bb.l:                                             ; preds = %bb.k
  %i.kk = trunc i32 %.2231 to i8
  %i.kl = mul i64 %i.u, %indvars.iv133
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 %i.kl ; 2 uses
  store i8 %i.kk, ptr %i.km, align 1, !tbaa !20
  br i1 %.not29141, label %._crit_edge55, label %iter.check241

iter.check241:                                    ; preds = %bb.l
  %i.kn = zext i32 %.2231 to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.kn
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !10 ; 4 uses
  %i.kq = getelementptr i8, ptr %i.km, i64 1      ; 3 uses
  br i1 %min.iters.check228, label %vec.epilog.scalar.ph242.preheader, label %vector.scevcheck225

vector.scevcheck225:                              ; preds = %iter.check241
  %i.kr = ptrtoaddr ptr %i.kp to i64
  %i.ks = sub i64 %i.kr, %i.iv
  %diff.check227 = icmp ugt i64 %i.ks, -32
  %or.cond365 = select i1 %i.is, i1 true, i1 %diff.check227
  br i1 %or.cond365, label %vec.epilog.scalar.ph242.preheader, label %vector.main.loop.iter.check229

vector.main.loop.iter.check229:                   ; preds = %vector.scevcheck225
  br i1 %min.iters.check230, label %vec.epilog.ph245, label %vector.body233

vector.body233:                                   ; preds = %vector.main.loop.iter.check229, %vector.body233
  %index234 = phi i64 [ %index.next237, %vector.body233 ], [ 0, %vector.main.loop.iter.check229 ] ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index234 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %wide.load235 = load <16 x i8>, ptr %i.kt, align 1, !tbaa !20
  %wide.load236 = load <16 x i8>, ptr %i.ku, align 1, !tbaa !20
  %i.kv = getelementptr i8, ptr %i.kq, i64 %index234 ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 16
  store <16 x i8> %wide.load235, ptr %i.kv, align 1, !tbaa !20
  store <16 x i8> %wide.load236, ptr %i.kw, align 1, !tbaa !20
  %index.next237 = add nuw i64 %index234, 32      ; 2 uses
  %i.kx = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.kx, label %middle.block238, label %vector.body233, !llvm.loop !1024

middle.block238:                                  ; preds = %vector.body233
  br i1 %cmp.n239, label %._crit_edge55, label %vec.epilog.iter.check243

vec.epilog.iter.check243:                         ; preds = %middle.block238
  br i1 %min.epilog.iters.check244, label %vec.epilog.scalar.ph242.preheader, label %vec.epilog.ph245, !prof !186

vec.epilog.ph245:                                 ; preds = %vector.main.loop.iter.check229, %vec.epilog.iter.check243
  %vec.epilog.resume.val240 = phi i64 [ %n.vec232, %vec.epilog.iter.check243 ], [ 0, %vector.main.loop.iter.check229 ]
  br label %vec.epilog.vector.body247

vec.epilog.vector.body247:                        ; preds = %vec.epilog.vector.body247, %vec.epilog.ph245
  %index248 = phi i64 [ %vec.epilog.resume.val240, %vec.epilog.ph245 ], [ %index.next250, %vec.epilog.vector.body247 ] ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index248
  %wide.load249 = load <4 x i8>, ptr %i.ky, align 1, !tbaa !20
  %i.kz = getelementptr i8, ptr %i.kq, i64 %index248
  store <4 x i8> %wide.load249, ptr %i.kz, align 1, !tbaa !20
  %index.next250 = add nuw i64 %index248, 4       ; 2 uses
  %i.la = icmp eq i64 %index.next250, %n.vec246
  br i1 %i.la, label %vec.epilog.middle.block251, label %vec.epilog.vector.body247, !llvm.loop !1025

vec.epilog.middle.block251:                       ; preds = %vec.epilog.vector.body247
  br i1 %cmp.n252, label %._crit_edge55, label %vec.epilog.scalar.ph242.preheader

vec.epilog.scalar.ph242.preheader:                ; preds = %vector.scevcheck225, %iter.check241, %vec.epilog.iter.check243, %vec.epilog.middle.block251
  %indvars.iv129.ph = phi i64 [ 0, %vector.scevcheck225 ], [ 0, %iter.check241 ], [ %n.vec232, %vec.epilog.iter.check243 ], [ %n.vec246, %vec.epilog.middle.block251 ]
  br label %vec.epilog.scalar.ph242

vec.epilog.scalar.ph242:                          ; preds = %vec.epilog.scalar.ph242.preheader, %vec.epilog.scalar.ph242
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %vec.epilog.scalar.ph242 ], [ %indvars.iv129.ph, %vec.epilog.scalar.ph242.preheader ] ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv129
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !20
  %i.ld = getelementptr i8, ptr %i.kq, i64 %indvars.iv129
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !20
  %indvars.iv.next130 = add i64 %indvars.iv129, 1 ; 2 uses
  %i.le = and i64 %indvars.iv.next130, 4294967295
  %.not290 = icmp eq i64 %i.t, %i.le
  br i1 %.not290, label %._crit_edge55, label %vec.epilog.scalar.ph242, !llvm.loop !1026

._crit_edge55:                                    ; preds = %vec.epilog.scalar.ph242, %middle.block238, %vec.epilog.middle.block251, %bb.l
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %.not288 = icmp eq i64 %indvars.iv.next134, %i.il
  br i1 %.not288, label %.loopexit16, label %.preheader14, !llvm.loop !1027

.loopexit16:                                      ; preds = %._crit_edge55, %bb.g
  tail call void @free(ptr noundef %i.hv) #31
  tail call void @free(ptr noundef %i.hw) #31
  tail call void @free(ptr noundef %i.hy) #31
  tail call void @free(ptr noundef %i.ia) #31
  tail call void @free(ptr noundef %i.ih) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %.loopexit

bb.m:                                             ; preds = %.lr.ph38, %bb.m
  %indvars.iv109 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next110, %bb.m ] ; 4 uses
  %.337 = phi ptr [ null, %.lr.ph38 ], [ %i.lm, %bb.m ]
  %i.lf = mul i64 %i.u, %indvars.iv109
  %i.lg = mul i64 %i.t, %indvars.iv109
  %i.lh = load ptr, ptr %i.an, align 8, !tbaa !1028
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv109
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !20  ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 %i.lf ; 2 uses
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !20
  %i.ll = getelementptr i8, ptr %i.lk, i64 1
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 %i.lg ; 2 uses
  tail call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.ll, ptr noundef %i.lm, ptr noundef %.337, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext %i.lj)
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %.not285 = icmp eq i64 %indvars.iv.next110, %i.ao
  br i1 %.not285, label %.loopexit, label %bb.m, !llvm.loop !1029

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull readonly align 1 dereferenceable(48) %4, i64 48, i1 false), !tbaa !20, !alias.scope !1030
  store i32 1, ptr %5, align 8, !tbaa !115
  %i.ln = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ln, i8 0, i64 16, i1 false)
  %i.lo = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #30 ; 6 uses
  store ptr %i.lo, ptr %i.f, align 16, !tbaa !10
  %i.lp = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #30 ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !10
  %i.lr = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #30 ; 6 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.lr, ptr %i.ls, align 16, !tbaa !10
  %i.lt = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #30 ; 6 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !10
  %i.lv = insertelement <4 x ptr> poison, ptr %i.lo, i64 0
  %i.lw = insertelement <4 x ptr> %i.lv, ptr %i.lp, i64 1
  %i.lx = insertelement <4 x ptr> %i.lw, ptr %i.lr, i64 2
  %i.ly = insertelement <4 x ptr> %i.lx, ptr %i.lt, i64 3
  %i.lz = icmp eq <4 x ptr> %i.ly, splat (ptr null)
  %i.ma = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #30 ; 6 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.ma, ptr %i.mb, align 16, !tbaa !10
  %.not284.4 = icmp eq ptr %i.ma, null
  %i.mc = bitcast <4 x i1> %i.lz to i4
  %i.md = icmp ne i4 %i.mc, 0
  %op.rdx368 = or i1 %i.md, %.not284.4            ; 2 uses
  %spec.select308.4 = select i1 %op.rdx368, i32 83, i32 0
  %.not28029 = icmp eq i32 %3, 0
  %or.cond93 = or i1 %op.rdx368, %.not28029
  br i1 %or.cond93, label %.loopexit21, label %.preheader19.lr.ph

.preheader19.lr.ph:                               ; preds = %bb.n
  %i.me = and i64 %i.t, 4294967295                ; 10 uses
  %.not28227 = icmp eq i64 %i.t, 0
  %i.mf = zext i32 %3 to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %i.mk = add nuw nsw i64 %i.n, %i.s
  %i.ml = add nsw i64 %i.mk, -1                   ; 2 uses
  %i.mm = add i64 %i.a, 1
  %min.iters.check = icmp samesign ult i64 %i.t, 4
  %i.mn = and i64 %i.ml, 4294967295
  %i.mo = icmp eq i64 %i.mn, 4294967295
  %i.mp = icmp ugt i64 %i.ml, 4294967295
  %i.mq = or i1 %i.mo, %i.mp
  %min.iters.check218 = icmp samesign ult i64 %i.t, 32
  %i.mr = and i64 %i.t, 28
  %n.vec = and i64 %i.t, 4611686018427387872      ; 4 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.mr, 0
  %n.vec220 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %cmp.n224 = icmp eq i64 %i.t, %n.vec220
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.lr.ph, %._crit_edge
  %indvars.iv101 = phi i64 [ 0, %.preheader19.lr.ph ], [ %indvars.iv.next102, %._crit_edge ] ; 4 uses
  %.431 = phi ptr [ null, %.preheader19.lr.ph ], [ %i.mv, %._crit_edge ] ; 5 uses
  %i.ms = mul i64 %i.u, %indvars.iv101
  %i.mt = add i64 %i.mm, %i.ms
  %i.mu = mul i64 %i.t, %indvars.iv101
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 %i.mu ; 6 uses
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.lo, ptr noundef %i.mv, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 0)
  store i64 0, ptr %i.e, align 16, !tbaa !8
  store ptr null, ptr %i.g, align 8, !tbaa !10
  %i.mw = load ptr, ptr %i.ln, align 8, !tbaa !656 ; 2 uses
  %.not.i = icmp eq ptr %i.mw, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader19
  %i.mx = call noundef i32 %i.mw(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef %i.lo, i64 noundef %i.me, ptr noundef nonnull %5), !inline_history !657 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %.preheader19
  %i.my = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef %i.lo, i64 noundef %i.me, ptr noundef nonnull %5) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.mz = load ptr, ptr %i.g, align 8, !tbaa !10
  call void @free(ptr noundef %i.mz) #31
  %i.na = load i64, ptr %i.e, align 16, !tbaa !8  ; 2 uses
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.lp, ptr noundef %i.mv, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 1)
  store i64 0, ptr %i.mg, align 8, !tbaa !8
  store ptr null, ptr %i.g, align 8, !tbaa !10
  %i.nb = load ptr, ptr %i.ln, align 8, !tbaa !656 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.nb, null
  br i1 %.not.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.nc = call noundef i32 %i.nb(ptr noundef nonnull %i.g, ptr noundef nonnull %i.mg, ptr noundef %i.lp, i64 noundef %i.me, ptr noundef nonnull %5), !inline_history !657 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.nd = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.mg, ptr noundef %i.lp, i64 noundef %i.me, ptr noundef nonnull %5) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ne = load ptr, ptr %i.g, align 8, !tbaa !10
  call void @free(ptr noundef %i.ne) #31
  %i.nf = load i64, ptr %i.mg, align 8, !tbaa !8  ; 2 uses
  %i.ng = icmp ult i64 %i.nf, %i.na
  %spec.select = call i64 @llvm.umin.i64(i64 %i.nf, i64 %i.na) ; 2 uses
  %spec.select205 = zext i1 %i.ng to i32
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.lr, ptr noundef %i.mv, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 2)
  store i64 0, ptr %i.mh, align 16, !tbaa !8
  store ptr null, ptr %i.g, align 8, !tbaa !10
  %i.nh = load ptr, ptr %i.ln, align 8, !tbaa !656 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.nh, null
  br i1 %.not.i.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ni = call noundef i32 %i.nh(ptr noundef nonnull %i.g, ptr noundef nonnull %i.mh, ptr noundef %i.lr, i64 noundef %i.me, ptr noundef nonnull %5), !inline_history !657 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.nj = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.mh, ptr noundef %i.lr, i64 noundef %i.me, ptr noundef nonnull %5) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.nk = load ptr, ptr %i.g, align 8, !tbaa !10
  call void @free(ptr noundef %i.nk) #31
  %i.nl = load i64, ptr %i.mh, align 16, !tbaa !8 ; 2 uses
  %i.nm = icmp ult i64 %i.nl, %spec.select
  %spec.select206 = call i64 @llvm.umin.i64(i64 %i.nl, i64 %spec.select) ; 2 uses
  %spec.select207 = select i1 %i.nm, i32 2, i32 %spec.select205
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.lt, ptr noundef %i.mv, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 3)
  store i64 0, ptr %i.mi, align 8, !tbaa !8
  store ptr null, ptr %i.g, align 8, !tbaa !10
  %i.nn = load ptr, ptr %i.ln, align 8, !tbaa !656 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.nn, null
  br i1 %.not.i.3, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.no = call noundef i32 %i.nn(ptr noundef nonnull %i.g, ptr noundef nonnull %i.mi, ptr noundef %i.lt, i64 noundef %i.me, ptr noundef nonnull %5), !inline_history !657 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.np = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.mi, ptr noundef %i.lt, i64 noundef %i.me, ptr noundef nonnull %5) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.nq = load ptr, ptr %i.g, align 8, !tbaa !10
  call void @free(ptr noundef %i.nq) #31
  %i.nr = load i64, ptr %i.mi, align 8, !tbaa !8  ; 2 uses
  %i.ns = icmp ult i64 %i.nr, %spec.select206
  %spec.select208 = call i64 @llvm.umin.i64(i64 %i.nr, i64 %spec.select206)
  %spec.select209 = select i1 %i.ns, i32 3, i32 %spec.select207
  call fastcc void @_ZL14filterScanlinePhPKhS1_mmh(ptr noundef %i.ma, ptr noundef %i.mv, ptr noundef %.431, i64 noundef %i.t, i64 noundef %i.x, i8 noundef zeroext 4)
  store i64 0, ptr %i.mj, align 16, !tbaa !8
  store ptr null, ptr %i.g, align 8, !tbaa !10
  %i.nt = load ptr, ptr %i.ln, align 8, !tbaa !656 ; 2 uses
  %.not.i.4 = icmp eq ptr %i.nt, null
  br i1 %.not.i.4, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.nu = call noundef i32 %i.nt(ptr noundef nonnull %i.g, ptr noundef nonnull %i.mj, ptr noundef %i.ma, i64 noundef %i.me, ptr noundef nonnull %5), !inline_history !657 ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.nv = call noundef i32 @_Z21lodepng_zlib_compressPPhPmPKhmPK23LodePNGCompressSettings(ptr noundef nonnull %i.g, ptr noundef nonnull %i.mj, ptr noundef %i.ma, i64 noundef %i.me, ptr noundef nonnull %5) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.nw = load ptr, ptr %i.g, align 8, !tbaa !10
  call void @free(ptr noundef %i.nw) #31
  %i.nx = load i64, ptr %i.mj, align 16, !tbaa !8
  %i.ny = icmp ult i64 %i.nx, %spec.select208
  %spec.select210 = select i1 %i.ny, i32 4, i32 %spec.select209 ; 2 uses
  %i.nz = trunc nuw nsw i32 %spec.select210 to i8
  %i.oa = mul i64 %i.u, %indvars.iv101
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 %i.oa ; 2 uses
  store i8 %i.nz, ptr %i.ob, align 1, !tbaa !20
  br i1 %.not28227, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.ac
  %i.oc = zext nneg i32 %spec.select210 to i64
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.oc
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !10 ; 4 uses
  %i.of = getelementptr i8, ptr %i.ob, i64 1      ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.og = ptrtoaddr ptr %i.oe to i64
  %i.oh = sub i64 %i.og, %i.mt
  %diff.check = icmp ugt i64 %i.oh, -32
  %or.cond366 = select i1 %i.mq, i1 true, i1 %diff.check
  br i1 %or.cond366, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check218, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 %index ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %wide.load = load <16 x i8>, ptr %i.oi, align 1, !tbaa !20
  %wide.load219 = load <16 x i8>, ptr %i.oj, align 1, !tbaa !20
  %i.ok = getelementptr i8, ptr %i.of, i64 %index ; 2 uses
  %i.ol = getelementptr i8, ptr %i.ok, i64 16
end_hunk_5
