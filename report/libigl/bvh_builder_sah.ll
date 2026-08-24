Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_sah?download=true
inline.NumInlined: 1131
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN6embree4sse225BVH4Quad4vSceneBuilderSAHEPvPNS_5SceneEm:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1360
  %spec.select.i.i = select i1 %i.i, ptr null, ptr %i.j
  store ptr %spec.select.i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 32, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = tail call noundef i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 4) #19, !srcloc !3
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 4, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 28, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store <2 x float> splat (float 1.000000e+00), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 1024, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 -1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 2097152, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 0, ptr %i.y, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6embree4sse225BVH4Quad4iSceneBuilderSAHEPvPNS_5SceneEm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #18 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6embree4sse214BVHNBuilderSAHILi4ENS_6QuadMiILi4EEEEE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1360
  %spec.select.i.i = select i1 %i.i, ptr null, ptr %i.j
  store ptr %spec.select.i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 32, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = tail call noundef i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 4) #19, !srcloc !3
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 4, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 28, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store <2 x float> splat (float 1.000000e+00), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 1024, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 -1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 2097152, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 0, ptr %i.y, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6embree4sse234BVH4QuantizedQuad4vSceneBuilderSAHEPvPNS_5SceneEm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #18 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6embree4sse223BVHNBuilderSAHQuantizedILi4ENS_6QuadMvILi4EEEEE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1360
  %spec.select.i.i = select i1 %i.i, ptr null, ptr %i.j
  store ptr %spec.select.i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 32, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = tail call noundef i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 4) #19, !srcloc !3
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 4, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 28, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store <2 x float> splat (float 1.000000e+00), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 1024, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 -1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 2097152, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i32 0, ptr %i.x, align 4
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6embree4sse234BVH4QuantizedQuad4iSceneBuilderSAHEPvPNS_5SceneEm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #18 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6embree4sse223BVHNBuilderSAHQuantizedILi4ENS_6QuadMiILi4EEEEE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1360
  %spec.select.i.i = select i1 %i.i, ptr null, ptr %i.j
  store ptr %spec.select.i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 32, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = tail call noundef i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 4) #19, !srcloc !3
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 4, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 28, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store <2 x float> splat (float 1.000000e+00), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 1024, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 -1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 2097152, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i32 0, ptr %i.x, align 4
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6embree4sse226BVH4VirtualSceneBuilderSAHEPvPNS_5SceneEm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 852
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #18 ; 21 uses
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6embree4sse214BVHNBuilderSAHILi4ENS_6ObjectEEE, i64 16), ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = icmp eq ptr %i.b, null
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  %spec.select.i.i = select i1 %i.n, ptr null, ptr %i.o
  store ptr %spec.select.i.i, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.f, i32 7)
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i64 32, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.w = tail call noundef i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 4) #19, !srcloc !3
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %i.t)
  store i64 %i.y, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i64 %i.t, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store <2 x float> splat (float 1.000000e+00), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i64 1024, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store i64 -1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store i64 536870912, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store i32 -1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  store i8 0, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store i32 0, ptr %i.ag, align 8
  ret ptr %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6embree4sse225BVH4VirtualMeshBuilderSAHEPvPNS_12UserGeometryEjm(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #18 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6embree4sse214BVHNBuilderSAHILi4ENS_6ObjectEEE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 16             ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1360
  %spec.select.i.i = select i1 %i.i, ptr null, ptr %i.j
  store ptr %spec.select.i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 32, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = tail call noundef i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 4) #19, !srcloc !3
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 7, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store <2 x float> splat (float 1.000000e+00), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 1024, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 -1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 536870912, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 0, ptr %i.y, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6embree4sse227BVH4InstanceSceneBuilderSAHEPvPNS_5SceneENS_8Geometry9GTypeMaskE(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #18 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6embree4sse214BVHNBuilderSAHILi4ENS_17InstancePrimitiveEEE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1360
  %spec.select.i.i = select i1 %i.i, ptr null, ptr %i.j
  store ptr %spec.select.i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 32, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = tail call noundef i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 4) #19, !srcloc !3
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store <2 x float> splat (float 1.000000e+00), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 1024, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 -1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 -1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 0, ptr %i.y, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6embree4sse226BVH4InstanceMeshBuilderSAHEPvPNS_8InstanceENS_8Geometry9GTypeMaskEjm(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #18 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6embree4sse214BVHNBuilderSAHILi4ENS_17InstancePrimitiveEEE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 16             ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1360
  %spec.select.i.i = select i1 %i.i, ptr null, ptr %i.j
  store ptr %spec.select.i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 32, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = tail call noundef i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 4) #19, !srcloc !3
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 7, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store <2 x float> splat (float 1.000000e+00), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 1024, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 -1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 %3, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 0, ptr %i.y, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
end_hunk_0
