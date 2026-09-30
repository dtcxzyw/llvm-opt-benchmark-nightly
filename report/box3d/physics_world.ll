Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@MoverCastCallback:bb.a
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load float, ptr %i.l, align 8, !tbaa !353
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !352  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %2, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4760
  %i.r = load i16, ptr %i.q, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 196
  %i.t = load i16, ptr %i.s, align 4, !tbaa !248
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !354
  %.sroa.5.0.insert.ext = zext i16 %i.t to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.r to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.01.0.insert.ext = and i64 %i.p, 4294967295
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.01.0.insert.ext
  %.sroa.01.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.5.0.insert.shift
  %i.w = tail call zeroext i1 %i.o(i64 %.sroa.01.0.insert.insert, ptr noundef %i.v) #21
  br i1 %i.w, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.y = load float, ptr %i.x, align 8, !tbaa !353
  br label %bb.i

.thread:                                          ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false), !tbaa.struct !348
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !346
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float %i.ab, ptr %i.ac, align 4, !tbaa !349
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 3880
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !91
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !280
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [128 x i8], ptr %i.ae, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %6, ptr noundef nonnull %i.a, ptr noundef %i.ai) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.aj, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.540.0.copyload = load float, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %i.al = fsub float %.sroa.540.0.copyload, %.sroa.2.0.copyload
  %i.am = load <2 x float>, ptr %6, align 8
  %i.an = fsub <2 x float> %i.am, %.sroa.0.0.copyload
  store <2 x float> %i.an, ptr %5, align 8, !tbaa !142, !alias.scope !624
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.al, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !142, !alias.scope !624
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @b3ShapeCastShape(ptr dead_on_unwind nonnull writable sret(%struct.b3CastOutput) align 4 %7, ptr noundef nonnull %i.e, ptr noundef nonnull byval(%struct.b3Transform) align 8 %5, ptr noundef nonnull %4) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !338 ; 3 uses
  %i.aq = fcmp oeq float %i.ap, 0.000000e+00
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.as = load float, ptr %i.ar, align 8, !tbaa !353
  br label %bb.h

bb.g:                                             ; preds = %.thread
  store float %i.ap, ptr %i.ar, align 8, !tbaa !353
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi float [ %i.as, %bb.f ], [ %i.ap, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b
  %.2 = phi float [ %i.m, %bb.b ], [ %.1, %bb.h ], [ %i.y, %bb.e ]
  ret float %.2
}

declare void @b3RecW_F32(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @b3World_SetCustomFilterCallback(i32 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [4768 x i8], ptr @b3_worlds, i64 %i.b ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !76, !range !77, !noundef !78
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr i8, ptr %i.c, i64 -4768
  %i.h = icmp eq ptr %i.g, null
  %i.i = or i1 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 -104
  store ptr %1, ptr %i.j, align 8, !tbaa !625
  %i.k = getelementptr i8, ptr %i.c, i64 -96
  store ptr %2, ptr %i.k, align 16, !tbaa !626
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @b3World_SetPreSolveCallback(i32 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [4768 x i8], ptr @b3_worlds, i64 %i.b ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !76, !range !77, !noundef !78
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr i8, ptr %i.c, i64 -4768
  %i.h = icmp eq ptr %i.g, null
  %i.i = or i1 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 -120
  store ptr %1, ptr %i.j, align 8, !tbaa !627
  %i.k = getelementptr i8, ptr %i.c, i64 -112
  store ptr %2, ptr %i.k, align 16, !tbaa !628
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3World_SetGravity(i32 %0, <2 x float> %1, float %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.b3RecArgs_WorldSetGravity, align 4 ; 6 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [4768 x i8], ptr @b3_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -32
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !202 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 %0, ptr %3, align 4, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <2 x float> %1, ptr %i.f, align 4, !tbaa !142
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %2, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !142
  call void @b3RecWrite_WorldSetGravity(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -340
  store <2 x float> %1, ptr %i.g, align 4, !tbaa !142
  %.sroa.3.0..sroa_idx5 = getelementptr i8, ptr %i.c, i64 -332
  store float %2, ptr %.sroa.3.0..sroa_idx5, align 4, !tbaa !142
  ret void
}

declare void @b3RecWrite_WorldSetGravity(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @b3World_GetGravity(i32 %0) local_unnamed_addr #3 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [4768 x i8], ptr @b3_worlds, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -340
  %.sroa.02.0.copyload = load <2 x float>, ptr %i.d, align 4, !tbaa !142
  %.sroa.23.0..sroa_idx = getelementptr i8, ptr %i.c, i64 -332
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !142
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.02.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.23.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @b3World_Explode(i32 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.b3RecArgs_WorldExplode, align 8 ; 6 uses
  %3 = alloca %struct.ExplosionContext, align 8   ; 6 uses
  %4 = alloca %struct.b3AABB, align 16            ; 6 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !632
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.b, align 8, !tbaa !142 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load <4 x float>, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !142 ; 4 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !633
  %i.f = and i32 %0, 65535
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr [4768 x i8], ptr @b3_worlds, i64 %i.g ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -5       ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !76, !range !77, !noundef !78
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr i8, ptr %i.h, i64 -4768    ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = or i1 %i.m, %i.k
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.h, i64 -32
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !202 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 %0, ptr %2, align 8, !tbaa !203
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !634
  call void @b3RecWrite_WorldExplode(ptr noundef nonnull %i.p, ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i8 1, ptr %i.i, align 1, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.l, ptr %3, align 8, !tbaa !356
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.019.0.copyload, ptr %i.s, align 8, !tbaa !142
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x float> %i.d, ptr %.sroa.5.0..sroa_idx21, align 8, !tbaa !142
  %i.t = extractelement <4 x float> %i.d, i64 2
  %i.u = fadd float %i.e, %i.t                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.019.0.copyload, i64 1
  %5 = shufflevector <2 x float> %.sroa.019.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %6 = shufflevector <4 x float> %5, <4 x float> %i.d, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.v = insertelement <4 x float> poison, float %i.u, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.x = fsub <4 x float> %6, %i.w
  %i.y = fadd <4 x float> %6, %i.w
  %i.z = shufflevector <4 x float> %i.x, <4 x float> %i.y, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.z, ptr %4, align 16, !tbaa !142, !alias.scope !635
  %7 = fadd float %.sroa.01.4.vec.extract.i, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %7, ptr %i.aa, align 16, !tbaa !310, !alias.scope !635
  %8 = extractelement <4 x float> %i.d, i64 0
  %9 = fadd float %8, %i.u
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %9, ptr %10, align 4, !tbaa !311, !alias.scope !635
  %i.ab = getelementptr i8, ptr %i.h, i64 -3808
  %i.ac = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.ab, ptr noundef nonnull byval(%struct.b3AABB) align 8 %4, i64 noundef %i.a, i1 noundef zeroext false, ptr noundef nonnull @ExplosionCallback, ptr noundef nonnull %3) #21 ; 0 uses
  store i8 0, ptr %i.i, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b3RecWrite_WorldExplode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @ExplosionCallback(i32 %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #8 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 7 uses
  %4 = alloca %struct.b3Vec3, align 8             ; 6 uses
  %5 = alloca %struct.b3DistanceInput, align 8    ; 10 uses
  %6 = alloca %struct.b3SimplexCache, align 4     ; 4 uses
  %7 = alloca %struct.b3DistanceOutput, align 8   ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !356    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4080
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111
  %sext = shl i64 %1, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = getelementptr inbounds [232 x i8], ptr %i.c, i64 %i.d ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !636
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3880
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !280
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [128 x i8], ptr %i.j, i64 %i.m ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %i.a, ptr noundef %i.n) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0132.0.copyload = load <2 x float>, ptr %i.o, align 8
  %.sroa.2133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2133.0.copyload = load float, ptr %.sroa.2133.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.r = load <2 x float>, ptr %i.q, align 4      ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.t = load <2 x float>, ptr %i.s, align 4      ; 3 uses
  %i.u = load <2 x float>, ptr %3, align 8, !tbaa !142
  %i.v = fsub <2 x float> %.sroa.0132.0.copyload, %i.u ; 4 uses
  %i.w = load float, ptr %i.p, align 8, !tbaa !269
  %i.x = fsub float %.sroa.2133.0.copyload, %i.w  ; 3 uses
  %i.y = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1 ; 2 uses
  %i.aa = fmul <2 x float> %i.z, %i.r
  %i.ab = shufflevector <2 x float> %i.t, <2 x float> %i.r, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ac = fmul <2 x float> %i.v, %i.ab
  %i.ad = shufflevector <2 x float> %i.r, <2 x float> %i.t, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ae = fmul <2 x float> %i.v, %i.ad
  %i.af = insertelement <2 x float> %i.y, float %i.x, i64 0 ; 2 uses
  %i.ag = fmul <2 x float> %i.af, %i.r
  %i.ah = fsub <2 x float> %i.aa, %i.ae
  %i.ai = fsub <2 x float> %i.ac, %i.ag
  %i.aj = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ak = fmul <2 x float> %i.af, %i.aj
  %i.al = fmul <2 x float> %i.z, %i.aj
  %i.am = fsub <2 x float> %i.ah, %i.ak           ; 2 uses
  %i.an = fsub <2 x float> %i.ai, %i.al           ; 2 uses
  %i.ao = fmul <2 x float> %i.ad, %i.am
  %i.ap = fmul <2 x float> %i.ab, %i.an
  %i.aq = fsub <2 x float> %i.ao, %i.ap
  %i.ar = shufflevector <2 x float> %i.an, <2 x float> %i.am, <2 x i32> <i32 0, i32 3>
  %i.as = fmul <2 x float> %i.r, %i.ar            ; 2 uses
  %shift = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.as, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.au = fmul <2 x float> %i.aq, splat (float 2.000000e+00)
  %i.av = fadd <2 x float> %i.v, %i.au
  %i.aw = fmul float %i.at, 2.000000e+00
  %i.ax = fadd float %i.x, %i.aw
  store <2 x float> %i.av, ptr %4, align 8
  %.sroa.2131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.ax, ptr %.sroa.2131.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ay = call { ptr, i64 } @b3MakeShapeProxy(ptr noundef nonnull %i.e) #21 ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1
  store ptr %i.az, ptr %5, align 8, !tbaa !315
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ba, ptr %.sroa.4127.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.bb, align 8, !tbaa !315
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %.sroa.2124.0..sroa_idx, align 8, !tbaa !82
  %.sroa.3125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float 0.000000e+00, ptr %.sroa.3125.0..sroa_idx, align 4, !tbaa !142
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, ptr noundef nonnull align 4 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !285
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i8 1, ptr %i.bd, align 4, !tbaa !638
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #21
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !639 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !640 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 3 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !642
  %i.bk = fadd float %i.bf, %i.bh                 ; 2 uses
  %i.bl = fcmp ogt float %i.bj, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bm = call zeroext i1 @b3WakeBody(ptr noundef nonnull %i.a, ptr noundef %i.n) #21 ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !271
  %.not = icmp eq i32 %i.bo, 2
  br i1 %.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %.sroa.0114.0.copyload = load <2 x float>, ptr %7, align 8, !tbaa !142
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !142
  %i.bp = load float, ptr %i.bi, align 4, !tbaa !642
  %i.bq = fcmp oeq float %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.br = call { <2 x float>, float } @b3GetShapeCentroid(ptr noundef nonnull %i.e) #21 ; 2 uses
  %.fca.0.extract108 = extractvalue { <2 x float>, float } %i.br, 0
  %.fca.1.extract109 = extractvalue { <2 x float>, float } %i.br, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0114.0 = phi <2 x float> [ %.fca.0.extract108, %bb.e ], [ %.sroa.0114.0.copyload, %bb.d ] ; 3 uses
  %.sroa.6.0 = phi float [ %.fca.1.extract109, %bb.e ], [ %.sroa.6.0.copyload, %bb.d ] ; 4 uses
  %.sroa.099.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.2100.0.copyload = load float, ptr %.sroa.2131.0..sroa_idx, align 8
  %i.bs = fsub <2 x float> %.sroa.0114.0, %.sroa.099.0.copyload ; 3 uses
  %i.bt = fsub float %.sroa.6.0, %.sroa.2100.0.copyload ; 3 uses
  %i.bu = fmul <2 x float> %i.bs, %i.bs           ; 2 uses
  %shift211 = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop212 = fadd <2 x float> %i.bu, %shift211
  %i.bv = extractelement <2 x float> %foldExtExtBinop212, i64 0
  %i.bw = fmul float %i.bt, %i.bt
  %i.bx = fadd float %i.bw, %i.bv                 ; 2 uses
  %i.by = fcmp ogt float %i.bx, f0x2BC80000
  br i1 %i.by, label %b3Normalize.exit, label %bb.g

b3Normalize.exit:                                 ; preds = %bb.f
  %sqrt = call float @llvm.sqrt.f32(float %i.bx)
  %i.bz = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.bs, %i.cb
  %i.cd = fmul float %i.bt, %i.bz
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %b3Normalize.exit
  %.sroa.0103.0 = phi <2 x float> [ %i.cc, %b3Normalize.exit ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.f ] ; 5 uses
  %.sroa.10.0 = phi float [ %i.cd, %b3Normalize.exit ], [ 0.000000e+00, %bb.f ] ; 5 uses
  %i.ce = call float @b3GetShapeProjectedArea(ptr noundef nonnull %i.e, <2 x float> %.sroa.0103.0, float %.sroa.10.0) #21
  %i.cf = load float, ptr %i.bi, align 4, !tbaa !642 ; 2 uses
  %i.cg = fcmp ogt float %i.cf, %i.bf
  %i.ch = fcmp ogt float %i.bh, 0.000000e+00
  %or.cond = and i1 %i.ch, %i.cg
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ci = fsub float %i.bk, %i.cf
  %i.cj = fdiv float %i.ci, %i.bh                 ; 3 uses
  %i.ck = fcmp olt float %i.cj, 0.000000e+00
  %i.cl = fcmp ogt float %i.cj, 1.000000e+00
  %i.cm = select i1 %i.cl, float 1.000000e+00, float %i.cj
  %i.cn = select i1 %i.ck, float 0.000000e+00, float %i.cm
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0158 = phi float [ %i.cn, %bb.h ], [ 1.000000e+00, %bb.g ]
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cp = load float, ptr %i.co, align 4, !tbaa !643
  %i.cq = fmul float %i.ce, %i.cp
  %i.cr = fmul float %.0158, %i.cq
  %i.cs = load float, ptr %i.f, align 8, !tbaa !636
  %i.ct = fmul float %i.cs, %i.cr                 ; 2 uses
  %i.cu = load <2 x float>, ptr %i.q, align 4     ; 5 uses
  %i.cv = load <2 x float>, ptr %i.s, align 4     ; 4 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %i.cu, i64 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !357
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 3920
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !93 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 176
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 192
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !107
end_hunk_0
