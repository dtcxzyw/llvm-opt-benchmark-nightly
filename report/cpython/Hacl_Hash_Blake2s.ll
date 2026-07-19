inline.NumInlined: 101
inline.NumDeleted: 7
begin_hunk_0_@reset_raw:bb.a
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
  %i.u = shl i64 %indvars.iv.next.i193, 6
  %i.v = add i64 %i.u, %.sroa.3145.0.copyload
  %i.w = shl i64 %indvars.iv.i192, 6
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
  %i.aw = shl i64 %indvars.iv.next.i207, 6
  %i.ax = add i64 %i.aw, %i.ad
  %i.ay = shl i64 %indvars.iv.i206, 6
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
  %i.l = zext nneg i32 %i.i to i64
  %.064 = select i1 %or.cond3, i64 64, i64 %i.l
  %i.m = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.n = trunc i8 %.sroa.558.0.copyload to i1
  %i.o = getelementptr i8, ptr %.sroa.548.0.copyload, i64 %i.m
  %i.p = sub nsw i64 0, %.064
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.q, i64 %i.m, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext %i.n, i64 noundef %.sroa.649.0.copyload, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load <4 x i32>, ptr %i.d, align 16, !tbaa !6
  store <4 x i32> %i.t, ptr %i.a, align 16
  %i.u = load <4 x i32>, ptr %i.s, align 16, !tbaa !6
  store <4 x i32> %i.u, ptr %i.r, align 16
  %i.v = zext i8 %.sroa.457.0.copyload to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.v, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.sroa.4.0.copyload = load i8, ptr %.sroa.457.0..sroa_idx, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret i8 %.sroa.4.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i24 0, 131072) i24 @_Py_LibHacl_Hacl_Hash_Blake2s_info(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !12
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
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_free(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !18
  tail call void @free(ptr noundef %.sroa.44.0.copyload) #17
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #17
  tail call void @free(ptr noundef %.sroa.6.0.copyload) #17
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.068.0.copyload = load i8, ptr %0, align 8, !tbaa !12
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.469.0.copyload = load i8, ptr %.sroa.469.0..sroa_idx, align 1, !tbaa !12
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.570.0.copyload = load i8, ptr %.sroa.570.0..sroa_idx, align 2, !tbaa !13
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.772.0.copyload = load ptr, ptr %.sroa.772.0..sroa_idx, align 8, !tbaa !15
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.873.0.copyload = load ptr, ptr %.sroa.873.0..sroa_idx, align 8, !tbaa !18
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !20
  %i.a = and i8 %.sroa.570.0.copyload, 1
  %i.b = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #18 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, ptr noundef nonnull align 1 dereferenceable(64) %.sroa.873.0.copyload, i64 64, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 16, i64 noundef 4) #18 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 16, i64 noundef 4) #18 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #17
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.772.0.copyload, i64 64, i1 false)
  %i.h = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #19 ; 7 uses
  %cond = icmp eq ptr %i.h, null
  br i1 %cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i8 %i.a to i64
  %i.j = shl nuw nsw i64 %i.i, 16
  %i.k = zext i8 %.sroa.469.0.copyload to i64
  %i.l = shl nuw nsw i64 %i.k, 8
  %i.m = or disjoint i64 %i.j, %i.l
  %i.n = zext i8 %.sroa.068.0.copyload to i64
  %i.o = or disjoint i64 %i.m, %i.n
  store i64 %i.o, ptr %i.h, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.d, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !15
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !20
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #17
  tail call void @free(ptr noundef nonnull %i.f) #17
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.critedge, %bb.f, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %.critedge ], [ null, %bb.f ], [ %i.h, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_hash_with_key(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [16 x i32], align 16              ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.e, align 4, !tbaa !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 -1694144372, ptr %i.f, align 4, !tbaa !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 528734635, ptr %i.g, align 8, !tbaa !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 1541459225, ptr %i.h, align 4, !tbaa !6
  %i.i = and i32 %1, 255
  %i.j = shl i32 %5, 8
  %i.k = and i32 %i.j, 65280
  %i.l = or disjoint i32 %i.k, %i.i
  %i.m = xor i32 %i.l, 1795745383
  store i32 %i.m, ptr %i.b, align 16, !tbaa !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <4 x i32> <i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119>, ptr %i.n, align 4, !tbaa !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store <4 x i32> <i32 -1694144372, i32 528734635, i32 1541459225, i32 1779033703>, ptr %i.o, align 4, !tbaa !6
  call fastcc void @update(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %5, ptr noundef %4, i32 noundef %3, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load <4 x i32>, ptr %i.b, align 16, !tbaa !6
  store <4 x i32> %i.q, ptr %i.a, align 16
  %i.r = load <4 x i32>, ptr %i.d, align 16, !tbaa !6
  store <4 x i32> %i.r, ptr %i.p, align 16
  %i.s = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %i.s, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 64) #17
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update(ptr nofree noundef nonnull captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #15 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %i.c = alloca [64 x i8], align 16               ; 6 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.d = zext i32 %2 to i64                       ; 3 uses
  %i.e = icmp ugt i32 %2, 63
  %i.f = sub nsw i64 64, %i.d
  %i.g = select i1 %i.e, i64 0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.c, i64 %i.d
  call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 0, i64 %i.g, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 %i.d, i1 false)
  %i.i = icmp eq i32 %4, 0                        ; 2 uses
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext %i.i, i1 noundef zeroext false, i64 noundef 64, ptr noundef nonnull %i.c)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
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
  br i1 %exitcond.not.i.i, label %update_blocks.exit, label %.lr.ph.i.i, !llvm.loop !10

update_blocks.exit:                               ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
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
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
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
  br i1 %exitcond.not.i.i24, label %update_blocks.exit25, label %.lr.ph.i.i21, !llvm.loop !10

update_blocks.exit25:                             ; preds = %.lr.ph.i.i21, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.al = zext i32 %4 to i64                      ; 2 uses
  %i.am = getelementptr i8, ptr %5, i64 %i.al
  %i.an = zext nneg i32 %i.ac to i64
  %i.ao = select i1 %or.cond.i16, i64 64, i64 %i.an ; 2 uses
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr i8, ptr %i.am, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.aq, i64 %i.ao, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef %i.al, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %update_blocks.exit25, %update_blocks.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_hash_with_key_and_params(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.Hacl_Hash_Blake2b_blake2_params_s) align 8 captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [16 x i32], align 16              ; 12 uses
  %i.c = alloca [16 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.e, align 16, !tbaa !6
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.f, align 16, !tbaa !6
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = load i8, ptr %3, align 8, !tbaa !28      ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  %i.t = shl nuw i32 %i.s, 16
  %i.u = or disjoint i32 %i.p, %i.l
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !30   ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = lshr i64 %i.z, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load i16, ptr %i.ad, align 8
  %i.af = zext i16 %i.ae to i32
  %i.ag = shl nuw i32 %i.af, 16
  %i.ah = xor i32 %i.v, 1779033703
  %i.ai = xor i32 %i.x, -1150833019
  %i.aj = xor i32 %i.aa, 1013904242
  %i.ak = xor i32 %i.ag, %i.ac
  %i.al = xor i32 %i.ak, -1521486534
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ap = load <2 x i32>, ptr %i.h, align 1
  %i.aq = load <2 x i32>, ptr %i.j, align 1
  %i.ar = shufflevector <2 x i32> %i.ap, <2 x i32> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.as = xor <4 x i32> %i.ar, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store i32 %i.ah, ptr %i.b, align 16, !tbaa !6
  store i32 %i.ai, ptr %i.am, align 4, !tbaa !6
  store i32 %i.aj, ptr %i.an, align 8, !tbaa !6
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !6
  store <4 x i32> %i.as, ptr %i.d, align 16, !tbaa !6
  call fastcc void @update(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %i.o, ptr noundef %4, i32 noundef %2, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.au = load <4 x i32>, ptr %i.b, align 16, !tbaa !6
  store <4 x i32> %i.au, ptr %i.a, align 16
  %i.av = load <4 x i32>, ptr %i.d, align 16, !tbaa !6
  store <4 x i32> %i.av, ptr %i.at, align 16
  %i.aw = zext i8 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %i.aw, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 64) #17
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind allocsize(0) }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"_Bool", !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 int", !17, i64 0}
!17 = !{!"any pointer", !8, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !17, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!23, !8, i64 1}
!23 = !{!"Hacl_Hash_Blake2b_blake2_params_s", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !7, i64 4, !21, i64 8, !8, i64 16, !8, i64 17, !19, i64 24, !19, i64 32}
!24 = !{!17, !17, i64 0}
!25 = !{i64 0, i64 1, !12, i64 1, i64 1, !12, i64 2, i64 1, !13, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 8, !18, i64 32, i64 8, !20}
!26 = !{!23, !19, i64 24}
!27 = !{!23, !19, i64 32}
!28 = !{!23, !8, i64 0}
!29 = !{!23, !7, i64 4}
!30 = !{!23, !21, i64 8}
end_hunk_0
