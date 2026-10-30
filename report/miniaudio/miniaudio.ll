Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 280
begin_hunk_0_@ma_fader_set_fade:bb.a
  %i.s = trunc i64 %i.j to i32
  %i.t = uitofp i32 %i.s to float
  %i.u = fdiv float %i.r, %i.t
  %i.v = fsub float %i.p, %i.n
  %i.w = fmul float %i.u, %i.v
  %i.x = fadd float %i.n, %i.w
  br label %ma_fader_get_current_volume.exit.i

ma_fader_get_current_volume.exit.i:               ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.0.i = phi float [ %1, %bb.b ], [ %i.x, %bb.h ], [ 1.000000e+00, %bb.c ], [ %i.h, %bb.e ], [ %i.l, %bb.g ]
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %3, i64 4294967295)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.0.i, ptr %i.y, align 4, !tbaa !471
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %2, ptr %i.z, align 8, !tbaa !472
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.store.select.i, ptr %i.aa, align 8, !tbaa !473
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ab, align 8, !tbaa !468
  br label %ma_fader_set_fade_ex.exit

ma_fader_set_fade_ex.exit:                        ; preds = %bb.a, %ma_fader_get_current_volume.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ma_fader_set_fade_ex(ptr nofree noundef captures(address_is_null) %0, float noundef %1, float noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %1, 0.000000e+00
  br i1 %i.b, label %bb.c, label %ma_fader_get_current_volume.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !468  ; 4 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %ma_fader_get_current_volume.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !471
  br label %ma_fader_get_current_volume.exit

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !473  ; 2 uses
  %.not.i = icmp ult i64 %i.d, %i.j
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load float, ptr %i.k, align 8, !tbaa !472
  br label %ma_fader_get_current_volume.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !471 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load float, ptr %i.o, align 8, !tbaa !472
  %i.q = trunc i64 %i.d to i32
  %i.r = uitofp i32 %i.q to float
  %i.s = trunc i64 %i.j to i32
  %i.t = uitofp i32 %i.s to float
  %i.u = fdiv float %i.r, %i.t
  %i.v = fsub float %i.p, %i.n
  %i.w = fmul float %i.u, %i.v
  %i.x = fadd float %i.n, %i.w
  br label %ma_fader_get_current_volume.exit

ma_fader_get_current_volume.exit:                 ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.0 = phi float [ %1, %bb.b ], [ %i.x, %bb.h ], [ 1.000000e+00, %bb.c ], [ %i.h, %bb.e ], [ %i.l, %bb.g ]
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %3, i64 4294967295)
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %4, i64 2147483647)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.0, ptr %i.y, align 4, !tbaa !471
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %2, ptr %i.z, align 8, !tbaa !472
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.store.select, ptr %i.aa, align 8, !tbaa !473
  %i.ab = sub nsw i64 0, %spec.store.select1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !468
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %ma_fader_get_current_volume.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @ma_fader_get_current_volume(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !468  ; 4 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !471
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !473  ; 2 uses
  %.not = icmp ult i64 %i.c, %i.i
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load float, ptr %i.j, align 8, !tbaa !472
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !471 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load float, ptr %i.n, align 8, !tbaa !472
  %i.p = trunc i64 %i.c to i32
  %i.q = uitofp i32 %i.p to float
  %i.r = trunc i64 %i.i to i32
  %i.s = uitofp i32 %i.r to float
  %i.t = fdiv float %i.q, %i.s
  %i.u = fsub float %i.o, %i.m
  %i.v = fmul float %i.t, %i.u
  %i.w = fadd float %i.m, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g, %bb.f, %bb.d
  %.0 = phi float [ %i.w, %bb.g ], [ 0.000000e+00, %bb.a ], [ %i.g, %bb.d ], [ %i.k, %bb.f ], [ 1.000000e+00, %bb.b ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @ma_vec3f_init_3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %.sroa.03.0.vec.insert = insertelement <2 x float> poison, float %0, i64 0
  %.sroa.03.4.vec.insert = insertelement <2 x float> %.sroa.03.0.vec.insert, float %1, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %2, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @ma_vec3f_sub(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
bb.a:
  %i.a = fsub <2 x float> %0, %2
  %i.b = fsub float %1, %3
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @ma_vec3f_neg(<2 x float> %0, float %1) local_unnamed_addr #35 {
bb.a:
  %i.a = fneg <2 x float> %0
  %i.b = fneg float %1
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define float @ma_vec3f_dot(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
bb.a:
  %.sroa.04.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.01.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fmul <2 x float> %0, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract, float %.sroa.01.0.vec.extract, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %3, float %i.b)
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define float @ma_vec3f_len2(<2 x float> %0, float %1) local_unnamed_addr #35 {
bb.a:
  %.sroa.04.0.vec.extract.i = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i, float %.sroa.04.0.vec.extract.i, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b)
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define float @ma_vec3f_len(<2 x float> %0, float %1) local_unnamed_addr #35 {
bb.a:
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i, float %.sroa.04.0.vec.extract.i.i, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b)
  %sqrtf = tail call float @llvm.sqrt.f32(float %i.c)
  ret float %sqrtf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define float @ma_vec3f_dist(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %0, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop18 = fsub <2 x float> %0, %2    ; 2 uses
  %i.b = fsub float %1, %3                        ; 2 uses
  %foldExtExtBinop20 = fmul <2 x float> %foldExtExtBinop18, %foldExtExtBinop18
  %i.c = extractelement <2 x float> %foldExtExtBinop20, i64 1
  %i.d = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.c)
  %i.e = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.d)
  %sqrtf.i = tail call float @llvm.sqrt.f32(float %i.e)
  ret float %sqrtf.i
}

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @ma_vec3f_normalize(<2 x float> %0, float %1) local_unnamed_addr #36 {
bb.a:
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i, float %.sroa.04.0.vec.extract.i.i, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b) ; 2 uses
  %i.d = fcmp oeq float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call float asm sideeffect "rsqrtss $1, $0", "=x,x,~{dirflag},~{fpsr},~{flags}"(float %i.c) #55, !srcloc !474 ; 2 uses
  %i.f = insertelement <2 x float> poison, float %i.e, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %0, %i.g
  %i.i = fmul float %1, %i.e
  %i.j = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %i.k = insertvalue { <2 x float>, float } %i.j, float %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.fca.1.insert.merged = phi { <2 x float>, float } [ %i.k, %bb.b ], [ zeroinitializer, %bb.a ]
  ret { <2 x float>, float } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @ma_vec3f_cross(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
bb.a:
  %.sroa.013.4.vec.extract = extractelement <2 x float> %0, i64 1
  %.sroa.05.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.a = fneg float %.sroa.05.4.vec.extract
  %i.b = fmul float %1, %i.a
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.013.4.vec.extract, float %3, float %i.b)
  %i.d = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.e = insertelement <2 x float> %i.d, float %3, i64 0
  %i.f = fneg <2 x float> %i.e
  %i.g = fmul <2 x float> %0, %i.f
  %i.h = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.i = insertelement <2 x float> %i.h, float %1, i64 0
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %2, <2 x float> %i.g) ; 2 uses
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %i.c, i64 0
  %i.k = shufflevector <2 x float> %.sroa.03.0.vec.insert.i, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.k, 0
  %i.l = extractelement <2 x float> %i.j, i64 1
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_atomic_vec3f_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, <2 x float> %1, float %2) local_unnamed_addr #37 {
bb.a:
  store <2 x float> %1, ptr %0, align 4, !tbaa !349
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !349
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4, !tbaa !1916
  ret void
}

; Function Attrs: nounwind uwtable
define void @ma_atomic_vec3f_set(ptr nofree noundef captures(address) %0, <2 x float> %1, float %2) local_unnamed_addr #36 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %ma_spinlock_lock.exit, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %i.d = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_spinlock_lock.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.loopexit.i
  %i.f = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.h = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.a
  store <2 x float> %1, ptr %0, align 4, !tbaa !349
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !349
  store atomic volatile i32 0, ptr %i.a release, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @ma_atomic_vec3f_get(ptr nofree noundef captures(address) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %ma_spinlock_lock.exit, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %i.d = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_spinlock_lock.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.loopexit.i
  %i.f = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.h = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.a
  %.sroa.03.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !349
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !349
  store atomic volatile i32 0, ptr %i.a release, align 4
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.24.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_spatializer_listener_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_spatializer_listener_config) align 8 captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #37 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i32 %1, ptr %0, align 8, !tbaa !478
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !479
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !1917
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.c, align 4, !tbaa !349
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x float> <float f0x40C90FDA, float f0x40C90FDA, float 0.000000e+00, float 3.433000e+02>, ptr %i.d, align 4, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_spatializer_listener_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !154
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8, !tbaa !478    ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext i32 %i.c to i64
  %i.f = add nuw nsw i64 %i.e, 7
  %i.g = and i64 %i.f, 8589934584
  store i64 %i.g, ptr %1, align 8, !tbaa !154
  br label %ma_spatializer_listener_get_heap_layout.exit.thread

ma_spatializer_listener_get_heap_layout.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ma_spatializer_listener_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_get_default_channel_map_for_spatializer.exit, label %ma_zero_memory_default.exit64

ma_zero_memory_default.exit64:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_get_default_channel_map_for_spatializer.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit64
  %i.c = load i32, ptr %0, align 8, !tbaa !478    ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_get_default_channel_map_for_spatializer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 104
end_hunk_0
begin_hunk_1_@ma_spatializer_process_pcm_frames:bb.a
  %i.k = load i32, ptr %i.j, align 8, !tbaa !482
  %.not253 = icmp eq i32 %i.k, 0
  br i1 %.not253, label %bb.g, label %bb.c

bb.c:                                             ; preds = %ma_spatializer_listener_is_enabled.exit
  %i.l = load i32, ptr %0, align 8, !tbaa !502    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !506  ; 2 uses
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq ptr %2, %3
  br i1 %i.p, label %ma_copy_pcm_frames.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = shl i32 %i.l, 2
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %4, %i.r                         ; 2 uses
  %.not.i7.i = icmp eq i64 %i.s, 0
  br i1 %.not.i7.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.u, %.lr.ph.i ], [ %2, %bb.e ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.s, %bb.e ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.v, %.lr.ph.i ], [ %3, %bb.e ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.t = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i, !llvm.loop !12

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @ma_channel_map_apply_f32(ptr noundef %2, ptr noundef %i.f, i32 noundef %i.n, ptr noundef %3, ptr noundef %i.d, i32 noundef %i.l, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %ma_copy_pcm_frames.exit

bb.g:                                             ; preds = %ma_spatializer_listener_is_enabled.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !506
  %i.y = shl i32 %i.x, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = mul i64 %4, %i.z                        ; 2 uses
  %.not.i13.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i13.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i254

.lr.ph.i254:                                      ; preds = %bb.g, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.ac, %ma_zero_memory_default.exit.i.i ], [ %2, %bb.g ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.ab, %ma_zero_memory_default.exit.i.i ], [ %i.aa, %bb.g ] ; 2 uses
  %spec.store.select.i.i255 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i, label %ma_zero_memory_default.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i254
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i255, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.h, %.lr.ph.i254
  %i.ab = sub nuw i64 %.08.i14.i, %spec.store.select.i.i255 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i255
  %.not.i.i256 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i256, label %ma_copy_pcm_frames.exit, label %.lr.ph.i254, !llvm.loop !7

ma_copy_pcm_frames.exit:                          ; preds = %.lr.ph.i, %ma_zero_memory_default.exit.i.i, %bb.g, %bb.e, %bb.d, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float 1.000000e+00, ptr %i.ad, align 8, !tbaa !500
  br label %bb.ak

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !506 ; 6 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !502
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = load atomic volatile i32, ptr %i.ah seq_cst, align 4
  %i.aj = bitcast i32 %i.ai to float              ; 15 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load atomic volatile i32, ptr %i.ak seq_cst, align 8
  %i.am = bitcast i32 %i.al to float              ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ao = load atomic volatile i32, ptr %i.an seq_cst, align 4
  %i.ap = bitcast i32 %i.ao to float              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ar = load atomic volatile i32, ptr %i.aq seq_cst, align 4
  %i.as = bitcast i32 %i.ar to float              ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 5 uses
  %i.av = atomicrmw volatile xchg ptr %i.au, i32 1 acquire, align 4
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %ma_spatializer_get_positioning.exit, label %.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.ax = atomicrmw volatile xchg ptr %i.au, i32 1 acquire, align 4
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %ma_spatializer_get_positioning.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i, %.loopexit.i.i.i
  %i.az = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.bb = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1

ma_spatializer_get_positioning.exit:              ; preds = %.loopexit.i.i.i, %bb.i
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.at, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.au release, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load float, ptr %i.bd, align 8, !tbaa !489 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bg = load atomic i32, ptr %i.bf seq_cst, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %ma_spatializer_get_positioning.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.bk = atomicrmw volatile xchg ptr %i.bj, i32 1 acquire, align 4
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.loopexit388, label %.preheader.i.i.i262

.loopexit.i.i.i263:                               ; preds = %.lr.ph.i.i.i271, %.preheader.i.i.i262
  %i.bm = atomicrmw volatile xchg ptr %i.bj, i32 1 acquire, align 4
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.loopexit388, label %.preheader.i.i.i262

.preheader.i.i.i262:                              ; preds = %bb.j, %.loopexit.i.i.i263
  %i.bo = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %.lr.ph.i.i.i271, label %.loopexit.i.i.i263

.lr.ph.i.i.i271:                                  ; preds = %.preheader.i.i.i262, %.lr.ph.i.i.i271
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.bq = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %.lr.ph.i.i.i271, label %.loopexit.i.i.i263, !llvm.loop !1

.loopexit388:                                     ; preds = %.loopexit.i.i.i263, %bb.j
  %.sroa.03.0.copyload.i.i265 = load <2 x float>, ptr %i.bi, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i266 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i267 = load float, ptr %.sroa.24.0..sroa_idx.i.i266, align 8, !tbaa !349 ; 2 uses
  store atomic volatile i32 0, ptr %i.bj release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i265, ptr %5, align 8, !tbaa !349
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.24.0.copyload.i.i267, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !349
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.bu = atomicrmw volatile xchg ptr %i.bt, i32 1 acquire, align 4
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %ma_spatializer_get_direction.exit, label %.preheader.i.i.i272

.loopexit.i.i.i273:                               ; preds = %.lr.ph.i.i.i281, %.preheader.i.i.i272
  %i.bw = atomicrmw volatile xchg ptr %i.bt, i32 1 acquire, align 4
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %ma_spatializer_get_direction.exit, label %.preheader.i.i.i272

.preheader.i.i.i272:                              ; preds = %.loopexit388, %.loopexit.i.i.i273
  %i.by = load atomic volatile i32, ptr %i.bt monotonic, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %.lr.ph.i.i.i281, label %.loopexit.i.i.i273

.lr.ph.i.i.i281:                                  ; preds = %.preheader.i.i.i272, %.lr.ph.i.i.i281
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.ca = load atomic volatile i32, ptr %i.bt monotonic, align 4
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i.i.i281, label %.loopexit.i.i.i273, !llvm.loop !1

ma_spatializer_get_direction.exit:                ; preds = %.loopexit.i.i.i273, %.loopexit388
  %.sroa.03.0.copyload.i.i275 = load <2 x float>, ptr %i.bs, align 8, !tbaa !349
  %.sroa.24.0..sroa_idx.i.i276 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.24.0.copyload.i.i277 = load float, ptr %.sroa.24.0..sroa_idx.i.i276, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.bt release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i275, ptr %6, align 8, !tbaa !349
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.24.0.copyload.i.i277, ptr %.sroa.4102.0..sroa_idx, align 8, !tbaa !349
  br label %ma_spatializer_get_attenuation_model.exit

bb.k:                                             ; preds = %ma_spatializer_get_positioning.exit
  call void @ma_spatializer_get_relative_position_and_direction(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.sroa.095.0.copyload.pre = load <2 x float>, ptr %5, align 8
  %.sroa.296.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.296.0.copyload.pre = load float, ptr %.sroa.296.0..sroa_idx.phi.trans.insert, align 8
  br label %ma_spatializer_get_attenuation_model.exit

ma_spatializer_get_attenuation_model.exit:        ; preds = %bb.k, %ma_spatializer_get_direction.exit
  %.sroa.296.0.copyload = phi float [ %.sroa.296.0.copyload.pre, %bb.k ], [ %.sroa.24.0.copyload.i.i267, %ma_spatializer_get_direction.exit ] ; 2 uses
  %.sroa.095.0.copyload = phi <2 x float> [ %.sroa.095.0.copyload.pre, %bb.k ], [ %.sroa.03.0.copyload.i.i265, %ma_spatializer_get_direction.exit ] ; 3 uses
  %.sroa.296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.095.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.095.0.copyload, %.sroa.095.0.copyload
  %i.cc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cd = call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i.i, float %.sroa.04.0.vec.extract.i.i.i, float %i.cc)
  %i.ce = call float @llvm.fmuladd.f32(float %.sroa.296.0.copyload, float %.sroa.296.0.copyload, float %i.cd)
  %sqrtf.i = call float @llvm.sqrt.f32(float %i.ce) ; 10 uses
  %i.cf = load atomic i32, ptr %i.g seq_cst, align 8
  switch i32 %i.cf, label %ma_attenuation_inverse.exit [
    i32 1, label %bb.l
    i32 2, label %bb.n
    i32 3, label %bb.p
  ]

bb.l:                                             ; preds = %ma_spatializer_get_attenuation_model.exit
  %i.cg = fcmp ult float %i.aj, %i.am
  br i1 %i.cg, label %bb.m, label %ma_attenuation_inverse.exit

bb.m:                                             ; preds = %bb.l
  %i.ch = fcmp olt float %sqrtf.i, %i.am
  %i.ci = select i1 %i.ch, float %sqrtf.i, float %i.am ; 2 uses
  %i.cj = fcmp olt float %i.ci, %i.aj
  %..i = select i1 %i.cj, float %i.aj, float %i.ci
  %i.ck = fsub float %..i, %i.aj
  %i.cl = call float @llvm.fmuladd.f32(float %i.ap, float %i.ck, float %i.aj)
  %i.cm = fdiv float %i.aj, %i.cl
  br label %ma_attenuation_inverse.exit

bb.n:                                             ; preds = %ma_spatializer_get_attenuation_model.exit
  %i.cn = fcmp ult float %i.aj, %i.am
  br i1 %i.cn, label %bb.o, label %ma_attenuation_inverse.exit

bb.o:                                             ; preds = %bb.n
  %i.co = fcmp olt float %sqrtf.i, %i.am
  %i.cp = select i1 %i.co, float %sqrtf.i, float %i.am ; 2 uses
  %i.cq = fcmp olt float %i.cp, %i.aj
  %..i285 = select i1 %i.cq, float %i.aj, float %i.cp
  %i.cr = fsub float %..i285, %i.aj
  %i.cs = fmul float %i.cr, %i.ap
  %i.ct = fsub float %i.am, %i.aj
  %i.cu = fdiv float %i.cs, %i.ct
  %i.cv = fsub float 1.000000e+00, %i.cu
  br label %ma_attenuation_inverse.exit

bb.p:                                             ; preds = %ma_spatializer_get_attenuation_model.exit
  %i.cw = fcmp ult float %i.aj, %i.am
  br i1 %i.cw, label %bb.q, label %ma_attenuation_inverse.exit

bb.q:                                             ; preds = %bb.p
  %i.cx = fcmp olt float %sqrtf.i, %i.am
  %i.cy = select i1 %i.cx, float %sqrtf.i, float %i.am ; 2 uses
  %i.cz = fcmp olt float %i.cy, %i.aj
  %..i287 = select i1 %i.cz, float %i.aj, float %i.cy
  %i.da = fdiv float %..i287, %i.aj
  %i.db = fpext float %i.da to double
  %i.dc = fneg float %i.ap
  %i.dd = fpext float %i.dc to double
  %i.de = call double @pow(double noundef %i.db, double noundef %i.dd) #55
  %i.df = fptrunc double %i.de to float
  br label %ma_attenuation_inverse.exit

ma_attenuation_inverse.exit:                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %ma_spatializer_get_attenuation_model.exit
  %.0239 = phi float [ 1.000000e+00, %bb.n ], [ 1.000000e+00, %ma_spatializer_get_attenuation_model.exit ], [ 1.000000e+00, %bb.l ], [ %i.cm, %bb.m ], [ %i.cv, %bb.o ], [ %i.df, %bb.q ], [ 1.000000e+00, %bb.p ] ; 2 uses
  %i.dg = fcmp ogt float %sqrtf.i, 1.000000e-03   ; 2 uses
  br i1 %i.dg, label %ma_spatializer_get_cone.exit, label %ma_spatializer_get_max_gain.exit

ma_spatializer_get_cone.exit:                     ; preds = %ma_attenuation_inverse.exit
  %i.dh = fdiv float 1.000000e+00, %sqrtf.i       ; 3 uses
  %.sroa.0156.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !349 ; 2 uses
  %.sroa.10.0.copyload = load float, ptr %.sroa.296.0..sroa_idx, align 8, !tbaa !349
  %.sroa.0156.0.vec.extract = extractelement <2 x float> %.sroa.0156.0.copyload, i64 0
  %i.di = fmul float %i.dh, %.sroa.0156.0.vec.extract ; 2 uses
  %.sroa.0156.4.vec.extract = extractelement <2 x float> %.sroa.0156.0.copyload, i64 1
  %i.dj = fmul float %i.dh, %.sroa.0156.4.vec.extract ; 2 uses
  %i.dk = fmul float %i.dh, %.sroa.10.0.copyload  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load atomic volatile i32, ptr %i.dl seq_cst, align 8
  %i.dn = bitcast i32 %i.dm to float              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dp = load atomic volatile i32, ptr %i.do seq_cst, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dr = load atomic volatile i32, ptr %i.dq seq_cst, align 8
  %i.ds = bitcast i32 %i.dr to float              ; 2 uses
  %i.dt = fcmp olt float %i.dn, f0x40C90FDA
  br i1 %i.dt, label %bb.r, label %ma_calculate_angular_gain.exit

bb.r:                                             ; preds = %ma_spatializer_get_cone.exit
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.277.0.copyload = load float, ptr %.sroa.277.0..sroa_idx, align 8
  %.sroa.076.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %i.du = fneg float %i.dk
  %i.dv = fneg float %i.dj
  %i.dw = fneg float %i.di
  %i.dx = bitcast i32 %i.dp to float
  %i.dy = fmul nnan float %i.dn, 5.000000e-01
  %i.dz = fpext float %i.dy to double
  %i.ea = fsub double f0x3FF921FB54442D18, %i.dz
  %i.eb = call double @sin(double noundef %i.ea) #55
  %i.ec = fptrunc double %i.eb to float           ; 2 uses
  %i.ed = fmul float %i.dx, 5.000000e-01
  %i.ee = fpext float %i.ed to double
  %i.ef = fsub double f0x3FF921FB54442D18, %i.ee
  %i.eg = call double @sin(double noundef %i.ef) #55
  %i.eh = fptrunc double %i.eg to float           ; 3 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.076.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.076.0.copyload, i64 1
  %i.ei = fmul float %.sroa.04.4.vec.extract.i.i, %i.dv
  %i.ej = call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i, float %i.dw, float %i.ei)
  %i.ek = call float @llvm.fmuladd.f32(float %.sroa.277.0.copyload, float %i.du, float %i.ej) ; 3 uses
  %i.el = fcmp ogt float %i.ek, %i.ec
  br i1 %i.el, label %ma_calculate_angular_gain.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = fcmp ogt float %i.ek, %i.eh
  br i1 %i.em, label %bb.t, label %ma_calculate_angular_gain.exit

bb.t:                                             ; preds = %bb.s
  %i.en = fsub float %i.ek, %i.eh
  %i.eo = fsub float %i.ec, %i.eh
  %i.ep = fdiv float %i.en, %i.eo                 ; 2 uses
  %i.eq = fsub float 1.000000e+00, %i.ep
  %i.er = call float @llvm.fmuladd.f32(float %i.ds, float %i.eq, float %i.ep)
  br label %ma_calculate_angular_gain.exit

ma_calculate_angular_gain.exit:                   ; preds = %ma_spatializer_get_cone.exit, %bb.r, %bb.s, %bb.t
  %.0.i291 = phi float [ %i.ds, %bb.s ], [ 1.000000e+00, %bb.r ], [ %i.er, %bb.t ], [ 1.000000e+00, %ma_spatializer_get_cone.exit ]
  %i.es = fmul float %.0239, %.0.i291             ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eu = load float, ptr %i.et, align 4, !tbaa !486 ; 2 uses
  %i.ev = fcmp olt float %i.eu, f0x40C90FDA
  br i1 %i.ev, label %bb.u, label %ma_spatializer_get_max_gain.exit

bb.u:                                             ; preds = %ma_calculate_angular_gain.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !483
  %i.ey = icmp eq i32 %i.ex, 0
  %.sroa.5.0 = select i1 %i.ey, float -1.000000e+00, float 1.000000e+00
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !487
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !488 ; 2 uses
  %i.fd = fmul nnan float %i.eu, 5.000000e-01
  %i.fe = fpext float %i.fd to double
  %i.ff = fsub double f0x3FF921FB54442D18, %i.fe
  %i.fg = call double @sin(double noundef %i.ff) #55
  %i.fh = fptrunc double %i.fg to float           ; 2 uses
  %i.fi = fmul float %i.fa, 5.000000e-01
  %i.fj = fpext float %i.fi to double
  %i.fk = fsub double f0x3FF921FB54442D18, %i.fj
  %i.fl = call double @sin(double noundef %i.fk) #55
  %i.fm = fptrunc double %i.fl to float           ; 3 uses
  %i.fn = fmul float %i.dj, 0.000000e+00
  %i.fo = call float @llvm.fmuladd.f32(float %i.di, float 0.000000e+00, float %i.fn)
  %i.fp = call float @llvm.fmuladd.f32(float %.sroa.5.0, float %i.dk, float %i.fo) ; 3 uses
  %i.fq = fcmp ogt float %i.fp, %i.fh
  br i1 %i.fq, label %ma_calculate_angular_gain.exit297, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fr = fcmp ogt float %i.fp, %i.fm
  br i1 %i.fr, label %bb.w, label %ma_calculate_angular_gain.exit297

bb.w:                                             ; preds = %bb.v
  %i.fs = fsub float %i.fp, %i.fm
  %i.ft = fsub float %i.fh, %i.fm
  %i.fu = fdiv float %i.fs, %i.ft                 ; 2 uses
  %i.fv = fsub float 1.000000e+00, %i.fu
  %i.fw = call float @llvm.fmuladd.f32(float %i.fc, float %i.fv, float %i.fu)
  br label %ma_calculate_angular_gain.exit297

ma_calculate_angular_gain.exit297:                ; preds = %bb.u, %bb.v, %bb.w
  %.0.i292 = phi float [ %i.fc, %bb.v ], [ 1.000000e+00, %bb.u ], [ %i.fw, %bb.w ]
  %i.fx = fmul float %i.es, %.0.i292
  br label %ma_spatializer_get_max_gain.exit

ma_spatializer_get_max_gain.exit:                 ; preds = %ma_attenuation_inverse.exit, %ma_calculate_angular_gain.exit, %ma_calculate_angular_gain.exit297
  %.0238375 = phi float [ %sqrtf.i, %ma_calculate_angular_gain.exit ], [ %sqrtf.i, %ma_calculate_angular_gain.exit297 ], [ 0.000000e+00, %ma_attenuation_inverse.exit ]
  %.2 = phi float [ %i.es, %ma_calculate_angular_gain.exit ], [ %i.fx, %ma_calculate_angular_gain.exit297 ], [ %.0239, %ma_attenuation_inverse.exit ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.fz = load atomic volatile i32, ptr %i.fy seq_cst, align 4
  %i.ga = bitcast i32 %i.fz to float
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.gc = load atomic volatile i32, ptr %i.gb seq_cst, align 8
  %i.gd = bitcast i32 %i.gc to float
  %i.ge = fcmp olt float %.2, %i.gd
  br i1 %i.ge, label %bb.x, label %ma_spatializer_get_max_gain.exit301

ma_spatializer_get_max_gain.exit301:              ; preds = %ma_spatializer_get_max_gain.exit
  %i.gf = load atomic volatile i32, ptr %i.gb seq_cst, align 8
  %i.gg = bitcast i32 %i.gf to float
  br label %bb.x

bb.x:                                             ; preds = %ma_spatializer_get_max_gain.exit, %ma_spatializer_get_max_gain.exit301
  %i.gh = phi float [ %i.gg, %ma_spatializer_get_max_gain.exit301 ], [ %.2, %ma_spatializer_get_max_gain.exit ]
  %i.gi = fcmp olt float %i.gh, %i.ga
  br i1 %i.gi, label %ma_spatializer_get_min_gain.exit303, label %ma_spatializer_get_max_gain.exit305

ma_spatializer_get_min_gain.exit303:              ; preds = %bb.x
  %i.gj = load atomic volatile i32, ptr %i.fy seq_cst, align 4
  %i.gk = bitcast i32 %i.gj to float
  br label %bb.y

ma_spatializer_get_max_gain.exit305:              ; preds = %bb.x
  %i.gl = load atomic volatile i32, ptr %i.gb seq_cst, align 8
  %i.gm = bitcast i32 %i.gl to float
  %i.gn = fcmp olt float %.2, %i.gm
  br i1 %i.gn, label %bb.y, label %ma_spatializer_get_max_gain.exit307

end_hunk_1
begin_hunk_2_@ma_spatializer_process_pcm_frames:bb.a
  %bound1449 = icmp ult ptr %i.ir, %i.je
  %found.conflict450 = and i1 %bound0448, %bound1449
  %conflict.rdx = or i1 %found.conflict, %found.conflict450
  %bound0451 = icmp ult ptr %i.jc, %i.jg
  %bound1452 = icmp ult ptr %i.ir, %i.jf
  %found.conflict453 = and i1 %bound0451, %bound1452
  %conflict.rdx454 = or i1 %conflict.rdx, %found.conflict453
  br i1 %conflict.rdx454, label %scalar.ph446.preheader, label %vector.ph455

vector.ph455:                                     ; preds = %vector.memcheck
  %n.vec456 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert457 = insertelement <4 x float> poison, float %i.iy, i64 0
  %broadcast.splat458 = shufflevector <4 x float> %broadcast.splatinsert457, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body459

vector.body459:                                   ; preds = %vector.body459, %vector.ph455
  %index460 = phi i64 [ 0, %vector.ph455 ], [ %index.next463, %vector.body459 ] ; 4 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %index460
  %wide.load = load <4 x float>, ptr %i.jh, align 4, !tbaa !349, !alias.scope !1934
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index460 ; 2 uses
  %wide.load461 = load <4 x float>, ptr %i.ji, align 4, !tbaa !349, !alias.scope !1935, !noalias !1936 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %index460 ; 2 uses
  %wide.load462 = load <4 x float>, ptr %i.jj, align 4, !tbaa !349, !alias.scope !1937, !noalias !1934
  %i.jk = fsub <4 x float> %wide.load462, %wide.load461
  %i.jl = fmul <4 x float> %broadcast.splat458, %i.jk
  %i.jm = fadd <4 x float> %wide.load461, %i.jl
  store <4 x float> %i.jm, ptr %i.ji, align 4, !tbaa !349, !alias.scope !1935, !noalias !1936
  store <4 x float> %wide.load, ptr %i.jj, align 4, !tbaa !349, !alias.scope !1937, !noalias !1934
  %index.next463 = add nuw i64 %index460, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next463, %n.vec456
  br i1 %i.jn, label %middle.block464, label %vector.body459, !llvm.loop !1932

middle.block464:                                  ; preds = %vector.body459
  %cmp.n465 = icmp eq i64 %n.vec456, %wide.trip.count.i
  br i1 %cmp.n465, label %._crit_edge.i, label %scalar.ph446.preheader

scalar.ph446.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i326, %middle.block464
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i326 ], [ %n.vec456, %middle.block464 ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph446.prol.loopexit, label %scalar.ph446.prol

scalar.ph446.prol:                                ; preds = %scalar.ph446.preheader
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.i.ph
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !349
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i.ph ; 2 uses
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !349 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.i.ph ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !349
  %i.ju = fsub float %i.jt, %i.jr
  %i.jv = fmul float %i.iy, %i.ju
  %i.jw = fadd float %i.jr, %i.jv
  store float %i.jw, ptr %i.jq, align 4, !tbaa !349
  store float %i.jp, ptr %i.js, align 4, !tbaa !349
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph446.prol.loopexit

scalar.ph446.prol.loopexit:                       ; preds = %scalar.ph446.prol, %scalar.ph446.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph446.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph446.prol ]
  %i.jx = add nsw i64 %wide.trip.count.i, -1
  %i.jy = icmp eq i64 %indvars.iv.i.ph, %i.jx
  br i1 %i.jy, label %._crit_edge.i, label %scalar.ph446

scalar.ph446:                                     ; preds = %scalar.ph446.prol.loopexit, %scalar.ph446
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph446 ], [ %indvars.iv.i.unr, %scalar.ph446.prol.loopexit ] ; 5 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.i
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !349
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !349 ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.i ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !349
  %i.kf = fsub float %i.ke, %i.kc
  %i.kg = fmul float %i.iy, %i.kf
  %i.kh = fadd float %i.kc, %i.kg
  store float %i.kh, ptr %i.kb, align 4, !tbaa !349
  store float %i.ka, ptr %i.kd, align 4, !tbaa !349
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.next.i
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !349
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next.i ; 2 uses
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !349 ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.next.i ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !349
  %i.ko = fsub float %i.kn, %i.kl
  %i.kp = fmul float %i.iy, %i.ko
  %i.kq = fadd float %i.kl, %i.kp
  store float %i.kq, ptr %i.kk, align 4, !tbaa !349
  store float %i.kj, ptr %i.km, align 4, !tbaa !349
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph446, !llvm.loop !1933

._crit_edge.i:                                    ; preds = %scalar.ph446.prol.loopexit, %scalar.ph446, %middle.block464, %.preheader.i324
  %i.kr = icmp eq i32 %.pre.i, -1
  br i1 %i.kr, label %bb.ah, label %ma_gainer_reset_smoothing_time.exit.i

bb.ah:                                            ; preds = %._crit_edge.i
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !460
  br label %ma_gainer_reset_smoothing_time.exit.i

ma_gainer_reset_smoothing_time.exit.i:            ; preds = %bb.ah, %._crit_edge.i
  %storemerge.i.i = phi i32 [ %i.kt, %bb.ah ], [ 0, %._crit_edge.i ]
  store i32 %storemerge.i.i, ptr %.phi.trans.insert.i, align 8, !tbaa !458
  br label %ma_gainer_set_gains.exit

ma_gainer_set_gains.exit:                         ; preds = %.loopexit387, %ma_gainer_reset_smoothing_time.exit.i
  %i.ku = call i32 @ma_gainer_process_pcm_frames(ptr noundef nonnull %i.ip, ptr noundef %2, ptr noundef %2, i64 noundef %4) ; 0 uses
  %i.kv = fcmp ogt float %i.as, 0.000000e+00
  br i1 %i.kv, label %bb.ai, label %ma_doppler_pitch.exit

bb.ai:                                            ; preds = %ma_gainer_set_gains.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 5 uses
  %i.ky = atomicrmw volatile xchg ptr %i.kx, i32 1 acquire, align 4
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %.loopexit386, label %.preheader.i.i.i327

.loopexit.i.i.i328:                               ; preds = %.lr.ph.i.i.i336, %.preheader.i.i.i327
  %i.la = atomicrmw volatile xchg ptr %i.kx, i32 1 acquire, align 4
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %.loopexit386, label %.preheader.i.i.i327

.preheader.i.i.i327:                              ; preds = %bb.ai, %.loopexit.i.i.i328
  %i.lc = load atomic volatile i32, ptr %i.kx monotonic, align 4
  %i.ld = icmp eq i32 %i.lc, 1
  br i1 %i.ld, label %.lr.ph.i.i.i336, label %.loopexit.i.i.i328

.lr.ph.i.i.i336:                                  ; preds = %.preheader.i.i.i327, %.lr.ph.i.i.i336
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.le = load atomic volatile i32, ptr %i.kx monotonic, align 4
  %i.lf = icmp eq i32 %i.le, 1
  br i1 %i.lf, label %.lr.ph.i.i.i336, label %.loopexit.i.i.i328, !llvm.loop !1

.loopexit386:                                     ; preds = %.loopexit.i.i.i328, %bb.ai
  %.sroa.03.0.copyload.i.i330 = load <2 x float>, ptr %i.kw, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i331 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.24.0.copyload.i.i332 = load float, ptr %.sroa.24.0..sroa_idx.i.i331, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.kx release, align 4
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.li = atomicrmw volatile xchg ptr %i.lh, i32 1 acquire, align 4
  %i.lj = icmp eq i32 %i.li, 0
  br i1 %i.lj, label %.loopexit, label %.preheader.i.i.i337

.loopexit.i.i.i338:                               ; preds = %.lr.ph.i.i.i346, %.preheader.i.i.i337
  %i.lk = atomicrmw volatile xchg ptr %i.lh, i32 1 acquire, align 4
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %.loopexit, label %.preheader.i.i.i337

.preheader.i.i.i337:                              ; preds = %.loopexit386, %.loopexit.i.i.i338
  %i.lm = load atomic volatile i32, ptr %i.lh monotonic, align 4
  %i.ln = icmp eq i32 %i.lm, 1
  br i1 %i.ln, label %.lr.ph.i.i.i346, label %.loopexit.i.i.i338

.lr.ph.i.i.i346:                                  ; preds = %.preheader.i.i.i337, %.lr.ph.i.i.i346
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.lo = load atomic volatile i32, ptr %i.lh monotonic, align 4
  %i.lp = icmp eq i32 %i.lo, 1
  br i1 %i.lp, label %.lr.ph.i.i.i346, label %.loopexit.i.i.i338, !llvm.loop !1

.loopexit:                                        ; preds = %.loopexit.i.i.i338, %.loopexit386
  %.sroa.03.0.copyload.i.i340 = load <2 x float>, ptr %i.lg, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i341 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i342 = load float, ptr %.sroa.24.0..sroa_idx.i.i341, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.lh release, align 4
  %foldExtExtBinop468 = fsub <2 x float> %.sroa.03.0.copyload.i.i330, %.sroa.03.0.copyload.i.i340 ; 2 uses
  %i.lq = extractelement <2 x float> %foldExtExtBinop468, i64 0 ; 2 uses
  %foldExtExtBinop470 = fsub <2 x float> %.sroa.03.0.copyload.i.i330, %.sroa.03.0.copyload.i.i340 ; 2 uses
  %i.lr = extractelement <2 x float> %foldExtExtBinop470, i64 1 ; 2 uses
  %i.ls = fsub float %.sroa.24.0.copyload.i.i332, %.sroa.24.0.copyload.i.i342 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.lv = atomicrmw volatile xchg ptr %i.lu, i32 1 acquire, align 4
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %ma_spatializer_get_velocity.exit, label %.preheader.i.i.i354

.loopexit.i.i.i355:                               ; preds = %.lr.ph.i.i.i363, %.preheader.i.i.i354
  %i.lx = atomicrmw volatile xchg ptr %i.lu, i32 1 acquire, align 4
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %ma_spatializer_get_velocity.exit, label %.preheader.i.i.i354

.preheader.i.i.i354:                              ; preds = %.loopexit, %.loopexit.i.i.i355
  %i.lz = load atomic volatile i32, ptr %i.lu monotonic, align 4
  %i.ma = icmp eq i32 %i.lz, 1
  br i1 %i.ma, label %.lr.ph.i.i.i363, label %.loopexit.i.i.i355

.lr.ph.i.i.i363:                                  ; preds = %.preheader.i.i.i354, %.lr.ph.i.i.i363
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.mb = load atomic volatile i32, ptr %i.lu monotonic, align 4
  %i.mc = icmp eq i32 %i.mb, 1
  br i1 %i.mc, label %.lr.ph.i.i.i363, label %.loopexit.i.i.i355, !llvm.loop !1

ma_spatializer_get_velocity.exit:                 ; preds = %.loopexit.i.i.i355, %.loopexit
  %.sroa.03.0.copyload.i.i357 = load <2 x float>, ptr %i.lt, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i358 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.24.0.copyload.i.i359 = load float, ptr %.sroa.24.0..sroa_idx.i.i358, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.lu release, align 4
  %i.md = fmul float %i.lr, %i.lr
  %i.me = call float @llvm.fmuladd.f32(float %i.lq, float %i.lq, float %i.md)
  %i.mf = call float @llvm.fmuladd.f32(float %i.ls, float %i.ls, float %i.me) ; 2 uses
  %i.mg = fcmp oeq float %i.mf, 0.000000e+00
  br i1 %i.mg, label %ma_doppler_pitch.exit, label %bb.aj

bb.aj:                                            ; preds = %ma_spatializer_get_velocity.exit
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.mf)
  %i.mh = fdiv float %i.be, %i.as
  %i.mi = fneg float %i.as
  %i.mj = shufflevector <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.03.0.copyload.i.i357, <2 x i32> <i32 1, i32 3>
  %i.mk = shufflevector <2 x float> %foldExtExtBinop470, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ml = fmul <2 x float> %i.mj, %i.mk
  %i.mm = shufflevector <2 x float> %foldExtExtBinop468, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mn = shufflevector <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.03.0.copyload.i.i357, <2 x i32> <i32 0, i32 2>
  %i.mo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mm, <2 x float> %i.mn, <2 x float> %i.ml)
  %i.mp = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mr = insertelement <2 x float> poison, float %.sroa.24.0.copyload.i.i, i64 0
  %i.ms = insertelement <2 x float> %i.mr, float %.sroa.24.0.copyload.i.i359, i64 1
  %i.mt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> %i.ms, <2 x float> %i.mo)
  %i.mu = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mw = fdiv <2 x float> %i.mt, %i.mv           ; 2 uses
  %i.mx = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.my = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mz = fcmp olt <2 x float> %i.mw, %i.my
  %i.na = select <2 x i1> %i.mz, <2 x float> %i.mw, <2 x float> %i.my
  %i.nb = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.nc = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nd = insertelement <2 x float> poison, float %i.be, i64 0
  %i.ne = shufflevector <2 x float> %i.nd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nc, <2 x float> %i.na, <2 x float> %i.ne) ; 2 uses
  %i.ng = extractelement <2 x float> %i.nf, i64 0
  %i.nh = extractelement <2 x float> %i.nf, i64 1
  %i.ni = fdiv float %i.ng, %i.nh
  br label %ma_doppler_pitch.exit

ma_doppler_pitch.exit:                            ; preds = %ma_gainer_set_gains.exit, %bb.aj, %ma_spatializer_get_velocity.exit
  %.sink = phi float [ 1.000000e+00, %ma_spatializer_get_velocity.exit ], [ %i.ni, %bb.aj ], [ 1.000000e+00, %ma_gainer_set_gains.exit ]
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float %.sink, ptr %i.nj, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.ak

bb.ak:                                            ; preds = %ma_copy_pcm_frames.exit, %ma_doppler_pitch.exit, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %ma_doppler_pitch.exit ], [ 0, %ma_copy_pcm_frames.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @ma_channel_map_apply_f32(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readonly captures(address) %4, i32 noundef %5, i64 noundef %6, i32 noundef range(i32 0, 2) %7, i32 noundef %8) unnamed_addr #39 {
bb.a:
  %i.a = alloca [254 x i8], align 16              ; 6 uses
  %i.b = alloca [254 x i8], align 16              ; 7 uses
  %i.c = alloca [32 x [32 x float]], align 16     ; 26 uses
  %i.d = tail call fastcc i32 @ma_channel_map_get_conversion_path(ptr noundef %4, i32 noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef %7)
  switch i32 %i.d, label %bb.al [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %3
  br i1 %i.e, label %.critedge334, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl i32 %2, 2
  %i.g = zext i32 %i.f to i64
  %i.h = mul i64 %6, %i.g                         ; 2 uses
  %.not.i7.i = icmp eq i64 %i.h, 0
  br i1 %.not.i7.i, label %.critedge334, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.j, %.lr.ph.i ], [ %0, %bb.c ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.i, %.lr.ph.i ], [ %i.h, %bb.c ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.k, %.lr.ph.i ], [ %3, %bb.c ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.i = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %.critedge334, label %.lr.ph.i, !llvm.loop !12

bb.d:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %0, null
  %i.m = icmp eq ptr %3, null
  %or.cond.i = or i1 %i.l, %i.m
  %i.n = icmp eq i32 %5, 0
  %or.cond3.i = or i1 %or.cond.i, %i.n
  br i1 %or.cond3.i, label %.critedge334, label %.preheader66.i

.preheader66.i:                                   ; preds = %bb.d
  %i.o = icmp eq ptr %4, null                     ; 2 uses
  br i1 %i.o, label %ma_channel_map_get_channel.exit.us.i, label %ma_channel_map_get_channel.exit.preheader.i

ma_channel_map_get_channel.exit.preheader.i:      ; preds = %.preheader66.i
  %wide.trip.count.i = zext i32 %5 to i64         ; 3 uses
  %min.iters.check844 = icmp ult i32 %5, 8
  br i1 %min.iters.check844, label %ma_channel_map_get_channel.exit.i.preheader, label %vector.ph845

vector.ph845:                                     ; preds = %ma_channel_map_get_channel.exit.preheader.i
  %n.vec846 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body847

vector.body847:                                   ; preds = %vector.body847, %vector.ph845
  %index848 = phi i64 [ 0, %vector.ph845 ], [ %index.next853, %vector.body847 ] ; 2 uses
  %vec.phi849 = phi <4 x i32> [ zeroinitializer, %vector.ph845 ], [ %i.v, %vector.body847 ]
  %vec.phi850 = phi <4 x i32> [ zeroinitializer, %vector.ph845 ], [ %i.w, %vector.body847 ]
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %index848 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %wide.load851 = load <4 x i8>, ptr %i.p, align 1, !tbaa !119
  %wide.load852 = load <4 x i8>, ptr %i.q, align 1, !tbaa !119
  %i.r = icmp ne <4 x i8> %wide.load851, zeroinitializer
  %i.s = icmp ne <4 x i8> %wide.load852, zeroinitializer
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = zext <4 x i1> %i.s to <4 x i32>
  %i.v = add <4 x i32> %vec.phi849, %i.t          ; 2 uses
  %i.w = add <4 x i32> %vec.phi850, %i.u          ; 2 uses
  %index.next853 = add nuw i64 %index848, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next853, %n.vec846
  br i1 %i.x, label %middle.block854, label %vector.body847, !llvm.loop !1938

middle.block854:                                  ; preds = %vector.body847
  %bin.rdx855 = add <4 x i32> %i.w, %i.v
  %i.y = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx855) ; 2 uses
  %cmp.n856 = icmp eq i64 %n.vec846, %wide.trip.count.i
  br i1 %cmp.n856, label %.split.us.i, label %ma_channel_map_get_channel.exit.i.preheader

ma_channel_map_get_channel.exit.i.preheader:      ; preds = %ma_channel_map_get_channel.exit.preheader.i, %middle.block854
  %indvars.iv.i.ph = phi i64 [ 0, %ma_channel_map_get_channel.exit.preheader.i ], [ %n.vec846, %middle.block854 ]
  %.03568.i.ph = phi i32 [ 0, %ma_channel_map_get_channel.exit.preheader.i ], [ %i.y, %middle.block854 ]
  br label %ma_channel_map_get_channel.exit.i

ma_channel_map_get_channel.exit.us.i:             ; preds = %.preheader66.i, %ma_channel_map_get_channel.exit.us.i
  %.03568.us.i = phi i32 [ %spec.select.us.i, %ma_channel_map_get_channel.exit.us.i ], [ 0, %.preheader66.i ]
  %.03767.us.i = phi i32 [ %i.ab, %ma_channel_map_get_channel.exit.us.i ], [ 0, %.preheader66.i ] ; 2 uses
  %i.z = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %5, i32 noundef %.03767.us.i)
  %.not47.us.i = icmp ne i8 %i.z, 0
  %i.aa = zext i1 %.not47.us.i to i32
  %spec.select.us.i = add i32 %.03568.us.i, %i.aa ; 2 uses
  %i.ab = add nuw i32 %.03767.us.i, 1             ; 2 uses
  %exitcond148.not.i = icmp eq i32 %i.ab, %5
  br i1 %exitcond148.not.i, label %.split.us.i, label %ma_channel_map_get_channel.exit.us.i, !llvm.loop !1939

ma_channel_map_get_channel.exit.i:                ; preds = %ma_channel_map_get_channel.exit.i.preheader, %ma_channel_map_get_channel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %ma_channel_map_get_channel.exit.i ], [ %indvars.iv.i.ph, %ma_channel_map_get_channel.exit.i.preheader ] ; 2 uses
  %.03568.i = phi i32 [ %spec.select.i, %ma_channel_map_get_channel.exit.i ], [ %.03568.i.ph, %ma_channel_map_get_channel.exit.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !119
  %.not47.i = icmp ne i8 %i.ad, 0
  %i.ae = zext i1 %.not47.i to i32
  %spec.select.i = add i32 %.03568.i, %i.ae       ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.split.us.i, label %ma_channel_map_get_channel.exit.i, !llvm.loop !1940

.split.us.i:                                      ; preds = %ma_channel_map_get_channel.exit.i, %ma_channel_map_get_channel.exit.us.i, %middle.block854
  %.us-phi.i = phi i32 [ %spec.select.us.i, %ma_channel_map_get_channel.exit.us.i ], [ %i.y, %middle.block854 ], [ %spec.select.i, %ma_channel_map_get_channel.exit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.us-phi.i, 0
  br i1 %.not.i, label %bb.e, label %.preheader64.i

.preheader64.i:                                   ; preds = %.split.us.i
  %.not131.i = icmp eq i64 %6, 0
  br i1 %.not131.i, label %.critedge334, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader64.i
  %i.af = uitofp i32 %.us-phi.i to float          ; 2 uses
  %i.ag = zext i32 %5 to i64                      ; 9 uses
  br i1 %i.o, label %.preheader.us.us.i.preheader, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.us.i
  %xtraiter1066 = and i64 %i.ag, 1
  %i.ah = icmp eq i32 %5, 1
  %unroll_iter1071 = and i64 %i.ag, 4294967294
  %lcmp.mod1068.not = icmp eq i64 %xtraiter1066, 0
  %lcmp.mod1070 = trunc i32 %5 to i1
  br label %.preheader.us.i

.preheader.us.us.i.preheader:                     ; preds = %.preheader.lr.ph.split.us.i
  %i.ai = add nsw i64 %i.ag, -1                   ; 2 uses
  %xtraiter1073 = and i64 %i.ag, 7                ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 7
  %unroll_iter1078 = and i64 %i.ag, 4294967288
  %lcmp.mod1075.not = icmp eq i64 %xtraiter1073, 0
  %lcmp.mod1077 = icmp ne i64 %xtraiter1073, 0
  %xtraiter1080 = and i64 %i.ag, 3                ; 3 uses
  %i.ak = icmp ult i64 %i.ai, 3
  %unroll_iter1085 = and i64 %i.ag, 4294967292
  %lcmp.mod1082.not = icmp eq i64 %xtraiter1080, 0
  %lcmp.mod1084 = icmp ne i64 %xtraiter1080, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader, %._crit_edge.split.us.us.us.i
  %.03977.us.us.i = phi i64 [ %i.ew, %._crit_edge.split.us.us.us.i ], [ 0, %.preheader.us.us.i.preheader ]
  %.04176.us.us.i = phi ptr [ %i.eu, %._crit_edge.split.us.us.us.i ], [ %0, %.preheader.us.us.i.preheader ] ; 2 uses
  %.04274.us.us.i = phi ptr [ %i.ev, %._crit_edge.split.us.us.us.i ], [ %3, %.preheader.us.us.i.preheader ] ; 35 uses
  switch i32 %5, label %.lr.ph.split.us.us.us.split.i.preheader [
    i32 7, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us.i.preheader
    i32 1, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.preheader
    i32 2, label %._crit_edge.split.us.us.us.loopexit136.i
    i32 3, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.preheader
    i32 4, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us108.i.preheader
    i32 5, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us116.i.preheader
    i32 6, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us124.i.preheader
  ]

ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.preheader: ; preds = %.preheader.us.us.i, %.preheader.us.us.i
  br i1 %i.aj, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.epil.preheader, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i

.lr.ph.split.us.us.us.split.i.preheader:          ; preds = %.preheader.us.us.i
  br i1 %i.ak, label %.lr.ph.split.us.us.us.split.i.epil.preheader, label %.lr.ph.split.us.us.us.split.i

ma_channel_map_get_channel.exit50.thread.us.us.us.us124.i.preheader: ; preds = %.preheader.us.us.i
  %i.al = load float, ptr %.04274.us.us.i, align 4, !tbaa !349
  %i.am = fadd float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %.04274.us.us.i, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !349
  %i.ap = fadd float %i.am, %i.ao
end_hunk_2
begin_hunk_3_@ma_dr_mp3_L3_imdct36:bb.a
bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ma_dr_mp3d_synth_pair(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 2)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3584
  %i.b = load float, ptr %i.a, align 4, !tbaa !349
  %i.c = load float, ptr %2, align 4, !tbaa !349
  %i.d = fsub float %i.b, %i.c
  %i.e = fmul float %i.d, 2.900000e+01
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.g = load float, ptr %i.f, align 4, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 3328
  %i.i = load float, ptr %i.h, align 4, !tbaa !349
  %i.j = fadd float %i.g, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float 2.130000e+02, float %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3072
  %i.m = load float, ptr %i.l, align 4, !tbaa !349
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.o = load float, ptr %i.n, align 4, !tbaa !349
  %i.p = fsub float %i.m, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 4.590000e+02, float %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.s = load float, ptr %i.r, align 4, !tbaa !349
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2816
  %i.u = load float, ptr %i.t, align 4, !tbaa !349
  %i.v = fadd float %i.s, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 2.037000e+03, float %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 2560
  %i.y = load float, ptr %i.x, align 4, !tbaa !349
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aa = load float, ptr %i.z, align 4, !tbaa !349
  %i.ab = fsub float %i.y, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 5.153000e+03, float %i.w)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !349
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2304
  %i.ag = load float, ptr %i.af, align 4, !tbaa !349
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 6.574000e+03, float %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !349
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1536
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fsub float %i.ak, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float 3.748900e+04, float %i.ai)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1792
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !349
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 7.503800e+04, float %i.ao) ; 3 uses
  %i.as = fcmp ult float %i.ar, 3.276650e+04
  br i1 %i.as, label %bb.b, label %ma_dr_mp3d_scale_pcm.exit

bb.b:                                             ; preds = %bb.a
  %i.at = fcmp ugt float %i.ar, -3.276750e+04
  br i1 %i.at, label %bb.c, label %ma_dr_mp3d_scale_pcm.exit

bb.c:                                             ; preds = %bb.b
  %i.au = fadd float %i.ar, 5.000000e-01
  %i.av = fptosi float %i.au to i16               ; 2 uses
  %.lobit.neg.i = ashr i16 %i.av, 15
  %i.aw = add i16 %.lobit.neg.i, %i.av
  br label %ma_dr_mp3d_scale_pcm.exit

ma_dr_mp3d_scale_pcm.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i16 [ %i.aw, %bb.c ], [ 32767, %bb.a ], [ -32768, %bb.b ]
  store i16 %.0.i, ptr %0, align 2, !tbaa !122
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 3592
  %i.az = load float, ptr %i.ay, align 4, !tbaa !349
  %i.ba = fmul float %i.az, 1.040000e+02
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 3080
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !349
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float 1.567000e+03, float %i.ba)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 2568
  %i.bf = load float, ptr %i.be, align 4, !tbaa !349
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float 9.727000e+03, float %i.bd)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 2056
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !349
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float 6.401900e+04, float %i.bg)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 1544
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !349
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float -9.975000e+03, float %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !349
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float -4.500000e+01, float %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.br = load float, ptr %i.bq, align 4, !tbaa !349
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float 1.460000e+02, float %i.bp)
  %i.bt = load float, ptr %i.ax, align 4, !tbaa !349
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float -5.000000e+00, float %i.bs) ; 3 uses
  %i.bv = fcmp ult float %i.bu, 3.276650e+04
  br i1 %i.bv, label %bb.d, label %ma_dr_mp3d_scale_pcm.exit44

bb.d:                                             ; preds = %ma_dr_mp3d_scale_pcm.exit
  %i.bw = fcmp ugt float %i.bu, -3.276750e+04
  br i1 %i.bw, label %bb.e, label %ma_dr_mp3d_scale_pcm.exit44

bb.e:                                             ; preds = %bb.d
  %i.bx = fadd float %i.bu, 5.000000e-01
  %i.by = fptosi float %i.bx to i16               ; 2 uses
  %.lobit.neg.i43 = ashr i16 %i.by, 15
  %i.bz = add i16 %.lobit.neg.i43, %i.by
  br label %ma_dr_mp3d_scale_pcm.exit44

ma_dr_mp3d_scale_pcm.exit44:                      ; preds = %ma_dr_mp3d_scale_pcm.exit, %bb.d, %bb.e
  %.0.i42 = phi i16 [ %i.bz, %bb.e ], [ 32767, %ma_dr_mp3d_scale_pcm.exit ], [ -32768, %bb.d ]
  %i.ca = shl nsw i32 %1, 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cb
  store i16 %.0.i42, ptr %i.cc, align 2, !tbaa !122
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #57

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ma_dr_mp3__realloc_default(ptr noundef captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #42 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #69
  ret ptr %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #64

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #33

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nounwind memory(argmem: write) }
attributes #55 = { nounwind }
attributes #56 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #59 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #60 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #61 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #62 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #63 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #64 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #65 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #66 = { nounwind willreturn memory(read) }
attributes #67 = { nounwind allocsize(0) }
attributes #68 = { nounwind willreturn memory(none) }
attributes #69 = { nounwind allocsize(1) }

!llvm.module.flags = !{!110, !111}
!llvm.ident = !{!112}
!llvm.errno.tbaa = !{!117}

!0 = distinct !{!0, !120}
!1 = distinct !{!1, !120}
!2 = distinct !{!2, !120}
!3 = distinct !{!3, !120}
!4 = distinct !{!4, !120}
!5 = distinct !{!5, !120}
!6 = distinct !{null}
!7 = distinct !{!7, !120}
!8 = distinct !{null, null}
!9 = distinct !{!9, !120}
!10 = distinct !{!10, !120}
!11 = distinct !{null, null}
!12 = distinct !{!12, !120}
!13 = distinct !{!13, !120}
!14 = distinct !{!14, !120}
!15 = distinct !{!15, !120}
!16 = distinct !{!16, !120}
!17 = distinct !{!17, !120}
!18 = distinct !{!18, !120}
!19 = distinct !{!19, !120}
!20 = distinct !{!20, !120}
!21 = distinct !{!21, !120}
!22 = distinct !{!22, !120}
!23 = distinct !{!23, !120}
!24 = distinct !{!24, !120}
!25 = distinct !{!25, !120}
!26 = distinct !{!26, !120}
!27 = distinct !{!27, !120}
!28 = distinct !{!28, !120, !424}
!29 = distinct !{!29, !120, !424}
!30 = distinct !{!30, !120}
!31 = distinct !{!31, !120}
!32 = distinct !{!32, !120}
!33 = distinct !{!33, !120}
!34 = distinct !{!34, !120}
!35 = distinct !{!35, !120}
!36 = distinct !{!36, !120}
!37 = distinct !{!37, !120}
!38 = distinct !{!38, !120}
!39 = distinct !{!39, !120}
!40 = distinct !{!40, !120}
!41 = distinct !{!41, !120}
!42 = distinct !{!42, !120}
!43 = distinct !{null, ptr @ma_free}
!44 = distinct !{!44, !120}
!45 = distinct !{!45, !120}
!46 = distinct !{!46, !120}
!47 = distinct !{null}
!48 = distinct !{null, null}
!49 = distinct !{null, null}
!50 = distinct !{ptr @ma_dr_wav_free, null}
!51 = distinct !{!51, !120}
!52 = distinct !{!52, !120}
!53 = distinct !{!53, !120}
!54 = distinct !{!54, !120}
end_hunk_3
