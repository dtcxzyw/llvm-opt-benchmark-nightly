Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@rlSetBlendMode:bb.a
  %i.o = load ptr, ptr @glad_glBlendEquation, align 8
  tail call void %i.o(i32 noundef 32778) #56
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.p = load ptr, ptr @glad_glBlendFunc, align 8
  tail call void %i.p(i32 noundef 1, i32 noundef 771) #56
  %i.q = load ptr, ptr @glad_glBlendEquation, align 8
  tail call void %i.q(i32 noundef 32774) #56
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @glad_glBlendFunc, align 8
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2664), align 8
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2668), align 4
  tail call void %i.r(i32 noundef %i.s, i32 noundef %i.t) #56
  %i.u = load ptr, ptr @glad_glBlendEquation, align 8
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2672), align 8
  tail call void %i.u(i32 noundef %i.v) #56
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.w = load ptr, ptr @glad_glBlendFuncSeparate, align 8
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2676), align 4
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2680), align 8
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2684), align 4
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2688), align 8
  tail call void %i.w(i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa) #56
  %i.ab = load ptr, ptr @glad_glBlendEquationSeparate, align 8
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2692), align 4
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2696), align 8
  tail call void %i.ab(i32 noundef %i.ac, i32 noundef %i.ad) #56
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2660), align 4
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2700), align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @rlSetBlendFactors(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2664), align 8
  %.not = icmp eq i32 %i.a, %0
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2668), align 4
  %.not6 = icmp eq i32 %i.b, %1
  %or.cond = select i1 %.not, i1 %.not6, i1 false
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2672), align 8
  %.not7 = icmp eq i32 %i.c, %2
  %or.cond8 = select i1 %or.cond, i1 %.not7, i1 false
  br i1 %or.cond8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2664), align 8
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2668), align 4
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2672), align 8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2700), align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @rlSetBlendFactorsSeparate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2676), align 4
  %.not = icmp eq i32 %i.a, %0
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2680), align 8
  %.not12 = icmp eq i32 %i.b, %1
  %or.cond = select i1 %.not, i1 %.not12, i1 false
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2684), align 4
  %.not13 = icmp eq i32 %i.c, %2
  %or.cond17 = select i1 %or.cond, i1 %.not13, i1 false
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2688), align 8
  %.not14 = icmp eq i32 %i.d, %3
  %or.cond18 = select i1 %or.cond17, i1 %.not14, i1 false
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2692), align 4
  %.not15 = icmp eq i32 %i.e, %4
  %or.cond19 = select i1 %or.cond18, i1 %.not15, i1 false
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2696), align 8
  %.not16 = icmp eq i32 %i.f, %5
  %or.cond20 = select i1 %or.cond19, i1 %.not16, i1 false
  br i1 %or.cond20, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2676), align 4
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2680), align 8
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2684), align 4
  store i32 %3, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2688), align 8
  store i32 %4, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2692), align 4
  store i32 %5, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2696), align 8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2700), align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @rlglInit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %2 = alloca %struct.rlRenderBatch, align 8      ; 4 uses
  store i1 true, ptr @isGpuReady, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 -1, ptr %i.a, align 4
  %i.b = call i32 @rlLoadTexture(ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1, i32 noundef 7, i32 noundef 1) ; 4 uses
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340), align 4
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2336), align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.15, i32 noundef %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 32, i64 noundef 4) #60 ; 2 uses
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2376), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.c, i8 -1, i64 128, i1 false)
  %i.d = call i32 @rlLoadShader(ptr noundef nonnull @.str.1401, i32 noundef 35633)
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2360), align 8
  %i.e = call i32 @rlLoadShader(ptr noundef nonnull @.str.1402, i32 noundef 35632) ; 2 uses
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2364), align 4
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2360), align 8
  %i.g = call i32 @rlLoadShaderProgramEx(i32 noundef %i.f, i32 noundef %i.e) ; 3 uses
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.1403, i32 noundef %i.g)
  %i.h = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  %i.j = call i32 %i.h(i32 noundef %i.i, ptr noundef nonnull @.str.74) #56, !inline_history !188
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2376), align 8
  store i32 %i.j, ptr %i.k, align 4
  %i.l = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  %i.n = call i32 %i.l(i32 noundef %i.m, ptr noundef nonnull @.str.75) #56, !inline_history !188
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2376), align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.n, ptr %i.p, align 4
  %i.q = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  %i.s = call i32 %i.q(i32 noundef %i.r, ptr noundef nonnull @.str.77) #56, !inline_history !188
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2376), align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i32 %i.s, ptr %i.u, align 4
  %i.v = load ptr, ptr @glad_glGetUniformLocation, align 8
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  %i.x = call i32 %i.v(i32 noundef %i.w, ptr noundef nonnull @.str.178) #56, !inline_history !188
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2376), align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 %i.x, ptr %i.z, align 4
  %i.aa = load ptr, ptr @glad_glGetUniformLocation, align 8
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  %i.ac = call i32 %i.aa(i32 noundef %i.ab, ptr noundef nonnull @.str.184) #56, !inline_history !188
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2376), align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i32 %i.ac, ptr %i.ae, align 4
  %i.af = load ptr, ptr @glad_glGetUniformLocation, align 8
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  %i.ah = call i32 %i.af(i32 noundef %i.ag, ptr noundef nonnull @.str.185) #56, !inline_history !188
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2376), align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  store i32 %i.ah, ptr %i.aj, align 4
  br label %rlLoadShaderDefault.exit

bb.f:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.1404, i32 noundef 0)
  br label %rlLoadShaderDefault.exit

rlLoadShaderDefault.exit:                         ; preds = %bb.e, %bb.f
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  store i32 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2384), align 8
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2376), align 8 ; 2 uses
  store ptr %i.al, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 2, ptr %i.am, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  call void @rlLoadRenderBatch(ptr dead_on_unwind nonnull writable sret(%struct.rlRenderBatch) align 8 %2, i32 noundef 1, i32 noundef 8192)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @RLGL, i64 8), ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 -1, ptr %i.ao, align 4
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 8), ptr @RLGL, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 240), i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 220), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 236), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 256), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 260), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 276), align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 176), i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 156), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 172), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 192), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 196), i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 212), align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 112), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 92), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 108), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 128), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 132), i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 148), align 4
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  %i.ap = load ptr, ptr @glad_glDepthFunc, align 8
  call void %i.ap(i32 noundef 515) #56
  %i.aq = load ptr, ptr @glad_glDisable, align 8
  call void %i.aq(i32 noundef 2929) #56
  %i.ar = load ptr, ptr @glad_glBlendFunc, align 8
  call void %i.ar(i32 noundef 770, i32 noundef 771) #56
  %i.as = load ptr, ptr @glad_glEnable, align 8
  call void %i.as(i32 noundef 3042) #56
  %i.at = load ptr, ptr @glad_glCullFace, align 8
  call void %i.at(i32 noundef 1029) #56
  %i.au = load ptr, ptr @glad_glFrontFace, align 8
  call void %i.au(i32 noundef 2305) #56
  %i.av = load ptr, ptr @glad_glEnable, align 8
  call void %i.av(i32 noundef 2884) #56
  %i.aw = load ptr, ptr @glad_glEnable, align 8
  call void %i.aw(i32 noundef 34895) #56
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2704), align 8
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2708), align 4
  %i.ax = load ptr, ptr @glad_glClearColor, align 8
  call void %i.ax(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #56
  %i.ay = load ptr, ptr @glad_glClearDepth, align 8
  call void %i.ay(double noundef 1.000000e+00) #56
  %i.az = load ptr, ptr @glad_glClear, align 8
  call void %i.az(i32 noundef 16640) #56
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret void

bb.h:                                             ; preds = %bb.h, %rlLoadShaderDefault.exit
  %indvars.iv = phi i64 [ 0, %rlLoadShaderDefault.exit ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 284), i64 %indvars.iv ; 7 uses
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.423.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.524.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ba, align 4
  %.sroa.625.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  store float 1.000000e+00, ptr %.sroa.625.0..sroa_idx.a, align 8
  %.sroa.626.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.626.0..sroa_idx.a, i8 0, i64 16, i1 false)
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store float 1.000000e+00, ptr %.sroa.727.0..sroa_idx, align 4
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 60
  store float 1.000000e+00, ptr %.sroa.728.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 284), i64 %indvars.iv ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %.sroa.423.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bb, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.423.0..sroa_idx.1, i8 0, i64 16, i1 false)
  %.sroa.524.0..sroa_idx.1.a = getelementptr inbounds nuw i8, ptr %i.bb, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.1.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bc, align 4
  %.sroa.625.0..sroa_idx.1.a = getelementptr inbounds nuw i8, ptr %i.bb, i64 84
  store float 1.000000e+00, ptr %.sroa.625.0..sroa_idx.1.a, align 8
  %.sroa.626.0..sroa_idx.1.a = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.626.0..sroa_idx.1.a, i8 0, i64 16, i1 false)
  %.sroa.727.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  store float 1.000000e+00, ptr %.sroa.727.0..sroa_idx.1, align 4
  %.sroa.728.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bb, i64 124
  store float 1.000000e+00, ptr %.sroa.728.0..sroa_idx.1, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32
  br i1 %exitcond.not.1, label %bb.g, label %bb.h
}

; Function Attrs: nounwind uwtable
define i32 @rlLoadTexture(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [4 x i32], align 16               ; 4 uses
  %i.f = alloca [4 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %.b = load i1, ptr @isGpuReady, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.38)
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @glad_glBindTexture, align 8
  tail call void %i.g(i32 noundef 3553, i32 noundef 0) #56
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2719), align 1, !range !170, !noundef !171
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = add i32 %3, -18
  %or.cond5 = icmp ult i32 %i.j, -4
  %or.cond.not = or i1 %or.cond5, %i.i
  br i1 %or.cond.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.41)
  br label %bb.ak

bb.e:                                             ; preds = %bb.c
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2720), align 8, !range !170, !noundef !171
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = icmp ne i32 %3, 18
  %or.cond7.not = or i1 %i.m, %i.l
  br i1 %or.cond7.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.42)
  br label %bb.ak

bb.g:                                             ; preds = %bb.e
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2721), align 1, !range !170, !noundef !171
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = add i32 %3, -21
  %or.cond9 = icmp ult i32 %i.p, -2
  %or.cond83.not = or i1 %or.cond9, %i.o
  br i1 %or.cond83.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.43)
  br label %bb.ak

bb.i:                                             ; preds = %bb.g
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2722), align 2, !range !170, !noundef !171
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = add i32 %3, -23
  %or.cond11 = icmp ult i32 %i.s, -2
  %or.cond85.not = or i1 %or.cond11, %i.r
  br i1 %or.cond85.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.44)
  br label %bb.ak

bb.k:                                             ; preds = %bb.i
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2723), align 1, !range !170, !noundef !171
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = add i32 %3, -25
  %or.cond13 = icmp ult i32 %i.v, -2
  %or.cond87.not = or i1 %or.cond13, %i.u
  br i1 %or.cond87.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.45)
  br label %bb.ak

bb.m:                                             ; preds = %bb.k
  %i.w = load ptr, ptr @glad_glPixelStorei, align 8
  tail call void %i.w(i32 noundef 3317, i32 noundef 1) #56
  %i.x = load ptr, ptr @glad_glGenTextures, align 8
  call void %i.x(i32 noundef 1, ptr noundef nonnull %i.a) #56
  %i.y = load ptr, ptr @glad_glBindTexture, align 8
  %i.z = load i32, ptr %i.a, align 4
  call void %i.y(i32 noundef 3553, i32 noundef %i.z) #56
  %.not = icmp eq ptr %0, null
  %i.aa = icmp sgt i32 %4, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.ab = add i32 %3, -1
  %or.cond.i = icmp ult i32 %i.ab, 13
  %i.ac = icmp slt i32 %3, 14
  %i.ad = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %2, i64 1
  br label %bb.n

._crit_edge:                                      ; preds = %bb.af, %bb.m
  %i.af = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.af(i32 noundef 3553, i32 noundef 10242, i32 noundef 10497) #56
  %i.ag = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.ag(i32 noundef 3553, i32 noundef 10243, i32 noundef 10497) #56
  %i.ah = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.ah(i32 noundef 3553, i32 noundef 10240, i32 noundef 9728) #56
  %i.ai = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.ai(i32 noundef 3553, i32 noundef 10241, i32 noundef 9728) #56
  %i.aj = icmp sgt i32 %4, 1
  br i1 %i.aj, label %bb.ag, label %bb.ah

bb.n:                                             ; preds = %.lr.ph, %bb.af
  %.06894 = phi i32 [ 0, %.lr.ph ], [ %i.bw, %bb.af ] ; 4 uses
  %.193 = phi ptr [ %0, %.lr.ph ], [ %.2, %bb.af ] ; 3 uses
  %.07092 = phi i32 [ 0, %.lr.ph ], [ %i.bt, %bb.af ] ; 2 uses
  %i.ak = phi <2 x i32> [ %i.ae, %.lr.ph ], [ %i.bv, %bb.af ] ; 7 uses
  switch i32 %3, label %bb.y [
    i32 1, label %.thread.i
    i32 2, label %bb.o
    i32 3, label %bb.o
    i32 5, label %bb.o
    i32 6, label %bb.o
    i32 7, label %bb.p
    i32 4, label %bb.q
    i32 8, label %bb.p
    i32 9, label %bb.r
    i32 10, label %bb.s
    i32 11, label %bb.o
    i32 12, label %bb.t
    i32 13, label %bb.u
    i32 14, label %bb.v
    i32 15, label %bb.v
    i32 18, label %bb.v
    i32 19, label %bb.v
    i32 21, label %bb.v
    i32 22, label %bb.v
    i32 16, label %bb.w
    i32 17, label %bb.w
    i32 20, label %bb.w
    i32 23, label %bb.w
    i32 24, label %bb.x
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  br label %.thread.i

bb.p:                                             ; preds = %bb.n, %bb.n
  br label %.thread.i

bb.q:                                             ; preds = %bb.n
  br label %.thread.i

bb.r:                                             ; preds = %bb.n
  br label %.thread.i

bb.s:                                             ; preds = %bb.n
  br label %.thread.i

bb.t:                                             ; preds = %bb.n
  br label %.thread.i

bb.u:                                             ; preds = %bb.n
  br label %.thread.i

bb.v:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.al = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.am = sdiv <2 x i32> %i.al, splat (i32 4)     ; 2 uses
  %i.an = extractelement <2 x i32> %i.am, i64 0
  %i.ao = shl i32 %i.an, 3
  %i.ap = extractelement <2 x i32> %i.am, i64 1
  %i.aq = mul i32 %i.ao, %i.ap
  br label %rlGetPixelDataSize.exit

bb.w:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.ar = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.as = sdiv <2 x i32> %i.ar, splat (i32 4)     ; 2 uses
  %i.at = extractelement <2 x i32> %i.as, i64 0
  %i.au = shl i32 %i.at, 4
  %i.av = extractelement <2 x i32> %i.as, i64 1
  %i.aw = mul i32 %i.au, %i.av
  br label %rlGetPixelDataSize.exit

bb.x:                                             ; preds = %bb.n
  %i.ax = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.ay = sdiv <2 x i32> %i.ax, splat (i32 4)     ; 2 uses
  %i.az = extractelement <2 x i32> %i.ay, i64 0
  %i.ba = shl nsw i32 %i.az, 2
  %i.bb = extractelement <2 x i32> %i.ay, i64 1
  %i.bc = mul i32 %i.ba, %i.bb
  br label %rlGetPixelDataSize.exit

bb.y:                                             ; preds = %bb.n
  br i1 %or.cond.i, label %.thread.i, label %rlGetPixelDataSize.exit
end_hunk_0
begin_hunk_1_@InitPlatform:bb.a
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 24), align 8
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0                    ; 2 uses
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0                    ; 2 uses
  %or.cond4 = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond4, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  store i32 800, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 44), align 4
  store i32 450, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 48), align 8
  %i.aw = lshr i32 %i.ap, 1
  %i.ax = add nsw i32 %i.aw, -400
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 52), align 4
  %i.ay = lshr i32 %i.ar, 1
  %i.az = add nsw i32 %i.ay, -225
  store i32 %i.az, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 56), align 8
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = phi i32 [ %i.ap, %bb.m ], [ %i.as, %bb.l ] ; 2 uses
  br i1 %i.av, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store i64 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 44), align 4
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 20), align 4 ; 3 uses
  store i64 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.bd = trunc i64 %i.bc to i32
  %i.be = lshr i64 %i.bc, 32
  %i.bf = trunc nuw i64 %i.be to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %i.bg = phi i32 [ %i.au, %bb.n ], [ %i.ar, %bb.o ], [ %i.bf, %bb.p ]
  %i.bh = phi i32 [ %i.ba, %bb.n ], [ %i.ba, %bb.o ], [ %i.bd, %bb.p ]
  %i.bi = load ptr, ptr @CORE, align 8            ; 2 uses
  %.not63 = icmp eq ptr %i.bi, null
  %i.bj = select i1 %.not63, ptr @.str.144, ptr %i.bi
  %i.bk = call ptr @glfwCreateWindow(i32 noundef %i.bh, i32 noundef %i.bg, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.an, ptr noundef null) #56 ; 3 uses
  store ptr %i.bk, ptr @platform.0, align 8
  %.not64.not = icmp eq ptr %i.bk, null
  br i1 %.not64.not, label %bb.r, label %.critedge72

bb.r:                                             ; preds = %bb.q
  call void @glfwTerminate() #56
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.145)
  br label %bb.be

bb.s:                                             ; preds = %bb.i
  br i1 %i.ah, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bl = phi i32 [ 1, %bb.t ], [ %i.ag, %bb.s ]
  br i1 %i.aj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bm = phi i32 [ 1, %bb.v ], [ %i.ai, %bb.u ]
  %i.bn = load ptr, ptr @CORE, align 8            ; 2 uses
  %.not60 = icmp eq ptr %i.bn, null
  %i.bo = select i1 %.not60, ptr @.str.144, ptr %i.bn
  %i.bp = call ptr @glfwCreateWindow(i32 noundef %i.bl, i32 noundef %i.bm, ptr noundef nonnull %i.bo, ptr noundef null, ptr noundef null) #56 ; 2 uses
  store ptr %i.bp, ptr @platform.0, align 8
  %.not61 = icmp eq ptr %i.bp, null
  br i1 %.not61, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @glfwTerminate() #56
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.145)
  br label %bb.be

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.bq = call i32 @GetCurrentMonitor()           ; 2 uses
  %i.br = call ptr @glfwGetMonitors(ptr noundef nonnull %i.a) #56
  %i.bs = load i32, ptr %i.a, align 4
  %i.bt = icmp slt i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.bu = sext i32 %i.bq to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call ptr @glfwGetVideoMode(ptr noundef %i.bw) #56 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4            ; 3 uses
  store i32 %i.by, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 20), align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ca = load i32, ptr %i.bz, align 4            ; 3 uses
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 24), align 8
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.by, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cd = phi i32 [ %i.by, %bb.aa ], [ %i.cb, %bb.z ]
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  br label %.thread

.thread:                                          ; preds = %bb.ab, %bb.ac
  %i.cg = phi i32 [ %i.ce, %bb.ab ], [ %i.ca, %bb.ac ]
  %i.ch = load ptr, ptr @platform.0, align 8
  call void @glfwSetWindowSize(ptr noundef %i.ch, i32 noundef %i.cd, i32 noundef %i.cg) #56
  %i.ci = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store <2 x i32> %i.ci, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %.pre77 = load ptr, ptr @platform.0, align 8
  br label %.critedge72

bb.ad:                                            ; preds = %bb.y
  call void @glfwTerminate() #56
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.146)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  br label %bb.be

.critedge72:                                      ; preds = %.thread, %bb.q
  %i.cj = phi ptr [ %.pre77, %.thread ], [ %i.bk, %bb.q ]
  call void @glfwMakeContextCurrent(ptr noundef %i.cj) #56
  %i.ck = call i32 @glfwGetError(ptr noundef null) #56
  %i.cl = and i32 %i.ck, -3
  %or.cond6.not = icmp eq i32 %i.cl, 65544
  br i1 %or.cond6.not, label %bb.ae, label %.thread89

.thread89:                                        ; preds = %.critedge72
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 12), align 4
  br label %bb.af

bb.ae:                                            ; preds = %.critedge72
  %.pre78 = load i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 12), align 4, !range !170
  %i.cm = trunc nuw i8 %.pre78 to i1
  br i1 %i.cm, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %.thread89, %bb.ae
  call void @glfwSwapInterval(i32 noundef 0) #56
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8 ; 2 uses
  %i.co = and i32 %i.cn, 64
  %.not65 = icmp eq i32 %i.co, 0
  br i1 %.not65, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @glfwSwapInterval(i32 noundef 1) #56
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.147)
  %.pre79 = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cp = phi i32 [ %.pre79, %bb.ag ], [ %i.cn, %bb.af ] ; 2 uses
  %i.cq = and i32 %i.cp, 8192
  %.not66 = icmp eq i32 %i.cq, 0
  br i1 %.not66, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 4575657222473777152, ptr %1, align 8
  %i.cr = and i32 %i.cp, 8194
  %or.cond.i = icmp eq i32 %i.cr, 8192
  br i1 %or.cond.i, label %bb.aj, label %GetWindowScaleDPI.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cs = load ptr, ptr @platform.0, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @glfwGetWindowContentScale(ptr noundef %i.cs, ptr noundef nonnull %1, ptr noundef nonnull %i.ct) #56
  %.pre.i = load <2 x float>, ptr %1, align 8
  br label %GetWindowScaleDPI.exit

GetWindowScaleDPI.exit:                           ; preds = %bb.ai, %bb.aj
  %i.cu = phi <2 x float> [ %.pre.i, %bb.aj ], [ splat (float 1.000000e+00), %bb.ai ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.cu, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.cu, i64 1
  %i.cv = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.cw = uitofp <2 x i32> %i.cv to <2 x float>
  %i.cx = fmul <2 x float> %i.cu, %i.cw
  %i.cy = fptosi <2 x float> %i.cx to <2 x i32>
  store <2 x i32> %i.cy, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 104), i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 144), i8 0, i64 16, i1 false)
  store float %.sroa.0.0.vec.extract, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 100), align 4
  store float %.sroa.0.4.vec.extract, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 120), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 124), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 140), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 160), align 8
  %i.cz = call i32 @glfwGetPlatform() #56
  %i.da = icmp eq i32 %i.cz, 393219
  br i1 %i.da, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %GetWindowScaleDPI.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  store i32 0, ptr %i.c, align 4
  %i.db = load ptr, ptr @platform.0, align 8
  call void @glfwGetFramebufferSize(ptr noundef %i.db, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #56
  %i.dc = load i32, ptr %i.b, align 4
  store i32 %i.dc, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.dd = load i32, ptr %i.c, align 4
  store i32 %i.dd, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  br label %bb.an

bb.al:                                            ; preds = %GetWindowScaleDPI.exit
  %i.de = fdiv <2 x float> splat (float 1.000000e+00), %i.cu
  store <2 x float> %i.de, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  %i.df = load ptr, ptr @platform.0, align 8
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  call void @glfwSetWindowSize(ptr noundef %i.df, i32 noundef %i.dg, i32 noundef %i.dh) #56
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.di = load i64, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store i64 %i.di, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.al, %bb.am
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  store i64 %i.dj, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 76), align 4
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.dl = and i32 %i.dk, 8192
  %.not67 = icmp eq i32 %i.dl, 0
  %i.dm = select i1 %.not67, ptr @.str.132, ptr @.str.149
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.148, ptr noundef nonnull %i.dm)
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 20), align 4
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 24), align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.150, i32 noundef %i.dn, i32 noundef %i.do)
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.151, i32 noundef %i.dp, i32 noundef %i.dq)
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.152, i32 noundef %i.dr, i32 noundef %i.ds)
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 68), align 4
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 72), align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.153, i32 noundef %i.dt, i32 noundef %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #56
  store i32 0, ptr %i.d, align 4
  %i.dv = call i32 @GetCurrentMonitor()
  %i.dw = call ptr @glfwGetMonitors(ptr noundef nonnull %i.d) #56
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #56
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #56
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #56
  store i32 0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #56
  store i32 0, ptr %i.h, align 4
  call void @glfwGetMonitorWorkarea(ptr noundef %i.dz, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #56
  %i.ea = load i32, ptr %i.e, align 4
  %i.eb = load i32, ptr %i.g, align 4
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.ed = sub i32 %i.eb, %i.ec
  %i.ee = lshr i32 %i.ed, 1
  %i.ef = add i32 %i.ee, %i.ea                    ; 2 uses
  %i.eg = load i32, ptr %i.f, align 4
  %i.eh = load i32, ptr %i.h, align 4
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  %i.ej = sub i32 %i.eh, %i.ei
  %i.ek = lshr i32 %i.ej, 1
  %i.el = add i32 %i.ek, %i.eg                    ; 2 uses
  store i32 %i.ef, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 36), align 4
  store i32 %i.el, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 40), align 8
  %i.em = load ptr, ptr @platform.0, align 8
  call void @glfwSetWindowPos(ptr noundef %i.em, i32 noundef %i.ef, i32 noundef %i.el) #56
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.eo = and i32 %i.en, 512
  %.not68 = icmp eq i32 %i.eo, 0
  br i1 %.not68, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ep = load ptr, ptr @platform.0, align 8
  call void @glfwIconifyWindow(ptr noundef %i.ep) #56
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #56
  call void @SetWindowState(i32 noundef %i.l)
  call void @rlLoadExtensions(ptr noundef nonnull @glfwGetProcAddress)
  %i.eq = load ptr, ptr @platform.0, align 8
  %i.er = call ptr @glfwSetWindowSizeCallback(ptr noundef %i.eq, ptr noundef nonnull @WindowSizeCallback) #56 ; 0 uses
  %i.es = load ptr, ptr @platform.0, align 8
  %i.et = call ptr @glfwSetFramebufferSizeCallback(ptr noundef %i.es, ptr noundef nonnull @FramebufferSizeCallback) #56 ; 0 uses
  %i.eu = load ptr, ptr @platform.0, align 8
  %i.ev = call ptr @glfwSetWindowPosCallback(ptr noundef %i.eu, ptr noundef nonnull @WindowPosCallback) #56 ; 0 uses
  %i.ew = load ptr, ptr @platform.0, align 8
  %i.ex = call ptr @glfwSetWindowMaximizeCallback(ptr noundef %i.ew, ptr noundef nonnull @WindowMaximizeCallback) #56 ; 0 uses
  %i.ey = load ptr, ptr @platform.0, align 8
  %i.ez = call ptr @glfwSetWindowIconifyCallback(ptr noundef %i.ey, ptr noundef nonnull @WindowIconifyCallback) #56 ; 0 uses
  %i.fa = load ptr, ptr @platform.0, align 8
  %i.fb = call ptr @glfwSetWindowFocusCallback(ptr noundef %i.fa, ptr noundef nonnull @WindowFocusCallback) #56 ; 0 uses
  %i.fc = load ptr, ptr @platform.0, align 8
  %i.fd = call ptr @glfwSetDropCallback(ptr noundef %i.fc, ptr noundef nonnull @WindowDropCallback) #56 ; 0 uses
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.ff = and i32 %i.fe, 8192
  %.not69 = icmp eq i32 %i.ff, 0
  br i1 %.not69, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %bb.ae
  call void (i32, ptr, ...) @TraceLog(i32 noundef 6, ptr noundef nonnull @.str.154)
  br label %bb.be

bb.ar:                                            ; preds = %bb.ap
  %i.fg = load ptr, ptr @platform.0, align 8
  %i.fh = call ptr @glfwSetWindowContentScaleCallback(ptr noundef %i.fg, ptr noundef nonnull @WindowContentScaleCallback) #56 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %i.fi = load ptr, ptr @platform.0, align 8
  %i.fj = call ptr @glfwSetKeyCallback(ptr noundef %i.fi, ptr noundef nonnull @KeyCallback) #56 ; 0 uses
  %i.fk = load ptr, ptr @platform.0, align 8
  %i.fl = call ptr @glfwSetCharCallback(ptr noundef %i.fk, ptr noundef nonnull @CharCallback) #56 ; 0 uses
  %i.fm = load ptr, ptr @platform.0, align 8
  %i.fn = call ptr @glfwSetMouseButtonCallback(ptr noundef %i.fm, ptr noundef nonnull @MouseButtonCallback) #56 ; 0 uses
  %i.fo = load ptr, ptr @platform.0, align 8
  %i.fp = call ptr @glfwSetCursorPosCallback(ptr noundef %i.fo, ptr noundef nonnull @MouseCursorPosCallback) #56 ; 0 uses
  %i.fq = load ptr, ptr @platform.0, align 8
  %i.fr = call ptr @glfwSetScrollCallback(ptr noundef %i.fq, ptr noundef nonnull @MouseScrollCallback) #56 ; 0 uses
  %i.fs = load ptr, ptr @platform.0, align 8
  %i.ft = call ptr @glfwSetCursorEnterCallback(ptr noundef %i.fs, ptr noundef nonnull @CursorEnterCallback) #56 ; 0 uses
  %i.fu = call ptr @glfwSetJoystickCallback(ptr noundef nonnull @JoystickCallback) #56 ; 0 uses
  %i.fv = load ptr, ptr @platform.0, align 8
  call void @glfwSetInputMode(ptr noundef %i.fv, i32 noundef 208900, i32 noundef 1) #56
  %i.fw = call i32 @glfwJoystickPresent(i32 noundef 0) #56
  %.not70 = icmp eq i32 %i.fw, 0
  br i1 %.not70, label %bb.aw, label %bb.av

bb.at:                                            ; preds = %bb.bc
  %i.fx = load i64, ptr %0, align 8
  %i.fy = mul i64 %i.fx, 1000000000
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = add i64 %i.fy, %i.ga
  store i64 %i.gb, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 3096), align 8
  br label %InitTimer.exit

bb.au:                                            ; preds = %bb.bc
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.1432)
  br label %InitTimer.exit

InitTimer.exit:                                   ; preds = %bb.at, %bb.au
  %i.gc = call double @glfwGetTime() #56
  store double %i.gc, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 3056), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @GetWorkingDirectory.currentDir, i8 0, i64 4096, i1 false)
  %i.gd = call ptr @getcwd(ptr noundef nonnull @GetWorkingDirectory.currentDir, i64 noundef 4095) #56
  store ptr %i.gd, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 184), align 8
  %i.ge = call i32 @glfwGetPlatform() #56
  %switch.tableidx = add i32 %i.ge, -393217       ; 2 uses
  %i.gf = icmp ult i32 %switch.tableidx, 5
  br i1 %i.gf, label %switch.lookup, label %bb.bd

bb.av:                                            ; preds = %bb.as
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2148), align 4
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2132), align 4
  %i.gg = call ptr @glfwGetJoystickName(i32 noundef 0) #56
  %i.gh = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @CORE, i64 2152), ptr noundef nonnull dereferenceable(1) %i.gg, i64 noundef 127) #56 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %bb.av
  %i.gi = call i32 @glfwJoystickPresent(i32 noundef 1) #56
  %.not70.1 = icmp eq i32 %i.gi, 0
  br i1 %.not70.1, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2149), align 1
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2136), align 8
  %i.gj = call ptr @glfwGetJoystickName(i32 noundef 1) #56
  %i.gk = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @CORE, i64 2280), ptr noundef nonnull dereferenceable(1) %i.gj, i64 noundef 127) #56 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gl = call i32 @glfwJoystickPresent(i32 noundef 2) #56
  %.not70.2 = icmp eq i32 %i.gl, 0
  br i1 %.not70.2, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2150), align 2
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2140), align 4
  %i.gm = call ptr @glfwGetJoystickName(i32 noundef 2) #56
  %i.gn = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @CORE, i64 2408), ptr noundef nonnull dereferenceable(1) %i.gm, i64 noundef 127) #56 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.go = call i32 @glfwJoystickPresent(i32 noundef 3) #56
  %.not70.3 = icmp eq i32 %i.go, 0
  br i1 %.not70.3, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2151), align 1
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2144), align 8
  %i.gp = call ptr @glfwGetJoystickName(i32 noundef 3) #56
  %i.gq = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @CORE, i64 2536), ptr noundef nonnull dereferenceable(1) %i.gp, i64 noundef 127) #56 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.gr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #56
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.at, label %bb.au

switch.lookup:                                    ; preds = %InitTimer.exit
  %i.gt = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.InitPlatform, i64 %i.gt
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %switch.lookup, %InitTimer.exit
  %.0 = phi ptr [ @.str.132, %InitTimer.exit ], [ %switch.load, %switch.lookup ]
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.160, ptr noundef nonnull %.0)
  br label %bb.be

bb.be:                                            ; preds = %bb.ad, %bb.r, %bb.x, %bb.aq, %bb.bd, %.critedge, %bb.b
  %.4 = phi i32 [ -1, %bb.b ], [ 0, %bb.bd ], [ -1, %bb.aq ], [ -1, %bb.r ], [ -1, %bb.ad ], [ -1, %bb.x ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret i32 %.4
}

declare ptr @glfwSetErrorCallback(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal void @ErrorCallback(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.1407, i32 noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @AllocateWrapper(i64 noundef %0, ptr nofree readnone captures(none) %1) #38 {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #60
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ReallocateWrapper(ptr noundef captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #39 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #61
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @DeallocateWrapper(ptr noundef captures(none) %0, ptr nofree readnone captures(none) %1) #33 {
bb.a:
  tail call void @free(ptr noundef %0) #56
  ret void
}

declare void @glfwInitAllocator(ptr noundef) local_unnamed_addr #34

declare i32 @glfwInit() local_unnamed_addr #34

declare void @glfwDefaultWindowHints() local_unnamed_addr #34

declare void @glfwWindowHint(i32 noundef, i32 noundef) local_unnamed_addr #34

declare ptr @glfwSetJoystickCallback(ptr noundef) local_unnamed_addr #34

declare ptr @glfwGetPrimaryMonitor() local_unnamed_addr #34

declare ptr @glfwCreateWindow(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #34

declare void @glfwTerminate() local_unnamed_addr #34

declare void @glfwMakeContextCurrent(ptr noundef) local_unnamed_addr #34

declare i32 @glfwGetError(ptr noundef) local_unnamed_addr #34

declare i32 @glfwGetPlatform() local_unnamed_addr #34

declare void @glfwGetFramebufferSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @SetMouseScale(float noundef %0, float noundef %1) local_unnamed_addr #2 {
bb.a:
  store float %0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  store float %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1880), align 8
  ret void
}

declare ptr @glfwGetProcAddress(ptr noundef) #34

declare ptr @glfwSetWindowSizeCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @WindowSizeCallback(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #10 {
bb.a:
  ret void
}

declare ptr @glfwSetFramebufferSizeCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal void @FramebufferSizeCallback(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #25 {
bb.a:
  %3 = alloca %struct.Vector2, align 8            ; 6 uses
  %i.a = icmp eq i32 %1, 0
  %i.b = icmp eq i32 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  %i.c = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 68), align 4
  %i.d = sdiv <2 x i32> %i.c, splat (i32 2)       ; 2 uses
  %i.e = load ptr, ptr @glad_glViewport, align 8
  %i.f = extractelement <2 x i32> %i.d, i64 0
  %i.g = extractelement <2 x i32> %i.d, i64 1
  tail call void %i.e(i32 noundef %i.f, i32 noundef %i.g, i32 noundef %1, i32 noundef %2) #56, !inline_history !232
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5889, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 156), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 172), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 176), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 192), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 196), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 212), align 4
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.i = uitofp i32 %i.h to double
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  %i.k = uitofp i32 %i.j to double
  tail call void @rlOrtho(double noundef 0.000000e+00, double noundef %i.i, double noundef %i.k, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00)
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5888, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 92), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 108), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 112), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 128), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 132), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 148), align 4
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 76), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 14), align 2
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8 ; 2 uses
  %i.n = and i32 %i.m, 2
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 104), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 144), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 100), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 120), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 124), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 140), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 160), align 8
  store <2 x float> splat (float 1.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = and i32 %i.m, 8192
  %.not22 = icmp eq i32 %i.o, 0
  br i1 %.not22, label %bb.e, label %GetWindowScaleDPI.exit

GetWindowScaleDPI.exit:                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 4575657222473777152, ptr %3, align 8
  %i.p = load ptr, ptr @platform.0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @glfwGetWindowContentScale(ptr noundef %i.p, ptr noundef nonnull %3, ptr noundef nonnull %i.q) #56
  %.pre.i = load <2 x float>, ptr %3, align 8     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.r = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.s = insertelement <2 x i32> %i.r, i32 %2, i64 1
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.pre.i, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.pre.i, i64 1
  %i.u = fdiv <2 x float> %i.t, %.pre.i
  %i.v = fptosi <2 x float> %i.u to <2 x i32>
  store <2 x i32> %i.v, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 104), i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 144), i8 0, i64 16, i1 false)
  store float %.sroa.0.0.vec.extract, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 100), align 4
  store float %.sroa.0.4.vec.extract, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 120), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 124), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 140), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 160), align 8
  %i.w = fdiv <2 x float> splat (float 1.000000e+00), %.pre.i
  store <2 x float> %i.w, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  br label %bb.f

bb.f:                                             ; preds = %GetWindowScaleDPI.exit, %bb.e, %bb.a, %bb.c
  ret void
}

declare ptr @glfwSetWindowPosCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @WindowPosCallback(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #2 {
bb.a:
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 36), align 4
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 40), align 8
  ret void
}

declare ptr @glfwSetWindowMaximizeCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @WindowMaximizeCallback(ptr nofree readnone captures(none) %0, i32 noundef %1) #9 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.b = and i32 %i.a, -1025
  %masksel = select i1 %.not, i32 0, i32 1024
  %storemerge = or disjoint i32 %i.b, %masksel
  store i32 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  ret void
}

declare ptr @glfwSetWindowIconifyCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @WindowIconifyCallback(ptr nofree readnone captures(none) %0, i32 noundef %1) #9 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.b = and i32 %i.a, -513
  %masksel = select i1 %.not, i32 0, i32 512
  %storemerge = or disjoint i32 %i.b, %masksel
  store i32 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  ret void
}

declare ptr @glfwSetWindowFocusCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @WindowFocusCallback(ptr nofree readnone captures(none) %0, i32 noundef %1) #9 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.b = and i32 %i.a, -2049
  %masksel = select i1 %.not, i32 2048, i32 0
  %storemerge = or disjoint i32 %i.b, %masksel
  store i32 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  ret void
}

declare ptr @glfwSetDropCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal void @WindowDropCallback(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #40 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 176), align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.lr.ph15.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 168), align 8
  tail call void @free(ptr noundef %i.c) #56
  br label %.lr.ph15.preheader

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 168), align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @free(ptr noundef %i.f) #56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 176), align 8
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph15.preheader:                               ; preds = %bb.b, %._crit_edge
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 176), align 8
  %i.j = zext nneg i32 %1 to i64
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #60 ; 2 uses
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 168), align 8
  br label %.lr.ph15

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %.lr.ph15
  %i.l = phi ptr [ %i.k, %.lr.ph15.preheader ], [ %i.o, %.lr.ph15 ]
  %indvars.iv18 = phi i64 [ 0, %.lr.ph15.preheader ], [ %indvars.iv.next19, %.lr.ph15 ] ; 4 uses
  %i.m = tail call noalias dereferenceable_or_null(4096) ptr @calloc(i64 noundef 4096, i64 noundef 1) #60
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv18
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 168), align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv18
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv18
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 4095) #56 ; 0 uses
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 176), align 8
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next19, %i.v
  br i1 %i.w, label %.lr.ph15, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph15, %bb.a
  ret void
}

declare ptr @glfwSetWindowContentScaleCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @WindowContentScaleCallback(ptr nofree readnone captures(none) %0, float noundef %1, float noundef %2) #9 {
bb.a:
  %i.a = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.b = uitofp <2 x i32> %i.a to <2 x float>
  %i.c = insertelement <2 x float> poison, float %1, i64 0
  %i.d = insertelement <2 x float> %i.c, float %2, i64 1 ; 2 uses
  %i.e = fmul <2 x float> %i.d, %i.b
  %i.f = fptosi <2 x float> %i.e to <2 x i32>     ; 2 uses
  store <2 x i32> %i.f, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  store <2 x i32> %i.f, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 76), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 104), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 144), i8 0, i64 16, i1 false)
  store float %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 100), align 4
  store float %2, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 120), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 124), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 140), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 160), align 8
  %i.g = fdiv <2 x float> splat (float 1.000000e+00), %i.d
  store <2 x float> %i.g, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  ret void
}

declare ptr @glfwSetKeyCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal void @KeyCallback(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %3, 3
  br i1 %i.b, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.c = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.KeyCallback, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.cast = trunc nuw i32 %3 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 65792, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.d
  store i8 %switch.masked, ptr %i.e, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  %i.f = icmp ne i32 %1, 280
  %i.g = and i32 %4, 16
  %.not = icmp eq i32 %i.g, 0
  %or.cond22 = or i1 %i.f, %.not
  br i1 %or.cond22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne i32 %1, 282
  %i.i = and i32 %4, 32
  %.not21 = icmp eq i32 %i.i, 0
  %or.cond23 = or i1 %i.h, %.not21
  br i1 %or.cond23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 196), i64 %i.j
  store i8 1, ptr %i.k, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1796), align 4 ; 2 uses
  %i.m = icmp slt i32 %i.l, 16
  %i.n = icmp eq i32 %3, 1                        ; 2 uses
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1732), i64 %i.o
  store i32 %1, ptr %i.p, align 4
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1796), align 4
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1796), align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 192), align 8
  %i.t = icmp eq i32 %1, %i.s
  %or.cond3 = and i1 %i.n, %i.t
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @platform.0, align 8
  tail call void @glfwSetWindowShouldClose(ptr noundef %i.u, i32 noundef 1) #56
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h
  ret void
}

declare ptr @glfwSetCharCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @CharCallback(ptr nofree readnone captures(none) %0, i32 noundef %1) #9 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1864), align 8 ; 2 uses
  %i.b = icmp slt i32 %i.a, 16
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1800), i64 %i.c
  store i32 %1, ptr %i.d, align 4
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1864), align 8
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1864), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @glfwSetMouseButtonCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal void @MouseButtonCallback(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 %3) #25 {
bb.a:
  %4 = alloca %struct.GestureEvent, align 8       ; 8 uses
  %i.a = trunc i32 %2 to i8                       ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1915), i64 %i.b
  store i8 %i.a, ptr %i.c, align 1
  %i.d = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2112), i64 %i.b
  store i8 %i.a, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i64 104, i1 false)
  %sext.mask = and i32 %2, 255
  %i.e = icmp eq i32 %sext.mask, 1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1923), i64 %i.b
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1884), align 4
  %i.m = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1868), align 4
  %i.n = fadd <2 x float> %i.l, %i.m
  %i.o = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.r = sitofp <2 x i32> %i.q to <2 x float>
  %i.s = fdiv <2 x float> %i.p, %i.r
  store <2 x float> %i.s, ptr %i.k, align 8
  tail call void @ProcessGestureEvent(ptr noundef nonnull byval(%struct.GestureEvent) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  ret void
}

declare ptr @glfwSetCursorPosCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal void @MouseCursorPosCallback(ptr nofree readnone captures(none) %0, double noundef %1, double noundef %2) #0 {
bb.a:
  %3 = alloca %struct.GestureEvent, align 8       ; 7 uses
  %i.a = insertelement <2 x double> poison, double %1, i64 0
  %i.b = insertelement <2 x double> %i.a, double %2, i64 1
  %i.c = fptrunc <2 x double> %i.b to <2 x float> ; 3 uses
  store <2 x float> %i.c, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1884), align 4
  store <2 x float> %i.c, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1984), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, i8 0, i64 96, i1 false)
  store i32 2, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.h = sitofp <2 x i32> %i.g to <2 x float>
  %i.i = fdiv <2 x float> %i.c, %i.h
  store <2 x float> %i.i, ptr %i.f, align 8
  tail call void @ProcessGestureEvent(ptr noundef nonnull byval(%struct.GestureEvent) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  ret void
}

declare ptr @glfwSetScrollCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @MouseScrollCallback(ptr nofree readnone captures(none) %0, double noundef %1, double noundef %2) #2 {
bb.a:
  %i.a = insertelement <2 x double> poison, double %1, i64 0
  %i.b = insertelement <2 x double> %i.a, double %2, i64 1
  %i.c = fptrunc <2 x double> %i.b to <2 x float>
  store <2 x float> %i.c, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1932), align 4
  ret void
}

declare ptr @glfwSetCursorEnterCallback(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @CursorEnterCallback(ptr nofree readnone captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %.not = icmp ne i32 %1, 0
  %. = zext i1 %.not to i8
  store i8 %., ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1914), align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @JoystickCallback(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp slt i32 %0, 4
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 262145, label %bb.c
    i32 262146, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [128 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2152), i64 %i.b ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i8 0, i64 128, i1 false)
  %i.d = tail call ptr @glfwGetJoystickName(i32 noundef %0) #56
  %i.e = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 127) #56 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = sext i32 %0 to i64
  %i.g = getelementptr inbounds [128 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2152), i64 %i.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, i8 0, i64 128, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #41

declare ptr @glfwGetJoystickName(i32 noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define ptr @GetWorkingDirectory() local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @GetWorkingDirectory.currentDir, i8 0, i64 4096, i1 false)
  %i.a = tail call ptr @getcwd(ptr noundef nonnull @GetWorkingDirectory.currentDir, i64 noundef 4095) #56
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @ClosePlatform() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @platform.0, align 8
  tail call void @glfwDestroyWindow(ptr noundef %i.a) #56
  tail call void @glfwTerminate() #56
  ret void
}

declare void @glfwDestroyWindow(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @InitWindow(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #25 {
bb.a:
  %3 = alloca %struct.Font, align 8               ; 4 uses
  %4 = alloca %struct.Font, align 8               ; 4 uses
  %5 = alloca %struct.Texture, align 8            ; 4 uses
  %6 = alloca %struct.Font, align 8               ; 4 uses
  %7 = alloca %struct.Texture, align 8            ; 4 uses
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.119)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.162)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.163)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.164)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.165)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.166)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.167)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.168)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.169)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.170)
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 15), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 104), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 144), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 100), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 120), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @CORE, i64 124), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 140), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 160), align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %2, align 1
  %.not16 = icmp eq i8 %i.a, 0
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %2, ptr @CORE, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2856) getelementptr inbounds nuw (i8, ptr @CORE, i64 192), i8 0, i64 2856, i1 false)
  store i32 256, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 192), align 8
  store <2 x float> splat (float 1.000000e+00), ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1908), align 4
  %i.b = tail call i32 @InitPlatform()
  %.not17 = icmp eq i32 %i.b, 0
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.171)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4 ; 2 uses
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8 ; 2 uses
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.i = phi i32 [ %i.e, %bb.f ], [ %i.h, %bb.g ]
  %i.j = phi i32 [ %i.c, %bb.f ], [ %i.g, %bb.g ]
  tail call void @rlglInit(i32 noundef %i.j, i32 noundef %i.i)
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  %i.m = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 68), align 4
  %i.n = sdiv <2 x i32> %i.m, splat (i32 2)       ; 2 uses
  %i.o = load ptr, ptr @glad_glViewport, align 8
  %i.p = extractelement <2 x i32> %i.n, i64 0
  %i.q = extractelement <2 x i32> %i.n, i64 1
  tail call void %i.o(i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.k, i32 noundef %i.l) #56, !inline_history !232
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5889, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 156), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 172), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 176), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 192), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 196), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 212), align 4
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.s = uitofp i32 %i.r to double
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8
  %i.u = uitofp i32 %i.t to double
  tail call void @rlOrtho(double noundef 0.000000e+00, double noundef %i.s, double noundef %i.u, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00)
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5888, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 92), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 108), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 112), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 128), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 132), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 148), align 4
  tail call void @LoadFontDefault() #56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  call void @GetFontDefault(ptr dead_on_unwind nonnull writable sret(%struct.Font) align 8 %3) #56
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1520
  %i.y = load <2 x float>, ptr %i.x, align 4      ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 1528
  %i.z = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.ab = and i32 %i.aa, 32
  %.not18 = icmp eq i32 %i.ab, 0
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  call void @GetFontDefault(ptr dead_on_unwind nonnull writable sret(%struct.Font) align 8 %4) #56
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ad = fadd <2 x float> %i.y, splat (float 2.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.ac, i64 20, i1 false)
  call void @SetShapesTexture(ptr noundef nonnull byval(%struct.Texture) align 8 %5, <2 x float> %i.ad, <2 x float> splat (float 1.000000e+00)) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #56
  call void @GetFontDefault(ptr dead_on_unwind nonnull writable sret(%struct.Font) align 8 %6) #56
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.af = fadd <2 x float> %i.y, splat (float 1.000000e+00)
  %i.ag = fadd <2 x float> %i.z, splat (float -2.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %i.ae, i64 20, i1 false)
  call void @SetShapesTexture(ptr noundef nonnull byval(%struct.Texture) align 8 %7, <2 x float> %i.af, <2 x float> %i.ag) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 3104), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 13), align 1
  %i.ah = call i64 @time(ptr noundef null) #56
  %i.ai = and i64 %i.ah, 4294967295               ; 4 uses
  %i.aj = add nuw nsw i64 %i.ai, -7046029254386353131 ; 2 uses
  %i.ak = lshr i64 %i.aj, 30
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, -4658895280553007687     ; 2 uses
  %i.an = lshr i64 %i.am, 27
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = mul i64 %i.ao, -7723592293110705685     ; 2 uses
  %i.aq = lshr i64 %i.ap, 31
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = trunc i64 %i.ar to i32
  store i32 %i.as, ptr @rprand_state.0, align 16
  %i.at = add nuw nsw i64 %i.ai, 4354685564936845354 ; 2 uses
  %i.au = lshr i64 %i.at, 30
  %i.av = xor i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, -4658895280553007687     ; 2 uses
  %i.ax = lshr i64 %i.aw, 27
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, -7723592293110705685     ; 2 uses
  %i.ba = lshr i64 %i.az, 63
  %i.bb = lshr i64 %i.az, 32
  %i.bc = xor i64 %i.ba, %i.bb
  %i.bd = trunc nuw i64 %i.bc to i32
  store i32 %i.bd, ptr @rprand_state.1, align 4
  %i.be = add nuw nsw i64 %i.ai, -2691343689449507777 ; 2 uses
  %i.bf = lshr i64 %i.be, 30
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = mul i64 %i.bg, -4658895280553007687     ; 2 uses
  %i.bi = lshr i64 %i.bh, 27
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = mul i64 %i.bj, -7723592293110705685     ; 2 uses
  %i.bl = lshr i64 %i.bk, 31
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr @rprand_state.2, align 8
  %i.bo = add nuw nsw i64 %i.ai, 8709371129873690708 ; 2 uses
  %i.bp = lshr i64 %i.bo, 30
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, -4658895280553007687     ; 2 uses
  %i.bs = lshr i64 %i.br, 27
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = mul i64 %i.bt, -7723592293110705685     ; 2 uses
  %i.bv = lshr i64 %i.bu, 63
  %i.bw = lshr i64 %i.bu, 32
  %i.bx = xor i64 %i.bv, %i.bw
  %i.by = trunc nuw i64 %i.bx to i32
  store i32 %i.by, ptr @rprand_state.3, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @GetWorkingDirectory.currentDir, i8 0, i64 4096, i1 false)
  %i.bz = call ptr @getcwd(ptr noundef nonnull @GetWorkingDirectory.currentDir, i64 noundef 4095) #56
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.172, ptr noundef %i.bz)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  ret void
}

declare void @LoadFontDefault() local_unnamed_addr #34

declare void @GetFontDefault(ptr dead_on_unwind writable sret(%struct.Font) align 8) local_unnamed_addr #34

declare void @SetShapesTexture(ptr noundef byval(%struct.Texture) align 8, <2 x float>, <2 x float>) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @SetRandomSeed(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 4 uses
  %i.b = add nuw nsw i64 %i.a, -7046029254386353131 ; 2 uses
  %i.c = lshr i64 %i.b, 30
  %i.d = xor i64 %i.c, %i.b
  %i.e = mul i64 %i.d, -4658895280553007687       ; 2 uses
  %i.f = lshr i64 %i.e, 27
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -7723592293110705685       ; 2 uses
  %i.i = lshr i64 %i.h, 31
  %i.j = xor i64 %i.i, %i.h
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr @rprand_state.0, align 16
  %i.l = add nuw nsw i64 %i.a, 4354685564936845354 ; 2 uses
  %i.m = lshr i64 %i.l, 30
  %i.n = xor i64 %i.m, %i.l
end_hunk_1
