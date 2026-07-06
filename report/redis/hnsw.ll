inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0
@.str.29 = private unnamed_addr constant [46 x i8] c"- Found %d neighbors but self not among them\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"- Closest neighbor distance: %f\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"- Neighbors: \00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"\0AFound instead: \00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"Total nodes tested: %u\0A\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"Perfectly reachable nodes: %u (%.1f%%)\0A\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"Unreachable/suboptimal nodes: %u (%.1f%%)\0A\00", align 1
@hnsw_cpu_supports_popcnt.popcnt_supported = internal thread_local unnamed_addr global i32 -1, align 4
@str = private unnamed_addr constant [35 x i8] c"Empty index or NULL pointer passed\00", align 1
@str.1 = private unnamed_addr constant [23 x i8] c"HNSW Graph Statistics:\00", align 1
@str.2 = private unnamed_addr constant [23 x i8] c"----------------------\00", align 1
@str.3 = private unnamed_addr constant [38 x i8] c"\0AUnreachable nodes debug information:\00", align 1
@str.4 = private unnamed_addr constant [38 x i8] c"=====================================\00", align 1
@str.5 = private unnamed_addr constant [25 x i8] c"\0AUnreachable node found:\00", align 1
@str.6 = private unnamed_addr constant [22 x i8] c"\0ATesting graph recall\00", align 1
@str.7 = private unnamed_addr constant [21 x i8] c"====================\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @secure_pair_mixer_128(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @llvm.umin.i64(i64 %2, i64 %3)
  %i.b = tail call i64 @llvm.umax.i64(i64 %2, i64 %3)
  %i.c = mul i64 %4, -7723592293110705685         ; 2 uses
  %i.d = lshr i64 %i.c, 32
  %i.e = xor i64 %i.d, %i.c                       ; 2 uses
  %i.f = mul i64 %i.e, 3133965575612453543        ; 2 uses
  %i.g = mul i64 %i.e, 1465756011083071488
  %i.h = lshr i64 %i.f, 33
  %i.i = or disjoint i64 %i.h, %i.g
  %i.j = xor i64 %0, %i.a
  %i.k = xor i64 %i.j, %i.f
  %i.l = xor i64 %i.k, -2401053088876216593       ; 2 uses
  %i.m = mul i64 %i.l, -49064778989728563
  %i.n = mul i64 %i.l, -1443778861425754112
  %i.o = lshr i64 %i.m, 41
  %i.p = or disjoint i64 %i.o, %i.n
  %i.q = mul i64 %i.p, -4265267296055464877
  %i.r = xor i64 %i.b, %i.i
  %i.s = xor i64 %i.r, %1
  %i.t = xor i64 %i.s, -3819410105351357762       ; 2 uses
  %i.u = mul i64 %i.t, -7046029254386353131
  %i.v = mul i64 %i.t, 3452378011804893184
  %i.w = lshr i64 %i.u, 35
  %i.x = or disjoint i64 %i.w, %i.v
  %i.y = mul i64 %i.x, -4658895280553007687
  %i.z = add i64 %i.q, %i.y                       ; 6 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 31)
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -49064778989728563
  %i.ad = xor i64 %i.ac, %0
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 37)
  %i.af = xor i64 %i.ae, %i.z
  %i.ag = mul i64 %i.af, -4265267296055464877
  %i.ah = xor i64 %i.ag, %1
  %i.ai = add i64 %i.ad, %i.ah                    ; 6 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 31)
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = mul i64 %i.ak, -49064778989728563
  %i.am = xor i64 %i.al, %0
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 37)
  %i.ao = xor i64 %i.an, %i.ai
  %i.ap = mul i64 %i.ao, -4265267296055464877
  %i.aq = xor i64 %i.ap, %1
  %i.ar = add i64 %i.am, %i.aq                    ; 6 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 31)
  %i.at = xor i64 %i.as, %i.ar
  %i.au = mul i64 %i.at, -49064778989728563
  %i.av = xor i64 %i.au, %0                       ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 37)
  %i.ax = xor i64 %i.aw, %i.ar
  %i.ay = mul i64 %i.ax, -4265267296055464877
  %i.az = xor i64 %i.ay, %1                       ; 2 uses
  %i.ba = lshr i64 %i.av, 33
  %i.bb = xor i64 %i.ba, %i.av
  %i.bc = mul i64 %i.bb, -7046029254386353131     ; 2 uses
  %i.bd = lshr i64 %i.bc, 29
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = mul i64 %i.be, -4658895280553007687     ; 2 uses
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = lshr i64 %i.az, 33
  %i.bj = xor i64 %i.bi, %i.az
  %i.bk = mul i64 %i.bj, -7723592293110705685     ; 2 uses
  %i.bl = lshr i64 %i.bk, 29
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = mul i64 %i.bm, 3133965575612453543      ; 2 uses
  %i.bo = lshr i64 %i.bn, 32
  %i.bp = xor i64 %i.bo, %i.bn
  store i64 %i.bh, ptr %5, align 8, !tbaa !13
  store i64 %i.bp, ptr %6, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @hnsw_set_allocator(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  store ptr %0, ptr @hfree, align 8, !tbaa !15
  store ptr %1, ptr @hmalloc, align 8, !tbaa !15
  store ptr %2, ptr @hrealloc, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @pq_new(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.b = tail call ptr %i.a(i64 noundef 16) #34   ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.d = zext i32 %0 to i64
  %i.e = shl nuw nsw i64 %i.d, 4
  %i.f = tail call ptr %i.c(i64 noundef %i.e) #34 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !17
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.g(ptr noundef nonnull %i.b) #34
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %0, ptr %i.i, align 4, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.b, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @pq_free(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.b = load ptr, ptr %0, align 8, !tbaa !17
  tail call void %i.a(ptr noundef %i.b) #34
  %i.c = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.c(ptr noundef nonnull %0) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @pq_push(ptr nofree noundef captures(none) %0, ptr noundef %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 2 uses
  %i.e = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not45 = icmp eq i32 %i.b, 0
  br i1 %.not45, label %.critedge, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.preheader
  %i.f = zext i32 %i.b to i64
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.b
  %indvars.iv53 = phi i64 [ %i.f, %.lr.ph47.preheader ], [ %indvars.iv.next54, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, -1 ; 3 uses
  %i.h = and i64 %indvars.iv.next54, 4294967295
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load float, ptr %i.j, align 8, !tbaa !21
  %i.l = fcmp olt float %i.k, %2
  br i1 %i.l, label %bb.b, label %.critedge.loopexit

bb.b:                                             ; preds = %.lr.ph47
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !25
  %i.n = and i64 %indvars.iv.next54, 4294967295
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph47, !llvm.loop !28

.critedge.loopexit:                               ; preds = %bb.b, %.lr.ph47
  %.038.lcssa.ph = phi i64 [ %indvars.iv53, %.lr.ph47 ], [ 0, %bb.b ]
  %.pre57 = load i32, ptr %i.a, align 8, !tbaa !19
  %3 = and i64 %.038.lcssa.ph, 4294967295
  %i.o = add i32 %.pre57, 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %i.p = phi i32 [ 1, %.preheader ], [ %i.o, %.critedge.loopexit ]
  %.038.lcssa = phi i64 [ 0, %.preheader ], [ %3, %.critedge.loopexit ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.038.lcssa ; 2 uses
  store ptr %1, ptr %i.r, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store float %2, ptr %i.s, align 8, !tbaa !21
  store i32 %i.p, ptr %i.a, align 8, !tbaa !19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load float, ptr %i.u, align 8, !tbaa !21
  %i.w = fcmp ult float %2, %i.v
  br i1 %i.w, label %.preheader41, label %bb.e

.preheader41:                                     ; preds = %bb.c
  %.not51 = icmp eq i32 %i.d, 1
  br i1 %.not51, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader41, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader41 ] ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.next ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load float, ptr %i.z, align 8, !tbaa !21
  %i.ab = fcmp ogt float %i.aa, %2
  br i1 %i.ab, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !25
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !20
  %i.ae = add i32 %i.ad, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp samesign ult i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph, label %..critedge2.loopexit_crit_edge, !llvm.loop !31

..critedge2.loopexit_crit_edge:                   ; preds = %bb.d
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !17
  br label %.critedge2, !llvm.loop !31

.critedge2:                                       ; preds = %.lr.ph, %..critedge2.loopexit_crit_edge, %.preheader41
  %i.ah = phi ptr [ %i.t, %.preheader41 ], [ %.pre.pre, %..critedge2.loopexit_crit_edge ], [ %i.x, %.lr.ph ]
  %.0.lcssa = phi i64 [ 0, %.preheader41 ], [ %indvars.iv.next, %..critedge2.loopexit_crit_edge ], [ %indvars.iv, %.lr.ph ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.0.lcssa ; 2 uses
  store ptr %1, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store float %2, ptr %i.aj, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge2, %.critedge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @pq_pop(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !19
  %i.e = load ptr, ptr %0, align 8, !tbaa !17
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 8, !tbaa !21
  store float %i.i, ptr %1, align 4, !tbaa !27
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @pq_max_distance(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.f, %bb.b ], [ +inf, %bb.a ]
  ret float %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local float @vectors_distance_float_avx512(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ugt i32 %2, 15
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  %i.c = add nsw i64 %i.b, -16                    ; 2 uses
  %i.d = lshr i64 %i.c, 4
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.c, 48
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.e, 2305843009213693948
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.01929 = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.h = load <16 x float>, ptr %i.g, align 1, !tbaa !32
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.j = load <16 x float>, ptr %i.i, align 1, !tbaa !32
  %i.k = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.h, <16 x float> %i.j, <16 x float> %.01929)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 16 ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.m = load <16 x float>, ptr %i.l, align 1, !tbaa !32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.o = load <16 x float>, ptr %i.n, align 1, !tbaa !32
  %i.p = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.m, <16 x float> %i.o, <16 x float> %i.k)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 32 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.r = load <16 x float>, ptr %i.q, align 1, !tbaa !32
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.t = load <16 x float>, ptr %i.s, align 1, !tbaa !32
  %i.u = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.r, <16 x float> %i.t, <16 x float> %i.p)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 48 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.w = load <16 x float>, ptr %i.v, align 1, !tbaa !32
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.y = load <16 x float>, ptr %i.x, align 1, !tbaa !32
  %i.z = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.w, <16 x float> %i.y, <16 x float> %i.u) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 64 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !33

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.01929.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.01929.epil = phi <16 x float> [ %.01929.epil.init, %.lr.ph.epil.preheader ], [ %i.ae, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.ab = load <16 x float>, ptr %i.aa, align 1, !tbaa !32
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ad = load <16 x float>, ptr %i.ac, align 1, !tbaa !32
  %i.ae = tail call <16 x float> @llvm.fma.v16f32(<16 x float> %i.ab, <16 x float> %i.ad, <16 x float> %.01929.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa45 = phi <16 x float> [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.ae, %.lr.ph.epil ]
  %i.af = and i32 %2, -16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.020.lcssa = phi i32 [ 0, %bb.a ], [ %i.af, %._crit_edge.loopexit ] ; 2 uses
  %.019.lcssa = phi <16 x float> [ zeroinitializer, %bb.a ], [ %.lcssa45, %._crit_edge.loopexit ]
  %i.ag = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> %.019.lcssa) ; 3 uses
  %i.ah = icmp ult i32 %.020.lcssa, %2
  br i1 %i.ah, label %.lr.ph34.preheader, label %._crit_edge35

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %i.ai = zext i32 %.020.lcssa to i64             ; 3 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %xtraiter48 = and i64 %wide.trip.count, 3       ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph34.prol.loopexit, label %.lr.ph34.prol

.lr.ph34.prol:                                    ; preds = %.lr.ph34.preheader, %.lr.ph34.prol
  %indvars.iv40.prol = phi i64 [ %indvars.iv.next41.prol, %.lr.ph34.prol ], [ %i.ai, %.lr.ph34.preheader ] ; 3 uses
  %.032.prol = phi float [ %i.an, %.lr.ph34.prol ], [ %i.ag, %.lr.ph34.preheader ]
end_hunk_0
begin_hunk_1_@hnsw_free:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.cp = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.co) #34 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.cr = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.cq) #34 ; 0 uses
  %i.cs = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.cs(ptr noundef nonnull %0) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @hnsw_add_node(ptr nofree noundef captures(none) %0, ptr noundef initializes((296, 312)) %1) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.b, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr null, ptr %i.d, align 8, !tbaa !26
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  store ptr %1, ptr %i.f, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !139
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !92
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !92
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @search_layer_with_filter(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext i32 %5 to i64                       ; 4 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !13
  %i.f = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.g = tail call ptr %i.f(i64 noundef 16) #34, !inline_history !142 ; 6 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %pq_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.i = tail call ptr %i.h(i64 noundef 4096) #34, !inline_history !142 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.j(ptr noundef nonnull %i.g) #34, !inline_history !142
  br label %pq_new.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 256, ptr %i.l, align 4, !tbaa !20
  br label %pq_new.exit

pq_new.exit:                                      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ null, %bb.c ], [ null, %bb.a ] ; 24 uses
  %i.m = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.n = tail call ptr %i.m(i64 noundef 16) #34, !inline_history !142 ; 25 uses
  %.not.i107 = icmp eq ptr %i.n, null
  br i1 %.not.i107, label %pq_new.exit110.thread, label %bb.e

bb.e:                                             ; preds = %pq_new.exit
  %i.o = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.p = zext i32 %3 to i64
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call ptr %i.o(i64 noundef %i.q) #34, !inline_history !142 ; 3 uses
  store ptr %i.r, ptr %i.n, align 8, !tbaa !17
  %.not10.i108 = icmp eq ptr %i.r, null
  br i1 %.not10.i108, label %bb.f, label %pq_new.exit110

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.s(ptr noundef nonnull %i.n) #34, !inline_history !142
  br label %pq_new.exit110.thread

pq_new.exit110.thread:                            ; preds = %bb.f, %pq_new.exit
  %.not253 = icmp eq ptr %.0.i, null
  br i1 %.not253, label %.thread, label %pq_free.exit

pq_new.exit110:                                   ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 14 uses
  store i32 0, ptr %i.t, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 7 uses
  store i32 %3, ptr %i.u, align 4, !tbaa !20
  %.not249 = icmp eq ptr %.0.i, null
  br i1 %.not249, label %pq_free.exit113, label %bb.g

pq_free.exit:                                     ; preds = %pq_new.exit110.thread
  %i.v = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.w = load ptr, ptr %.0.i, align 8, !tbaa !17
  tail call void %i.v(ptr noundef %i.w) #34, !inline_history !143
  br label %.thread.sink.split

pq_free.exit113:                                  ; preds = %pq_new.exit110
  %i.x = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.x(ptr noundef nonnull %i.r) #34, !inline_history !143
  br label %.thread.sink.split

bb.g:                                             ; preds = %pq_new.exit110
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !70
  switch i32 %i.z, label %bb.k [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !73
  %i.ag = tail call float @vectors_distance_float(ptr noundef %i.ab, ptr noundef %i.ad, i32 noundef %i.af)
  br label %hnsw_distance.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load float, ptr %i.an, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !27
  %i.ar = tail call float @vectors_distance_q8(ptr noundef %i.ai, ptr noundef %i.ak, i32 noundef %i.am, float noundef %i.ao, float noundef %i.aq)
  br label %hnsw_distance.exit

bb.j:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !73
  %i.ay = tail call float @vectors_distance_bin(ptr noundef %i.at, ptr noundef %i.av, i32 noundef %i.ax)
  br label %hnsw_distance.exit

bb.k:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.h, %bb.i, %bb.j
  %.0.i114 = phi float [ %i.ag, %bb.h ], [ %i.ar, %bb.i ], [ %i.ay, %bb.j ] ; 10 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 12 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !19 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 6 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !20 ; 2 uses
  %i.bd = icmp ult i32 %i.ba, %i.bc
  br i1 %i.bd, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %hnsw_distance.exit
  %.not45.i = icmp eq i32 %i.ba, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.be = zext i32 %i.ba to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.l, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.be, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.l ] ; 3 uses
  %i.bf = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 2 uses
  %i.bg = and i64 %indvars.iv.next54.i, 4294967295 ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !21
  %i.bk = fcmp olt float %i.bj, %.0.i114
  br i1 %i.bk, label %bb.l, label %.critedge.loopexit.i

bb.l:                                             ; preds = %.lr.ph47.i
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv53.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !25
  %.not.i115 = icmp eq i64 %i.bg, 0
  br i1 %.not.i115, label %.critedge.loopexit.i, label %.lr.ph47.i, !llvm.loop !28

.critedge.loopexit.i:                             ; preds = %bb.l, %.lr.ph47.i
  %.038.lcssa.ph.i = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ], [ 0, %bb.l ]
  %.pre57.i = load i32, ptr %i.az, align 8, !tbaa !19
  %9 = and i64 %.038.lcssa.ph.i, 4294967295
  %i.bm = add i32 %.pre57.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.bn = phi i32 [ 1, %.preheader.i ], [ %i.bm, %.critedge.loopexit.i ]
  %.038.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %9, %.critedge.loopexit.i ]
  %i.bo = load ptr, ptr %.0.i, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.038.lcssa.i ; 2 uses
  store ptr %2, ptr %i.bp, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store float %.0.i114, ptr %i.bq, align 8, !tbaa !21
  store i32 %i.bn, ptr %i.az, align 8, !tbaa !19
  br label %pq_push.exit

bb.m:                                             ; preds = %hnsw_distance.exit
  %i.br = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !21
  %i.bu = fcmp ult float %.0.i114, %i.bt
  br i1 %i.bu, label %.preheader41.i, label %pq_push.exit

.preheader41.i:                                   ; preds = %bb.m
  %.not51.i = icmp eq i32 %i.bc, 1
  br i1 %.not51.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %.preheader41.i ] ; 3 uses
  %i.bv = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.next.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load float, ptr %i.bx, align 8, !tbaa !21
  %i.bz = fcmp ogt float %i.by, %.0.i114
  br i1 %i.bz, label %bb.n, label %.critedge2.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !25
  %i.cb = load i32, ptr %i.bb, align 4, !tbaa !20
  %i.cc = add i32 %i.cb, -1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp samesign ult i64 %indvars.iv.next.i, %i.cd
  br i1 %i.ce, label %.lr.ph.i, label %..critedge2.loopexit_crit_edge.i, !llvm.loop !31

..critedge2.loopexit_crit_edge.i:                 ; preds = %bb.n
  %.pre.pre.i = load ptr, ptr %.0.i, align 8, !tbaa !17
  br label %.critedge2.i, !llvm.loop !31

.critedge2.i:                                     ; preds = %.lr.ph.i, %..critedge2.loopexit_crit_edge.i, %.preheader41.i
  %i.cf = phi ptr [ %i.br, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.bv, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 0, %.preheader41.i ], [ %indvars.iv.next.i, %..critedge2.loopexit_crit_edge.i ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.0.lcssa.i ; 2 uses
  store ptr %2, ptr %i.cg, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store float %.0.i114, ptr %i.ch, align 8, !tbaa !21
  br label %pq_push.exit

pq_push.exit:                                     ; preds = %.critedge.i, %bb.m, %.critedge2.i
  %i.ci = icmp eq ptr %6, null                    ; 3 uses
  br i1 %i.ci, label %bb.p, label %bb.o

bb.o:                                             ; preds = %pq_push.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !15
  %i.cl = tail call i32 %6(ptr noundef %i.ck, ptr noundef %7) #34
  %.not = icmp eq i32 %i.cl, 0
  br i1 %.not, label %pq_push.exit137, label %bb.p

bb.p:                                             ; preds = %bb.o, %pq_push.exit
  %i.cm = load i32, ptr %i.t, align 8, !tbaa !19  ; 3 uses
  %i.cn = load i32, ptr %i.u, align 4, !tbaa !20  ; 2 uses
  %i.co = icmp ult i32 %i.cm, %i.cn
  br i1 %i.co, label %.preheader.i125, label %bb.r

.preheader.i125:                                  ; preds = %bb.p
  %.not45.i126 = icmp eq i32 %i.cm, 0
  br i1 %.not45.i126, label %.critedge.i134, label %.lr.ph47.preheader.i127

.lr.ph47.preheader.i127:                          ; preds = %.preheader.i125
  %i.cp = zext i32 %i.cm to i64
  br label %.lr.ph47.i128

.lr.ph47.i128:                                    ; preds = %bb.q, %.lr.ph47.preheader.i127
  %indvars.iv53.i129 = phi i64 [ %i.cp, %.lr.ph47.preheader.i127 ], [ %indvars.iv.next54.i130, %bb.q ] ; 3 uses
  %i.cq = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i130 = add nsw i64 %indvars.iv53.i129, -1 ; 2 uses
  %i.cr = and i64 %indvars.iv.next54.i130, 4294967295 ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !21
  %i.cv = fcmp olt float %i.cu, %.0.i114
  br i1 %i.cv, label %bb.q, label %.critedge.loopexit.i131

bb.q:                                             ; preds = %.lr.ph47.i128
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv53.i129
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !tbaa.struct !25
  %.not.i136 = icmp eq i64 %i.cr, 0
  br i1 %.not.i136, label %.critedge.loopexit.i131, label %.lr.ph47.i128, !llvm.loop !28

.critedge.loopexit.i131:                          ; preds = %bb.q, %.lr.ph47.i128
  %.038.lcssa.ph.i132 = phi i64 [ %indvars.iv53.i129, %.lr.ph47.i128 ], [ 0, %bb.q ]
  %.pre57.i133 = load i32, ptr %i.t, align 8, !tbaa !19
  %10 = and i64 %.038.lcssa.ph.i132, 4294967295
  %i.cx = add i32 %.pre57.i133, 1
  br label %.critedge.i134

.critedge.i134:                                   ; preds = %.critedge.loopexit.i131, %.preheader.i125
  %i.cy = phi i32 [ 1, %.preheader.i125 ], [ %i.cx, %.critedge.loopexit.i131 ]
  %.038.lcssa.i135 = phi i64 [ 0, %.preheader.i125 ], [ %10, %.critedge.loopexit.i131 ]
  %i.cz = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %.038.lcssa.i135 ; 2 uses
  store ptr %2, ptr %i.da, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store float %.0.i114, ptr %i.db, align 8, !tbaa !21
  store i32 %i.cy, ptr %i.t, align 8, !tbaa !19
  br label %pq_push.exit137

bb.r:                                             ; preds = %bb.p
  %i.dc = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load float, ptr %i.dd, align 8, !tbaa !21
  %i.df = fcmp ult float %.0.i114, %i.de
  br i1 %i.df, label %.preheader41.i116, label %pq_push.exit137

.preheader41.i116:                                ; preds = %bb.r
  %.not51.i117 = icmp eq i32 %i.cn, 1
  br i1 %.not51.i117, label %.critedge2.i121, label %.lr.ph.i118

.lr.ph.i118:                                      ; preds = %.preheader41.i116, %bb.s
  %indvars.iv.i119 = phi i64 [ %indvars.iv.next.i120, %bb.s ], [ 0, %.preheader41.i116 ] ; 3 uses
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i120 = add nuw nsw i64 %indvars.iv.i119, 1 ; 4 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %indvars.iv.next.i120 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load float, ptr %i.di, align 8, !tbaa !21
  %i.dk = fcmp ogt float %i.dj, %.0.i114
  br i1 %i.dk, label %bb.s, label %.critedge2.i121

bb.s:                                             ; preds = %.lr.ph.i118
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %indvars.iv.i119
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i64 16, i1 false), !tbaa.struct !25
  %i.dm = load i32, ptr %i.u, align 4, !tbaa !20
  %i.dn = add i32 %i.dm, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = icmp samesign ult i64 %indvars.iv.next.i120, %i.do
  br i1 %i.dp, label %.lr.ph.i118, label %..critedge2.loopexit_crit_edge.i123, !llvm.loop !31

..critedge2.loopexit_crit_edge.i123:              ; preds = %bb.s
  %.pre.pre.i124 = load ptr, ptr %i.n, align 8, !tbaa !17
  br label %.critedge2.i121, !llvm.loop !31

.critedge2.i121:                                  ; preds = %.lr.ph.i118, %..critedge2.loopexit_crit_edge.i123, %.preheader41.i116
  %i.dq = phi ptr [ %i.dc, %.preheader41.i116 ], [ %.pre.pre.i124, %..critedge2.loopexit_crit_edge.i123 ], [ %i.dg, %.lr.ph.i118 ]
  %.0.lcssa.i122 = phi i64 [ 0, %.preheader41.i116 ], [ %indvars.iv.next.i120, %..critedge2.loopexit_crit_edge.i123 ], [ %indvars.iv.i119, %.lr.ph.i118 ]
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %.0.lcssa.i122 ; 2 uses
  store ptr %2, ptr %i.dr, align 8, !tbaa !30
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store float %.0.i114, ptr %i.ds, align 8, !tbaa !21
  br label %pq_push.exit137

pq_push.exit137:                                  ; preds = %.critedge2.i121, %bb.r, %.critedge.i134, %bb.o
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.b
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !13
  %i.dw = load i32, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %.not100278 = icmp eq i32 %i.dw, 0
  br i1 %.not100278, label %pq_free.exit233, label %.lr.ph280

.lr.ph280:                                        ; preds = %pq_push.exit137
  %i.dx = icmp eq i32 %8, 0
  %or.cond3.not252 = or i1 %i.ci, %i.dx
  %i.dy = zext i32 %4 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.t

.loopexit:                                        ; preds = %pq_push.exit187, %pq_push.exit187.us, %.preheader
  %i.ec = load i32, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %.not100 = icmp eq i32 %i.ec, 0
  br i1 %.not100, label %pq_free.exit233, label %bb.t

bb.t:                                             ; preds = %.lr.ph280, %.loopexit
  %i.ed = phi i32 [ %i.dw, %.lr.ph280 ], [ %i.ec, %.loopexit ]
  %.092279 = phi i32 [ 1, %.lr.ph280 ], [ %i.el, %.loopexit ] ; 2 uses
  %.not101 = icmp ult i32 %.092279, %8
  %or.cond104 = select i1 %or.cond3.not252, i1 true, i1 %.not101
  br i1 %or.cond104, label %pq_pop.exit, label %pq_free.exit233

pq_pop.exit:                                      ; preds = %bb.t
  %i.ee = add i32 %i.ed, -1                       ; 2 uses
  store i32 %i.ee, ptr %i.az, align 8, !tbaa !19
  %i.ef = load ptr, ptr %.0.i, align 8, !tbaa !17
  %i.eg = zext i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !21
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !30
  %i.el = add i32 %.092279, 1
  %i.em = load i32, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %pq_max_distance.exit, label %bb.u

bb.u:                                             ; preds = %pq_pop.exit
  %i.eo = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load float, ptr %i.ep, align 8, !tbaa !21
  br label %pq_max_distance.exit

pq_max_distance.exit:                             ; preds = %pq_pop.exit, %bb.u
  %.0.i139 = phi float [ %i.eq, %bb.u ], [ +inf, %pq_pop.exit ]
  %.not102 = icmp uge i32 %i.em, %3
  %i.er = fcmp ogt float %i.ej, %.0.i139
  %or.cond106 = select i1 %.not102, i1 %i.er, i1 false
  br i1 %or.cond106, label %pq_free.exit233, label %.preheader

.preheader:                                       ; preds = %pq_max_distance.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 312
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.dy ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !132
  %.not282 = icmp eq i32 %i.ev, 0
  br i1 %.not282, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.ci, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %pq_push.exit187.us
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %pq_push.exit187.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !135
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv309
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !26 ; 9 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.b ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !13
  %i.fc = load i64, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %pq_push.exit187.us, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.us
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !13
  %i.fe = load i32, ptr %i.y, align 8, !tbaa !70
  switch i32 %i.fe, label %.split.us [
    i32 0, label %bb.y
    i32 1, label %bb.x
    i32 2, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.ff = load ptr, ptr %i.dz, align 8, !tbaa !15
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !15
  %i.fi = load i32, ptr %i.ea, align 8, !tbaa !73
  %i.fj = tail call float @vectors_distance_bin(ptr noundef %i.ff, ptr noundef %i.fh, i32 noundef %i.fi)
  br label %hnsw_distance.exit141.us

bb.x:                                             ; preds = %bb.v
  %i.fk = load ptr, ptr %i.dz, align 8, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !15
  %i.fn = load i32, ptr %i.ea, align 8, !tbaa !73
  %i.fo = load float, ptr %i.eb, align 8, !tbaa !27
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fq = load float, ptr %i.fp, align 8, !tbaa !27
  %i.fr = tail call float @vectors_distance_q8(ptr noundef %i.fk, ptr noundef %i.fm, i32 noundef %i.fn, float noundef %i.fo, float noundef %i.fq)
  br label %hnsw_distance.exit141.us

bb.y:                                             ; preds = %bb.v
  %i.fs = load ptr, ptr %i.dz, align 8, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !15
  %i.fv = load i32, ptr %i.ea, align 8, !tbaa !73
  %i.fw = tail call float @vectors_distance_float(ptr noundef %i.fs, ptr noundef %i.fu, i32 noundef %i.fv)
  br label %hnsw_distance.exit141.us

hnsw_distance.exit141.us:                         ; preds = %bb.y, %bb.x, %bb.w
  %.0.i140.us = phi float [ %i.fw, %bb.y ], [ %i.fr, %bb.x ], [ %i.fj, %bb.w ] ; 11 uses
  %i.fx = load i32, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %pq_max_distance.exit143.us, label %bb.z

bb.z:                                             ; preds = %hnsw_distance.exit141.us
  %i.fz = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load float, ptr %i.ga, align 8, !tbaa !21
  br label %pq_max_distance.exit143.us

pq_max_distance.exit143.us:                       ; preds = %bb.z, %hnsw_distance.exit141.us
  %.0.i142.us = phi float [ %i.gb, %bb.z ], [ +inf, %hnsw_distance.exit141.us ]
  %i.gc = fcmp olt float %.0.i140.us, %.0.i142.us
  %i.gd = icmp ult i32 %i.fx, %3
  %or.cond248.us = or i1 %i.gd, %i.gc
  br i1 %or.cond248.us, label %bb.aa, label %pq_push.exit187.us

bb.aa:                                            ; preds = %pq_max_distance.exit143.us
  %i.ge = load i32, ptr %i.az, align 8, !tbaa !19 ; 3 uses
  %i.gf = load i32, ptr %i.bb, align 4, !tbaa !20 ; 2 uses
  %i.gg = icmp ult i32 %i.ge, %i.gf
  br i1 %i.gg, label %.preheader.i153.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gh = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load float, ptr %i.gi, align 8, !tbaa !21
  %i.gk = fcmp ult float %.0.i140.us, %i.gj
  br i1 %i.gk, label %.preheader41.i144.us, label %pq_push.exit165.us

.preheader41.i144.us:                             ; preds = %bb.ab
  %.not51.i145.us = icmp eq i32 %i.gf, 1
  br i1 %.not51.i145.us, label %.critedge2.i149.us, label %.lr.ph.i146.us

.lr.ph.i146.us:                                   ; preds = %.preheader41.i144.us, %bb.ac
  %indvars.iv.i147.us = phi i64 [ %indvars.iv.next.i148.us, %bb.ac ], [ 0, %.preheader41.i144.us ] ; 3 uses
  %i.gl = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next.i148.us = add nuw nsw i64 %indvars.iv.i147.us, 1 ; 4 uses
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %indvars.iv.next.i148.us ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load float, ptr %i.gn, align 8, !tbaa !21
  %i.gp = fcmp ogt float %i.go, %.0.i140.us
  br i1 %i.gp, label %bb.ac, label %.critedge2.i149.us

bb.ac:                                            ; preds = %.lr.ph.i146.us
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %indvars.iv.i147.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i64 16, i1 false), !tbaa.struct !25
  %i.gr = load i32, ptr %i.bb, align 4, !tbaa !20
  %i.gs = add i32 %i.gr, -1
  %i.gt = zext i32 %i.gs to i64
  %i.gu = icmp samesign ult i64 %indvars.iv.next.i148.us, %i.gt
  br i1 %i.gu, label %.lr.ph.i146.us, label %..critedge2.loopexit_crit_edge.i151.us, !llvm.loop !31

..critedge2.loopexit_crit_edge.i151.us:           ; preds = %bb.ac
  %.pre.pre.i152.us = load ptr, ptr %.0.i, align 8, !tbaa !17
  br label %.critedge2.i149.us, !llvm.loop !31

.critedge2.i149.us:                               ; preds = %.lr.ph.i146.us, %..critedge2.loopexit_crit_edge.i151.us, %.preheader41.i144.us
  %i.gv = phi ptr [ %i.gh, %.preheader41.i144.us ], [ %.pre.pre.i152.us, %..critedge2.loopexit_crit_edge.i151.us ], [ %i.gl, %.lr.ph.i146.us ]
  %.0.lcssa.i150.us = phi i64 [ 0, %.preheader41.i144.us ], [ %indvars.iv.next.i148.us, %..critedge2.loopexit_crit_edge.i151.us ], [ %indvars.iv.i147.us, %.lr.ph.i146.us ]
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %.0.lcssa.i150.us ; 2 uses
  store ptr %i.ey, ptr %i.gw, align 8, !tbaa !30
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store float %.0.i140.us, ptr %i.gx, align 8, !tbaa !21
  br label %pq_push.exit165.us

.preheader.i153.us:                               ; preds = %bb.aa
  %.not45.i154.us = icmp eq i32 %i.ge, 0
  br i1 %.not45.i154.us, label %.critedge.i162.us, label %.lr.ph47.preheader.i155.us

.lr.ph47.preheader.i155.us:                       ; preds = %.preheader.i153.us
  %i.gy = zext i32 %i.ge to i64
  br label %.lr.ph47.i156.us

.lr.ph47.i156.us:                                 ; preds = %bb.ad, %.lr.ph47.preheader.i155.us
  %indvars.iv53.i157.us = phi i64 [ %i.gy, %.lr.ph47.preheader.i155.us ], [ %indvars.iv.next54.i158.us, %bb.ad ] ; 3 uses
  %i.gz = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %indvars.iv.next54.i158.us = add nsw i64 %indvars.iv53.i157.us, -1 ; 2 uses
  %i.ha = and i64 %indvars.iv.next54.i158.us, 4294967295 ; 2 uses
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !21
  %i.he = fcmp olt float %i.hd, %.0.i140.us
  br i1 %i.he, label %bb.ad, label %.critedge.loopexit.i159.us

bb.ad:                                            ; preds = %.lr.ph47.i156.us
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %indvars.iv53.i157.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !tbaa.struct !25
  %.not.i164.us = icmp eq i64 %i.ha, 0
  br i1 %.not.i164.us, label %.critedge.loopexit.i159.us, label %.lr.ph47.i156.us, !llvm.loop !28

.critedge.loopexit.i159.us:                       ; preds = %bb.ad, %.lr.ph47.i156.us
  %.038.lcssa.ph.i160.us = phi i64 [ %indvars.iv53.i157.us, %.lr.ph47.i156.us ], [ 0, %bb.ad ]
  %.pre57.i161.us = load i32, ptr %i.az, align 8, !tbaa !19
  %11 = and i64 %.038.lcssa.ph.i160.us, 4294967295
  %i.hg = add i32 %.pre57.i161.us, 1
  br label %.critedge.i162.us

.critedge.i162.us:                                ; preds = %.critedge.loopexit.i159.us, %.preheader.i153.us
  %i.hh = phi i32 [ 1, %.preheader.i153.us ], [ %i.hg, %.critedge.loopexit.i159.us ]
  %.038.lcssa.i163.us = phi i64 [ 0, %.preheader.i153.us ], [ %11, %.critedge.loopexit.i159.us ]
  %i.hi = load ptr, ptr %.0.i, align 8, !tbaa !17
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %.038.lcssa.i163.us ; 2 uses
  store ptr %i.ey, ptr %i.hj, align 8, !tbaa !30
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store float %.0.i140.us, ptr %i.hk, align 8, !tbaa !21
  store i32 %i.hh, ptr %i.az, align 8, !tbaa !19
  br label %pq_push.exit165.us

pq_push.exit165.us:                               ; preds = %.critedge.i162.us, %.critedge2.i149.us, %bb.ab
  %i.hl = load i32, ptr %i.t, align 8, !tbaa !19  ; 3 uses
  %i.hm = load i32, ptr %i.u, align 4, !tbaa !20  ; 2 uses
  %i.hn = icmp ult i32 %i.hl, %i.hm
  br i1 %i.hn, label %.preheader.i175.us, label %bb.ae

bb.ae:                                            ; preds = %pq_push.exit165.us
  %i.ho = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load float, ptr %i.hp, align 8, !tbaa !21
  %i.hr = fcmp ult float %.0.i140.us, %i.hq
  br i1 %i.hr, label %.preheader41.i166.us, label %pq_push.exit187.us

.preheader41.i166.us:                             ; preds = %bb.ae
  %.not51.i167.us = icmp eq i32 %i.hm, 1
  br i1 %.not51.i167.us, label %.critedge2.i171.us, label %.lr.ph.i168.us

.lr.ph.i168.us:                                   ; preds = %.preheader41.i166.us, %bb.af
  %indvars.iv.i169.us = phi i64 [ %indvars.iv.next.i170.us, %bb.af ], [ 0, %.preheader41.i166.us ] ; 3 uses
  %i.hs = load ptr, ptr %i.n, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i170.us = add nuw nsw i64 %indvars.iv.i169.us, 1 ; 4 uses
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %indvars.iv.next.i170.us ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load float, ptr %i.hu, align 8, !tbaa !21
  %i.hw = fcmp ogt float %i.hv, %.0.i140.us
  br i1 %i.hw, label %bb.af, label %.critedge2.i171.us

bb.af:                                            ; preds = %.lr.ph.i168.us
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %indvars.iv.i169.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i64 16, i1 false), !tbaa.struct !25
  %i.hy = load i32, ptr %i.u, align 4, !tbaa !20
  %i.hz = add i32 %i.hy, -1
  %i.ia = zext i32 %i.hz to i64
  %i.ib = icmp samesign ult i64 %indvars.iv.next.i170.us, %i.ia
  br i1 %i.ib, label %.lr.ph.i168.us, label %..critedge2.loopexit_crit_edge.i173.us, !llvm.loop !31

..critedge2.loopexit_crit_edge.i173.us:           ; preds = %bb.af
  %.pre.pre.i174.us = load ptr, ptr %i.n, align 8, !tbaa !17
  br label %.critedge2.i171.us, !llvm.loop !31

.critedge2.i171.us:                               ; preds = %.lr.ph.i168.us, %..critedge2.loopexit_crit_edge.i173.us, %.preheader41.i166.us
  %i.ic = phi ptr [ %i.ho, %.preheader41.i166.us ], [ %.pre.pre.i174.us, %..critedge2.loopexit_crit_edge.i173.us ], [ %i.hs, %.lr.ph.i168.us ]
  %.0.lcssa.i172.us = phi i64 [ 0, %.preheader41.i166.us ], [ %indvars.iv.next.i170.us, %..critedge2.loopexit_crit_edge.i173.us ], [ %indvars.iv.i169.us, %.lr.ph.i168.us ]
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ic, i64 %.0.lcssa.i172.us ; 2 uses
  store ptr %i.ey, ptr %i.id, align 8, !tbaa !30
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store float %.0.i140.us, ptr %i.ie, align 8, !tbaa !21
  br label %pq_push.exit187.us

.preheader.i175.us:                               ; preds = %pq_push.exit165.us
  %.not45.i176.us = icmp eq i32 %i.hl, 0
  br i1 %.not45.i176.us, label %.critedge.i184.us, label %.lr.ph47.preheader.i177.us

.lr.ph47.preheader.i177.us:                       ; preds = %.preheader.i175.us
  %i.if = zext i32 %i.hl to i64
  br label %.lr.ph47.i178.us

.lr.ph47.i178.us:                                 ; preds = %bb.ag, %.lr.ph47.preheader.i177.us
  %indvars.iv53.i179.us = phi i64 [ %i.if, %.lr.ph47.preheader.i177.us ], [ %indvars.iv.next54.i180.us, %bb.ag ] ; 3 uses
  %i.ig = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i180.us = add nsw i64 %indvars.iv53.i179.us, -1 ; 2 uses
  %i.ih = and i64 %indvars.iv.next54.i180.us, 4294967295 ; 2 uses
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %i.ih ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load float, ptr %i.ij, align 8, !tbaa !21
  %i.il = fcmp olt float %i.ik, %.0.i140.us
  br i1 %i.il, label %bb.ag, label %.critedge.loopexit.i181.us

bb.ag:                                            ; preds = %.lr.ph47.i178.us
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %indvars.iv53.i179.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, ptr noundef nonnull align 8 dereferenceable(16) %i.ii, i64 16, i1 false), !tbaa.struct !25
  %.not.i186.us = icmp eq i64 %i.ih, 0
  br i1 %.not.i186.us, label %.critedge.loopexit.i181.us, label %.lr.ph47.i178.us, !llvm.loop !28

.critedge.loopexit.i181.us:                       ; preds = %bb.ag, %.lr.ph47.i178.us
  %.038.lcssa.ph.i182.us = phi i64 [ %indvars.iv53.i179.us, %.lr.ph47.i178.us ], [ 0, %bb.ag ]
  %.pre57.i183.us = load i32, ptr %i.t, align 8, !tbaa !19
  %12 = and i64 %.038.lcssa.ph.i182.us, 4294967295
  %i.in = add i32 %.pre57.i183.us, 1
  br label %.critedge.i184.us

.critedge.i184.us:                                ; preds = %.critedge.loopexit.i181.us, %.preheader.i175.us
  %i.io = phi i32 [ 1, %.preheader.i175.us ], [ %i.in, %.critedge.loopexit.i181.us ]
  %.038.lcssa.i185.us = phi i64 [ 0, %.preheader.i175.us ], [ %12, %.critedge.loopexit.i181.us ]
  %i.ip = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.ip, i64 %.038.lcssa.i185.us ; 2 uses
  store ptr %i.ey, ptr %i.iq, align 8, !tbaa !30
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store float %.0.i140.us, ptr %i.ir, align 8, !tbaa !21
  store i32 %i.io, ptr %i.t, align 8, !tbaa !19
  br label %pq_push.exit187.us

pq_push.exit187.us:                               ; preds = %.critedge.i184.us, %.critedge2.i171.us, %bb.ae, %pq_max_distance.exit143.us, %.lr.ph.split.us
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %i.is = load i32, ptr %i.eu, align 8, !tbaa !132
  %i.it = zext i32 %i.is to i64
  %i.iu = icmp samesign ult i64 %indvars.iv.next310, %i.it
  br i1 %i.iu, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !144

.lr.ph.split:                                     ; preds = %.lr.ph, %pq_push.exit187
  %indvars.iv = phi i64 [ %indvars.iv.next, %pq_push.exit187 ], [ 0, %.lr.ph ] ; 2 uses
  %i.iv = load ptr, ptr %i.et, align 8, !tbaa !135
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !26 ; 11 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.b ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !13
  %i.jb = load i64, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.jc = icmp eq i64 %i.ja, %i.jb
  br i1 %i.jc, label %pq_push.exit187, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.split
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !13
  %i.jd = load i32, ptr %i.y, align 8, !tbaa !70
  switch i32 %i.jd, label %.split.us [
    i32 0, label %bb.ai
    i32 1, label %bb.aj
    i32 2, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.je = load ptr, ptr %i.dz, align 8, !tbaa !15
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !15
  %i.jh = load i32, ptr %i.ea, align 8, !tbaa !73
  %i.ji = tail call float @vectors_distance_float(ptr noundef %i.je, ptr noundef %i.jg, i32 noundef %i.jh)
  br label %hnsw_distance.exit141

bb.aj:                                            ; preds = %bb.ah
  %i.jj = load ptr, ptr %i.dz, align 8, !tbaa !15
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !15
  %i.jm = load i32, ptr %i.ea, align 8, !tbaa !73
  %i.jn = load float, ptr %i.eb, align 8, !tbaa !27
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.jp = load float, ptr %i.jo, align 8, !tbaa !27
  %i.jq = tail call float @vectors_distance_q8(ptr noundef %i.jj, ptr noundef %i.jl, i32 noundef %i.jm, float noundef %i.jn, float noundef %i.jp)
  br label %hnsw_distance.exit141

bb.ak:                                            ; preds = %bb.ah
  %i.jr = load ptr, ptr %i.dz, align 8, !tbaa !15
  %i.js = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !15
  %i.ju = load i32, ptr %i.ea, align 8, !tbaa !73
  %i.jv = tail call float @vectors_distance_bin(ptr noundef %i.jr, ptr noundef %i.jt, i32 noundef %i.ju)
  br label %hnsw_distance.exit141

.split.us:                                        ; preds = %bb.ah, %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit141:                            ; preds = %bb.ai, %bb.aj, %bb.ak
  %.0.i140 = phi float [ %i.ji, %bb.ai ], [ %i.jq, %bb.aj ], [ %i.jv, %bb.ak ] ; 11 uses
  %i.jw = load i32, ptr %i.t, align 8, !tbaa !19
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %pq_max_distance.exit143, label %bb.al

bb.al:                                            ; preds = %hnsw_distance.exit141
  %i.jy = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load float, ptr %i.jz, align 8, !tbaa !21
  br label %pq_max_distance.exit143

pq_max_distance.exit143:                          ; preds = %hnsw_distance.exit141, %bb.al
  %.0.i142 = phi float [ %i.ka, %bb.al ], [ +inf, %hnsw_distance.exit141 ]
  %i.kb = fcmp olt float %.0.i140, %.0.i142       ; 2 uses
  %.pr = load i32, ptr %i.az, align 8, !tbaa !19  ; 4 uses
  %i.kc = icmp ult i32 %.pr, %3
  %or.cond = select i1 %i.kb, i1 true, i1 %i.kc
  br i1 %or.cond, label %thread-pre-split, label %pq_push.exit209.thread

thread-pre-split:                                 ; preds = %pq_max_distance.exit143
  %i.kd = load i32, ptr %i.bb, align 4, !tbaa !20 ; 2 uses
  %i.ke = icmp ult i32 %.pr, %i.kd
  br i1 %i.ke, label %.preheader.i197, label %bb.an

.preheader.i197:                                  ; preds = %thread-pre-split
  %.not45.i198 = icmp eq i32 %.pr, 0
  br i1 %.not45.i198, label %.critedge.i206, label %.lr.ph47.preheader.i199

.lr.ph47.preheader.i199:                          ; preds = %.preheader.i197
  %i.kf = zext i32 %.pr to i64
  br label %.lr.ph47.i200

.lr.ph47.i200:                                    ; preds = %bb.am, %.lr.ph47.preheader.i199
  %indvars.iv53.i201 = phi i64 [ %i.kf, %.lr.ph47.preheader.i199 ], [ %indvars.iv.next54.i202, %bb.am ] ; 3 uses
  %i.kg = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %indvars.iv.next54.i202 = add nsw i64 %indvars.iv53.i201, -1 ; 2 uses
  %i.kh = and i64 %indvars.iv.next54.i202, 4294967295 ; 2 uses
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load float, ptr %i.kj, align 8, !tbaa !21
  %i.kl = fcmp olt float %i.kk, %.0.i140
  br i1 %i.kl, label %bb.am, label %.critedge.loopexit.i203

bb.am:                                            ; preds = %.lr.ph47.i200
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %indvars.iv53.i201
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr noundef nonnull align 8 dereferenceable(16) %i.ki, i64 16, i1 false), !tbaa.struct !25
  %.not.i208 = icmp eq i64 %i.kh, 0
  br i1 %.not.i208, label %.critedge.loopexit.i203, label %.lr.ph47.i200, !llvm.loop !28

.critedge.loopexit.i203:                          ; preds = %bb.am, %.lr.ph47.i200
  %.038.lcssa.ph.i204 = phi i64 [ %indvars.iv53.i201, %.lr.ph47.i200 ], [ 0, %bb.am ]
  %.pre57.i205 = load i32, ptr %i.az, align 8, !tbaa !19
  %13 = and i64 %.038.lcssa.ph.i204, 4294967295
  %i.kn = add i32 %.pre57.i205, 1
  br label %.critedge.i206

.critedge.i206:                                   ; preds = %.critedge.loopexit.i203, %.preheader.i197
  %i.ko = phi i32 [ 1, %.preheader.i197 ], [ %i.kn, %.critedge.loopexit.i203 ]
  %.038.lcssa.i207 = phi i64 [ 0, %.preheader.i197 ], [ %13, %.critedge.loopexit.i203 ]
  %i.kp = load ptr, ptr %.0.i, align 8, !tbaa !17
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.kp, i64 %.038.lcssa.i207 ; 2 uses
  store ptr %i.ix, ptr %i.kq, align 8, !tbaa !30
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store float %.0.i140, ptr %i.kr, align 8, !tbaa !21
  store i32 %i.ko, ptr %i.az, align 8, !tbaa !19
  br label %pq_push.exit209

bb.an:                                            ; preds = %thread-pre-split
  %i.ks = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load float, ptr %i.kt, align 8, !tbaa !21
  %i.kv = fcmp ult float %.0.i140, %i.ku
  br i1 %i.kv, label %.preheader41.i188, label %pq_push.exit209

.preheader41.i188:                                ; preds = %bb.an
  %.not51.i189 = icmp eq i32 %i.kd, 1
  br i1 %.not51.i189, label %.critedge2.i193, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.preheader41.i188, %bb.ao
  %indvars.iv.i191 = phi i64 [ %indvars.iv.next.i192, %bb.ao ], [ 0, %.preheader41.i188 ] ; 3 uses
  %i.kw = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next.i192 = add nuw nsw i64 %indvars.iv.i191, 1 ; 4 uses
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.kw, i64 %indvars.iv.next.i192 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load float, ptr %i.ky, align 8, !tbaa !21
  %i.la = fcmp ogt float %i.kz, %.0.i140
  br i1 %i.la, label %bb.ao, label %.critedge2.i193

bb.ao:                                            ; preds = %.lr.ph.i190
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.kw, i64 %indvars.iv.i191
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull align 8 dereferenceable(16) %i.kx, i64 16, i1 false), !tbaa.struct !25
  %i.lc = load i32, ptr %i.bb, align 4, !tbaa !20
  %i.ld = add i32 %i.lc, -1
  %i.le = zext i32 %i.ld to i64
  %i.lf = icmp samesign ult i64 %indvars.iv.next.i192, %i.le
  br i1 %i.lf, label %.lr.ph.i190, label %..critedge2.loopexit_crit_edge.i195, !llvm.loop !31

..critedge2.loopexit_crit_edge.i195:              ; preds = %bb.ao
  %.pre.pre.i196 = load ptr, ptr %.0.i, align 8, !tbaa !17
  br label %.critedge2.i193, !llvm.loop !31

.critedge2.i193:                                  ; preds = %.lr.ph.i190, %..critedge2.loopexit_crit_edge.i195, %.preheader41.i188
  %i.lg = phi ptr [ %i.ks, %.preheader41.i188 ], [ %.pre.pre.i196, %..critedge2.loopexit_crit_edge.i195 ], [ %i.kw, %.lr.ph.i190 ]
  %.0.lcssa.i194 = phi i64 [ 0, %.preheader41.i188 ], [ %indvars.iv.next.i192, %..critedge2.loopexit_crit_edge.i195 ], [ %indvars.iv.i191, %.lr.ph.i190 ]
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.lg, i64 %.0.lcssa.i194 ; 2 uses
  store ptr %i.ix, ptr %i.lh, align 8, !tbaa !30
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store float %.0.i140, ptr %i.li, align 8, !tbaa !21
  br label %pq_push.exit209

pq_push.exit209:                                  ; preds = %.critedge2.i193, %bb.an, %.critedge.i206
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ix, i64 288
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !15
  %i.ll = tail call i32 %6(ptr noundef %i.lk, ptr noundef %7) #34
  %.not103 = icmp eq i32 %i.ll, 0
  br i1 %.not103, label %pq_push.exit187, label %bb.ap

pq_push.exit209.thread:                           ; preds = %pq_max_distance.exit143
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ix, i64 288
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !15
  %i.lo = tail call i32 %6(ptr noundef %i.ln, ptr noundef %7) #34
  %.not103242 = icmp eq i32 %i.lo, 0
  br i1 %.not103242, label %pq_push.exit187, label %.thread243

bb.ap:                                            ; preds = %pq_push.exit209
  br i1 %i.kb, label %thread-pre-split244, label %.thread243

.thread243:                                       ; preds = %pq_push.exit209.thread, %bb.ap
  %i.lp = load i32, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %i.lq = icmp ult i32 %i.lp, %3
  br i1 %i.lq, label %bb.aq, label %pq_push.exit187

thread-pre-split244:                              ; preds = %bb.ap
  %.pr245 = load i32, ptr %i.t, align 8, !tbaa !19
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split244, %.thread243
  %i.lr = phi i32 [ %.pr245, %thread-pre-split244 ], [ %i.lp, %.thread243 ] ; 3 uses
  %i.ls = load i32, ptr %i.u, align 4, !tbaa !20  ; 2 uses
  %i.lt = icmp ult i32 %i.lr, %i.ls
  br i1 %i.lt, label %.preheader.i219, label %bb.as

.preheader.i219:                                  ; preds = %bb.aq
  %.not45.i220 = icmp eq i32 %i.lr, 0
  br i1 %.not45.i220, label %.critedge.i228, label %.lr.ph47.preheader.i221

.lr.ph47.preheader.i221:                          ; preds = %.preheader.i219
  %i.lu = zext i32 %i.lr to i64
  br label %.lr.ph47.i222

.lr.ph47.i222:                                    ; preds = %bb.ar, %.lr.ph47.preheader.i221
  %indvars.iv53.i223 = phi i64 [ %i.lu, %.lr.ph47.preheader.i221 ], [ %indvars.iv.next54.i224, %bb.ar ] ; 3 uses
  %i.lv = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i224 = add nsw i64 %indvars.iv53.i223, -1 ; 2 uses
  %i.lw = and i64 %indvars.iv.next54.i224, 4294967295 ; 2 uses
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.lw ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load float, ptr %i.ly, align 8, !tbaa !21
  %i.ma = fcmp olt float %i.lz, %.0.i140
  br i1 %i.ma, label %bb.ar, label %.critedge.loopexit.i225

bb.ar:                                            ; preds = %.lr.ph47.i222
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %indvars.iv53.i223
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, ptr noundef nonnull align 8 dereferenceable(16) %i.lx, i64 16, i1 false), !tbaa.struct !25
  %.not.i230 = icmp eq i64 %i.lw, 0
  br i1 %.not.i230, label %.critedge.loopexit.i225, label %.lr.ph47.i222, !llvm.loop !28

.critedge.loopexit.i225:                          ; preds = %bb.ar, %.lr.ph47.i222
  %.038.lcssa.ph.i226 = phi i64 [ %indvars.iv53.i223, %.lr.ph47.i222 ], [ 0, %bb.ar ]
  %.pre57.i227 = load i32, ptr %i.t, align 8, !tbaa !19
  %14 = and i64 %.038.lcssa.ph.i226, 4294967295
  %i.mc = add i32 %.pre57.i227, 1
  br label %.critedge.i228

.critedge.i228:                                   ; preds = %.critedge.loopexit.i225, %.preheader.i219
  %i.md = phi i32 [ 1, %.preheader.i219 ], [ %i.mc, %.critedge.loopexit.i225 ]
  %.038.lcssa.i229 = phi i64 [ 0, %.preheader.i219 ], [ %14, %.critedge.loopexit.i225 ]
  %i.me = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %.038.lcssa.i229 ; 2 uses
  store ptr %i.ix, ptr %i.mf, align 8, !tbaa !30
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store float %.0.i140, ptr %i.mg, align 8, !tbaa !21
  store i32 %i.md, ptr %i.t, align 8, !tbaa !19
  br label %pq_push.exit187

bb.as:                                            ; preds = %bb.aq
  %i.mh = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load float, ptr %i.mi, align 8, !tbaa !21
  %i.mk = fcmp ult float %.0.i140, %i.mj
  br i1 %i.mk, label %.preheader41.i210, label %pq_push.exit187

.preheader41.i210:                                ; preds = %bb.as
  %.not51.i211 = icmp eq i32 %i.ls, 1
  br i1 %.not51.i211, label %.critedge2.i215, label %.lr.ph.i212

.lr.ph.i212:                                      ; preds = %.preheader41.i210, %bb.at
  %indvars.iv.i213 = phi i64 [ %indvars.iv.next.i214, %bb.at ], [ 0, %.preheader41.i210 ] ; 3 uses
  %i.ml = load ptr, ptr %i.n, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i214 = add nuw nsw i64 %indvars.iv.i213, 1 ; 4 uses
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv.next.i214 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load float, ptr %i.mn, align 8, !tbaa !21
  %i.mp = fcmp ogt float %i.mo, %.0.i140
  br i1 %i.mp, label %bb.at, label %.critedge2.i215

bb.at:                                            ; preds = %.lr.ph.i212
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv.i213
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mq, ptr noundef nonnull align 8 dereferenceable(16) %i.mm, i64 16, i1 false), !tbaa.struct !25
  %i.mr = load i32, ptr %i.u, align 4, !tbaa !20
  %i.ms = add i32 %i.mr, -1
  %i.mt = zext i32 %i.ms to i64
  %i.mu = icmp samesign ult i64 %indvars.iv.next.i214, %i.mt
  br i1 %i.mu, label %.lr.ph.i212, label %..critedge2.loopexit_crit_edge.i217, !llvm.loop !31

..critedge2.loopexit_crit_edge.i217:              ; preds = %bb.at
  %.pre.pre.i218 = load ptr, ptr %i.n, align 8, !tbaa !17
  br label %.critedge2.i215, !llvm.loop !31

.critedge2.i215:                                  ; preds = %.lr.ph.i212, %..critedge2.loopexit_crit_edge.i217, %.preheader41.i210
  %i.mv = phi ptr [ %i.mh, %.preheader41.i210 ], [ %.pre.pre.i218, %..critedge2.loopexit_crit_edge.i217 ], [ %i.ml, %.lr.ph.i212 ]
  %.0.lcssa.i216 = phi i64 [ 0, %.preheader41.i210 ], [ %indvars.iv.next.i214, %..critedge2.loopexit_crit_edge.i217 ], [ %indvars.iv.i213, %.lr.ph.i212 ]
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %.0.lcssa.i216 ; 2 uses
  store ptr %i.ix, ptr %i.mw, align 8, !tbaa !30
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store float %.0.i140, ptr %i.mx, align 8, !tbaa !21
  br label %pq_push.exit187

pq_push.exit187:                                  ; preds = %.critedge2.i215, %bb.as, %.critedge.i228, %pq_push.exit209.thread, %.thread243, %pq_push.exit209, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.my = load i32, ptr %i.eu, align 8, !tbaa !132
  %i.mz = zext i32 %i.my to i64
  %i.na = icmp samesign ult i64 %indvars.iv.next, %i.mz
  br i1 %i.na, label %.lr.ph.split, label %.loopexit, !llvm.loop !144

pq_free.exit233:                                  ; preds = %.loopexit, %bb.t, %pq_max_distance.exit, %pq_push.exit137
  %i.nb = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.nc = load ptr, ptr %.0.i, align 8, !tbaa !17
  tail call void %i.nb(ptr noundef %i.nc) #34, !inline_history !143
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %pq_free.exit233, %pq_free.exit113, %pq_free.exit
  %.0.i.sink = phi ptr [ %.0.i, %pq_free.exit ], [ %i.n, %pq_free.exit113 ], [ %.0.i, %pq_free.exit233 ]
  %.0.ph = phi ptr [ null, %pq_free.exit ], [ null, %pq_free.exit113 ], [ %i.n, %pq_free.exit233 ]
  %i.nd = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.nd(ptr noundef nonnull %.0.i.sink) #34
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %pq_new.exit110.thread
  %.0 = phi ptr [ null, %pq_new.exit110.thread ], [ %.0.ph, %.thread.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @search_layer(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @search_layer_with_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hnsw_init_tmp_node(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((16, 24)) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = tail call ptr %i.b(i64 noundef %i.f) #34 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.c, align 8, !tbaa !73
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 4 %3, i64 %i.k, i1 false)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !73   ; 8 uses
  %i.n = icmp ugt i32 %i.m, 3
  br i1 %i.n, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.p = and i32 %i.m, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.c
  %.038.lcssa.i = phi float [ 0.000000e+00, %bb.c ], [ %i.aj, %.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.p, %.preheader.loopexit.i ] ; 2 uses
  %i.q = icmp ult i32 %.0.lcssa.i, %i.m
  br i1 %i.q, label %.lr.ph48.preheader.i, label %._crit_edge.i

.lr.ph48.preheader.i:                             ; preds = %.preheader.i
  %i.r = zext i32 %.0.lcssa.i to i64              ; 3 uses
  %wide.trip.count.i = zext i32 %i.m to i64       ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol

.lr.ph48.i.prol:                                  ; preds = %.lr.ph48.preheader.i, %.lr.ph48.i.prol
  %indvars.iv57.i.prol = phi i64 [ %indvars.iv.next58.i.prol, %.lr.ph48.i.prol ], [ %i.r, %.lr.ph48.preheader.i ] ; 2 uses
  %.13946.i.prol = phi float [ %i.u, %.lr.ph48.i.prol ], [ %.038.lcssa.i, %.lr.ph48.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph48.i.prol ], [ 0, %.lr.ph48.preheader.i ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i.prol
  %i.t = load float, ptr %i.s, align 4, !tbaa !27 ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %.13946.i.prol) ; 3 uses
  %indvars.iv.next58.i.prol = add nuw nsw i64 %indvars.iv57.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol, !llvm.loop !145

.lr.ph48.i.prol.loopexit:                         ; preds = %.lr.ph48.i.prol, %.lr.ph48.preheader.i
  %.lcssa.unr = phi float [ poison, %.lr.ph48.preheader.i ], [ %i.u, %.lr.ph48.i.prol ]
  %indvars.iv57.i.unr = phi i64 [ %i.r, %.lr.ph48.preheader.i ], [ %indvars.iv.next58.i.prol, %.lr.ph48.i.prol ]
  %.13946.i.unr = phi float [ %.038.lcssa.i, %.lr.ph48.preheader.i ], [ %i.u, %.lr.ph48.i.prol ]
  %i.v = sub nsw i64 %i.r, %wide.trip.count.i
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph48.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.03843.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.aj, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !27 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !27 ; 2 uses
  %i.ab = fmul float %i.aa, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !27 ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ac)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !27 ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.af)
  %i.aj = fadd float %.03843.i, %i.ai             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ak = or disjoint i64 %indvars.iv.next.i, 3
  %i.al = icmp samesign ult i64 %i.ak, %i.o
  br i1 %i.al, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !84

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.3, %.lr.ph48.i ], [ %indvars.iv57.i.unr, %.lr.ph48.i.prol.loopexit ] ; 5 uses
  %.13946.i = phi float [ %i.ba, %.lr.ph48.i ], [ %.13946.i.unr, %.lr.ph48.i.prol.loopexit ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.an = load float, ptr %i.am, align 4, !tbaa !27 ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %.13946.i)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !27 ; 2 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.ao)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !27 ; 2 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.as)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !27 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.aw) ; 2 uses
  %indvars.iv.next58.i.3 = add nuw nsw i64 %indvars.iv57.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next58.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph48.i, !llvm.loop !85

._crit_edge.i:                                    ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i, %.preheader.i
  %.139.lcssa.i = phi float [ %.038.lcssa.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph48.i.prol.loopexit ], [ %i.ba, %.lr.ph48.i ] ; 2 uses
  %i.bb = fcmp oeq float %.139.lcssa.i, 0.000000e+00
  br i1 %i.bb, label %hnsw_normalize_vector.exit, label %bb.d
end_hunk_1
begin_hunk_2_@hnsw_reconnect_nodes:bb.a
  %i.ml = mul nuw nsw i64 %indvars.iv512, %i.c
  %i.mm = trunc nuw nsw i64 %indvars.iv512 to i32
  %invariant.gep585 = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ml
  br label %bb.an

._crit_edge432.split.us:                          ; preds = %..loopexit_crit_edge.us
  %.not328.not = icmp eq i32 %.5301.us, -1
  br i1 %.not328.not, label %.lr.ph446, label %bb.at

bb.at:                                            ; preds = %._crit_edge432.split.us
  %i.mn = sext i32 %.5.us to i64                  ; 2 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mn ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !26
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 312
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.mq, i64 %i.kc ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !132 ; 2 uses
  %i.mu = sext i32 %.5301.us to i64               ; 2 uses
  %i.mv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mu ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !26 ; 2 uses
  %i.mx = load ptr, ptr %i.mr, align 8, !tbaa !135
  %i.my = sext i32 %i.mt to i64
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.mx, i64 %i.my
  store ptr %i.mw, ptr %i.mz, align 8, !tbaa !26
  %i.na = load ptr, ptr %i.mo, align 8, !tbaa !26 ; 3 uses
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %i.na, i64 %i.kc
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 320 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !132 ; 2 uses
  %i.ne = add i32 %i.nd, 1
  store i32 %i.ne, ptr %i.nc, align 8, !tbaa !132
  %i.nf = mul nsw i32 %.5.us, %2
  %i.ng = add nsw i32 %i.nf, %.5301.us
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.nh
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !27 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 312
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %i.nk, i64 %i.kc ; 3 uses
  %i.nm = icmp eq i32 %i.nd, 0
  br i1 %i.nm, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.no = load float, ptr %i.nn, align 8, !tbaa !133
  %i.np = fcmp ogt float %i.nj, %i.no
  br i1 %i.np, label %bb.av, label %hnsw_update_worst_neighbor_on_add.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  store float %i.nj, ptr %i.nq, align 8, !tbaa !133
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 20
  store i32 %i.mt, ptr %i.nr, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_add.exit

hnsw_update_worst_neighbor_on_add.exit:           ; preds = %bb.au, %bb.av
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mw, i64 312
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %i.ns, i64 %i.kc ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !132 ; 2 uses
  %i.nw = load ptr, ptr %i.nt, align 8, !tbaa !135
  %i.nx = sext i32 %i.nv to i64
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.nw, i64 %i.nx
  store ptr %i.na, ptr %i.ny, align 8, !tbaa !26
  %i.nz = load ptr, ptr %i.mv, align 8, !tbaa !26 ; 2 uses
  %i.oa = getelementptr inbounds nuw [24 x i8], ptr %i.nz, i64 %i.kc
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 320 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !132 ; 2 uses
  %i.od = add i32 %i.oc, 1
  store i32 %i.od, ptr %i.ob, align 8, !tbaa !132
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 312
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %i.kc ; 3 uses
  %i.og = icmp eq i32 %i.oc, 0
  br i1 %i.og, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %hnsw_update_worst_neighbor_on_add.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oi = load float, ptr %i.oh, align 8, !tbaa !133
  %i.oj = fcmp ogt float %i.nj, %i.oi
  br i1 %i.oj, label %bb.ax, label %hnsw_update_worst_neighbor_on_add.exit346

bb.ax:                                            ; preds = %bb.aw, %hnsw_update_worst_neighbor_on_add.exit
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store float %i.nj, ptr %i.ok, align 8, !tbaa !133
  %i.ol = getelementptr inbounds nuw i8, ptr %i.of, i64 20
  store i32 %i.nv, ptr %i.ol, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_add.exit346

hnsw_update_worst_neighbor_on_add.exit346:        ; preds = %bb.aw, %bb.ax
  %i.om = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.mu
  store i32 1, ptr %i.om, align 4, !tbaa !9
  %i.on = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.mn
  store i32 1, ptr %i.on, align 4, !tbaa !9
  br label %.lr.ph431.backedge

.lr.ph446:                                        ; preds = %._crit_edge432.split.us
  %i.oo = shl nuw nsw i64 %i.c, 4
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count525 = zext nneg i32 %2 to i64   ; 2 uses
  br label %bb.ay

.critedge375._crit_edge:                          ; preds = %pq_new.exit.thread
  %i.or = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.or(ptr noundef nonnull %i.f) #34
  br label %.sink.split.sink.split.sink.split

bb.ay:                                            ; preds = %.lr.ph446, %pq_new.exit.thread
  %indvars.iv522 = phi i64 [ 0, %.lr.ph446 ], [ %indvars.iv.next523, %pq_new.exit.thread ] ; 5 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv522
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !9
  %.not329 = icmp eq i32 %i.ot, 0
  br i1 %.not329, label %bb.az, label %pq_new.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv522 ; 6 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !26
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 312
  %i.ox = getelementptr inbounds nuw [24 x i8], ptr %i.ow, i64 %i.kc ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !132
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 12
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !128
  %.not330 = icmp ult i32 %i.oz, %i.pb
  br i1 %.not330, label %bb.ba, label %pq_new.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.pc = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.pd = tail call ptr %i.pc(i64 noundef 16) #34, !inline_history !142 ; 13 uses
  %.not.i = icmp eq ptr %i.pd, null
  br i1 %.not.i, label %pq_new.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pe = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.pf = tail call ptr %i.pe(i64 noundef %i.oo) #34, !inline_history !142 ; 4 uses
  store ptr %i.pf, ptr %i.pd, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.pf, null
  br i1 %.not10.i, label %pq_new.exit.thread.sink.split, label %.lr.ph438

.lr.ph438:                                        ; preds = %bb.bb
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 8 ; 5 uses
  store i32 0, ptr %i.pg, align 8, !tbaa !19
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 12 ; 3 uses
  store i32 %2, ptr %i.ph, align 4, !tbaa !20
  %i.pi = mul nuw nsw i64 %indvars.iv522, %i.c
  %invariant.gep587 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.pi
  br label %bb.bc

._crit_edge439:                                   ; preds = %pq_push.exit
  %.pre527 = load i32, ptr %i.pg, align 8, !tbaa !19
  %i.pj = load ptr, ptr %i.ou, align 8, !tbaa !26 ; 2 uses
  %i.pk = getelementptr inbounds nuw [24 x i8], ptr %i.pj, i64 %i.kc
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 320
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !132
  %i.pn = add i32 %i.pm, 1                        ; 3 uses
  %.not332 = icmp eq i32 %.pre527, 0
  br i1 %.not332, label %pq_free.exit, label %bb.bi

bb.bc:                                            ; preds = %.lr.ph438, %pq_push.exit
  %i.po = phi ptr [ %i.pf, %.lr.ph438 ], [ %i.rh, %pq_push.exit ] ; 5 uses
  %i.pp = phi ptr [ %i.pf, %.lr.ph438 ], [ %i.ri, %pq_push.exit ] ; 5 uses
  %indvars.iv517 = phi i64 [ 0, %.lr.ph438 ], [ %indvars.iv.next518, %pq_push.exit ] ; 4 uses
  %.not338 = icmp eq i64 %indvars.iv522, %indvars.iv517
  br i1 %.not338, label %pq_push.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv517
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !26 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 312
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %i.kc ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !132
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !128
  %i.py = icmp ult i32 %i.pv, %i.px
  br i1 %i.py, label %bb.be, label %pq_push.exit

bb.be:                                            ; preds = %bb.bd
  %gep588 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep587, i64 %indvars.iv517
  %i.pz = load float, ptr %gep588, align 4, !tbaa !27 ; 5 uses
  %i.qa = load i32, ptr %i.pg, align 8, !tbaa !19 ; 3 uses
  %i.qb = load i32, ptr %i.ph, align 4, !tbaa !20 ; 2 uses
  %i.qc = icmp ult i32 %i.qa, %i.qb
  br i1 %i.qc, label %.preheader.i, label %bb.bg

.preheader.i:                                     ; preds = %bb.be
  %.not45.i = icmp eq i32 %i.qa, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.qd = zext i32 %i.qa to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.bf, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.qd, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.bf ] ; 3 uses
  %i.qe = load ptr, ptr %i.pd, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 2 uses
  %i.qf = and i64 %indvars.iv.next54.i, 4294967295 ; 2 uses
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %i.qf ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load float, ptr %i.qh, align 8, !tbaa !21
  %i.qj = fcmp olt float %i.qi, %i.pz
  br i1 %i.qj, label %bb.bf, label %.critedge.loopexit.isplit

bb.bf:                                            ; preds = %.lr.ph47.i
  %i.qk = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %indvars.iv53.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, ptr noundef nonnull align 8 dereferenceable(16) %i.qg, i64 16, i1 false), !tbaa.struct !25
  %.not.i348 = icmp eq i64 %i.qf, 0
  br i1 %.not.i348, label %..critedge.loopexit.i_crit_edge, label %.lr.ph47.i, !llvm.loop !28

..critedge.loopexit.i_crit_edge:                  ; preds = %bb.bf
  %.pre.pre = load ptr, ptr %i.pd, align 8, !tbaa !17
  br label %.critedge.loopexit.i, !llvm.loop !28

.critedge.loopexit.isplit:                        ; preds = %.lr.ph47.i
  %4 = and i64 %indvars.iv53.i, 4294967295
  br label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %.critedge.loopexit.isplit, %..critedge.loopexit.i_crit_edge
  %.pre = phi ptr [ %.pre.pre, %..critedge.loopexit.i_crit_edge ], [ %i.qe, %.critedge.loopexit.isplit ]
  %.038.lcssa.ph.i = phi i64 [ 0, %..critedge.loopexit.i_crit_edge ], [ %4, %.critedge.loopexit.isplit ]
  %.pre57.i = load i32, ptr %i.pg, align 8, !tbaa !19
  %i.ql = add i32 %.pre57.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.qm = phi ptr [ %i.po, %.preheader.i ], [ %.pre, %.critedge.loopexit.i ] ; 3 uses
  %i.qn = phi i32 [ 1, %.preheader.i ], [ %i.ql, %.critedge.loopexit.i ]
  %.038.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.038.lcssa.ph.i, %.critedge.loopexit.i ]
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %.038.lcssa.i ; 2 uses
  store ptr %i.pr, ptr %i.qo, align 8, !tbaa !30
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store float %i.pz, ptr %i.qp, align 8, !tbaa !21
  store i32 %i.qn, ptr %i.pg, align 8, !tbaa !19
  br label %pq_push.exit

bb.bg:                                            ; preds = %bb.be
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.qr = load float, ptr %i.qq, align 8, !tbaa !21
  %i.qs = fcmp ult float %i.pz, %i.qr
  br i1 %i.qs, label %.preheader41.i, label %pq_push.exit

.preheader41.i:                                   ; preds = %bb.bg
  %.not51.i = icmp eq i32 %i.qb, 1
  br i1 %.not51.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.bh
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bh ], [ 0, %.preheader41.i ] ; 3 uses
  %i.qt = load ptr, ptr %i.pd, align 8, !tbaa !17 ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.qu = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %indvars.iv.next.i ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load float, ptr %i.qv, align 8, !tbaa !21
  %i.qx = fcmp ogt float %i.qw, %i.pz
  br i1 %i.qx, label %bb.bh, label %.critedge2.i

bb.bh:                                            ; preds = %.lr.ph.i
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qy, ptr noundef nonnull align 8 dereferenceable(16) %i.qu, i64 16, i1 false), !tbaa.struct !25
  %i.qz = load i32, ptr %i.ph, align 4, !tbaa !20
  %i.ra = add i32 %i.qz, -1
  %i.rb = zext i32 %i.ra to i64
  %i.rc = icmp samesign ult i64 %indvars.iv.next.i, %i.rb
  br i1 %i.rc, label %.lr.ph.i, label %..critedge2.loopexit_crit_edge.i, !llvm.loop !31

..critedge2.loopexit_crit_edge.i:                 ; preds = %bb.bh
  %.pre.pre.i = load ptr, ptr %i.pd, align 8, !tbaa !17 ; 2 uses
  br label %.critedge2.i, !llvm.loop !31

.critedge2.i:                                     ; preds = %.lr.ph.i, %..critedge2.loopexit_crit_edge.i, %.preheader41.i
  %i.rd = phi ptr [ %i.po, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.qt, %.lr.ph.i ]
  %i.re = phi ptr [ %i.pp, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.qt, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %.preheader41.i ], [ %indvars.iv.next.i, %..critedge2.loopexit_crit_edge.i ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %i.re, i64 %.0.lcssa.i ; 2 uses
  store ptr %i.pr, ptr %i.rf, align 8, !tbaa !30
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store float %i.pz, ptr %i.rg, align 8, !tbaa !21
  br label %pq_push.exit

pq_push.exit:                                     ; preds = %.critedge2.i, %bb.bg, %.critedge.i, %bb.bc, %bb.bd
  %i.rh = phi ptr [ %i.rd, %.critedge2.i ], [ %i.po, %bb.bg ], [ %i.qm, %.critedge.i ], [ %i.po, %bb.bc ], [ %i.po, %bb.bd ]
  %i.ri = phi ptr [ %i.re, %.critedge2.i ], [ %i.pp, %bb.bg ], [ %i.qm, %.critedge.i ], [ %i.pp, %bb.bc ], [ %i.pp, %bb.bd ]
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 2 uses
  %exitcond521.not = icmp eq i64 %indvars.iv.next518, %wide.trip.count525
  br i1 %exitcond521.not, label %._crit_edge439, label %bb.bc, !llvm.loop !176

bb.bi:                                            ; preds = %._crit_edge439
  tail call void @select_neighbors(ptr noundef %0, ptr noundef nonnull %i.pd, ptr noundef nonnull %i.pj, i32 noundef %3, i32 noundef %i.pn, i32 noundef 1)
  %.pre528 = load ptr, ptr %i.ou, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre528, i64 %i.kc
  %.phi.trans.insert529 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 320
  %.pre530 = load i32, ptr %.phi.trans.insert529, align 8, !tbaa !132
  %i.rj = icmp eq i32 %.pre530, %i.pn
  br i1 %i.rj, label %pq_new.exit.thread.sink.split.sink.split, label %pq_free.exit

pq_free.exit:                                     ; preds = %._crit_edge439, %bb.bi
  %i.rk = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.rl = load ptr, ptr %i.pd, align 8, !tbaa !17
  tail call void %i.rk(ptr noundef %i.rl) #34, !inline_history !143
  %i.rm = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.rm(ptr noundef nonnull %i.pd) #34, !inline_history !143
  %i.rn = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.ro = load i32, ptr %i.op, align 4, !tbaa !91 ; 2 uses
  %i.rp = icmp ugt i32 %i.ro, %3
  br i1 %i.rp, label %.lr.ph442, label %._crit_edge443

._crit_edge443:                                   ; preds = %bb.bl, %pq_free.exit
  %.0281.lcssa = phi ptr [ %i.rn, %pq_free.exit ], [ %.2, %bb.bl ] ; 2 uses
  %.not334 = icmp eq ptr %.0281.lcssa, null
  br i1 %.not334, label %pq_new.exit.thread, label %bb.bm

.lr.ph442:                                        ; preds = %pq_free.exit, %bb.bl
  %.0280441 = phi i32 [ %i.sa, %bb.bl ], [ %i.ro, %pq_free.exit ] ; 2 uses
  %.0281440 = phi ptr [ %.2, %bb.bl ], [ %i.rn, %pq_free.exit ] ; 3 uses
  %i.rq = load ptr, ptr %i.ou, align 8, !tbaa !26
  %i.rr = tail call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef readonly %i.rq, ptr noundef %.0281440, i32 noundef 1, i32 noundef %.0280441, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0) ; 4 uses
  %.not336 = icmp eq ptr %i.rr, null
  br i1 %.not336, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph442
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !19 ; 2 uses
  %.not337 = icmp eq i32 %i.rt, 0
  %.pre531 = load ptr, ptr %i.rr, align 8, !tbaa !17 ; 2 uses
  br i1 %.not337, label %pq_free.exit351, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ru = add i32 %i.rt, -1
  %i.rv = zext i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw [16 x i8], ptr %.pre531, i64 %i.rv
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !30
  br label %pq_free.exit351

pq_free.exit351:                                  ; preds = %bb.bk, %bb.bj
  %.1 = phi ptr [ %i.rx, %bb.bk ], [ %.0281440, %bb.bj ]
  %i.ry = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.ry(ptr noundef %.pre531) #34, !inline_history !143
  %i.rz = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.rz(ptr noundef nonnull %i.rr) #34, !inline_history !143
  br label %bb.bl

bb.bl:                                            ; preds = %pq_free.exit351, %.lr.ph442
  %.2 = phi ptr [ %.1, %pq_free.exit351 ], [ %.0281440, %.lr.ph442 ] ; 2 uses
  %i.sa = add i32 %.0280441, -1                   ; 2 uses
  %i.sb = icmp ugt i32 %i.sa, %3
  br i1 %i.sb, label %.lr.ph442, label %._crit_edge443, !llvm.loop !177

bb.bm:                                            ; preds = %._crit_edge443
  %i.sc = load ptr, ptr %i.ou, align 8, !tbaa !26
  %i.sd = tail call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef readonly %i.sc, ptr noundef nonnull %.0281.lcssa, i32 noundef 200, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0) ; 3 uses
  %.not335 = icmp eq ptr %i.sd, null
  br i1 %.not335, label %pq_new.exit.thread, label %pq_free.exit353

pq_free.exit353:                                  ; preds = %bb.bm
  %i.se = load ptr, ptr %i.ou, align 8, !tbaa !26 ; 2 uses
  %i.sf = getelementptr inbounds nuw [24 x i8], ptr %i.se, i64 %i.kc
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 320
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !132
  %i.si = load i32, ptr %i.oq, align 8, !tbaa !89
  %i.sj = lshr i32 %i.si, 1
  %i.sk = icmp ugt i32 %i.sh, %i.sj
  %i.sl = select i1 %i.sk, i32 1, i32 2
  tail call void @select_neighbors(ptr noundef nonnull %0, ptr noundef nonnull %i.sd, ptr noundef %i.se, i32 noundef %3, i32 noundef %i.pn, i32 noundef %i.sl)
  br label %pq_new.exit.thread.sink.split.sink.split

pq_new.exit.thread.sink.split.sink.split:         ; preds = %bb.bi, %pq_free.exit353
  %.sink594 = phi ptr [ %i.sd, %pq_free.exit353 ], [ %i.pd, %bb.bi ] ; 2 uses
  %i.sm = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.sn = load ptr, ptr %.sink594, align 8, !tbaa !17
  tail call void %i.sm(ptr noundef %i.sn) #34
  br label %pq_new.exit.thread.sink.split

pq_new.exit.thread.sink.split:                    ; preds = %pq_new.exit.thread.sink.split.sink.split, %bb.bb
  %.sink = phi ptr [ %i.pd, %bb.bb ], [ %.sink594, %pq_new.exit.thread.sink.split.sink.split ]
  %i.so = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.so(ptr noundef nonnull %.sink) #34
  br label %pq_new.exit.thread

pq_new.exit.thread:                               ; preds = %pq_new.exit.thread.sink.split, %bb.ba, %._crit_edge443, %bb.bm, %bb.az, %bb.ay
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %exitcond526.not = icmp eq i64 %indvars.iv.next523, %wide.trip.count525
  br i1 %exitcond526.not, label %.critedge375._crit_edge, label %bb.ay, !llvm.loop !178

.sink.split.sink.split.sink.split:                ; preds = %._crit_edge415.split, %.critedge375._crit_edge
  %.sink597 = phi ptr [ %i.k, %.critedge375._crit_edge ], [ %i.f, %._crit_edge415.split ]
  %.sink595.ph = phi ptr [ %i.il, %.critedge375._crit_edge ], [ %i.k, %._crit_edge415.split ]
  %.sink590.ph.ph = phi ptr [ %i.kb, %.critedge375._crit_edge ], [ %i.il, %._crit_edge415.split ]
  %i.sp = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.sp(ptr noundef nonnull %.sink597) #34
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %._crit_edge405
  %.sink595 = phi ptr [ %i.f, %._crit_edge405 ], [ %.sink595.ph, %.sink.split.sink.split.sink.split ]
  %.sink590.ph = phi ptr [ %i.k, %._crit_edge405 ], [ %.sink590.ph.ph, %.sink.split.sink.split.sink.split ]
  %i.sq = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.sq(ptr noundef nonnull %.sink595) #34
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %._crit_edge
  %.sink590 = phi ptr [ %i.f, %._crit_edge ], [ %.sink590.ph, %.sink.split.sink.split ]
  %i.sr = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.sr(ptr noundef nonnull %.sink590) #34
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_unlink_node(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = atomicrmw add ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1656
end_hunk_2
begin_hunk_3_@hnsw_test_graph_recall:bb.a
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.o
  %.297 = phi i32 [ %.196, %bb.o ], [ %.095129, %.loopexit ] ; 2 uses
  %.194 = phi ptr [ %i.dg, %bb.o ], [ %.093130, %.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.o ], [ %.092131, %.loopexit ] ; 2 uses
  %.not = icmp eq ptr %.194, null
  br i1 %.not, label %hnsw_release_read_slot.exit, label %bb.f

hnsw_release_read_slot.exit:                      ; preds = %bb.p, %bb.e
  %.095.lcssa = phi i32 [ 0, %bb.e ], [ %.297, %bb.p ] ; 3 uses
  %.092.lcssa = phi i32 [ 0, %bb.e ], [ %.2, %bb.p ] ; 2 uses
  %.090.lcssa = phi i32 [ 0, %bb.e ], [ %i.aa, %bb.p ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.di = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.dh) #34 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dk = zext nneg i32 %i.t to i64
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dl) #34 ; 0 uses
  %i.dn = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.dn(ptr noundef nonnull %i.d) #34
  %i.do = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.do(ptr noundef nonnull %i.g) #34
  %i.dp = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.dp(ptr noundef nonnull %i.m) #34
  %i.dq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %.090.lcssa) ; 0 uses
  %.not105 = icmp eq i32 %.090.lcssa, 0
  br i1 %.not105, label %.critedge110, label %bb.q

bb.q:                                             ; preds = %hnsw_release_read_slot.exit
  %i.dr = uitofp i32 %.095.lcssa to float
  %i.ds = fmul nnan float %i.dr, 1.000000e+02
  %i.dt = uitofp i32 %.090.lcssa to float         ; 2 uses
  %i.du = fdiv float %i.ds, %i.dt
  %i.dv = fpext float %i.du to double
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.095.lcssa, double noundef %i.dv) ; 0 uses
  %i.dx = uitofp i32 %.092.lcssa to float
  %i.dy = fmul nnan float %i.dx, 1.000000e+02
  %i.dz = fdiv float %i.dy, %i.dt
  %i.ea = fpext float %i.dz to double
  br label %bb.r

.critedge110:                                     ; preds = %hnsw_release_read_slot.exit
  %i.eb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.095.lcssa, double noundef 0.000000e+00) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.critedge110, %bb.q
  %i.ec = phi double [ %i.ea, %bb.q ], [ 0.000000e+00, %.critedge110 ]
  %i.ed = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %.092.lcssa, double noundef %i.ec) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.r, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hnsw_ground_truth_with_filter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #3 {
bb.a:
  %9 = alloca %struct.hnswNode, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.a = call i32 @hnsw_init_tmp_node(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %6, ptr noundef %1)
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %hnsw_free_tmp_node.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.d = tail call ptr %i.c(i64 noundef 16) #34, !inline_history !142 ; 12 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.f = zext i32 %2 to i64
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = tail call ptr %i.e(i64 noundef %i.g) #34, !inline_history !142 ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.i(ptr noundef nonnull %i.d) #34, !inline_history !142
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %.not.i52 = icmp eq ptr %i.k, %1
  br i1 %.not.i52, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store i32 0, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  store i32 %2, ptr %i.m, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.04163 = load ptr, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %.not4864 = icmp eq ptr %.04163, null
  br i1 %.not4864, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.not50 = icmp eq ptr %7, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.04165 = phi ptr [ %.04163, %.lr.ph ], [ %.041, %.backedge ] ; 8 uses
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.04165, i64 288
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call i32 %7(ptr noundef %i.t, ptr noundef %8) #34
  %.not51 = icmp eq i32 %i.u, 0
  br i1 %.not51, label %.backedge, label %bb.i

.backedge:                                        ; preds = %.critedge2.i, %bb.o, %.critedge.i, %bb.h
  %.041.in.be = getelementptr inbounds nuw i8, ptr %.04165, i64 304
  %.041 = load ptr, ptr %.041.in.be, align 8, !tbaa !26 ; 2 uses
  %.not48 = icmp eq ptr %.041, null
  br i1 %.not48, label %._crit_edge.loopexit, label %bb.g, !llvm.loop !256

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = load i32, ptr %i.o, align 8, !tbaa !70
  switch i32 %i.v, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = load i32, ptr %i.q, align 8, !tbaa !73
  %i.aa = tail call float @vectors_distance_float(ptr noundef %i.w, ptr noundef %i.y, i32 noundef %i.z)
  br label %hnsw_distance.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !73
  %i.af = load float, ptr %i.r, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.04165, i64 24
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !27
  %i.ai = tail call float @vectors_distance_q8(ptr noundef %i.ab, ptr noundef %i.ad, i32 noundef %i.ae, float noundef %i.af, float noundef %i.ah)
  br label %hnsw_distance.exit

bb.l:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.am = load i32, ptr %i.q, align 8, !tbaa !73
  %i.an = tail call float @vectors_distance_bin(ptr noundef %i.aj, ptr noundef %i.al, i32 noundef %i.am)
  br label %hnsw_distance.exit

bb.m:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.j, %bb.k, %bb.l
  %.0.i53 = phi float [ %i.aa, %bb.j ], [ %i.ai, %bb.k ], [ %i.an, %bb.l ] ; 5 uses
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !20  ; 2 uses
  %i.aq = icmp ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %hnsw_distance.exit
  %.not45.i = icmp eq i32 %i.ao, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.ar = zext i32 %i.ao to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.n, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.ar, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.n ] ; 3 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 2 uses
  %i.at = and i64 %indvars.iv.next54.i, 4294967295 ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load float, ptr %i.av, align 8, !tbaa !21
  %i.ax = fcmp olt float %i.aw, %.0.i53
  br i1 %i.ax, label %bb.n, label %.critedge.loopexit.i

bb.n:                                             ; preds = %.lr.ph47.i
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv53.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !25
  %.not.i54 = icmp eq i64 %i.at, 0
  br i1 %.not.i54, label %.critedge.loopexit.i, label %.lr.ph47.i, !llvm.loop !28

.critedge.loopexit.i:                             ; preds = %bb.n, %.lr.ph47.i
  %.038.lcssa.ph.i = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ], [ 0, %bb.n ]
  %.pre57.i = load i32, ptr %i.l, align 8, !tbaa !19
  %10 = and i64 %.038.lcssa.ph.i, 4294967295
  %i.az = add i32 %.pre57.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.ba = phi i32 [ 1, %.preheader.i ], [ %i.az, %.critedge.loopexit.i ]
  %.038.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %10, %.critedge.loopexit.i ]
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.038.lcssa.i ; 2 uses
  store ptr %.04165, ptr %i.bc, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store float %.0.i53, ptr %i.bd, align 8, !tbaa !21
  store i32 %i.ba, ptr %i.l, align 8, !tbaa !19
  br label %.backedge

bb.o:                                             ; preds = %hnsw_distance.exit
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !21
  %i.bh = fcmp ult float %.0.i53, %i.bg
  br i1 %i.bh, label %.preheader41.i, label %.backedge

.preheader41.i:                                   ; preds = %bb.o
  %.not51.i = icmp eq i32 %i.ap, 1
  br i1 %.not51.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %.preheader41.i ] ; 3 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.next.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !21
  %i.bm = fcmp ogt float %i.bl, %.0.i53
  br i1 %i.bm, label %bb.p, label %.critedge2.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !25
  %i.bo = load i32, ptr %i.m, align 4, !tbaa !20
  %i.bp = add i32 %i.bo, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next.i, %i.bq
  br i1 %i.br, label %.lr.ph.i, label %..critedge2.loopexit_crit_edge.i, !llvm.loop !31

..critedge2.loopexit_crit_edge.i:                 ; preds = %bb.p
  %.pre.pre.i = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %.critedge2.i, !llvm.loop !31

.critedge2.i:                                     ; preds = %.lr.ph.i, %..critedge2.loopexit_crit_edge.i, %.preheader41.i
  %i.bs = phi ptr [ %i.be, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.bi, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 0, %.preheader41.i ], [ %indvars.iv.next.i, %..critedge2.loopexit_crit_edge.i ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.0.lcssa.i ; 2 uses
  store ptr %.04165, ptr %i.bt, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store float %.0.i53, ptr %i.bu, align 8, !tbaa !21
  br label %.backedge

._crit_edge.loopexit:                             ; preds = %.backedge
  %.pre = load i32, ptr %i.l, align 8, !tbaa !19
  %.pre79.pre = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.pre79 = phi ptr [ %.pre79.pre, %._crit_edge.loopexit ], [ %i.h, %bb.f ] ; 9 uses
  %i.bv = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.f ] ; 9 uses
  %. = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.bv) ; 7 uses
  %.not = icmp eq i32 %., 0
  br i1 %.not, label %pq_free.exit, label %.lr.ph68

.lr.ph68:                                         ; preds = %._crit_edge
  %.not49 = icmp eq ptr %4, null
  %wide.trip.count77 = zext i32 %. to i64         ; 4 uses
  br i1 %.not49, label %.lr.ph68.split.us.preheader, label %.lr.ph68.split.preheader

.lr.ph68.split.preheader:                         ; preds = %.lr.ph68
  %xtraiter = and i64 %wide.trip.count77, 1
  %i.bw = icmp eq i32 %., 1
  br i1 %i.bw, label %.lr.ph68.split.epil.preheader, label %.lr.ph68.split.preheader.new

.lr.ph68.split.preheader.new:                     ; preds = %.lr.ph68.split.preheader
  %unroll_iter = and i64 %wide.trip.count77, 4294967294
  br label %.lr.ph68.split

.lr.ph68.split.us.preheader:                      ; preds = %.lr.ph68
  %xtraiter102 = and i64 %wide.trip.count77, 3    ; 3 uses
  %i.bx = icmp ult i32 %., 4
  br i1 %i.bx, label %.lr.ph68.split.us.epil.preheader, label %.lr.ph68.split.us.preheader.new

.lr.ph68.split.us.preheader.new:                  ; preds = %.lr.ph68.split.us.preheader
  %unroll_iter105 = and i64 %wide.trip.count77, 4294967292
  br label %.lr.ph68.split.us

.lr.ph68.split.us:                                ; preds = %.lr.ph68.split.us, %.lr.ph68.split.us.preheader.new
  %indvars.iv74 = phi i64 [ 0, %.lr.ph68.split.us.preheader.new ], [ %indvars.iv.next75.3, %.lr.ph68.split.us ] ; 5 uses
  %niter106 = phi i64 [ 0, %.lr.ph68.split.us.preheader.new ], [ %niter106.next.3, %.lr.ph68.split.us ]
  %indvars.iv.next75 = or disjoint i64 %indvars.iv74, 1 ; 2 uses
  %i.by = trunc nuw i64 %indvars.iv.next75 to i32
  %i.bz = sub i32 %i.bv, %i.by
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv74
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !26
  %indvars.iv.next75.1 = or disjoint i64 %indvars.iv74, 2 ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next75.1 to i32
  %i.cf = sub i32 %i.bv, %i.ce
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !30
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next75
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !26
  %indvars.iv.next75.2 = or disjoint i64 %indvars.iv74, 3 ; 2 uses
  %i.ck = trunc nuw i64 %indvars.iv.next75.2 to i32
  %i.cl = sub i32 %i.bv, %i.ck
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !30
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next75.1
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !26
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 3 uses
  %i.cq = trunc nuw i64 %indvars.iv.next75.3 to i32
  %i.cr = sub i32 %i.bv, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next75.2
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !26
  %niter106.next.3 = add i64 %niter106, 4         ; 2 uses
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %pq_free.exit.loopexit.unr-lcssa, label %.lr.ph68.split.us, !llvm.loop !257

pq_free.exit.loopexit.unr-lcssa:                  ; preds = %.lr.ph68.split.us
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %pq_free.exit, label %.lr.ph68.split.us.epil.preheader

.lr.ph68.split.us.epil.preheader:                 ; preds = %pq_free.exit.loopexit.unr-lcssa, %.lr.ph68.split.us.preheader
  %indvars.iv74.epil.init = phi i64 [ 0, %.lr.ph68.split.us.preheader ], [ %indvars.iv.next75.3, %pq_free.exit.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter102, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph68.split.us.epil

.lr.ph68.split.us.epil:                           ; preds = %.lr.ph68.split.us.epil, %.lr.ph68.split.us.epil.preheader
  %indvars.iv74.epil = phi i64 [ %indvars.iv.next75.epil, %.lr.ph68.split.us.epil ], [ %indvars.iv74.epil.init, %.lr.ph68.split.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph68.split.us.epil ], [ 0, %.lr.ph68.split.us.epil.preheader ]
  %indvars.iv.next75.epil = add nuw nsw i64 %indvars.iv74.epil, 1 ; 2 uses
  %i.cw = trunc nuw i64 %indvars.iv.next75.epil to i32
  %i.cx = sub i32 %i.bv, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv74.epil
  store ptr %i.da, ptr %i.db, align 8, !tbaa !26
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter102
  br i1 %epil.iter.cmp.not, label %pq_free.exit, label %.lr.ph68.split.us.epil, !llvm.loop !258

pq_free.exit.loopexit97.unr-lcssa:                ; preds = %.lr.ph68.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pq_free.exit, label %.lr.ph68.split.epil.preheader

.lr.ph68.split.epil.preheader:                    ; preds = %pq_free.exit.loopexit97.unr-lcssa, %.lr.ph68.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph68.split.preheader ], [ %indvars.iv.next.1, %pq_free.exit.loopexit97.unr-lcssa ] ; 3 uses
  %lcmp.mod101 = trunc i32 %. to i1
  tail call void @llvm.assume(i1 %lcmp.mod101)
  %i.dc = trunc i64 %indvars.iv.epil.init to i32
  %.neg = xor i32 %i.dc, -1
  %i.dd = add i32 %i.bv, %.neg
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !26
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load float, ptr %i.di, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  store float %i.dj, ptr %i.dk, align 4, !tbaa !27
  br label %pq_free.exit

pq_free.exit:                                     ; preds = %.lr.ph68.split.epil.preheader, %pq_free.exit.loopexit97.unr-lcssa, %pq_free.exit.loopexit.unr-lcssa, %.lr.ph68.split.us.epil, %._crit_edge
  %i.dl = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.dl(ptr noundef %.pre79) #34, !inline_history !143
  %i.dm = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.dm(ptr noundef nonnull %i.d) #34, !inline_history !143
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !15 ; 2 uses
  %.not.i56 = icmp eq ptr %i.do, %1
  br i1 %.not.i56, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

.lr.ph68.split:                                   ; preds = %.lr.ph68.split, %.lr.ph68.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph68.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph68.split ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph68.split.preheader.new ], [ %niter.next.1, %.lr.ph68.split ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.dp = trunc nuw i64 %indvars.iv.next to i32
  %i.dq = sub i32 %i.bv, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.dr ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !30
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !26
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !21
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %i.dw, ptr %i.dx, align 4, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.dy = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.dz = sub i32 %i.bv, %i.dy
end_hunk_3
