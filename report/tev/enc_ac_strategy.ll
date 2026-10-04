Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ac_strategy?download=true
inline.NumInlined: 2681
inline.NumDeleted: 850
loop-unroll.NumCompletelyUnrolled: 531
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 686
begin_hunk_0_@_ZN3jxl6N_SSE420FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeE:bb.a
  br i1 %.not.us.us, label %.split82.us, label %.split.us.split.us

.split.us.split:                                  ; preds = %.split.us, %.thread61.us
  %.077.us = phi double [ %.366.us, %.thread61.us ], [ 1.000000e+30, %.split.us ] ; 3 uses
  %.048.idx76.us = phi i64 [ %.048.add.us, %.thread61.us ], [ 0, %.split.us ] ; 2 uses
  %.048.ptr78.us = getelementptr inbounds nuw i8, ptr @_ZZN3jxl6N_SSE420FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeEE14kTransforms8x8, i64 %.048.idx76.us ; 3 uses
  %.sroa.016.0.copyload.us = load i32, ptr %.048.ptr78.us, align 16, !tbaa !105 ; 3 uses
  %.sroa.10.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.048.ptr78.us, i64 4
  %.sroa.10.0.copyload.us = load i32, ptr %.sroa.10.0..sroa_idx.us, align 4, !tbaa !106
  %i.t = icmp slt i32 %.sroa.10.0.copyload.us, %2
  br i1 %i.t, label %.thread61.us, label %bb.e

bb.e:                                             ; preds = %.split.us.split
  %.sroa.11.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.048.ptr78.us, i64 8
  %.sroa.11.0.copyload.us = load double, ptr %.sroa.11.0..sroa_idx.us, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %.sroa.059.0.insert.ext.us = zext i32 %.sroa.016.0.copyload.us to i64
  %.sroa.059.0.insert.insert.us = or disjoint i64 %.sroa.059.0.insert.ext.us, 4294967296
  %i.u = trunc nuw nsw i64 %.sroa.059.0.insert.insert.us to i40
  store i40 %i.u, ptr %12, align 8
  %i.v = fdiv double %.sroa.11.0.copyload.us, 8.000000e-01
  %i.w = fptrunc double %i.v to float             ; 2 uses
  %i.x = icmp ugt i32 %.sroa.016.0.copyload.us, 2
  %i.y = tail call float @llvm.fmuladd.f32(float %.047, float 5.000000e-01, float %i.w)
  %spec.select = select i1 %i.x, float %i.y, float %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.z = call i32 @_ZN3jxl6N_SSE415EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %12, float noundef %spec.select, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.split80.us

bb.f:                                             ; preds = %bb.e
  %i.ab = load float, ptr %i.a, align 4, !tbaa !69
  %i.ac = fpext float %i.ab to double             ; 2 uses
  %i.ad = fcmp ogt double %.077.us, %i.ac
  br i1 %i.ad, label %bb.g, label %.thread67.us

bb.g:                                             ; preds = %bb.f
  store i32 %.sroa.016.0.copyload.us, ptr %11, align 4, !tbaa !105
  br label %.thread67.us

.thread67.us:                                     ; preds = %bb.g, %bb.f
  %.2.ph.us = phi double [ %i.ac, %bb.g ], [ %.077.us, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %.thread61.us

.thread61.us:                                     ; preds = %.thread67.us, %.split.us.split
  %.366.us = phi double [ %.2.ph.us, %.thread67.us ], [ %.077.us, %.split.us.split ] ; 2 uses
  %.048.add.us = add nuw nsw i64 %.048.idx76.us, 16 ; 2 uses
  %.not.us = icmp eq i64 %.048.add.us, 160
  br i1 %.not.us, label %.split82.us, label %.split.us.split

.split:                                           ; preds = %bb.a
  br i1 %i.c, label %.split.split, label %.split.split.us

.split.split.us:                                  ; preds = %.split, %.thread61.us98
  %.077.us85 = phi double [ %.366.us99, %.thread61.us98 ], [ 1.000000e+30, %.split ] ; 3 uses
  %.048.idx76.us86 = phi i64 [ %.048.add.us100, %.thread61.us98 ], [ 0, %.split ] ; 2 uses
  %.048.ptr78.us84 = getelementptr inbounds nuw i8, ptr @_ZZN3jxl6N_SSE420FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeEE14kTransforms8x8, i64 %.048.idx76.us86 ; 3 uses
  %.sroa.016.0.copyload.us87 = load i32, ptr %.048.ptr78.us84, align 16, !tbaa !105 ; 3 uses
  %.sroa.10.0..sroa_idx.us88 = getelementptr inbounds nuw i8, ptr %.048.ptr78.us84, i64 4
  %.sroa.10.0.copyload.us89 = load i32, ptr %.sroa.10.0..sroa_idx.us88, align 4, !tbaa !106
  %i.ae = icmp slt i32 %.sroa.10.0.copyload.us89, %2
  br i1 %i.ae, label %.thread61.us98, label %bb.h

bb.h:                                             ; preds = %.split.split.us
  %.sroa.11.0..sroa_idx.us90 = getelementptr inbounds nuw i8, ptr %.048.ptr78.us84, i64 8
  %.sroa.11.0.copyload.us91 = load double, ptr %.sroa.11.0..sroa_idx.us90, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %.sroa.059.0.insert.ext.us92 = zext i32 %.sroa.016.0.copyload.us87 to i64
  %.sroa.059.0.insert.insert.us93 = or disjoint i64 %.sroa.059.0.insert.ext.us92, 4294967296
  %i.af = trunc nuw nsw i64 %.sroa.059.0.insert.insert.us93 to i40
  store i40 %i.af, ptr %12, align 8
  %i.ag = fdiv double %.sroa.11.0.copyload.us91, 8.000000e-01
  %i.ah = fptrunc double %i.ag to float           ; 2 uses
  %i.ai = add i32 %.sroa.016.0.copyload.us87, -1
  %or.cond.us = icmp ult i32 %i.ai, 2
  br i1 %or.cond.us, label %.thread.us, label %bb.i

.thread.us:                                       ; preds = %bb.h
  %i.aj = tail call noundef float @powf(float noundef %i.j, float noundef 2.000000e+00) #50
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float -4.000000e-01, float %i.ah)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.us
  %.150.us95 = phi float [ %i.ak, %.thread.us ], [ %i.ah, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.al = call i32 @_ZN3jxl6N_SSE415EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %12, float noundef %.150.us95, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %.split80.us

bb.j:                                             ; preds = %bb.i
  %i.an = load float, ptr %i.a, align 4, !tbaa !69
  %i.ao = fpext float %i.an to double             ; 2 uses
  %i.ap = fcmp ogt double %.077.us85, %i.ao
  br i1 %i.ap, label %bb.k, label %.thread67.us96

bb.k:                                             ; preds = %bb.j
  store i32 %.sroa.016.0.copyload.us87, ptr %11, align 4, !tbaa !105
  br label %.thread67.us96

.thread67.us96:                                   ; preds = %bb.k, %bb.j
  %.2.ph.us97 = phi double [ %i.ao, %bb.k ], [ %.077.us85, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %.thread61.us98

.thread61.us98:                                   ; preds = %.thread67.us96, %.split.split.us
  %.366.us99 = phi double [ %.2.ph.us97, %.thread67.us96 ], [ %.077.us85, %.split.split.us ] ; 2 uses
  %.048.add.us100 = add nuw nsw i64 %.048.idx76.us86, 16 ; 2 uses
  %.not.us102 = icmp eq i64 %.048.add.us100, 160
  br i1 %.not.us102, label %.split82.us, label %.split.split.us

.split.split:                                     ; preds = %.split, %.thread61
  %.077 = phi double [ %.366, %.thread61 ], [ 1.000000e+30, %.split ] ; 3 uses
  %.048.idx76 = phi i64 [ %.048.add, %.thread61 ], [ 0, %.split ] ; 2 uses
  %.048.ptr78 = getelementptr inbounds nuw i8, ptr @_ZZN3jxl6N_SSE420FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeEE14kTransforms8x8, i64 %.048.idx76 ; 3 uses
  %.sroa.016.0.copyload = load i32, ptr %.048.ptr78, align 16, !tbaa !105 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.048.ptr78, i64 4
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !106
  %i.aq = icmp slt i32 %.sroa.10.0.copyload, %2
  br i1 %i.aq, label %.thread61, label %bb.l

bb.l:                                             ; preds = %.split.split
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.048.ptr78, i64 8
  %.sroa.11.0.copyload = load double, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %.sroa.059.0.insert.ext = zext i32 %.sroa.016.0.copyload to i64
  %.sroa.059.0.insert.insert = or disjoint i64 %.sroa.059.0.insert.ext, 4294967296
  %i.ar = trunc nuw nsw i64 %.sroa.059.0.insert.insert to i40
  store i40 %i.ar, ptr %12, align 8
  %i.as = fdiv double %.sroa.11.0.copyload, 8.000000e-01
  %i.at = fptrunc double %i.as to float           ; 3 uses
  %i.au = add i32 %.sroa.016.0.copyload, -1
  %or.cond = icmp ult i32 %i.au, 2
  br i1 %or.cond, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.av = tail call noundef float @powf(float noundef %i.j, float noundef 2.000000e+00) #50
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float -4.000000e-01, float %i.at)
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp ugt i32 %.sroa.016.0.copyload, 2
  %i.ay = tail call float @llvm.fmuladd.f32(float %.047, float 5.000000e-01, float %i.at)
  %spec.select109 = select i1 %i.ax, float %i.ay, float %i.at
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  %.150 = phi float [ %spec.select109, %bb.m ], [ %i.aw, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.az = call i32 @_ZN3jxl6N_SSE415EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %12, float noundef %.150, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.o, label %.split80.us

bb.o:                                             ; preds = %bb.n
  %i.bb = load float, ptr %i.a, align 4, !tbaa !69
  %i.bc = fpext float %i.bb to double             ; 2 uses
  %i.bd = fcmp ogt double %.077, %i.bc
  br i1 %i.bd, label %bb.p, label %.thread67

bb.p:                                             ; preds = %bb.o
  store i32 %.sroa.016.0.copyload, ptr %11, align 4, !tbaa !105
  br label %.thread67

.thread67:                                        ; preds = %bb.o, %bb.p
  %.2.ph = phi double [ %i.bc, %bb.p ], [ %.077, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %.thread61

.thread61:                                        ; preds = %.split.split, %.thread67
  %.366 = phi double [ %.2.ph, %.thread67 ], [ %.077, %.split.split ] ; 2 uses
  %.048.add = add nuw nsw i64 %.048.idx76, 16     ; 2 uses
  %.not = icmp eq i64 %.048.add, 160
  br i1 %.not, label %.split82.us, label %.split.split

.split80.us:                                      ; preds = %bb.b, %bb.e, %bb.i, %bb.n
  %.us-phi = phi i32 [ %i.az, %bb.n ], [ %i.al, %bb.i ], [ %i.z, %bb.e ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %bb.q

.split82.us:                                      ; preds = %.thread61.us.us, %.thread61.us, %.thread61.us98, %.thread61
  %.us-phi83 = phi double [ %.366, %.thread61 ], [ %.366.us99, %.thread61.us98 ], [ %.366.us, %.thread61.us ], [ %.366.us.us, %.thread61.us.us ]
  %i.be = fptrunc double %.us-phi83 to float
  store float %i.be, ptr %10, align 4, !tbaa !69
  br label %bb.q

bb.q:                                             ; preds = %.split80.us, %.split82.us
  %.sroa.0.3 = phi i32 [ 0, %.split82.us ], [ %.us-phi, %.split80.us ]
  ret i32 %.sroa.0.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN3jxl6N_SSE411TryMergeAcsENS_14AcStrategyTypeEmmmmRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEfhPhPfSA_SA_Pj(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %5, ptr noalias nofree noundef readonly captures(none) %6, ptr noalias nofree noundef readonly captures(none) %7, float noundef %8, i8 noundef zeroext %9, ptr nofree noundef captures(none) %10, ptr noalias nofree noundef captures(none) %11, ptr noundef %12, ptr noundef %13, ptr nofree readnone captures(none) %14) local_unnamed_addr #5 {
.preheader76.us.preheader:
  %15 = alloca %"class.jxl::AcStrategy", align 8  ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %.sroa.071.0.insert.ext = zext i32 %0 to i64
  %.sroa.071.0.insert.insert = or disjoint i64 %.sroa.071.0.insert.ext, 4294967296
  %i.b = trunc nuw nsw i64 %.sroa.071.0.insert.insert to i40
  store i40 %i.b, ptr %15, align 8
  %i.c = zext i32 %0 to i64                       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66
  %i.h = tail call i8 @llvm.umax.i8(i8 %i.g, i8 1)
  %umax = zext i8 %i.h to i64
  %i.i = tail call i8 @llvm.umax.i8(i8 %i.e, i8 1) ; 2 uses
  %umax99 = zext i8 %i.i to i64                   ; 3 uses
  br label %.preheader76.us

.preheader76.us:                                  ; preds = %.preheader76.us.preheader, %..critedge_crit_edge.us
  %.087.us = phi float [ %i.r, %..critedge_crit_edge.us ], [ 0.000000e+00, %.preheader76.us.preheader ]
  %.05786.us = phi i64 [ %i.t, %..critedge_crit_edge.us ], [ 0, %.preheader76.us.preheader ] ; 2 uses
  %i.j = add i64 %.05786.us, %4
  %i.k = shl i64 %i.j, 3
  %i.l = add i64 %i.k, %3
  br label %bb.a

bb.a:                                             ; preds = %.preheader76.us, %bb.b
  %.184.us = phi float [ %.087.us, %.preheader76.us ], [ %i.r, %bb.b ]
  %.06283.us = phi i64 [ 0, %.preheader76.us ], [ %i.s, %bb.b ] ; 2 uses
  %i.m = add i64 %i.l, %.06283.us                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !66
  %.not.us = icmp ult i8 %i.o, %9
  br i1 %.not.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.m
  %i.q = load float, ptr %i.p, align 4, !tbaa !69
  %i.r = fadd float %.184.us, %i.q                ; 3 uses
  %i.s = add nuw nsw i64 %.06283.us, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %umax
  br i1 %exitcond.not, label %..critedge_crit_edge.us, label %bb.a, !llvm.loop !1006

..critedge_crit_edge.us:                          ; preds = %bb.b
  %i.t = add nuw nsw i64 %.05786.us, 1            ; 2 uses
  %exitcond100.not = icmp eq i64 %i.t, %umax99
  br i1 %exitcond100.not, label %.thread, label %.preheader76.us, !llvm.loop !1007

.thread:                                          ; preds = %..critedge_crit_edge.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.u = add i64 %3, %1                           ; 2 uses
  %i.v = shl i64 %i.u, 3
  %i.w = add i64 %4, %2                           ; 2 uses
  %i.x = shl i64 %i.w, 3
  %i.y = call i32 @_ZN3jxl6N_SSE415EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %15, float noundef %8, i64 noundef %i.v, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %6, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.aa = load float, ptr %i.a, align 4, !tbaa !69 ; 2 uses
  %i.ab = fcmp ult float %i.aa, %i.r
  br i1 %i.ab, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.c
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !66  ; 2 uses
  %i.ae = shl i64 %3, 2
  %i.af = tail call i8 @llvm.umax.i8(i8 %i.ad, i8 1)
  %umax101 = zext i8 %i.af to i64                 ; 4 uses
  %i.ag = shl nuw nsw i64 %umax101, 2             ; 3 uses
  %invariant.gep110 = getelementptr i8, ptr %10, i64 %3 ; 3 uses
  %invariant.gep111 = getelementptr i8, ptr %11, i64 %i.ae ; 3 uses
  %xtraiter = and i64 %umax99, 1
  %i.ah = shl nuw i64 1, %i.c
  %i.ai = and i64 %i.ah, 258703
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %.preheader.preheader.new, label %.preheader.epil.preheader

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %umax99, 254
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.05994 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.as, %.preheader ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.aj = add i64 %4, %.05994
  %i.ak = shl i64 %i.aj, 3
  %gep = getelementptr i8, ptr %invariant.gep110, i64 %i.ak
  %i.al = add i64 %4, %.05994
  %i.am = shl i64 %i.al, 5
  %gep112 = getelementptr i8, ptr %invariant.gep111, i64 %i.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep112, i8 0, i64 %i.ag, i1 false), !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %gep, i8 %9, i64 %umax101, i1 false), !tbaa !66
  %i.an = or disjoint i64 %.05994, 1              ; 2 uses
  %i.ao = add i64 %4, %i.an
  %i.ap = shl i64 %i.ao, 3
  %gep.1 = getelementptr i8, ptr %invariant.gep110, i64 %i.ap
  %i.aq = add i64 %4, %i.an
  %i.ar = shl i64 %i.aq, 5
  %gep112.1 = getelementptr i8, ptr %invariant.gep111, i64 %i.ar
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep112.1, i8 0, i64 %i.ag, i1 false), !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %gep.1, i8 %9, i64 %umax101, i1 false), !tbaa !66
  %i.as = add nuw nsw i64 %.05994, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge95.split.unr-lcssa, label %.preheader, !llvm.loop !1008

._crit_edge95.split.unr-lcssa:                    ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge95.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge95.split.unr-lcssa, %.preheader.preheader
  %.05994.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.as, %._crit_edge95.split.unr-lcssa ] ; 2 uses
  %lcmp.mod128 = trunc i8 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.at = add i64 %4, %.05994.epil.init
  %i.au = shl i64 %i.at, 3
  %gep.epil = getelementptr i8, ptr %invariant.gep110, i64 %i.au
  %i.av = add i64 %4, %.05994.epil.init
  %i.aw = shl i64 %i.av, 5
  %gep112.epil = getelementptr i8, ptr %invariant.gep111, i64 %i.aw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep112.epil, i8 0, i64 %i.ag, i1 false), !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %gep.epil, i8 %9, i64 %umax101, i1 false), !tbaa !66
  br label %._crit_edge95.split

._crit_edge95.split:                              ; preds = %._crit_edge95.split.unr-lcssa, %.preheader.epil.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.az = shl nuw i32 %0, 1                       ; 3 uses
  %i.ba = tail call i8 @llvm.umax.i8(i8 %i.ad, i8 1)
  %umax46.i.i = zext i8 %i.ba to i64              ; 6 uses
  %i.bb = tail call i8 @llvm.umax.i8(i8 %i.e, i8 1)
  %umax48.i.i = zext i8 %i.bb to i64
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !110
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !111
  %invariant.gep = getelementptr i8, ptr %i.bd, i64 %i.u
  %i.be = shl nuw i64 1, %i.c
  %i.bf = and i64 %i.be, 259551
  %min.iters.check.not = icmp eq i64 %i.bf, 0
  %i.bg = shl nuw i64 1, %i.c
  %i.bh = and i64 %i.bg, 6291455
  %min.iters.check113.not = icmp eq i64 %i.bh, 0
  %i.bi = and i64 %umax46.i.i, 12
  %n.vec = and i64 %umax46.i.i, 240               ; 4 uses
  %broadcast.splatinsert114 = insertelement <16 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat115 = shufflevector <16 x i32> %broadcast.splatinsert114, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %umax46.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  %n.vec116 = and i64 %umax46.i.i, 252            ; 3 uses
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n127 = icmp eq i64 %n.vec116, %umax46.i.i
  br label %iter.check

iter.check:                                       ; preds = %..critedge25_crit_edge.split.i.i, %._crit_edge95.split
  %.038.i.i = phi i64 [ %i.cf, %..critedge25_crit_edge.split.i.i ], [ 0, %._crit_edge95.split ] ; 5 uses
  %i.bj = add i64 %.038.i.i, %i.w
  %i.bk = mul i64 %i.bc, %i.bj
  %invariant.gep96 = getelementptr i8, ptr %invariant.gep, i64 %i.bk ; 3 uses
  br i1 %min.iters.check.not, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check113.not, label %vector.ph, label %vec.epilog.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.038.i.i, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bl = or <16 x i64> %vec.ind, %broadcast.splat
  %i.bm = icmp eq <16 x i64> %i.bl, zeroinitializer
  %i.bn = zext <16 x i1> %i.bm to <16 x i32>
  %i.bo = or disjoint <16 x i32> %broadcast.splat115, %i.bn
  %i.bp = trunc <16 x i32> %i.bo to <16 x i8>
  %i.bq = getelementptr i8, ptr %invariant.gep96, i64 %index
  store <16 x i8> %i.bp, ptr %i.bq, align 1, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !1009

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !114

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert117 = insertelement <4 x i64> poison, i64 %.038.i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x i64> %broadcast.splatinsert117, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat122 = shufflevector <4 x i64> %broadcast.splatinsert121, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat122, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind124 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next126, %vec.epilog.vector.body ] ; 2 uses
  %i.bs = or <4 x i64> %vec.ind124, %broadcast.splat118
  %i.bt = icmp eq <4 x i64> %i.bs, zeroinitializer
  %i.bu = zext <4 x i1> %i.bt to <4 x i32>
  %i.bv = or disjoint <4 x i32> %broadcast.splat120, %i.bu
  %i.bw = trunc <4 x i32> %i.bv to <4 x i8>
  %i.bx = getelementptr i8, ptr %invariant.gep96, i64 %index123
  store <4 x i8> %i.bw, ptr %i.bx, align 1, !tbaa !66
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %vec.ind.next126 = add nuw nsw <4 x i64> %vec.ind124, splat (i64 4)
  %i.by = icmp eq i64 %index.next125, %n.vec116
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1010

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02036.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec116, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.02036.i.i = phi i64 [ %i.ce, %vec.epilog.scalar.ph ], [ %.02036.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bz = or i64 %.02036.i.i, %.038.i.i
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = or disjoint i32 %i.az, %i.cb
  %i.cd = trunc i32 %i.cc to i8
  %gep97 = getelementptr i8, ptr %invariant.gep96, i64 %.02036.i.i
  store i8 %i.cd, ptr %gep97, align 1, !tbaa !66
  %i.ce = add nuw nsw i64 %.02036.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %umax46.i.i
  br i1 %exitcond.not.i.i, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph, !llvm.loop !1011

..critedge25_crit_edge.split.i.i:                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cf = add nuw nsw i64 %.038.i.i, 1            ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %i.cf, %umax48.i.i
  br i1 %exitcond45.not.i.i, label %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit, label %iter.check, !llvm.loop !6

_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit: ; preds = %..critedge25_crit_edge.split.i.i
  %.idx = shl i64 %4, 5
  %i.cg = getelementptr i8, ptr %11, i64 %.idx
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %3
  store float %i.aa, ptr %i.ch, align 4, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit
  %.sroa.0.3 = phi i32 [ 0, %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit ], [ 0, %bb.c ], [ %i.y, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.d
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  ret i32 %.sroa.0.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = shl nuw i32 %3, 1                        ; 3 uses
  %i.i = tail call i8 @llvm.umax.i8(i8 %i.e, i8 1) ; 2 uses
  %umax46.i = zext i8 %i.i to i64                 ; 2 uses
  %i.j = tail call i8 @llvm.umax.i8(i8 %i.c, i8 1)
  %umax48.i = zext i8 %i.j to i64
  %xtraiter = and i64 %umax46.i, 1
  %i.k = shl nuw i64 1, %i.a
  %i.l = and i64 %i.k, 258383
  %.not = icmp eq i64 %i.l, 0
  %unroll_iter = and i64 %umax46.i, 254
  %i.m = trunc i32 %i.h to i8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod7 = trunc i8 %i.i to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %..critedge25_crit_edge.split.i, %bb.a
  %.038.i = phi i64 [ %i.as, %..critedge25_crit_edge.split.i ], [ 0, %bb.a ] ; 4 uses
  %i.n = add i64 %.038.i, %2                      ; 3 uses
  br i1 %.not, label %.preheader.i.new, label %.epil.preheader

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.02036.i = phi i64 [ %i.ag, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.o = load i64, ptr %i.f, align 8, !tbaa !110
  %i.p = mul i64 %i.o, %i.n
  %i.q = or i64 %.02036.i, %.038.i
  %i.r = icmp eq i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = or disjoint i32 %i.h, %i.s
  %i.u = trunc i32 %i.t to i8
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.w = getelementptr i8, ptr %i.v, i64 %.02036.i
  %i.x = getelementptr i8, ptr %i.w, i64 %1
  %i.y = getelementptr i8, ptr %i.x, i64 %i.p
  store i8 %i.u, ptr %i.y, align 1, !tbaa !66
  %i.z = load i64, ptr %i.f, align 8, !tbaa !110
  %i.aa = mul i64 %i.z, %i.n
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.ac = getelementptr i8, ptr %i.ab, i64 %.02036.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 1
  %i.ae = getelementptr i8, ptr %i.ad, i64 %1
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.aa
  store i8 %i.m, ptr %i.af, align 1, !tbaa !66
  %i.ag = add nuw nsw i64 %.02036.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..critedge25_crit_edge.split.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !7

..critedge25_crit_edge.split.i.unr-lcssa:         ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %..critedge25_crit_edge.split.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..critedge25_crit_edge.split.i.unr-lcssa, %.preheader.i
  %.02036.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.ag, %..critedge25_crit_edge.split.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !110
  %i.ai = mul i64 %i.ah, %i.n
  %i.aj = or i64 %.02036.i.epil.init, %.038.i
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = or disjoint i32 %i.h, %i.al
  %i.an = trunc i32 %i.am to i8
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.ap = getelementptr i8, ptr %i.ao, i64 %.02036.i.epil.init
  %i.aq = getelementptr i8, ptr %i.ap, i64 %1
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ai
  store i8 %i.an, ptr %i.ar, align 1, !tbaa !66
  br label %..critedge25_crit_edge.split.i

..critedge25_crit_edge.split.i:                   ; preds = %..critedge25_crit_edge.split.i.unr-lcssa, %.epil.preheader
  %i.as = add nuw nsw i64 %.038.i, 1              ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.as, %umax48.i
  br i1 %exitcond45.not.i, label %_ZN3jxl15AcStrategyImage16SetNoBoundsCheckEmmNS_14AcStrategyTypeEb.exit, label %.preheader.i, !llvm.loop !6

end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeE:bb.a
  br i1 %.not.us.us, label %.split82.us, label %.split.us.split.us

.split.us.split:                                  ; preds = %.split.us, %.thread61.us
  %.077.us = phi double [ %.366.us, %.thread61.us ], [ 1.000000e+30, %.split.us ] ; 3 uses
  %.048.idx76.us = phi i64 [ %.048.add.us, %.thread61.us ], [ 0, %.split.us ] ; 2 uses
  %.048.ptr78.us = getelementptr inbounds nuw i8, ptr @_ZZN3jxl6N_AVX220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeEE14kTransforms8x8, i64 %.048.idx76.us ; 3 uses
  %.sroa.016.0.copyload.us = load i32, ptr %.048.ptr78.us, align 16, !tbaa !105 ; 3 uses
  %.sroa.10.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.048.ptr78.us, i64 4
  %.sroa.10.0.copyload.us = load i32, ptr %.sroa.10.0..sroa_idx.us, align 4, !tbaa !106
  %i.t = icmp slt i32 %.sroa.10.0.copyload.us, %2
  br i1 %i.t, label %.thread61.us, label %bb.e

bb.e:                                             ; preds = %.split.us.split
  %.sroa.11.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.048.ptr78.us, i64 8
  %.sroa.11.0.copyload.us = load double, ptr %.sroa.11.0..sroa_idx.us, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %.sroa.059.0.insert.ext.us = zext i32 %.sroa.016.0.copyload.us to i64
  %.sroa.059.0.insert.insert.us = or disjoint i64 %.sroa.059.0.insert.ext.us, 4294967296
  %i.u = trunc nuw nsw i64 %.sroa.059.0.insert.insert.us to i40
  store i40 %i.u, ptr %12, align 8
  %i.v = fdiv double %.sroa.11.0.copyload.us, 8.000000e-01
  %i.w = fptrunc double %i.v to float             ; 2 uses
  %i.x = icmp ugt i32 %.sroa.016.0.copyload.us, 2
  %i.y = tail call float @llvm.fmuladd.f32(float %.047, float 5.000000e-01, float %i.w)
  %spec.select = select i1 %i.x, float %i.y, float %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.z = call i32 @_ZN3jxl6N_AVX215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %12, float noundef %spec.select, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.split80.us

bb.f:                                             ; preds = %bb.e
  %i.ab = load float, ptr %i.a, align 4, !tbaa !69
  %i.ac = fpext float %i.ab to double             ; 2 uses
  %i.ad = fcmp ogt double %.077.us, %i.ac
  br i1 %i.ad, label %bb.g, label %.thread67.us

bb.g:                                             ; preds = %bb.f
  store i32 %.sroa.016.0.copyload.us, ptr %11, align 4, !tbaa !105
  br label %.thread67.us

.thread67.us:                                     ; preds = %bb.g, %bb.f
  %.2.ph.us = phi double [ %i.ac, %bb.g ], [ %.077.us, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %.thread61.us

.thread61.us:                                     ; preds = %.thread67.us, %.split.us.split
  %.366.us = phi double [ %.2.ph.us, %.thread67.us ], [ %.077.us, %.split.us.split ] ; 2 uses
  %.048.add.us = add nuw nsw i64 %.048.idx76.us, 16 ; 2 uses
  %.not.us = icmp eq i64 %.048.add.us, 160
  br i1 %.not.us, label %.split82.us, label %.split.us.split

.split:                                           ; preds = %bb.a
  br i1 %i.c, label %.split.split, label %.split.split.us

.split.split.us:                                  ; preds = %.split, %.thread61.us98
  %.077.us85 = phi double [ %.366.us99, %.thread61.us98 ], [ 1.000000e+30, %.split ] ; 3 uses
  %.048.idx76.us86 = phi i64 [ %.048.add.us100, %.thread61.us98 ], [ 0, %.split ] ; 2 uses
  %.048.ptr78.us84 = getelementptr inbounds nuw i8, ptr @_ZZN3jxl6N_AVX220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeEE14kTransforms8x8, i64 %.048.idx76.us86 ; 3 uses
  %.sroa.016.0.copyload.us87 = load i32, ptr %.048.ptr78.us84, align 16, !tbaa !105 ; 3 uses
  %.sroa.10.0..sroa_idx.us88 = getelementptr inbounds nuw i8, ptr %.048.ptr78.us84, i64 4
  %.sroa.10.0.copyload.us89 = load i32, ptr %.sroa.10.0..sroa_idx.us88, align 4, !tbaa !106
  %i.ae = icmp slt i32 %.sroa.10.0.copyload.us89, %2
  br i1 %i.ae, label %.thread61.us98, label %bb.h

bb.h:                                             ; preds = %.split.split.us
  %.sroa.11.0..sroa_idx.us90 = getelementptr inbounds nuw i8, ptr %.048.ptr78.us84, i64 8
  %.sroa.11.0.copyload.us91 = load double, ptr %.sroa.11.0..sroa_idx.us90, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %.sroa.059.0.insert.ext.us92 = zext i32 %.sroa.016.0.copyload.us87 to i64
  %.sroa.059.0.insert.insert.us93 = or disjoint i64 %.sroa.059.0.insert.ext.us92, 4294967296
  %i.af = trunc nuw nsw i64 %.sroa.059.0.insert.insert.us93 to i40
  store i40 %i.af, ptr %12, align 8
  %i.ag = fdiv double %.sroa.11.0.copyload.us91, 8.000000e-01
  %i.ah = fptrunc double %i.ag to float           ; 2 uses
  %i.ai = add i32 %.sroa.016.0.copyload.us87, -1
  %or.cond.us = icmp ult i32 %i.ai, 2
  br i1 %or.cond.us, label %.thread.us, label %bb.i

.thread.us:                                       ; preds = %bb.h
  %i.aj = tail call noundef float @powf(float noundef %i.j, float noundef 2.000000e+00) #50
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float -4.000000e-01, float %i.ah)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.us
  %.150.us95 = phi float [ %i.ak, %.thread.us ], [ %i.ah, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.al = call i32 @_ZN3jxl6N_AVX215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %12, float noundef %.150.us95, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %.split80.us

bb.j:                                             ; preds = %bb.i
  %i.an = load float, ptr %i.a, align 4, !tbaa !69
  %i.ao = fpext float %i.an to double             ; 2 uses
  %i.ap = fcmp ogt double %.077.us85, %i.ao
  br i1 %i.ap, label %bb.k, label %.thread67.us96

bb.k:                                             ; preds = %bb.j
  store i32 %.sroa.016.0.copyload.us87, ptr %11, align 4, !tbaa !105
  br label %.thread67.us96

.thread67.us96:                                   ; preds = %bb.k, %bb.j
  %.2.ph.us97 = phi double [ %i.ao, %bb.k ], [ %.077.us85, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %.thread61.us98

.thread61.us98:                                   ; preds = %.thread67.us96, %.split.split.us
  %.366.us99 = phi double [ %.2.ph.us97, %.thread67.us96 ], [ %.077.us85, %.split.split.us ] ; 2 uses
  %.048.add.us100 = add nuw nsw i64 %.048.idx76.us86, 16 ; 2 uses
  %.not.us102 = icmp eq i64 %.048.add.us100, 160
  br i1 %.not.us102, label %.split82.us, label %.split.split.us

.split.split:                                     ; preds = %.split, %.thread61
  %.077 = phi double [ %.366, %.thread61 ], [ 1.000000e+30, %.split ] ; 3 uses
  %.048.idx76 = phi i64 [ %.048.add, %.thread61 ], [ 0, %.split ] ; 2 uses
  %.048.ptr78 = getelementptr inbounds nuw i8, ptr @_ZZN3jxl6N_AVX220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeEE14kTransforms8x8, i64 %.048.idx76 ; 3 uses
  %.sroa.016.0.copyload = load i32, ptr %.048.ptr78, align 16, !tbaa !105 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.048.ptr78, i64 4
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !106
  %i.aq = icmp slt i32 %.sroa.10.0.copyload, %2
  br i1 %i.aq, label %.thread61, label %bb.l

bb.l:                                             ; preds = %.split.split
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.048.ptr78, i64 8
  %.sroa.11.0.copyload = load double, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %.sroa.059.0.insert.ext = zext i32 %.sroa.016.0.copyload to i64
  %.sroa.059.0.insert.insert = or disjoint i64 %.sroa.059.0.insert.ext, 4294967296
  %i.ar = trunc nuw nsw i64 %.sroa.059.0.insert.insert to i40
  store i40 %i.ar, ptr %12, align 8
  %i.as = fdiv double %.sroa.11.0.copyload, 8.000000e-01
  %i.at = fptrunc double %i.as to float           ; 3 uses
  %i.au = add i32 %.sroa.016.0.copyload, -1
  %or.cond = icmp ult i32 %i.au, 2
  br i1 %or.cond, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.av = tail call noundef float @powf(float noundef %i.j, float noundef 2.000000e+00) #50
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float -4.000000e-01, float %i.at)
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp ugt i32 %.sroa.016.0.copyload, 2
  %i.ay = tail call float @llvm.fmuladd.f32(float %.047, float 5.000000e-01, float %i.at)
  %spec.select109 = select i1 %i.ax, float %i.ay, float %i.at
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread
  %.150 = phi float [ %spec.select109, %bb.m ], [ %i.aw, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.az = call i32 @_ZN3jxl6N_AVX215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %12, float noundef %.150, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.o, label %.split80.us

bb.o:                                             ; preds = %bb.n
  %i.bb = load float, ptr %i.a, align 4, !tbaa !69
  %i.bc = fpext float %i.bb to double             ; 2 uses
  %i.bd = fcmp ogt double %.077, %i.bc
  br i1 %i.bd, label %bb.p, label %.thread67

bb.p:                                             ; preds = %bb.o
  store i32 %.sroa.016.0.copyload, ptr %11, align 4, !tbaa !105
  br label %.thread67

.thread67:                                        ; preds = %bb.o, %bb.p
  %.2.ph = phi double [ %i.bc, %bb.p ], [ %.077, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %.thread61

.thread61:                                        ; preds = %.split.split, %.thread67
  %.366 = phi double [ %.2.ph, %.thread67 ], [ %.077, %.split.split ] ; 2 uses
  %.048.add = add nuw nsw i64 %.048.idx76, 16     ; 2 uses
  %.not = icmp eq i64 %.048.add, 160
  br i1 %.not, label %.split82.us, label %.split.split

.split80.us:                                      ; preds = %bb.b, %bb.e, %bb.i, %bb.n
  %.us-phi = phi i32 [ %i.az, %bb.n ], [ %i.al, %bb.i ], [ %i.z, %bb.e ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %bb.q

.split82.us:                                      ; preds = %.thread61.us.us, %.thread61.us, %.thread61.us98, %.thread61
  %.us-phi83 = phi double [ %.366, %.thread61 ], [ %.366.us99, %.thread61.us98 ], [ %.366.us, %.thread61.us ], [ %.366.us.us, %.thread61.us.us ]
  %i.be = fptrunc double %.us-phi83 to float
  store float %i.be, ptr %10, align 4, !tbaa !69
  br label %bb.q

bb.q:                                             ; preds = %.split80.us, %.split82.us
  %.sroa.0.3 = phi i32 [ 0, %.split82.us ], [ %.us-phi, %.split80.us ]
  ret i32 %.sroa.0.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN3jxl6N_AVX211TryMergeAcsENS_14AcStrategyTypeEmmmmRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEfhPhPfSA_SA_Pj(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %5, ptr noalias nofree noundef readonly captures(none) %6, ptr noalias nofree noundef readonly captures(none) %7, float noundef %8, i8 noundef zeroext %9, ptr nofree noundef captures(none) %10, ptr noalias nofree noundef captures(none) %11, ptr noundef %12, ptr noundef %13, ptr nofree readnone captures(none) %14) local_unnamed_addr #11 {
.preheader76.us.preheader:
  %15 = alloca %"class.jxl::AcStrategy", align 8  ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %.sroa.071.0.insert.ext = zext i32 %0 to i64
  %.sroa.071.0.insert.insert = or disjoint i64 %.sroa.071.0.insert.ext, 4294967296
  %i.b = trunc nuw nsw i64 %.sroa.071.0.insert.insert to i40
  store i40 %i.b, ptr %15, align 8
  %i.c = zext i32 %0 to i64                       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66
  %i.h = tail call i8 @llvm.umax.i8(i8 %i.g, i8 1)
  %umax = zext i8 %i.h to i64
  %i.i = tail call i8 @llvm.umax.i8(i8 %i.e, i8 1) ; 2 uses
  %umax99 = zext i8 %i.i to i64                   ; 3 uses
  br label %.preheader76.us

.preheader76.us:                                  ; preds = %.preheader76.us.preheader, %..critedge_crit_edge.us
  %.087.us = phi float [ %i.r, %..critedge_crit_edge.us ], [ 0.000000e+00, %.preheader76.us.preheader ]
  %.05786.us = phi i64 [ %i.t, %..critedge_crit_edge.us ], [ 0, %.preheader76.us.preheader ] ; 2 uses
  %i.j = add i64 %.05786.us, %4
  %i.k = shl i64 %i.j, 3
  %i.l = add i64 %i.k, %3
  br label %bb.a

bb.a:                                             ; preds = %.preheader76.us, %bb.b
  %.184.us = phi float [ %.087.us, %.preheader76.us ], [ %i.r, %bb.b ]
  %.06283.us = phi i64 [ 0, %.preheader76.us ], [ %i.s, %bb.b ] ; 2 uses
  %i.m = add i64 %i.l, %.06283.us                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !66
  %.not.us = icmp ult i8 %i.o, %9
  br i1 %.not.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.m
  %i.q = load float, ptr %i.p, align 4, !tbaa !69
  %i.r = fadd float %.184.us, %i.q                ; 3 uses
  %i.s = add nuw nsw i64 %.06283.us, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %umax
  br i1 %exitcond.not, label %..critedge_crit_edge.us, label %bb.a, !llvm.loop !2077

..critedge_crit_edge.us:                          ; preds = %bb.b
  %i.t = add nuw nsw i64 %.05786.us, 1            ; 2 uses
  %exitcond100.not = icmp eq i64 %i.t, %umax99
  br i1 %exitcond100.not, label %.thread, label %.preheader76.us, !llvm.loop !2078

.thread:                                          ; preds = %..critedge_crit_edge.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.u = add i64 %3, %1                           ; 2 uses
  %i.v = shl i64 %i.u, 3
  %i.w = add i64 %4, %2                           ; 2 uses
  %i.x = shl i64 %i.w, 3
  %i.y = call i32 @_ZN3jxl6N_AVX215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %15, float noundef %8, i64 noundef %i.v, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %6, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.aa = load float, ptr %i.a, align 4, !tbaa !69 ; 2 uses
  %i.ab = fcmp ult float %i.aa, %i.r
  br i1 %i.ab, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.c
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !66  ; 2 uses
  %i.ae = shl i64 %3, 2
  %i.af = tail call i8 @llvm.umax.i8(i8 %i.ad, i8 1)
  %umax101 = zext i8 %i.af to i64                 ; 4 uses
  %i.ag = shl nuw nsw i64 %umax101, 2             ; 3 uses
  %invariant.gep110 = getelementptr i8, ptr %10, i64 %3 ; 3 uses
  %invariant.gep111 = getelementptr i8, ptr %11, i64 %i.ae ; 3 uses
  %xtraiter = and i64 %umax99, 1
  %i.ah = shl nuw i64 1, %i.c
  %i.ai = and i64 %i.ah, 258703
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %.preheader.preheader.new, label %.preheader.epil.preheader

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %umax99, 254
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.05994 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.as, %.preheader ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.aj = add i64 %4, %.05994
  %i.ak = shl i64 %i.aj, 3
  %gep = getelementptr i8, ptr %invariant.gep110, i64 %i.ak
  %i.al = add i64 %4, %.05994
  %i.am = shl i64 %i.al, 5
  %gep112 = getelementptr i8, ptr %invariant.gep111, i64 %i.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep112, i8 0, i64 %i.ag, i1 false), !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %gep, i8 %9, i64 %umax101, i1 false), !tbaa !66
  %i.an = or disjoint i64 %.05994, 1              ; 2 uses
  %i.ao = add i64 %4, %i.an
  %i.ap = shl i64 %i.ao, 3
  %gep.1 = getelementptr i8, ptr %invariant.gep110, i64 %i.ap
  %i.aq = add i64 %4, %i.an
  %i.ar = shl i64 %i.aq, 5
  %gep112.1 = getelementptr i8, ptr %invariant.gep111, i64 %i.ar
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep112.1, i8 0, i64 %i.ag, i1 false), !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %gep.1, i8 %9, i64 %umax101, i1 false), !tbaa !66
  %i.as = add nuw nsw i64 %.05994, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge95.split.unr-lcssa, label %.preheader, !llvm.loop !2079

._crit_edge95.split.unr-lcssa:                    ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge95.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge95.split.unr-lcssa, %.preheader.preheader
  %.05994.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.as, %._crit_edge95.split.unr-lcssa ] ; 2 uses
  %lcmp.mod128 = trunc i8 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.at = add i64 %4, %.05994.epil.init
  %i.au = shl i64 %i.at, 3
  %gep.epil = getelementptr i8, ptr %invariant.gep110, i64 %i.au
  %i.av = add i64 %4, %.05994.epil.init
  %i.aw = shl i64 %i.av, 5
  %gep112.epil = getelementptr i8, ptr %invariant.gep111, i64 %i.aw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep112.epil, i8 0, i64 %i.ag, i1 false), !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %gep.epil, i8 %9, i64 %umax101, i1 false), !tbaa !66
  br label %._crit_edge95.split

._crit_edge95.split:                              ; preds = %._crit_edge95.split.unr-lcssa, %.preheader.epil.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.az = shl nuw i32 %0, 1                       ; 3 uses
  %i.ba = tail call i8 @llvm.umax.i8(i8 %i.ad, i8 1)
  %umax46.i.i = zext i8 %i.ba to i64              ; 6 uses
  %i.bb = tail call i8 @llvm.umax.i8(i8 %i.e, i8 1)
  %umax48.i.i = zext i8 %i.bb to i64
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !110
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !111
  %invariant.gep = getelementptr i8, ptr %i.bd, i64 %i.u
  %i.be = shl nuw i64 1, %i.c
  %i.bf = and i64 %i.be, 259551
  %min.iters.check.not = icmp eq i64 %i.bf, 0
  %i.bg = shl nuw i64 1, %i.c
  %i.bh = and i64 %i.bg, 6291455
  %min.iters.check113.not = icmp eq i64 %i.bh, 0
  %i.bi = and i64 %umax46.i.i, 12
  %n.vec = and i64 %umax46.i.i, 240               ; 4 uses
  %broadcast.splatinsert114 = insertelement <16 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat115 = shufflevector <16 x i32> %broadcast.splatinsert114, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %umax46.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  %n.vec116 = and i64 %umax46.i.i, 252            ; 3 uses
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n127 = icmp eq i64 %n.vec116, %umax46.i.i
  br label %iter.check

iter.check:                                       ; preds = %..critedge25_crit_edge.split.i.i, %._crit_edge95.split
  %.038.i.i = phi i64 [ %i.cf, %..critedge25_crit_edge.split.i.i ], [ 0, %._crit_edge95.split ] ; 5 uses
  %i.bj = add i64 %.038.i.i, %i.w
  %i.bk = mul i64 %i.bc, %i.bj
  %invariant.gep96 = getelementptr i8, ptr %invariant.gep, i64 %i.bk ; 3 uses
  br i1 %min.iters.check.not, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check113.not, label %vector.ph, label %vec.epilog.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.038.i.i, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bl = or <16 x i64> %vec.ind, %broadcast.splat
  %i.bm = icmp eq <16 x i64> %i.bl, zeroinitializer
  %i.bn = zext <16 x i1> %i.bm to <16 x i32>
  %i.bo = or disjoint <16 x i32> %broadcast.splat115, %i.bn
  %i.bp = trunc <16 x i32> %i.bo to <16 x i8>
  %i.bq = getelementptr i8, ptr %invariant.gep96, i64 %index
  store <16 x i8> %i.bp, ptr %i.bq, align 1, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !2080

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !114

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert117 = insertelement <4 x i64> poison, i64 %.038.i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x i64> %broadcast.splatinsert117, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat122 = shufflevector <4 x i64> %broadcast.splatinsert121, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat122, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind124 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next126, %vec.epilog.vector.body ] ; 2 uses
  %i.bs = or <4 x i64> %vec.ind124, %broadcast.splat118
  %i.bt = icmp eq <4 x i64> %i.bs, zeroinitializer
  %i.bu = zext <4 x i1> %i.bt to <4 x i32>
  %i.bv = or disjoint <4 x i32> %broadcast.splat120, %i.bu
  %i.bw = trunc <4 x i32> %i.bv to <4 x i8>
  %i.bx = getelementptr i8, ptr %invariant.gep96, i64 %index123
  store <4 x i8> %i.bw, ptr %i.bx, align 1, !tbaa !66
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %vec.ind.next126 = add nuw nsw <4 x i64> %vec.ind124, splat (i64 4)
  %i.by = icmp eq i64 %index.next125, %n.vec116
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2081

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02036.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec116, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.02036.i.i = phi i64 [ %i.ce, %vec.epilog.scalar.ph ], [ %.02036.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bz = or i64 %.02036.i.i, %.038.i.i
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = or disjoint i32 %i.az, %i.cb
  %i.cd = trunc i32 %i.cc to i8
  %gep97 = getelementptr i8, ptr %invariant.gep96, i64 %.02036.i.i
  store i8 %i.cd, ptr %gep97, align 1, !tbaa !66
  %i.ce = add nuw nsw i64 %.02036.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %umax46.i.i
  br i1 %exitcond.not.i.i, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph, !llvm.loop !2082

..critedge25_crit_edge.split.i.i:                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cf = add nuw nsw i64 %.038.i.i, 1            ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %i.cf, %umax48.i.i
  br i1 %exitcond45.not.i.i, label %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit, label %iter.check, !llvm.loop !6

_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit: ; preds = %..critedge25_crit_edge.split.i.i
  %.idx = shl i64 %4, 5
  %i.cg = getelementptr i8, ptr %11, i64 %.idx
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %3
  store float %i.aa, ptr %i.ch, align 4, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit
  %.sroa.0.3 = phi i32 [ 0, %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit ], [ 0, %bb.c ], [ %i.y, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.d
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  ret i32 %.sroa.0.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 4, 19) i32 @_ZN3jxl6N_AVX29AcsSquareEm(i64 noundef %0) local_unnamed_addr #12 {
bb.a:
  %switch.selectcmp = icmp eq i64 %0, 4
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 18
  %switch.selectcmp4 = icmp eq i64 %0, 2
  %switch.select5 = select i1 %switch.selectcmp4, i32 4, i32 %switch.select
  ret i32 %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 6, 20) i32 @_ZN3jxl6N_AVX216AcsVerticalSplitEm(i64 noundef %0) local_unnamed_addr #12 {
bb.a:
  %switch.selectcmp = icmp eq i64 %0, 4
  %switch.select = select i1 %switch.selectcmp, i32 10, i32 19
  %switch.selectcmp4 = icmp eq i64 %0, 2
  %switch.select5 = select i1 %switch.selectcmp4, i32 6, i32 %switch.select
  ret i32 %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 7, 21) i32 @_ZN3jxl6N_AVX218AcsHorizontalSplitEm(i64 noundef %0) local_unnamed_addr #12 {
bb.a:
  %switch.selectcmp = icmp eq i64 %0, 4
  %switch.select = select i1 %switch.selectcmp, i32 11, i32 20
  %switch.selectcmp4 = icmp eq i64 %0, 2
  %switch.select5 = select i1 %switch.selectcmp4, i32 7, i32 %switch.select
  ret i32 %switch.select5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_AVX235FindBestFirstLevelDivisionForSquareEmbmmmmRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEffPfS8_S8_Pj(i64 noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %6, ptr noalias nofree noundef readonly captures(none) %7, ptr noalias noundef %8, float noundef %9, float noundef %10, ptr noalias nofree noundef captures(none) %11, ptr noundef %12, ptr noundef %13, ptr nofree readnone captures(none) %14) local_unnamed_addr #11 {
bb.a:
  %15 = alloca %"class.jxl::AcStrategy", align 8  ; 5 uses
  %16 = alloca %"class.jxl::AcStrategy", align 8  ; 5 uses
  %17 = alloca %"class.jxl::AcStrategy", align 8  ; 4 uses
  %i.a = alloca [2 x [2 x float]], align 16       ; 8 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = lshr i64 %0, 1                           ; 8 uses
  %switch.selectcmp.i = icmp eq i64 %0, 4         ; 3 uses
  %switch.select.i = select i1 %switch.selectcmp.i, i32 10, i32 19
  %switch.selectcmp4.i = icmp eq i64 %0, 2        ; 3 uses
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 6, i32 %switch.select.i ; 5 uses
  %switch.select.i232 = select i1 %switch.selectcmp.i, i32 11, i32 20
  %switch.select5.i234 = select i1 %switch.selectcmp4.i, i32 7, i32 %switch.select.i232 ; 5 uses
  %switch.select.i236 = select i1 %switch.selectcmp.i, i32 5, i32 18
  %switch.select5.i238 = select i1 %switch.selectcmp4.i, i32 4, i32 %switch.select.i236 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %.sroa.0430.0.insert.ext = zext nneg i32 %switch.select5.i to i64 ; 7 uses
  %.sroa.0430.0.insert.insert = or disjoint i64 %.sroa.0430.0.insert.ext, 4294967296
  %i.h = trunc nuw nsw i64 %.sroa.0430.0.insert.insert to i40
  store i40 %i.h, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #51
  %.sroa.0423.0.insert.ext = zext nneg i32 %switch.select5.i234 to i64 ; 7 uses
  %.sroa.0423.0.insert.insert = or disjoint i64 %.sroa.0423.0.insert.ext, 4294967296
  %i.i = trunc nuw nsw i64 %.sroa.0423.0.insert.insert to i40
  store i40 %i.i, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #51
  %.sroa.0421.0.insert.ext = zext nneg i32 %switch.select5.i238 to i64 ; 4 uses
  %.sroa.0421.0.insert.insert = or disjoint i64 %.sroa.0421.0.insert.ext, 4294967296
  %i.j = trunc nuw nsw i64 %.sroa.0421.0.insert.insert to i40
  store i40 %i.j, ptr %17, align 8
  %i.k = add i64 %5, %3                           ; 28 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !65   ; 9 uses
  %i.p = mul i64 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 64) ]
  %i.r = add i64 %i.k, %i.g                       ; 5 uses
  %i.s = mul i64 %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.t, i64 64) ]
  %i.u = add i64 %4, %2                           ; 29 uses
  %i.v = add i64 %i.u, %0                         ; 7 uses
  %i.w = load i32, ptr %8, align 8, !tbaa !62
  %i.x = zext i32 %i.w to i64                     ; 6 uses
  %.not.i = icmp ult i64 %i.u, %i.x               ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeE:bb.a
.split.us.split:                                  ; preds = %.split.us, %.thread61.us
  %.077.us = phi double [ %.366.us, %.thread61.us ], [ 1.000000e+30, %.split.us ] ; 3 uses
  %.048.idx76.us = phi i64 [ %.048.add.us, %.thread61.us ], [ 0, %.split.us ] ; 2 uses
  %.048.ptr78.us = getelementptr inbounds nuw i8, ptr @_ZZN3jxl6N_SSE220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeEE14kTransforms8x8, i64 %.048.idx76.us ; 3 uses
  %.sroa.016.0.copyload.us = load i32, ptr %.048.ptr78.us, align 16, !tbaa !105 ; 3 uses
  %.sroa.10.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.048.ptr78.us, i64 4
  %.sroa.10.0.copyload.us = load i32, ptr %.sroa.10.0..sroa_idx.us, align 4, !tbaa !106
  %i.t = icmp slt i32 %.sroa.10.0.copyload.us, %2
  br i1 %i.t, label %.thread61.us, label %bb.e

bb.e:                                             ; preds = %.split.us.split
  %.sroa.11.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.048.ptr78.us, i64 8
  %.sroa.11.0.copyload.us = load double, ptr %.sroa.11.0..sroa_idx.us, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %.sroa.059.0.insert.ext.us = zext i32 %.sroa.016.0.copyload.us to i64
  %.sroa.059.0.insert.insert.us = or disjoint i64 %.sroa.059.0.insert.ext.us, 4294967296
  %i.u = trunc nuw nsw i64 %.sroa.059.0.insert.insert.us to i40
  store i40 %i.u, ptr %12, align 8
  %i.v = fdiv double %.sroa.11.0.copyload.us, 8.000000e-01
  %i.w = fptrunc double %i.v to float             ; 2 uses
  %i.x = icmp ugt i32 %.sroa.016.0.copyload.us, 2
  %i.y = tail call float @llvm.fmuladd.f32(float %.047, float 5.000000e-01, float %i.w)
  %.150.us = select i1 %i.x, float %i.y, float %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.z = call i32 @_ZN3jxl6N_SSE215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %12, float noundef %.150.us, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.split80.us

bb.f:                                             ; preds = %bb.e
  %i.ab = load float, ptr %i.a, align 4, !tbaa !69
  %i.ac = fpext float %i.ab to double             ; 2 uses
  %i.ad = fcmp ogt double %.077.us, %i.ac
  br i1 %i.ad, label %bb.g, label %.thread67.us

bb.g:                                             ; preds = %bb.f
  store i32 %.sroa.016.0.copyload.us, ptr %11, align 4, !tbaa !105
  br label %.thread67.us

.thread67.us:                                     ; preds = %bb.g, %bb.f
  %.2.ph.us = phi double [ %i.ac, %bb.g ], [ %.077.us, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %.thread61.us

.thread61.us:                                     ; preds = %.thread67.us, %.split.us.split
  %.366.us = phi double [ %.2.ph.us, %.thread67.us ], [ %.077.us, %.split.us.split ] ; 2 uses
  %.048.add.us = add nuw nsw i64 %.048.idx76.us, 16 ; 2 uses
  %.not.us = icmp eq i64 %.048.add.us, 160
  br i1 %.not.us, label %.split82.us, label %.split.us.split

.split:                                           ; preds = %bb.a
  br i1 %i.c, label %.split.split, label %.split.split.us

.split.split.us:                                  ; preds = %.split, %.thread61.us98
  %.077.us85 = phi double [ %.366.us99, %.thread61.us98 ], [ 1.000000e+30, %.split ] ; 3 uses
  %.048.idx76.us86 = phi i64 [ %.048.add.us100, %.thread61.us98 ], [ 0, %.split ] ; 2 uses
  %.048.ptr78.us84 = getelementptr inbounds nuw i8, ptr @_ZZN3jxl6N_SSE220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeEE14kTransforms8x8, i64 %.048.idx76.us86 ; 3 uses
  %.sroa.016.0.copyload.us87 = load i32, ptr %.048.ptr78.us84, align 16, !tbaa !105 ; 3 uses
  %.sroa.10.0..sroa_idx.us88 = getelementptr inbounds nuw i8, ptr %.048.ptr78.us84, i64 4
  %.sroa.10.0.copyload.us89 = load i32, ptr %.sroa.10.0..sroa_idx.us88, align 4, !tbaa !106
  %i.ae = icmp slt i32 %.sroa.10.0.copyload.us89, %2
  br i1 %i.ae, label %.thread61.us98, label %bb.h

bb.h:                                             ; preds = %.split.split.us
  %.sroa.11.0..sroa_idx.us90 = getelementptr inbounds nuw i8, ptr %.048.ptr78.us84, i64 8
  %.sroa.11.0.copyload.us91 = load double, ptr %.sroa.11.0..sroa_idx.us90, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %.sroa.059.0.insert.ext.us92 = zext i32 %.sroa.016.0.copyload.us87 to i64
  %.sroa.059.0.insert.insert.us93 = or disjoint i64 %.sroa.059.0.insert.ext.us92, 4294967296
  %i.af = trunc nuw nsw i64 %.sroa.059.0.insert.insert.us93 to i40
  store i40 %i.af, ptr %12, align 8
  %i.ag = fdiv double %.sroa.11.0.copyload.us91, 8.000000e-01
  %i.ah = fptrunc double %i.ag to float           ; 2 uses
  %i.ai = add i32 %.sroa.016.0.copyload.us87, -1
  %or.cond.us = icmp ult i32 %i.ai, 2
  br i1 %or.cond.us, label %.thread.us, label %bb.i

.thread.us:                                       ; preds = %bb.h
  %i.aj = tail call noundef float @powf(float noundef %i.j, float noundef 2.000000e+00) #50
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float -4.000000e-01, float %i.ah)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.us
  %.150.us95 = phi float [ %i.ak, %.thread.us ], [ %i.ah, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.al = call i32 @_ZN3jxl6N_SSE215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %12, float noundef %.150.us95, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %.split80.us

bb.j:                                             ; preds = %bb.i
  %i.an = load float, ptr %i.a, align 4, !tbaa !69
  %i.ao = fpext float %i.an to double             ; 2 uses
  %i.ap = fcmp ogt double %.077.us85, %i.ao
  br i1 %i.ap, label %bb.k, label %.thread67.us96

bb.k:                                             ; preds = %bb.j
  store i32 %.sroa.016.0.copyload.us87, ptr %11, align 4, !tbaa !105
  br label %.thread67.us96

.thread67.us96:                                   ; preds = %bb.k, %bb.j
  %.2.ph.us97 = phi double [ %i.ao, %bb.k ], [ %.077.us85, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %.thread61.us98

.thread61.us98:                                   ; preds = %.thread67.us96, %.split.split.us
  %.366.us99 = phi double [ %.2.ph.us97, %.thread67.us96 ], [ %.077.us85, %.split.split.us ] ; 2 uses
  %.048.add.us100 = add nuw nsw i64 %.048.idx76.us86, 16 ; 2 uses
  %.not.us102 = icmp eq i64 %.048.add.us100, 160
  br i1 %.not.us102, label %.split82.us, label %.split.split.us

.split.split:                                     ; preds = %.split, %.thread61
  %.077 = phi double [ %.366, %.thread61 ], [ 1.000000e+30, %.split ] ; 3 uses
  %.048.idx76 = phi i64 [ %.048.add, %.thread61 ], [ 0, %.split ] ; 2 uses
  %.048.ptr78 = getelementptr inbounds nuw i8, ptr @_ZZN3jxl6N_SSE220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeEE14kTransforms8x8, i64 %.048.idx76 ; 3 uses
  %.sroa.016.0.copyload = load i32, ptr %.048.ptr78, align 16, !tbaa !105 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.048.ptr78, i64 4
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !106
  %i.aq = icmp slt i32 %.sroa.10.0.copyload, %2
  br i1 %i.aq, label %.thread61, label %bb.l

bb.l:                                             ; preds = %.split.split
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.048.ptr78, i64 8
  %.sroa.11.0.copyload = load double, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %.sroa.059.0.insert.ext = zext i32 %.sroa.016.0.copyload to i64
  %.sroa.059.0.insert.insert = or disjoint i64 %.sroa.059.0.insert.ext, 4294967296
  %i.ar = trunc nuw nsw i64 %.sroa.059.0.insert.insert to i40
  store i40 %i.ar, ptr %12, align 8
  %i.as = fdiv double %.sroa.11.0.copyload, 8.000000e-01
  %i.at = fptrunc double %i.as to float           ; 3 uses
  %i.au = add i32 %.sroa.016.0.copyload, -1
  %or.cond = icmp ult i32 %i.au, 2
  br i1 %or.cond, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.av = tail call noundef float @powf(float noundef %i.j, float noundef 2.000000e+00) #50
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float -4.000000e-01, float %i.at)
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp ugt i32 %.sroa.016.0.copyload, 2
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = tail call float @llvm.fmuladd.f32(float %.047, float 5.000000e-01, float %i.at)
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.m, %bb.n
  %.150 = phi float [ %i.ay, %bb.n ], [ %i.aw, %.thread ], [ %i.at, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.az = call i32 @_ZN3jxl6N_SSE215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %12, float noundef %.150, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.p, label %.split80.us

bb.p:                                             ; preds = %bb.o
  %i.bb = load float, ptr %i.a, align 4, !tbaa !69
  %i.bc = fpext float %i.bb to double             ; 2 uses
  %i.bd = fcmp ogt double %.077, %i.bc
  br i1 %i.bd, label %bb.q, label %.thread67

bb.q:                                             ; preds = %bb.p
  store i32 %.sroa.016.0.copyload, ptr %11, align 4, !tbaa !105
  br label %.thread67

.thread67:                                        ; preds = %bb.p, %bb.q
  %.2.ph = phi double [ %i.bc, %bb.q ], [ %.077, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %.thread61

.thread61:                                        ; preds = %.split.split, %.thread67
  %.366 = phi double [ %.2.ph, %.thread67 ], [ %.077, %.split.split ] ; 2 uses
  %.048.add = add nuw nsw i64 %.048.idx76, 16     ; 2 uses
  %.not = icmp eq i64 %.048.add, 160
  br i1 %.not, label %.split82.us, label %.split.split

.split80.us:                                      ; preds = %bb.b, %bb.e, %bb.i, %bb.o
  %.us-phi = phi i32 [ %i.az, %bb.o ], [ %i.al, %bb.i ], [ %i.z, %bb.e ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %bb.r

.split82.us:                                      ; preds = %.thread61.us.us, %.thread61.us, %.thread61.us98, %.thread61
  %.us-phi83 = phi double [ %.366, %.thread61 ], [ %.366.us99, %.thread61.us98 ], [ %.366.us, %.thread61.us ], [ %.366.us.us, %.thread61.us.us ]
  %i.be = fptrunc double %.us-phi83 to float
  store float %i.be, ptr %10, align 4, !tbaa !69
  br label %bb.r

bb.r:                                             ; preds = %.split80.us, %.split82.us
  %.sroa.0.3 = phi i32 [ 0, %.split82.us ], [ %.us-phi, %.split80.us ]
  ret i32 %.sroa.0.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN3jxl6N_SSE211TryMergeAcsENS_14AcStrategyTypeEmmmmRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEfhPhPfSA_SA_Pj(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %5, ptr noalias nofree noundef readonly captures(none) %6, ptr noalias nofree noundef readonly captures(none) %7, float noundef %8, i8 noundef zeroext %9, ptr nofree noundef captures(none) %10, ptr noalias nofree noundef captures(none) %11, ptr noundef %12, ptr noundef %13, ptr nofree readnone captures(none) %14) local_unnamed_addr #6 {
.preheader76.us.preheader:
  %15 = alloca %"class.jxl::AcStrategy", align 8  ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %.sroa.071.0.insert.ext = zext i32 %0 to i64
  %.sroa.071.0.insert.insert = or disjoint i64 %.sroa.071.0.insert.ext, 4294967296
  %i.b = trunc nuw nsw i64 %.sroa.071.0.insert.insert to i40
  store i40 %i.b, ptr %15, align 8
  %i.c = zext i32 %0 to i64                       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66
  %i.h = tail call i8 @llvm.umax.i8(i8 %i.g, i8 1)
  %umax = zext i8 %i.h to i64
  %i.i = tail call i8 @llvm.umax.i8(i8 %i.e, i8 1) ; 2 uses
  %umax99 = zext i8 %i.i to i64                   ; 3 uses
  br label %.preheader76.us

.preheader76.us:                                  ; preds = %.preheader76.us.preheader, %..critedge_crit_edge.us
  %.087.us = phi float [ %i.r, %..critedge_crit_edge.us ], [ 0.000000e+00, %.preheader76.us.preheader ]
  %.05786.us = phi i64 [ %i.t, %..critedge_crit_edge.us ], [ 0, %.preheader76.us.preheader ] ; 2 uses
  %i.j = add i64 %.05786.us, %4
  %i.k = shl i64 %i.j, 3
  %i.l = add i64 %i.k, %3
  br label %bb.a

bb.a:                                             ; preds = %.preheader76.us, %bb.b
  %.184.us = phi float [ %.087.us, %.preheader76.us ], [ %i.r, %bb.b ]
  %.06283.us = phi i64 [ 0, %.preheader76.us ], [ %i.s, %bb.b ] ; 2 uses
  %i.m = add i64 %i.l, %.06283.us                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !66
  %.not.us = icmp ult i8 %i.o, %9
  br i1 %.not.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.m
  %i.q = load float, ptr %i.p, align 4, !tbaa !69
  %i.r = fadd float %.184.us, %i.q                ; 3 uses
  %i.s = add nuw nsw i64 %.06283.us, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %umax
  br i1 %exitcond.not, label %..critedge_crit_edge.us, label %bb.a, !llvm.loop !3542

..critedge_crit_edge.us:                          ; preds = %bb.b
  %i.t = add nuw nsw i64 %.05786.us, 1            ; 2 uses
  %exitcond100.not = icmp eq i64 %i.t, %umax99
  br i1 %exitcond100.not, label %.thread, label %.preheader76.us, !llvm.loop !3543

.thread:                                          ; preds = %..critedge_crit_edge.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.u = add i64 %3, %1                           ; 2 uses
  %i.v = shl i64 %i.u, 3
  %i.w = add i64 %4, %2                           ; 2 uses
  %i.x = shl i64 %i.w, 3
  %i.y = call i32 @_ZN3jxl6N_SSE215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %15, float noundef %8, i64 noundef %i.v, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %6, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #49 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.aa = load float, ptr %i.a, align 4, !tbaa !69 ; 2 uses
  %i.ab = fcmp ult float %i.aa, %i.r
  br i1 %i.ab, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.c
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !66  ; 2 uses
  %i.ae = shl i64 %3, 2
  %i.af = tail call i8 @llvm.umax.i8(i8 %i.ad, i8 1)
  %umax101 = zext i8 %i.af to i64                 ; 4 uses
  %i.ag = shl nuw nsw i64 %umax101, 2             ; 3 uses
  %invariant.gep110 = getelementptr i8, ptr %10, i64 %3 ; 3 uses
  %invariant.gep111 = getelementptr i8, ptr %11, i64 %i.ae ; 3 uses
  %xtraiter = and i64 %umax99, 1
  %i.ah = shl nuw i64 1, %i.c
  %i.ai = and i64 %i.ah, 258703
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %.preheader.preheader.new, label %.preheader.epil.preheader

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %umax99, 254
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.05994 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.as, %.preheader ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.aj = add i64 %4, %.05994
  %i.ak = shl i64 %i.aj, 3
  %gep = getelementptr i8, ptr %invariant.gep110, i64 %i.ak
  %i.al = add i64 %4, %.05994
  %i.am = shl i64 %i.al, 5
  %gep112 = getelementptr i8, ptr %invariant.gep111, i64 %i.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep112, i8 0, i64 %i.ag, i1 false), !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %gep, i8 %9, i64 %umax101, i1 false), !tbaa !66
  %i.an = or disjoint i64 %.05994, 1              ; 2 uses
  %i.ao = add i64 %4, %i.an
  %i.ap = shl i64 %i.ao, 3
  %gep.1 = getelementptr i8, ptr %invariant.gep110, i64 %i.ap
  %i.aq = add i64 %4, %i.an
  %i.ar = shl i64 %i.aq, 5
  %gep112.1 = getelementptr i8, ptr %invariant.gep111, i64 %i.ar
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep112.1, i8 0, i64 %i.ag, i1 false), !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %gep.1, i8 %9, i64 %umax101, i1 false), !tbaa !66
  %i.as = add nuw nsw i64 %.05994, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge95.split.unr-lcssa, label %.preheader, !llvm.loop !3544

._crit_edge95.split.unr-lcssa:                    ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge95.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge95.split.unr-lcssa, %.preheader.preheader
  %.05994.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.as, %._crit_edge95.split.unr-lcssa ] ; 2 uses
  %lcmp.mod128 = trunc i8 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.at = add i64 %4, %.05994.epil.init
  %i.au = shl i64 %i.at, 3
  %gep.epil = getelementptr i8, ptr %invariant.gep110, i64 %i.au
  %i.av = add i64 %4, %.05994.epil.init
  %i.aw = shl i64 %i.av, 5
  %gep112.epil = getelementptr i8, ptr %invariant.gep111, i64 %i.aw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep112.epil, i8 0, i64 %i.ag, i1 false), !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %gep.epil, i8 %9, i64 %umax101, i1 false), !tbaa !66
  br label %._crit_edge95.split

._crit_edge95.split:                              ; preds = %._crit_edge95.split.unr-lcssa, %.preheader.epil.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.az = shl nuw i32 %0, 1                       ; 3 uses
  %i.ba = tail call i8 @llvm.umax.i8(i8 %i.ad, i8 1)
  %umax46.i.i = zext i8 %i.ba to i64              ; 6 uses
  %i.bb = tail call i8 @llvm.umax.i8(i8 %i.e, i8 1)
  %umax48.i.i = zext i8 %i.bb to i64
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !110
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !111
  %invariant.gep = getelementptr i8, ptr %i.bd, i64 %i.u
  %i.be = shl nuw i64 1, %i.c
  %i.bf = and i64 %i.be, 259551
  %min.iters.check.not = icmp eq i64 %i.bf, 0
  %i.bg = shl nuw i64 1, %i.c
  %i.bh = and i64 %i.bg, 6291455
  %min.iters.check113.not = icmp eq i64 %i.bh, 0
  %i.bi = and i64 %umax46.i.i, 12
  %n.vec = and i64 %umax46.i.i, 240               ; 4 uses
  %broadcast.splatinsert114 = insertelement <16 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat115 = shufflevector <16 x i32> %broadcast.splatinsert114, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %umax46.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  %n.vec116 = and i64 %umax46.i.i, 252            ; 3 uses
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n127 = icmp eq i64 %n.vec116, %umax46.i.i
  br label %iter.check

iter.check:                                       ; preds = %..critedge25_crit_edge.split.i.i, %._crit_edge95.split
  %.038.i.i = phi i64 [ %i.cf, %..critedge25_crit_edge.split.i.i ], [ 0, %._crit_edge95.split ] ; 5 uses
  %i.bj = add i64 %.038.i.i, %i.w
  %i.bk = mul i64 %i.bc, %i.bj
  %invariant.gep96 = getelementptr i8, ptr %invariant.gep, i64 %i.bk ; 3 uses
  br i1 %min.iters.check.not, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check113.not, label %vector.ph, label %vec.epilog.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.038.i.i, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bl = or <16 x i64> %vec.ind, %broadcast.splat
  %i.bm = icmp eq <16 x i64> %i.bl, zeroinitializer
  %i.bn = zext <16 x i1> %i.bm to <16 x i32>
  %i.bo = or disjoint <16 x i32> %broadcast.splat115, %i.bn
  %i.bp = trunc <16 x i32> %i.bo to <16 x i8>
  %i.bq = getelementptr i8, ptr %invariant.gep96, i64 %index
  store <16 x i8> %i.bp, ptr %i.bq, align 1, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !3545

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !114

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert117 = insertelement <4 x i64> poison, i64 %.038.i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x i64> %broadcast.splatinsert117, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat122 = shufflevector <4 x i64> %broadcast.splatinsert121, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat122, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind124 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next126, %vec.epilog.vector.body ] ; 2 uses
  %i.bs = or <4 x i64> %vec.ind124, %broadcast.splat118
  %i.bt = icmp eq <4 x i64> %i.bs, zeroinitializer
  %i.bu = zext <4 x i1> %i.bt to <4 x i32>
  %i.bv = or disjoint <4 x i32> %broadcast.splat120, %i.bu
  %i.bw = trunc <4 x i32> %i.bv to <4 x i8>
  %i.bx = getelementptr i8, ptr %invariant.gep96, i64 %index123
  store <4 x i8> %i.bw, ptr %i.bx, align 1, !tbaa !66
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %vec.ind.next126 = add nuw nsw <4 x i64> %vec.ind124, splat (i64 4)
  %i.by = icmp eq i64 %index.next125, %n.vec116
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3546

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02036.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec116, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.02036.i.i = phi i64 [ %i.ce, %vec.epilog.scalar.ph ], [ %.02036.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bz = or i64 %.02036.i.i, %.038.i.i
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = or disjoint i32 %i.az, %i.cb
  %i.cd = trunc i32 %i.cc to i8
  %gep97 = getelementptr i8, ptr %invariant.gep96, i64 %.02036.i.i
  store i8 %i.cd, ptr %gep97, align 1, !tbaa !66
  %i.ce = add nuw nsw i64 %.02036.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %umax46.i.i
  br i1 %exitcond.not.i.i, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph, !llvm.loop !3547

..critedge25_crit_edge.split.i.i:                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cf = add nuw nsw i64 %.038.i.i, 1            ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %i.cf, %umax48.i.i
  br i1 %exitcond45.not.i.i, label %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit, label %iter.check, !llvm.loop !6

_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit: ; preds = %..critedge25_crit_edge.split.i.i
  %.idx = shl i64 %4, 5
  %i.cg = getelementptr i8, ptr %11, i64 %.idx
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %3
  store float %i.aa, ptr %i.ch, align 4, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit
  %.sroa.0.3 = phi i32 [ 0, %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit ], [ 0, %bb.c ], [ %i.y, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.d
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  ret i32 %.sroa.0.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 4, 19) i32 @_ZN3jxl6N_SSE29AcsSquareEm(i64 noundef %0) local_unnamed_addr #15 {
bb.a:
  %switch.selectcmp = icmp eq i64 %0, 4
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 18
  %switch.selectcmp4 = icmp eq i64 %0, 2
  %switch.select5 = select i1 %switch.selectcmp4, i32 4, i32 %switch.select
  ret i32 %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 6, 20) i32 @_ZN3jxl6N_SSE216AcsVerticalSplitEm(i64 noundef %0) local_unnamed_addr #15 {
bb.a:
  %switch.selectcmp = icmp eq i64 %0, 4
  %switch.select = select i1 %switch.selectcmp, i32 10, i32 19
  %switch.selectcmp4 = icmp eq i64 %0, 2
  %switch.select5 = select i1 %switch.selectcmp4, i32 6, i32 %switch.select
  ret i32 %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 7, 21) i32 @_ZN3jxl6N_SSE218AcsHorizontalSplitEm(i64 noundef %0) local_unnamed_addr #15 {
bb.a:
  %switch.selectcmp = icmp eq i64 %0, 4
  %switch.select = select i1 %switch.selectcmp, i32 11, i32 20
  %switch.selectcmp4 = icmp eq i64 %0, 2
  %switch.select5 = select i1 %switch.selectcmp4, i32 7, i32 %switch.select
  ret i32 %switch.select5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE235FindBestFirstLevelDivisionForSquareEmbmmmmRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEffPfS8_S8_Pj(i64 noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %6, ptr noalias nofree noundef readonly captures(none) %7, ptr noalias noundef %8, float noundef %9, float noundef %10, ptr noalias nofree noundef captures(none) %11, ptr noundef %12, ptr noundef %13, ptr nofree readnone captures(none) %14) local_unnamed_addr #6 {
bb.a:
  %15 = alloca %"class.jxl::AcStrategy", align 8  ; 5 uses
  %16 = alloca %"class.jxl::AcStrategy", align 8  ; 5 uses
  %17 = alloca %"class.jxl::AcStrategy", align 8  ; 4 uses
  %i.a = alloca [2 x [2 x float]], align 16       ; 8 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = lshr i64 %0, 1                           ; 8 uses
  %switch.selectcmp.i = icmp eq i64 %0, 4         ; 3 uses
  %switch.select.i = select i1 %switch.selectcmp.i, i32 10, i32 19
  %switch.selectcmp4.i = icmp eq i64 %0, 2        ; 3 uses
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 6, i32 %switch.select.i ; 5 uses
  %switch.select.i232 = select i1 %switch.selectcmp.i, i32 11, i32 20
  %switch.select5.i234 = select i1 %switch.selectcmp4.i, i32 7, i32 %switch.select.i232 ; 5 uses
  %switch.select.i236 = select i1 %switch.selectcmp.i, i32 5, i32 18
  %switch.select5.i238 = select i1 %switch.selectcmp4.i, i32 4, i32 %switch.select.i236 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  %.sroa.0430.0.insert.ext = zext nneg i32 %switch.select5.i to i64 ; 7 uses
  %.sroa.0430.0.insert.insert = or disjoint i64 %.sroa.0430.0.insert.ext, 4294967296
  %i.h = trunc nuw nsw i64 %.sroa.0430.0.insert.insert to i40
  store i40 %i.h, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #51
  %.sroa.0423.0.insert.ext = zext nneg i32 %switch.select5.i234 to i64 ; 7 uses
  %.sroa.0423.0.insert.insert = or disjoint i64 %.sroa.0423.0.insert.ext, 4294967296
  %i.i = trunc nuw nsw i64 %.sroa.0423.0.insert.insert to i40
  store i40 %i.i, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #51
  %.sroa.0421.0.insert.ext = zext nneg i32 %switch.select5.i238 to i64 ; 4 uses
  %.sroa.0421.0.insert.insert = or disjoint i64 %.sroa.0421.0.insert.ext, 4294967296
  %i.j = trunc nuw nsw i64 %.sroa.0421.0.insert.insert to i40
  store i40 %i.j, ptr %17, align 8
  %i.k = add i64 %5, %3                           ; 28 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !65   ; 9 uses
  %i.p = mul i64 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 64) ]
  %i.r = add i64 %i.k, %i.g                       ; 5 uses
  %i.s = mul i64 %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.t, i64 64) ]
  %i.u = add i64 %4, %2                           ; 29 uses
  %i.v = add i64 %i.u, %0                         ; 7 uses
  %i.w = load i32, ptr %8, align 8, !tbaa !62
  %i.x = zext i32 %i.w to i64                     ; 6 uses
  %.not.i = icmp ult i64 %i.u, %i.x               ; 2 uses
end_hunk_2
