inline.NumInlined: 120
inline.NumDeleted: 7
begin_hunk_0_@_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update:bb.a
  %i.j = add i64 %.sroa.3145.0.copyload, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0122, i64 24, i1 false), !tbaa.struct !23
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
  %.sroa.6120.0.copyload = load ptr, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
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
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit195, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  br label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.lr.ph.i191, %.lr.ph.preheader.i
  %indvars.iv.i192 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i193, %.lr.ph.i191 ] ; 2 uses
  %indvars.iv.next.i193 = add nuw nsw i64 %indvars.iv.i192, 1 ; 3 uses
  %i.u = shl i64 %indvars.iv.next.i193, 6
  %i.v = add i64 %i.u, %.sroa.3145.0.copyload
  %i.w = shl i64 %indvars.iv.i192, 6
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  tail call fastcc void @update_block(ptr noundef %.sroa.4118.0.copyload, ptr noundef %.sroa.5119.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.v, ptr noundef readonly %i.x)
  %exitcond.not.i194 = icmp eq i64 %indvars.iv.next.i193, %wide.trip.count.i
  br i1 %exitcond.not.i194, label %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit195, label %.lr.ph.i191, !llvm.loop !11

_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit195: ; preds = %.lr.ph.i191, %bb.e
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
  %.sroa.462.0.copyload = load ptr, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !17 ; 5 uses
  %.189 = select i1 %or.cond, i64 64, i64 %i.d
  %i.ac = getelementptr i8, ptr %.sroa.462.0.copyload, i64 %.189
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %1, i64 %i.aa, i1 false)
  %i.ad = add i64 %.sroa.3145.0.copyload, %i.aa   ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.049, i64 24, i1 false), !tbaa.struct !23
  store ptr %.sroa.462.0.copyload, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !17
  store i64 %i.ad, ptr %.sroa.3145.0..sroa_idx, align 8, !tbaa !19
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
  br i1 %i.ai, label %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit201, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %bb.f
  %i.aj = zext nneg i32 %.0182 to i64
  %i.ak = sub i64 %i.ad, %i.aj
  %i.al = add i64 %i.ak, 64
  tail call fastcc void @update_block(ptr noundef %.sroa.447.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.al, ptr noundef readonly %.sroa.462.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit201

_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit201: ; preds = %.lr.ph.i197, %bb.f
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
  br i1 %.not.i202, label %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit209, label %.lr.ph.preheader.i203

.lr.ph.preheader.i203:                            ; preds = %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit201
  %wide.trip.count.i204 = zext nneg i32 %i.ar to i64
  br label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %.lr.ph.i205, %.lr.ph.preheader.i203
  %indvars.iv.i206 = phi i64 [ 0, %.lr.ph.preheader.i203 ], [ %indvars.iv.next.i207, %.lr.ph.i205 ] ; 2 uses
  %indvars.iv.next.i207 = add nuw nsw i64 %indvars.iv.i206, 1 ; 3 uses
  %i.aw = shl i64 %indvars.iv.next.i207, 6
  %i.ax = add i64 %i.aw, %i.ad
  %i.ay = shl i64 %indvars.iv.i206, 6
  %i.az = getelementptr i8, ptr %i.ab, i64 %i.ay
  tail call fastcc void @update_block(ptr noundef %.sroa.447.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.ax, ptr noundef readonly %i.az)
  %exitcond.not.i208 = icmp eq i64 %indvars.iv.next.i207, %wide.trip.count.i204
  br i1 %exitcond.not.i208, label %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit209, label %.lr.ph.i205, !llvm.loop !11

_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit209: ; preds = %.lr.ph.i205, %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit201
  %i.ba = zext i32 %i.at to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.462.0.copyload, ptr align 1 %i.av, i64 %i.ba, i1 false)
  %i.bb = add i64 %i.ad, %i.an
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  store ptr %.sroa.447.0.copyload, ptr %.sroa.447.0..sroa_idx, align 8, !tbaa !15
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  br label %.sink.split

.sink.split:                                      ; preds = %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit195, %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit209, %bb.c
  %.sroa.4135.0.copyload.sink = phi ptr [ %.sroa.4135.0.copyload, %bb.c ], [ %.sroa.462.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit209 ], [ %.sroa.6120.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit195 ]
  %.sink = phi i64 [ %i.j, %bb.c ], [ %i.bb, %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit209 ], [ %i.z, %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit195 ]
  store ptr %.sroa.4135.0.copyload.sink, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !17
  store i64 %.sink, ptr %.sroa.3145.0..sroa_idx, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_digest(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %i.c = alloca [4 x <2 x i64>], align 16         ; 3 uses
  %i.d = alloca [4 x <2 x i64>], align 16         ; 6 uses
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.457.0.copyload = load i8, ptr %.sroa.457.0..sroa_idx, align 1, !tbaa !10
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.558.0.copyload = load i8, ptr %.sroa.558.0..sroa_idx, align 2, !tbaa !13
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.447.0.copyload = load ptr, ptr %.sroa.447.0..sroa_idx, align 8, !tbaa !15
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.548.0.copyload = load ptr, ptr %.sroa.548.0..sroa_idx, align 8, !tbaa !17
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.649.0.copyload = load i64, ptr %.sroa.649.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.e = and i64 %.sroa.649.0.copyload, 63        ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp ne i64 %.sroa.649.0.copyload, 0
  %or.cond = and i1 %i.g, %i.f
  %i.h = trunc nuw nsw i64 %i.e to i32
  %.0 = select i1 %or.cond, i32 64, i32 %i.h      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.d, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.447.0.copyload, i64 64, i1 false)
  %i.i = and i32 %.0, 63                          ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.k, %i.j
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
  %1 = load <3 x i8>, ptr %0, align 8, !tbaa !10
  %2 = and <3 x i8> %1, <i8 -1, i8 -1, i8 1>
  %3 = zext <3 x i8> %2 to <3 x i24>
  %4 = shl <3 x i24> %3, <i24 0, i24 8, i24 16>
  %5 = tail call i24 @llvm.vector.reduce.or.v3i24(<3 x i24> %4)
  ret i24 %5
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
  %i.e = icmp ugt i32 %2, 63
  %i.f = sub nsw i64 64, %i.d
  %i.g = select i1 %i.e, i64 0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.c, i64 %i.d
  call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 0, i64 %i.g, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 %i.d, i1 false)
  %i.i = icmp eq i32 %4, 0                        ; 2 uses
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext %i.i, i1 noundef zeroext false, i64 noundef 64, ptr noundef nonnull %i.c)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %4, 6                           ; 2 uses
  %i.k = and i32 %4, 63                           ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i = and i1 %i.l, %i.m                  ; 2 uses
  %i.n = sext i1 %or.cond.i to i32
  %.023.i = add nsw i32 %i.j, %i.n                ; 2 uses
  %.not.i.i = icmp eq i32 %.023.i, 0
  br i1 %.not.i.i, label %update_blocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext nneg i32 %.023.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.o = shl i64 %indvars.iv.next.i.i, 6
  %i.p = and i64 %i.o, 4294967232
  %i.q = add nuw nsw i64 %i.p, 64
  %i.r = shl i64 %indvars.iv.i.i, 6
  %i.s = and i64 %i.r, 4294967232
  %i.t = getelementptr i8, ptr %5, i64 %i.s
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.q, ptr noundef readonly %i.t)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %update_blocks.exit, label %.lr.ph.i.i, !llvm.loop !11

update_blocks.exit:                               ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.u = zext i32 %4 to i64                       ; 2 uses
  %i.v = getelementptr i8, ptr %5, i64 %i.u
  %i.w = zext nneg i32 %i.k to i64
  %i.x = select i1 %or.cond.i, i64 64, i64 %i.w   ; 2 uses
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr i8, ptr %i.v, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.z, i64 %i.x, i1 false)
  %i.aa = add nuw nsw i64 %i.u, 64
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef %i.aa, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ab = lshr i32 %4, 6                          ; 2 uses
  %i.ac = and i32 %4, 63                          ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = icmp ne i32 %i.ab, 0
  %or.cond.i16 = and i1 %i.ad, %i.ae              ; 2 uses
  %i.af = sext i1 %or.cond.i16 to i32
  %.023.i17 = add nsw i32 %i.ab, %i.af            ; 2 uses
  %.not.i.i18 = icmp eq i32 %.023.i17, 0
  br i1 %.not.i.i18, label %update_blocks.exit25, label %.lr.ph.preheader.i.i19

.lr.ph.preheader.i.i19:                           ; preds = %bb.d
  %wide.trip.count.i.i20 = zext nneg i32 %.023.i17 to i64
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.preheader.i.i19
  %indvars.iv.i.i22 = phi i64 [ 0, %.lr.ph.preheader.i.i19 ], [ %indvars.iv.next.i.i23, %.lr.ph.i.i21 ] ; 2 uses
  %indvars.iv.next.i.i23 = add nuw nsw i64 %indvars.iv.i.i22, 1 ; 3 uses
  %i.ag = shl i64 %indvars.iv.next.i.i23, 6
  %i.ah = and i64 %i.ag, 4294967232
  %i.ai = shl i64 %indvars.iv.i.i22, 6
  %i.aj = and i64 %i.ai, 4294967232
  %i.ak = getelementptr i8, ptr %5, i64 %i.aj
  tail call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.ah, ptr noundef readonly %i.ak)
  %exitcond.not.i.i24 = icmp eq i64 %indvars.iv.next.i.i23, %wide.trip.count.i.i20
  br i1 %exitcond.not.i.i24, label %update_blocks.exit25, label %.lr.ph.i.i21, !llvm.loop !11

update_blocks.exit25:                             ; preds = %.lr.ph.i.i21, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.al = zext i32 %4 to i64                      ; 2 uses
  %i.am = getelementptr i8, ptr %5, i64 %i.al
  %i.an = zext nneg i32 %i.ac to i64
  %i.ao = select i1 %or.cond.i16, i64 64, i64 %i.an ; 2 uses
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr i8, ptr %i.am, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.aq, i64 %i.ao, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef %i.al, ptr noundef nonnull %i.a)
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i24 @llvm.vector.reduce.or.v3i24(<3 x i24>) #22

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
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"_Bool", !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !16, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = !{!22, !8, i64 1}
!22 = !{!"Hacl_Hash_Blake2b_blake2_params_s", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !7, i64 4, !20, i64 8, !8, i64 16, !8, i64 17, !18, i64 24, !18, i64 32}
!23 = !{i64 0, i64 1, !10, i64 1, i64 1, !10, i64 2, i64 1, !13, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 8, !17, i64 32, i64 8, !19}
!24 = !{!22, !18, i64 24}
!25 = !{!22, !18, i64 32}
!26 = !{!22, !8, i64 0}
!27 = !{!22, !7, i64 4}
!28 = !{!22, !20, i64 8}
end_hunk_0
