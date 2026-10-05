Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ac_strategy?download=true
inline.NumInlined: 2681
inline.NumDeleted: 850
loop-unroll.NumCompletelyUnrolled: 531
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 686
begin_hunk_0_@_ZN3jxl6N_SSE420FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeE:bb.a
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
  %.sroa.071.0.insert.ext = zext i32 %0 to i64    ; 5 uses
  %.sroa.071.0.insert.insert = or disjoint i64 %.sroa.071.0.insert.ext, 4294967296
  %i.b = trunc nuw nsw i64 %.sroa.071.0.insert.insert to i40
  store i40 %i.b, ptr %15, align 8
  %i.c = zext i32 %0 to i64                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66
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
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !66
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
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.071.0.insert.ext
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.071.0.insert.ext
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bd = shl nuw i32 %0, 1                       ; 3 uses
  %i.be = tail call i8 @llvm.umax.i8(i8 %i.ba, i8 1)
  %umax46.i.i = zext i8 %i.be to i64              ; 6 uses
  %i.bf = tail call i8 @llvm.umax.i8(i8 %i.ay, i8 1)
  %umax48.i.i = zext i8 %i.bf to i64
  %i.bg = load i64, ptr %i.bb, align 8, !tbaa !110
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !111
  %invariant.gep = getelementptr i8, ptr %i.bh, i64 %i.u
  %i.bi = shl nuw i64 1, %.sroa.071.0.insert.ext
  %i.bj = and i64 %i.bi, 259551
  %min.iters.check.not = icmp eq i64 %i.bj, 0
  %i.bk = shl nuw i64 1, %.sroa.071.0.insert.ext
  %i.bl = and i64 %i.bk, 6291455
  %min.iters.check113.not = icmp eq i64 %i.bl, 0
  %i.bm = and i64 %umax46.i.i, 12
  %n.vec = and i64 %umax46.i.i, 240               ; 4 uses
  %broadcast.splatinsert114 = insertelement <16 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat115 = shufflevector <16 x i32> %broadcast.splatinsert114, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %umax46.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  %n.vec116 = and i64 %umax46.i.i, 252            ; 3 uses
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n127 = icmp eq i64 %n.vec116, %umax46.i.i
  br label %iter.check

iter.check:                                       ; preds = %..critedge25_crit_edge.split.i.i, %._crit_edge95.split
  %.038.i.i = phi i64 [ %i.cj, %..critedge25_crit_edge.split.i.i ], [ 0, %._crit_edge95.split ] ; 5 uses
  %i.bn = add i64 %.038.i.i, %i.w
  %i.bo = mul i64 %i.bg, %i.bn
  %invariant.gep96 = getelementptr i8, ptr %invariant.gep, i64 %i.bo ; 3 uses
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
  %i.bp = or <16 x i64> %vec.ind, %broadcast.splat
  %i.bq = icmp eq <16 x i64> %i.bp, zeroinitializer
  %i.br = zext <16 x i1> %i.bq to <16 x i32>
  %i.bs = or disjoint <16 x i32> %broadcast.splat115, %i.br
  %i.bt = trunc <16 x i32> %i.bs to <16 x i8>
  %i.bu = getelementptr i8, ptr %invariant.gep96, i64 %index
  store <16 x i8> %i.bt, ptr %i.bu, align 1, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !1009

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
  %i.bw = or <4 x i64> %vec.ind124, %broadcast.splat118
  %i.bx = icmp eq <4 x i64> %i.bw, zeroinitializer
  %i.by = zext <4 x i1> %i.bx to <4 x i32>
  %i.bz = or disjoint <4 x i32> %broadcast.splat120, %i.by
  %i.ca = trunc <4 x i32> %i.bz to <4 x i8>
  %i.cb = getelementptr i8, ptr %invariant.gep96, i64 %index123
  store <4 x i8> %i.ca, ptr %i.cb, align 1, !tbaa !66
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %vec.ind.next126 = add nuw nsw <4 x i64> %vec.ind124, splat (i64 4)
  %i.cc = icmp eq i64 %index.next125, %n.vec116
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1010

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02036.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec116, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.02036.i.i = phi i64 [ %i.ci, %vec.epilog.scalar.ph ], [ %.02036.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cd = or i64 %.02036.i.i, %.038.i.i
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = or disjoint i32 %i.bd, %i.cf
  %i.ch = trunc i32 %i.cg to i8
  %gep97 = getelementptr i8, ptr %invariant.gep96, i64 %.02036.i.i
  store i8 %i.ch, ptr %gep97, align 1, !tbaa !66
  %i.ci = add nuw nsw i64 %.02036.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ci, %umax46.i.i
  br i1 %exitcond.not.i.i, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph, !llvm.loop !1011

..critedge25_crit_edge.split.i.i:                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cj = add nuw nsw i64 %.038.i.i, 1            ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %i.cj, %umax48.i.i
  br i1 %exitcond45.not.i.i, label %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit, label %iter.check, !llvm.loop !6

_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit: ; preds = %..critedge25_crit_edge.split.i.i
  %.idx = shl i64 %4, 5
  %i.ck = getelementptr i8, ptr %11, i64 %.idx
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %3
  store float %i.aa, ptr %i.cl, align 4, !tbaa !69
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
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_SSE435FindBestFirstLevelDivisionForSquareEmbmmmmRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEffPfS8_S8_Pj:bb.a
  %i.ew = udiv i64 %.0459, %i.g
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ew ; 3 uses
  br i1 %i.eu, label %.epil.preheader, label %.preheader.new

._crit_edge:                                      ; preds = %bb.x, %_ZN3jxl6N_SSE444MultiBlockTransformCrossesHorizontalBoundaryERKNS_15AcStrategyImageEmmm.exit315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  store float f0x7F7FFFFF, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #51
  store float f0x7F7FFFFF, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #51
  store float f0x7F7FFFFF, ptr %i.d, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #51
  store float f0x7F7FFFFF, ptr %i.e, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #51
  br i1 %.4.i281, label %bb.ac, label %bb.y

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %bb.x, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.0225458.epil.init = phi i64 [ 0, %.preheader ], [ %i.fs, %.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod530)
  %i.ey = getelementptr [4 x i8], ptr %gep, i64 %.0225458.epil.init
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !69
  %i.fa = udiv i64 %.0225458.epil.init, %i.g
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fa ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !69
  %i.fd = fadd float %i.ez, %i.fc
  store float %i.fd, ptr %i.fb, align 4, !tbaa !69
  br label %bb.x

bb.x:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.fe = add nuw i64 %.0459, 1                   ; 2 uses
  %exitcond465.not = icmp eq i64 %i.fe, %0
  br i1 %exitcond465.not, label %._crit_edge, label %.preheader, !llvm.loop !1012

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.0225458 = phi i64 [ %i.fs, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ff = getelementptr [4 x i8], ptr %gep, i64 %.0225458
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !69
  %i.fh = udiv i64 %.0225458, %i.g
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fh ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !69
  %i.fk = fadd float %i.fg, %i.fj
  store float %i.fk, ptr %i.fi, align 4, !tbaa !69
  %i.fl = or disjoint i64 %.0225458, 1            ; 2 uses
  %i.fm = getelementptr [4 x i8], ptr %gep, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !69
  %i.fo = udiv i64 %i.fl, %i.g
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !69
  %i.fr = fadd float %i.fn, %i.fq
  store float %i.fr, ptr %i.fp, align 4, !tbaa !69
  %i.fs = add nuw i64 %.0225458, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.new, !llvm.loop !1013

bb.y:                                             ; preds = %._crit_edge
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !66
  %i.fv = lshr i8 %i.fu, 1
  %.sroa.0384.0.extract.trunc = zext nneg i8 %i.fv to i32
  %.not = icmp eq i32 %switch.select5.i, %.sroa.0384.0.extract.trunc
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fw = shl i64 %i.u, 3
  %i.fx = shl i64 %i.k, 3
  %i.fy = call i32 @_ZN3jxl6N_SSE415EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %15, float noundef %9, i64 noundef %i.fw, i64 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #49 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.aa, label %bb.az

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ga = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dd
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !66
  %i.gc = lshr i8 %i.gb, 1
  %.sroa.0382.0.extract.trunc = zext nneg i8 %i.gc to i32
  %.not228 = icmp eq i32 %switch.select5.i, %.sroa.0382.0.extract.trunc
  br i1 %.not228, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gd = shl i64 %i.dd, 3
  %i.ge = shl i64 %i.k, 3
  %i.gf = call i32 @_ZN3jxl6N_SSE415EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %15, float noundef %9, i64 noundef %i.gd, i64 noundef %i.ge, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #49 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.ac, label %bb.az

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %._crit_edge
  br i1 %.2.i299, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !66
  %i.gj = lshr i8 %i.gi, 1
  %.sroa.0380.0.extract.trunc = zext nneg i8 %i.gj to i32
  %.not229 = icmp eq i32 %switch.select5.i234, %.sroa.0380.0.extract.trunc
  br i1 %.not229, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = shl i64 %i.u, 3
  %i.gl = shl i64 %i.k, 3
  %i.gm = call i32 @_ZN3jxl6N_SSE415EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %16, float noundef %9, i64 noundef %i.gk, i64 noundef %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #49 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.af, label %bb.az

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.go = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !66
  %i.gq = lshr i8 %i.gp, 1
  %.sroa.0.0.extract.trunc = zext nneg i8 %i.gq to i32
  %.not230 = icmp eq i32 %switch.select5.i234, %.sroa.0.0.extract.trunc
  br i1 %.not230, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gr = shl i64 %i.u, 3
  %i.gs = shl i64 %i.r, 3
  %i.gt = call i32 @_ZN3jxl6N_SSE415EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %16, float noundef %9, i64 noundef %i.gr, i64 noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.e) #49 ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.ah, label %bb.az

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ac
  br i1 %1, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gv = shl i64 %i.u, 3
  %i.gw = shl i64 %i.k, 3
  %i.gx = call i32 @_ZN3jxl6N_SSE415EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %17, float noundef %10, i64 noundef %i.gv, i64 noundef %i.gw, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #49 ; 2 uses
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %._crit_edge466, label %bb.az

._crit_edge466:                                   ; preds = %bb.ai
  %.pre = load float, ptr %i.f, align 4, !tbaa !69
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge466, %bb.ah
  %i.gz = phi float [ %.pre, %._crit_edge466 ], [ f0x7F7FFFFF, %bb.ah ] ; 4 uses
  %i.ha = load float, ptr %i.a, align 16, !tbaa !69 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hc = load float, ptr %i.hb, align 8, !tbaa !69 ; 2 uses
  %i.hd = fadd float %i.ha, %i.hc                 ; 3 uses
  %i.he = load float, ptr %i.b, align 4, !tbaa !69 ; 4 uses
  %i.hf = fcmp olt float %i.hd, %i.he
  %.sroa.speculated377 = select i1 %i.hf, float %i.hd, float %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !69 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !69 ; 2 uses
  %i.hk = fadd float %i.hh, %i.hj                 ; 3 uses
  %i.hl = load float, ptr %i.c, align 4, !tbaa !69 ; 5 uses
  %i.hm = fcmp olt float %i.hk, %i.hl
  %.sroa.speculated373 = select i1 %i.hm, float %i.hk, float %i.hl
  %i.hn = fadd float %.sroa.speculated377, %.sroa.speculated373 ; 2 uses
  %i.ho = fadd float %i.ha, %i.hh                 ; 3 uses
  %i.hp = load float, ptr %i.d, align 4, !tbaa !69 ; 4 uses
  %i.hq = fcmp olt float %i.ho, %i.hp
  %.sroa.speculated369 = select i1 %i.hq, float %i.ho, float %i.hp
  %i.hr = fadd float %i.hc, %i.hj                 ; 3 uses
  %i.hs = load float, ptr %i.e, align 4, !tbaa !69 ; 5 uses
  %i.ht = fcmp olt float %i.hr, %i.hs
  %.sroa.speculated = select i1 %i.ht, float %i.hr, float %i.hs
  %i.hu = fadd float %.sroa.speculated369, %.sroa.speculated ; 2 uses
  %i.hv = fcmp olt float %i.gz, %i.hn
  %i.hw = fcmp olt float %i.gz, %i.hu
  %or.cond = select i1 %i.hv, i1 %i.hw, i1 false
  br i1 %or.cond, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hx = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.k, i32 noundef %switch.select5.i238) #49 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.al, label %bb.az

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %i.hz = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0421.0.insert.ext
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !66, !noalias !1030
  %i.ib = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0421.0.insert.ext
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !66, !noalias !1030
  %i.id = tail call i8 @llvm.umax.i8(i8 %i.ic, i8 1)
  %umax.i = zext i8 %i.id to i64
  %i.ie = shl nuw nsw i64 %umax.i, 2              ; 5 uses
  %i.if = tail call i8 @llvm.umax.i8(i8 %i.ia, i8 1)
  %umax22.i = zext i8 %i.if to i64                ; 2 uses
  %xtraiter558 = and i64 %umax22.i, 3             ; 3 uses
  %i.ig = shl nuw nsw i64 1, %.sroa.0421.0.insert.ext
  %i.ih = and i64 %i.ig, 196830
  %.not568 = icmp eq i64 %i.ih, 0
  br i1 %.not568, label %.new557, label %.preheader.i.epil.preheader

.new557:                                          ; preds = %bb.al
  %unroll_iter562 = and i64 %umax22.i, 252
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.new557
  %.01320.i = phi i64 [ 0, %.new557 ], [ %i.ip, %.preheader.i ] ; 5 uses
  %niter563 = phi i64 [ 0, %.new557 ], [ %niter563.next.3, %.preheader.i ]
  %i.ii = add i64 %.01320.i, %5
  %.idx14.i = shl i64 %i.ii, 5
  %gep.i = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !1030
  %i.ij = or disjoint i64 %.01320.i, 1
  %i.ik = add i64 %i.ij, %5
  %.idx14.i.1 = shl i64 %i.ik, 5
  %gep.i.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.1, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !1030
  %i.il = or disjoint i64 %.01320.i, 2
  %i.im = add i64 %i.il, %5
  %.idx14.i.2 = shl i64 %i.im, 5
  %gep.i.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.2, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !1030
  %i.in = or disjoint i64 %.01320.i, 3
  %i.io = add i64 %i.in, %5
  %.idx14.i.3 = shl i64 %i.io, 5
  %gep.i.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.3, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !1030
  %i.ip = add nuw nsw i64 %.01320.i, 4            ; 2 uses
  %niter563.next.3 = add i64 %niter563, 4         ; 2 uses
  %niter563.ncmp.3 = icmp eq i64 %niter563.next.3, %unroll_iter562
  br i1 %niter563.ncmp.3, label %.sink.split.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !1016

bb.am:                                            ; preds = %bb.aj
  %i.iq = fcmp olt float %i.hn, %i.hu
  br i1 %i.iq, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.ir = fcmp olt float %i.he, %i.hd
  br i1 %i.ir, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.is = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.k, i32 noundef %switch.select5.i) #49 ; 2 uses
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %i.iu = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !66, !noalias !1031
  %i.iw = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !66, !noalias !1031
  %i.iy = tail call i8 @llvm.umax.i8(i8 %i.ix, i8 1)
  %umax.i329 = zext i8 %i.iy to i64
  %i.iz = shl nuw nsw i64 %umax.i329, 2           ; 5 uses
  %i.ja = tail call i8 @llvm.umax.i8(i8 %i.iv, i8 1)
  %umax22.i330 = zext i8 %i.ja to i64             ; 2 uses
  %xtraiter544 = and i64 %umax22.i330, 3          ; 3 uses
  %i.jb = shl nuw nsw i64 1, %.sroa.0430.0.insert.ext
  %i.jc = and i64 %i.jb, 51404
  %.not566 = icmp eq i64 %i.jc, 0
  br i1 %.not566, label %.new543, label %.preheader.i331.epil.preheader

.new543:                                          ; preds = %bb.ap
  %unroll_iter548 = and i64 %umax22.i330, 252
  br label %.preheader.i331

.preheader.i331:                                  ; preds = %.preheader.i331, %.new543
  %.01320.i332 = phi i64 [ 0, %.new543 ], [ %i.jk, %.preheader.i331 ] ; 5 uses
  %niter549 = phi i64 [ 0, %.new543 ], [ %niter549.next.3, %.preheader.i331 ]
  %i.jd = add i64 %.01320.i332, %5
  %.idx14.i333 = shl i64 %i.jd, 5
  %gep.i334 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !1031
  %i.je = or disjoint i64 %.01320.i332, 1
  %i.jf = add i64 %i.je, %5
  %.idx14.i333.1 = shl i64 %i.jf, 5
  %gep.i334.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.1, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !1031
  %i.jg = or disjoint i64 %.01320.i332, 2
  %i.jh = add i64 %i.jg, %5
  %.idx14.i333.2 = shl i64 %i.jh, 5
  %gep.i334.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.2, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !1031
  %i.ji = or disjoint i64 %.01320.i332, 3
  %i.jj = add i64 %i.ji, %5
  %.idx14.i333.3 = shl i64 %i.jj, 5
  %gep.i334.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.3, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !1031
  %i.jk = add nuw nsw i64 %.01320.i332, 4         ; 2 uses
  %niter549.next.3 = add i64 %niter549, 4         ; 2 uses
  %niter549.ncmp.3 = icmp eq i64 %niter549.next.3, %unroll_iter548
  br i1 %niter549.ncmp.3, label %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa, label %.preheader.i331, !llvm.loop !1016

_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa: ; preds = %.preheader.i331
  %lcmp.mod546.not = icmp eq i64 %xtraiter544, 0
  br i1 %lcmp.mod546.not, label %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337, label %.preheader.i331.epil.preheader

.preheader.i331.epil.preheader:                   ; preds = %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa, %bb.ap
  %.01320.i332.epil.init = phi i64 [ 0, %bb.ap ], [ %i.jk, %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa ]
  %lcmp.mod547 = icmp ne i64 %xtraiter544, 0
  tail call void @llvm.assume(i1 %lcmp.mod547)
  br label %.preheader.i331.epil

.preheader.i331.epil:                             ; preds = %.preheader.i331.epil, %.preheader.i331.epil.preheader
  %.01320.i332.epil = phi i64 [ %i.jm, %.preheader.i331.epil ], [ %.01320.i332.epil.init, %.preheader.i331.epil.preheader ] ; 2 uses
  %epil.iter545 = phi i64 [ %epil.iter545.next, %.preheader.i331.epil ], [ 0, %.preheader.i331.epil.preheader ]
  %i.jl = add i64 %.01320.i332.epil, %5
  %.idx14.i333.epil = shl i64 %i.jl, 5
  %gep.i334.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.epil, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !1031
  %i.jm = add nuw nsw i64 %.01320.i332.epil, 1
  %epil.iter545.next = add i64 %epil.iter545, 1   ; 2 uses
  %epil.iter545.cmp.not = icmp eq i64 %epil.iter545.next, %xtraiter544
  br i1 %epil.iter545.cmp.not, label %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337, label %.preheader.i331.epil, !llvm.loop !1019

_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337: ; preds = %.preheader.i331.epil, %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa
  %.idx.i336 = shl i64 %5, 5
  %i.jn = getelementptr i8, ptr %11, i64 %.idx.i336
  %i.jo = getelementptr [4 x i8], ptr %i.jn, i64 %4
  store float %i.he, ptr %i.jo, align 4, !tbaa !69, !alias.scope !1031
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337, %bb.an
  %i.jp = fcmp olt float %i.hl, %i.hk
  br i1 %i.jp, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.jq = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.dd, i64 noundef %i.k, i32 noundef %switch.select5.i) #49 ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.js = add i64 %4, %i.g                        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.jt = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !66, !noalias !1032
  %invariant.gep.i338 = getelementptr [4 x i8], ptr %11, i64 %i.js ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !66, !noalias !1032
  %i.jx = tail call i8 @llvm.umax.i8(i8 %i.jw, i8 1)
  %umax.i339 = zext i8 %i.jx to i64
  %i.jy = shl nuw nsw i64 %umax.i339, 2           ; 5 uses
  %i.jz = tail call i8 @llvm.umax.i8(i8 %i.ju, i8 1)
  %umax22.i340 = zext i8 %i.jz to i64             ; 2 uses
  %xtraiter551 = and i64 %umax22.i340, 3          ; 3 uses
  %i.ka = shl nuw nsw i64 1, %.sroa.0430.0.insert.ext
  %i.kb = and i64 %i.ka, 51404
  %.not567 = icmp eq i64 %i.kb, 0
  br i1 %.not567, label %.new550, label %.preheader.i341.epil.preheader

.new550:                                          ; preds = %bb.as
  %unroll_iter555 = and i64 %umax22.i340, 252
  br label %.preheader.i341

.preheader.i341:                                  ; preds = %.preheader.i341, %.new550
  %.01320.i342 = phi i64 [ 0, %.new550 ], [ %i.kj, %.preheader.i341 ] ; 5 uses
  %niter556 = phi i64 [ 0, %.new550 ], [ %niter556.next.3, %.preheader.i341 ]
  %i.kc = add i64 %.01320.i342, %5
  %.idx14.i343 = shl i64 %i.kc, 5
  %gep.i344 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !1032
  %i.kd = or disjoint i64 %.01320.i342, 1
  %i.ke = add i64 %i.kd, %5
  %.idx14.i343.1 = shl i64 %i.ke, 5
  %gep.i344.1 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.1, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !1032
  %i.kf = or disjoint i64 %.01320.i342, 2
  %i.kg = add i64 %i.kf, %5
  %.idx14.i343.2 = shl i64 %i.kg, 5
  %gep.i344.2 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.2, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !1032
  %i.kh = or disjoint i64 %.01320.i342, 3
  %i.ki = add i64 %i.kh, %5
  %.idx14.i343.3 = shl i64 %i.ki, 5
  %gep.i344.3 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.3, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !1032
  %i.kj = add nuw nsw i64 %.01320.i342, 4         ; 2 uses
  %niter556.next.3 = add i64 %niter556, 4         ; 2 uses
  %niter556.ncmp.3 = icmp eq i64 %niter556.next.3, %unroll_iter555
  br i1 %niter556.ncmp.3, label %.sink.split.loopexit524.unr-lcssa, label %.preheader.i341, !llvm.loop !1016

bb.at:                                            ; preds = %bb.am
  %i.kk = fcmp olt float %i.hp, %i.ho
  br i1 %i.kk, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kl = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.k, i32 noundef %switch.select5.i234) #49 ; 2 uses
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.kn = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !66, !noalias !1033
  %i.kp = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !66, !noalias !1033
  %i.kr = tail call i8 @llvm.umax.i8(i8 %i.kq, i8 1)
  %umax.i349 = zext i8 %i.kr to i64
  %i.ks = shl nuw nsw i64 %umax.i349, 2           ; 5 uses
  %i.kt = tail call i8 @llvm.umax.i8(i8 %i.ko, i8 1)
  %umax22.i350 = zext i8 %i.kt to i64             ; 2 uses
  %xtraiter531 = and i64 %umax22.i350, 3          ; 3 uses
  %i.ku = shl nuw nsw i64 1, %.sroa.0423.0.insert.ext
  %i.kv = and i64 %i.ku, 260830
  %.not564 = icmp eq i64 %i.kv, 0
  br i1 %.not564, label %.new, label %.preheader.i351.epil.preheader

.new:                                             ; preds = %bb.av
  %unroll_iter534 = and i64 %umax22.i350, 252
  br label %.preheader.i351

.preheader.i351:                                  ; preds = %.preheader.i351, %.new
  %.01320.i352 = phi i64 [ 0, %.new ], [ %i.ld, %.preheader.i351 ] ; 5 uses
  %niter535 = phi i64 [ 0, %.new ], [ %niter535.next.3, %.preheader.i351 ]
  %i.kw = add i64 %.01320.i352, %5
  %.idx14.i353 = shl i64 %i.kw, 5
  %gep.i354 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !1033
  %i.kx = or disjoint i64 %.01320.i352, 1
  %i.ky = add i64 %i.kx, %5
  %.idx14.i353.1 = shl i64 %i.ky, 5
  %gep.i354.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.1, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !1033
  %i.kz = or disjoint i64 %.01320.i352, 2
  %i.la = add i64 %i.kz, %5
  %.idx14.i353.2 = shl i64 %i.la, 5
  %gep.i354.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.2, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !1033
  %i.lb = or disjoint i64 %.01320.i352, 3
  %i.lc = add i64 %i.lb, %5
  %.idx14.i353.3 = shl i64 %i.lc, 5
  %gep.i354.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.3, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !1033
  %i.ld = add nuw nsw i64 %.01320.i352, 4         ; 2 uses
  %niter535.next.3 = add i64 %niter535, 4         ; 2 uses
  %niter535.ncmp.3 = icmp eq i64 %niter535.next.3, %unroll_iter534
  br i1 %niter535.ncmp.3, label %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa, label %.preheader.i351, !llvm.loop !1016

_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa: ; preds = %.preheader.i351
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br i1 %lcmp.mod532.not, label %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357, label %.preheader.i351.epil.preheader

.preheader.i351.epil.preheader:                   ; preds = %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa, %bb.av
  %.01320.i352.epil.init = phi i64 [ 0, %bb.av ], [ %i.ld, %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa ]
  %lcmp.mod533 = icmp ne i64 %xtraiter531, 0
  tail call void @llvm.assume(i1 %lcmp.mod533)
  br label %.preheader.i351.epil

.preheader.i351.epil:                             ; preds = %.preheader.i351.epil, %.preheader.i351.epil.preheader
  %.01320.i352.epil = phi i64 [ %i.lf, %.preheader.i351.epil ], [ %.01320.i352.epil.init, %.preheader.i351.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i351.epil ], [ 0, %.preheader.i351.epil.preheader ]
  %i.le = add i64 %.01320.i352.epil, %5
  %.idx14.i353.epil = shl i64 %i.le, 5
  %gep.i354.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.epil, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !1033
  %i.lf = add nuw nsw i64 %.01320.i352.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter531
  br i1 %epil.iter.cmp.not, label %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357, label %.preheader.i351.epil, !llvm.loop !1024

_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357: ; preds = %.preheader.i351.epil, %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa
  %.idx.i356 = shl i64 %5, 5
  %i.lg = getelementptr i8, ptr %11, i64 %.idx.i356
  %i.lh = getelementptr [4 x i8], ptr %i.lg, i64 %4
  store float %i.hp, ptr %i.lh, align 4, !tbaa !69, !alias.scope !1033
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN3jxl6N_SSE4L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357, %bb.at
  %i.li = fcmp olt float %i.hs, %i.hr
  br i1 %i.li, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.lj = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.r, i32 noundef %switch.select5.i234) #49 ; 2 uses
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ll = add i64 %5, %i.g                        ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.lm = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !66, !noalias !1034
  %i.lo = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !66, !noalias !1034
  %i.lq = tail call i8 @llvm.umax.i8(i8 %i.lp, i8 1)
  %umax.i359 = zext i8 %i.lq to i64
  %i.lr = shl nuw nsw i64 %umax.i359, 2           ; 5 uses
  %i.ls = tail call i8 @llvm.umax.i8(i8 %i.ln, i8 1)
  %umax22.i360 = zext i8 %i.ls to i64             ; 2 uses
  %xtraiter537 = and i64 %umax22.i360, 3          ; 3 uses
  %i.lt = shl nuw nsw i64 1, %.sroa.0423.0.insert.ext
  %i.lu = and i64 %i.lt, 260830
  %.not565 = icmp eq i64 %i.lu, 0
  br i1 %.not565, label %.new536, label %.preheader.i361.epil.preheader

.new536:                                          ; preds = %bb.ay
  %unroll_iter541 = and i64 %umax22.i360, 252
  br label %.preheader.i361

.preheader.i361:                                  ; preds = %.preheader.i361, %.new536
  %.01320.i362 = phi i64 [ 0, %.new536 ], [ %i.mc, %.preheader.i361 ] ; 5 uses
  %niter542 = phi i64 [ 0, %.new536 ], [ %niter542.next.3, %.preheader.i361 ]
  %i.lv = add i64 %.01320.i362, %i.ll
  %.idx14.i363 = shl i64 %i.lv, 5
  %gep.i364 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !1034
  %i.lw = or disjoint i64 %.01320.i362, 1
  %i.lx = add i64 %i.lw, %i.ll
  %.idx14.i363.1 = shl i64 %i.lx, 5
  %gep.i364.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.1, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !1034
  %i.ly = or disjoint i64 %.01320.i362, 2
  %i.lz = add i64 %i.ly, %i.ll
  %.idx14.i363.2 = shl i64 %i.lz, 5
  %gep.i364.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.2, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !1034
  %i.ma = or disjoint i64 %.01320.i362, 3
  %i.mb = add i64 %i.ma, %i.ll
  %.idx14.i363.3 = shl i64 %i.mb, 5
  %gep.i364.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.3, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !1034
  %i.mc = add nuw nsw i64 %.01320.i362, 4         ; 2 uses
  %niter542.next.3 = add i64 %niter542, 4         ; 2 uses
  %niter542.ncmp.3 = icmp eq i64 %niter542.next.3, %unroll_iter541
  br i1 %niter542.ncmp.3, label %.sink.split.loopexit525.unr-lcssa, label %.preheader.i361, !llvm.loop !1016

.sink.split.loopexit.unr-lcssa:                   ; preds = %.preheader.i
  %lcmp.mod560.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod560.not, label %.sink.split, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.sink.split.loopexit.unr-lcssa, %bb.al
  %.01320.i.epil.init = phi i64 [ 0, %bb.al ], [ %i.ip, %.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod561 = icmp ne i64 %xtraiter558, 0
  tail call void @llvm.assume(i1 %lcmp.mod561)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.01320.i.epil = phi i64 [ %i.me, %.preheader.i.epil ], [ %.01320.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter559 = phi i64 [ %epil.iter559.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.md = add i64 %.01320.i.epil, %5
  %.idx14.i.epil = shl i64 %i.md, 5
  %gep.i.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.epil, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !1030
  %i.me = add nuw nsw i64 %.01320.i.epil, 1
  %epil.iter559.next = add i64 %epil.iter559, 1   ; 2 uses
  %epil.iter559.cmp.not = icmp eq i64 %epil.iter559.next, %xtraiter558
  br i1 %epil.iter559.cmp.not, label %.sink.split, label %.preheader.i.epil, !llvm.loop !1027

.sink.split.loopexit524.unr-lcssa:                ; preds = %.preheader.i341
  %lcmp.mod553.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod553.not, label %.sink.split, label %.preheader.i341.epil.preheader

.preheader.i341.epil.preheader:                   ; preds = %.sink.split.loopexit524.unr-lcssa, %bb.as
  %.01320.i342.epil.init = phi i64 [ 0, %bb.as ], [ %i.kj, %.sink.split.loopexit524.unr-lcssa ]
  %lcmp.mod554 = icmp ne i64 %xtraiter551, 0
  tail call void @llvm.assume(i1 %lcmp.mod554)
  br label %.preheader.i341.epil

.preheader.i341.epil:                             ; preds = %.preheader.i341.epil, %.preheader.i341.epil.preheader
  %.01320.i342.epil = phi i64 [ %i.mg, %.preheader.i341.epil ], [ %.01320.i342.epil.init, %.preheader.i341.epil.preheader ] ; 2 uses
  %epil.iter552 = phi i64 [ %epil.iter552.next, %.preheader.i341.epil ], [ 0, %.preheader.i341.epil.preheader ]
  %i.mf = add i64 %.01320.i342.epil, %5
  %.idx14.i343.epil = shl i64 %i.mf, 5
  %gep.i344.epil = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.epil, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !1032
  %i.mg = add nuw nsw i64 %.01320.i342.epil, 1
  %epil.iter552.next = add i64 %epil.iter552, 1   ; 2 uses
  %epil.iter552.cmp.not = icmp eq i64 %epil.iter552.next, %xtraiter551
  br i1 %epil.iter552.cmp.not, label %.sink.split, label %.preheader.i341.epil, !llvm.loop !1028

.sink.split.loopexit525.unr-lcssa:                ; preds = %.preheader.i361
  %lcmp.mod539.not = icmp eq i64 %xtraiter537, 0
  br i1 %lcmp.mod539.not, label %.sink.split, label %.preheader.i361.epil.preheader

.preheader.i361.epil.preheader:                   ; preds = %.sink.split.loopexit525.unr-lcssa, %bb.ay
  %.01320.i362.epil.init = phi i64 [ 0, %bb.ay ], [ %i.mc, %.sink.split.loopexit525.unr-lcssa ]
  %lcmp.mod540 = icmp ne i64 %xtraiter537, 0
  tail call void @llvm.assume(i1 %lcmp.mod540)
  br label %.preheader.i361.epil

.preheader.i361.epil:                             ; preds = %.preheader.i361.epil, %.preheader.i361.epil.preheader
  %.01320.i362.epil = phi i64 [ %i.mi, %.preheader.i361.epil ], [ %.01320.i362.epil.init, %.preheader.i361.epil.preheader ] ; 2 uses
  %epil.iter538 = phi i64 [ %epil.iter538.next, %.preheader.i361.epil ], [ 0, %.preheader.i361.epil.preheader ]
  %i.mh = add i64 %.01320.i362.epil, %i.ll
  %.idx14.i363.epil = shl i64 %i.mh, 5
  %gep.i364.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.epil, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !1034
  %i.mi = add nuw nsw i64 %.01320.i362.epil, 1
  %epil.iter538.next = add i64 %epil.iter538, 1   ; 2 uses
  %epil.iter538.cmp.not = icmp eq i64 %epil.iter538.next, %xtraiter537
  br i1 %epil.iter538.cmp.not, label %.sink.split, label %.preheader.i361.epil, !llvm.loop !1029

.sink.split:                                      ; preds = %.sink.split.loopexit525.unr-lcssa, %.preheader.i361.epil, %.sink.split.loopexit524.unr-lcssa, %.preheader.i341.epil, %.sink.split.loopexit.unr-lcssa, %.preheader.i.epil
  %.sink517 = phi i64 [ %5, %.sink.split.loopexit.unr-lcssa ], [ %5, %.sink.split.loopexit524.unr-lcssa ], [ %5, %.preheader.i.epil ], [ %5, %.preheader.i341.epil ], [ %i.ll, %.preheader.i361.epil ], [ %i.ll, %.sink.split.loopexit525.unr-lcssa ]
  %.sink516 = phi i64 [ %4, %.sink.split.loopexit.unr-lcssa ], [ %i.js, %.sink.split.loopexit524.unr-lcssa ], [ %4, %.preheader.i.epil ], [ %i.js, %.preheader.i341.epil ], [ %4, %.preheader.i361.epil ], [ %4, %.sink.split.loopexit525.unr-lcssa ]
  %.sink = phi float [ %i.gz, %.sink.split.loopexit.unr-lcssa ], [ %i.hl, %.sink.split.loopexit524.unr-lcssa ], [ %i.gz, %.preheader.i.epil ], [ %i.hl, %.preheader.i341.epil ], [ %i.hs, %.preheader.i361.epil ], [ %i.hs, %.sink.split.loopexit525.unr-lcssa ]
  %.idx.i = shl i64 %.sink517, 5
  %i.mj = getelementptr i8, ptr %11, i64 %.idx.i
  %i.mk = getelementptr [4 x i8], ptr %i.mj, i64 %.sink516
  store float %.sink, ptr %i.mk, align 4, !tbaa !69
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.aw, %bb.aq, %bb.ax, %bb.au, %bb.ar, %bb.ao, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ab, %bb.z
  %.sroa.0390.0 = phi i32 [ %i.lj, %bb.ax ], [ %i.gx, %bb.ai ], [ %i.is, %bb.ao ], [ %i.hx, %bb.ak ], [ %i.kl, %bb.au ], [ %i.jq, %bb.ar ], [ %i.gt, %bb.ag ], [ %i.gm, %bb.ae ], [ %i.gf, %bb.ab ], [ %i.fy, %bb.z ], [ 0, %bb.aw ], [ 0, %bb.aq ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  br label %_ZN3jxl6N_SSE444MultiBlockTransformCrossesHorizontalBoundaryERKNS_15AcStrategyImageEmmm.exit.thread438

_ZN3jxl6N_SSE444MultiBlockTransformCrossesHorizontalBoundaryERKNS_15AcStrategyImageEmmm.exit.thread438: ; preds = %.lr.ph56.i, %.lr.ph56.i251, %.lr.ph64.i, %.lr.ph64.i274, %bb.az
  %.sroa.0390.1 = phi i32 [ %.sroa.0390.0, %bb.az ], [ 0, %.lr.ph64.i274 ], [ 0, %.lr.ph64.i ], [ 0, %.lr.ph56.i251 ], [ 0, %.lr.ph56.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  ret i32 %.sroa.0390.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE414ProcessRectACSERKNS_14CompressParamsERKNS_9ACSConfigERKNS_5RectTImEERKNS_19ColorCorrelationMapEPfPjPNS_15AcStrategyImageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %3, ptr noalias noundef %4, ptr noalias nofree readnone captures(none) %5, ptr noundef %6) #5 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 12 uses
  %i.b = alloca [64 x float], align 16            ; 10 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 4 uses
  %i.f = load float, ptr %0, align 8, !tbaa !159  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 786432 ; 7 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !161    ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !162  ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !163  ; 4 uses
  %i.m = icmp ult i64 %i.l, 9
  br i1 %i.m, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !164  ; 4 uses
  %i.p = icmp ult i64 %i.o, 9
  br i1 %i.p, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %bb.b
  %i.q = lshr i64 %i.h, 3                         ; 2 uses
  %i.r = lshr i64 %i.j, 3                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !65
  %i.w = mul i64 %i.v, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.x, i64 64) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.q
  %i.z = load i8, ptr %i.y, align 1, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !166
  %i.ac = sitofp i8 %i.z to float
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 132
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !167 ; 2 uses
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.ac, float %i.ae, float %i.ab)
  store float %i.af, ptr %i.a, align 4, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !65
  %i.am = mul i64 %i.al, %i.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.an, i64 64) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.q
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !168
  %i.as = sitofp i8 %i.ap to float
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.as, float %i.ae, float %i.ar)
  store float %i.at, ptr %i.ah, align 4, !tbaa !69
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !169
  %i.aw = icmp sgt i32 %i.av, 5
  br i1 %i.aw, label %bb.ag, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.ax = fadd float %i.f, 1.400000e+00
  %i.ay = fdiv float 4.000000e-01, %i.ax
  %i.az = fsub float 1.000000e+00, %i.ay
  %.not229331.not = icmp eq i64 %i.o, 0
  br i1 %.not229331.not, label %.critedge246, label %.preheader326.lr.ph

.preheader326.lr.ph:                              ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %.not348 = icmp eq i64 %i.l, 0
  br i1 %.not348, label %.critedge246, label %.preheader326

.preheader326:                                    ; preds = %.preheader326.lr.ph, %.critedge244
  %i.bc = phi i64 [ %i.dk, %.critedge244 ], [ %i.l, %.preheader326.lr.ph ]
  %i.bd = phi i64 [ %i.dl, %.critedge244 ], [ %i.o, %.preheader326.lr.ph ]
  %i.be = phi i64 [ %i.dm, %.critedge244 ], [ 1, %.preheader326.lr.ph ]
  %.0221332 = phi i64 [ %i.dn, %.critedge244 ], [ 0, %.preheader326.lr.ph ] ; 3 uses
  %.not329.not = icmp eq i64 %i.be, 0
  br i1 %.not329.not, label %.critedge244, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader326
  %i.bf = add i64 %.0221332, %i.j                 ; 2 uses
  %i.bg = shl i64 %i.bf, 3
  %.idx = shl i64 %.0221332, 5
  %i.bh = getelementptr i8, ptr %i.b, i64 %.idx
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge
  %.0222330 = phi i64 [ 0, %.lr.ph ], [ %i.di, %.critedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #51
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #51
  %i.bi = add i64 %.0222330, %i.h                 ; 4 uses
  %i.bj = shl i64 %i.bi, 3
  %i.bk = load i32, ptr %i.au, align 4, !tbaa !169
  %i.bl = call i32 @_ZN3jxl6N_SSE420FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeE(i64 noundef %i.bj, i64 noundef %i.bg, i32 noundef %i.bk, float noundef %i.f, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.a, ptr poison, ptr noundef %4, ptr noundef nonnull %i.g, ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #49 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.d, align 4, !tbaa !105 ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !66
  %i.br = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.bo
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !66
  %i.bt = shl nuw i32 %i.bn, 1                    ; 3 uses
  %i.bu = tail call i8 @llvm.umax.i8(i8 %i.bs, i8 1) ; 2 uses
  %umax46.i.i = zext i8 %i.bu to i64              ; 2 uses
  %i.bv = tail call i8 @llvm.umax.i8(i8 %i.bq, i8 1)
  %umax48.i.i = zext i8 %i.bv to i64
  %xtraiter = and i64 %umax46.i.i, 1
  %i.bw = shl nuw i64 1, %i.bo
  %i.bx = and i64 %i.bw, 258383
  %.not469 = icmp eq i64 %i.bx, 0
  %unroll_iter = and i64 %umax46.i.i, 254
  %i.by = trunc i32 %i.bt to i8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod468 = trunc i8 %i.bu to i1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %..critedge25_crit_edge.split.i.i, %bb.f
  %.038.i.i = phi i64 [ %i.de, %..critedge25_crit_edge.split.i.i ], [ 0, %bb.f ] ; 4 uses
  %i.bz = add i64 %.038.i.i, %i.bf                ; 3 uses
  br i1 %.not469, label %.preheader.i.i.new, label %.epil.preheader

.preheader.i.i.new:                               ; preds = %.preheader.i.i, %.preheader.i.i.new
  %.02036.i.i = phi i64 [ %i.cs, %.preheader.i.i.new ], [ 0, %.preheader.i.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.new ], [ 0, %.preheader.i.i ]
  %i.ca = load i64, ptr %i.ba, align 8, !tbaa !110
  %i.cb = mul i64 %i.ca, %i.bz
  %i.cc = or i64 %.02036.i.i, %.038.i.i
  %i.cd = icmp eq i64 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = or disjoint i32 %i.bt, %i.ce
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = load ptr, ptr %i.bb, align 8, !tbaa !111
  %i.ci = getelementptr i8, ptr %i.ch, i64 %.02036.i.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.bi
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.cb
  store i8 %i.cg, ptr %i.ck, align 1, !tbaa !66
  %i.cl = load i64, ptr %i.ba, align 8, !tbaa !110
  %i.cm = mul i64 %i.cl, %i.bz
  %i.cn = load ptr, ptr %i.bb, align 8, !tbaa !111
  %i.co = getelementptr i8, ptr %i.cn, i64 %.02036.i.i
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.bi
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cm
  store i8 %i.by, ptr %i.cr, align 1, !tbaa !66
  %i.cs = add nuw nsw i64 %.02036.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..critedge25_crit_edge.split.i.i.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !7

..critedge25_crit_edge.split.i.i.unr-lcssa:       ; preds = %.preheader.i.i.new
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_AVX220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeE:bb.a
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
  %.sroa.071.0.insert.ext = zext i32 %0 to i64    ; 5 uses
  %.sroa.071.0.insert.insert = or disjoint i64 %.sroa.071.0.insert.ext, 4294967296
  %i.b = trunc nuw nsw i64 %.sroa.071.0.insert.insert to i40
  store i40 %i.b, ptr %15, align 8
  %i.c = zext i32 %0 to i64                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66
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
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !66
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
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.071.0.insert.ext
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.071.0.insert.ext
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bd = shl nuw i32 %0, 1                       ; 3 uses
  %i.be = tail call i8 @llvm.umax.i8(i8 %i.ba, i8 1)
  %umax46.i.i = zext i8 %i.be to i64              ; 6 uses
  %i.bf = tail call i8 @llvm.umax.i8(i8 %i.ay, i8 1)
  %umax48.i.i = zext i8 %i.bf to i64
  %i.bg = load i64, ptr %i.bb, align 8, !tbaa !110
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !111
  %invariant.gep = getelementptr i8, ptr %i.bh, i64 %i.u
  %i.bi = shl nuw i64 1, %.sroa.071.0.insert.ext
  %i.bj = and i64 %i.bi, 259551
  %min.iters.check.not = icmp eq i64 %i.bj, 0
  %i.bk = shl nuw i64 1, %.sroa.071.0.insert.ext
  %i.bl = and i64 %i.bk, 6291455
  %min.iters.check113.not = icmp eq i64 %i.bl, 0
  %i.bm = and i64 %umax46.i.i, 12
  %n.vec = and i64 %umax46.i.i, 240               ; 4 uses
  %broadcast.splatinsert114 = insertelement <16 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat115 = shufflevector <16 x i32> %broadcast.splatinsert114, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %umax46.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  %n.vec116 = and i64 %umax46.i.i, 252            ; 3 uses
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n127 = icmp eq i64 %n.vec116, %umax46.i.i
  br label %iter.check

iter.check:                                       ; preds = %..critedge25_crit_edge.split.i.i, %._crit_edge95.split
  %.038.i.i = phi i64 [ %i.cj, %..critedge25_crit_edge.split.i.i ], [ 0, %._crit_edge95.split ] ; 5 uses
  %i.bn = add i64 %.038.i.i, %i.w
  %i.bo = mul i64 %i.bg, %i.bn
  %invariant.gep96 = getelementptr i8, ptr %invariant.gep, i64 %i.bo ; 3 uses
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
  %i.bp = or <16 x i64> %vec.ind, %broadcast.splat
  %i.bq = icmp eq <16 x i64> %i.bp, zeroinitializer
  %i.br = zext <16 x i1> %i.bq to <16 x i32>
  %i.bs = or disjoint <16 x i32> %broadcast.splat115, %i.br
  %i.bt = trunc <16 x i32> %i.bs to <16 x i8>
  %i.bu = getelementptr i8, ptr %invariant.gep96, i64 %index
  store <16 x i8> %i.bt, ptr %i.bu, align 1, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !2080

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
  %i.bw = or <4 x i64> %vec.ind124, %broadcast.splat118
  %i.bx = icmp eq <4 x i64> %i.bw, zeroinitializer
  %i.by = zext <4 x i1> %i.bx to <4 x i32>
  %i.bz = or disjoint <4 x i32> %broadcast.splat120, %i.by
  %i.ca = trunc <4 x i32> %i.bz to <4 x i8>
  %i.cb = getelementptr i8, ptr %invariant.gep96, i64 %index123
  store <4 x i8> %i.ca, ptr %i.cb, align 1, !tbaa !66
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %vec.ind.next126 = add nuw nsw <4 x i64> %vec.ind124, splat (i64 4)
  %i.cc = icmp eq i64 %index.next125, %n.vec116
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2081

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02036.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec116, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.02036.i.i = phi i64 [ %i.ci, %vec.epilog.scalar.ph ], [ %.02036.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cd = or i64 %.02036.i.i, %.038.i.i
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = or disjoint i32 %i.bd, %i.cf
  %i.ch = trunc i32 %i.cg to i8
  %gep97 = getelementptr i8, ptr %invariant.gep96, i64 %.02036.i.i
  store i8 %i.ch, ptr %gep97, align 1, !tbaa !66
  %i.ci = add nuw nsw i64 %.02036.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ci, %umax46.i.i
  br i1 %exitcond.not.i.i, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph, !llvm.loop !2082

..critedge25_crit_edge.split.i.i:                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cj = add nuw nsw i64 %.038.i.i, 1            ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %i.cj, %umax48.i.i
  br i1 %exitcond45.not.i.i, label %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit, label %iter.check, !llvm.loop !6

_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit: ; preds = %..critedge25_crit_edge.split.i.i
  %.idx = shl i64 %4, 5
  %i.ck = getelementptr i8, ptr %11, i64 %.idx
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %3
  store float %i.aa, ptr %i.cl, align 4, !tbaa !69
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
end_hunk_2
begin_hunk_3_@_ZN3jxl6N_AVX235FindBestFirstLevelDivisionForSquareEmbmmmmRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEffPfS8_S8_Pj:bb.a
  %i.ew = udiv i64 %.0459, %i.g
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ew ; 3 uses
  br i1 %i.eu, label %.epil.preheader, label %.preheader.new

._crit_edge:                                      ; preds = %bb.x, %_ZN3jxl6N_AVX244MultiBlockTransformCrossesHorizontalBoundaryERKNS_15AcStrategyImageEmmm.exit315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  store float f0x7F7FFFFF, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #51
  store float f0x7F7FFFFF, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #51
  store float f0x7F7FFFFF, ptr %i.d, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #51
  store float f0x7F7FFFFF, ptr %i.e, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #51
  br i1 %.4.i281, label %bb.ac, label %bb.y

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %bb.x, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.0225458.epil.init = phi i64 [ 0, %.preheader ], [ %i.fs, %.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod530)
  %i.ey = getelementptr [4 x i8], ptr %gep, i64 %.0225458.epil.init
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !69
  %i.fa = udiv i64 %.0225458.epil.init, %i.g
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fa ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !69
  %i.fd = fadd float %i.ez, %i.fc
  store float %i.fd, ptr %i.fb, align 4, !tbaa !69
  br label %bb.x

bb.x:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.fe = add nuw i64 %.0459, 1                   ; 2 uses
  %exitcond465.not = icmp eq i64 %i.fe, %0
  br i1 %exitcond465.not, label %._crit_edge, label %.preheader, !llvm.loop !2083

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.0225458 = phi i64 [ %i.fs, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ff = getelementptr [4 x i8], ptr %gep, i64 %.0225458
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !69
  %i.fh = udiv i64 %.0225458, %i.g
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fh ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !69
  %i.fk = fadd float %i.fg, %i.fj
  store float %i.fk, ptr %i.fi, align 4, !tbaa !69
  %i.fl = or disjoint i64 %.0225458, 1            ; 2 uses
  %i.fm = getelementptr [4 x i8], ptr %gep, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !69
  %i.fo = udiv i64 %i.fl, %i.g
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !69
  %i.fr = fadd float %i.fn, %i.fq
  store float %i.fr, ptr %i.fp, align 4, !tbaa !69
  %i.fs = add nuw i64 %.0225458, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.new, !llvm.loop !2084

bb.y:                                             ; preds = %._crit_edge
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !66
  %i.fv = lshr i8 %i.fu, 1
  %.sroa.0384.0.extract.trunc = zext nneg i8 %i.fv to i32
  %.not = icmp eq i32 %switch.select5.i, %.sroa.0384.0.extract.trunc
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fw = shl i64 %i.u, 3
  %i.fx = shl i64 %i.k, 3
  %i.fy = call i32 @_ZN3jxl6N_AVX215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %15, float noundef %9, i64 noundef %i.fw, i64 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #49 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.aa, label %bb.az

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ga = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dd
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !66
  %i.gc = lshr i8 %i.gb, 1
  %.sroa.0382.0.extract.trunc = zext nneg i8 %i.gc to i32
  %.not228 = icmp eq i32 %switch.select5.i, %.sroa.0382.0.extract.trunc
  br i1 %.not228, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gd = shl i64 %i.dd, 3
  %i.ge = shl i64 %i.k, 3
  %i.gf = call i32 @_ZN3jxl6N_AVX215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %15, float noundef %9, i64 noundef %i.gd, i64 noundef %i.ge, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #49 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.ac, label %bb.az

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %._crit_edge
  br i1 %.2.i299, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !66
  %i.gj = lshr i8 %i.gi, 1
  %.sroa.0380.0.extract.trunc = zext nneg i8 %i.gj to i32
  %.not229 = icmp eq i32 %switch.select5.i234, %.sroa.0380.0.extract.trunc
  br i1 %.not229, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = shl i64 %i.u, 3
  %i.gl = shl i64 %i.k, 3
  %i.gm = call i32 @_ZN3jxl6N_AVX215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %16, float noundef %9, i64 noundef %i.gk, i64 noundef %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #49 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.af, label %bb.az

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.go = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !66
  %i.gq = lshr i8 %i.gp, 1
  %.sroa.0.0.extract.trunc = zext nneg i8 %i.gq to i32
  %.not230 = icmp eq i32 %switch.select5.i234, %.sroa.0.0.extract.trunc
  br i1 %.not230, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gr = shl i64 %i.u, 3
  %i.gs = shl i64 %i.r, 3
  %i.gt = call i32 @_ZN3jxl6N_AVX215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %16, float noundef %9, i64 noundef %i.gr, i64 noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.e) #49 ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.ah, label %bb.az

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ac
  br i1 %1, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gv = shl i64 %i.u, 3
  %i.gw = shl i64 %i.k, 3
  %i.gx = call i32 @_ZN3jxl6N_AVX215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %17, float noundef %10, i64 noundef %i.gv, i64 noundef %i.gw, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #49 ; 2 uses
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %._crit_edge466, label %bb.az

._crit_edge466:                                   ; preds = %bb.ai
  %.pre = load float, ptr %i.f, align 4, !tbaa !69
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge466, %bb.ah
  %i.gz = phi float [ %.pre, %._crit_edge466 ], [ f0x7F7FFFFF, %bb.ah ] ; 4 uses
  %i.ha = load float, ptr %i.a, align 16, !tbaa !69 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hc = load float, ptr %i.hb, align 8, !tbaa !69 ; 2 uses
  %i.hd = fadd float %i.ha, %i.hc                 ; 3 uses
  %i.he = load float, ptr %i.b, align 4, !tbaa !69 ; 4 uses
  %i.hf = fcmp olt float %i.hd, %i.he
  %.sroa.speculated377 = select i1 %i.hf, float %i.hd, float %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !69 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !69 ; 2 uses
  %i.hk = fadd float %i.hh, %i.hj                 ; 3 uses
  %i.hl = load float, ptr %i.c, align 4, !tbaa !69 ; 5 uses
  %i.hm = fcmp olt float %i.hk, %i.hl
  %.sroa.speculated373 = select i1 %i.hm, float %i.hk, float %i.hl
  %i.hn = fadd float %.sroa.speculated377, %.sroa.speculated373 ; 2 uses
  %i.ho = fadd float %i.ha, %i.hh                 ; 3 uses
  %i.hp = load float, ptr %i.d, align 4, !tbaa !69 ; 4 uses
  %i.hq = fcmp olt float %i.ho, %i.hp
  %.sroa.speculated369 = select i1 %i.hq, float %i.ho, float %i.hp
  %i.hr = fadd float %i.hc, %i.hj                 ; 3 uses
  %i.hs = load float, ptr %i.e, align 4, !tbaa !69 ; 5 uses
  %i.ht = fcmp olt float %i.hr, %i.hs
  %.sroa.speculated = select i1 %i.ht, float %i.hr, float %i.hs
  %i.hu = fadd float %.sroa.speculated369, %.sroa.speculated ; 2 uses
  %i.hv = fcmp olt float %i.gz, %i.hn
  %i.hw = fcmp olt float %i.gz, %i.hu
  %or.cond = select i1 %i.hv, i1 %i.hw, i1 false
  br i1 %or.cond, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hx = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.k, i32 noundef %switch.select5.i238) #49 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.al, label %bb.az

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  %i.hz = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0421.0.insert.ext
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !66, !noalias !2101
  %i.ib = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0421.0.insert.ext
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !66, !noalias !2101
  %i.id = tail call i8 @llvm.umax.i8(i8 %i.ic, i8 1)
  %umax.i = zext i8 %i.id to i64
  %i.ie = shl nuw nsw i64 %umax.i, 2              ; 5 uses
  %i.if = tail call i8 @llvm.umax.i8(i8 %i.ia, i8 1)
  %umax22.i = zext i8 %i.if to i64                ; 2 uses
  %xtraiter558 = and i64 %umax22.i, 3             ; 3 uses
  %i.ig = shl nuw nsw i64 1, %.sroa.0421.0.insert.ext
  %i.ih = and i64 %i.ig, 196830
  %.not568 = icmp eq i64 %i.ih, 0
  br i1 %.not568, label %.new557, label %.preheader.i.epil.preheader

.new557:                                          ; preds = %bb.al
  %unroll_iter562 = and i64 %umax22.i, 252
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.new557
  %.01320.i = phi i64 [ 0, %.new557 ], [ %i.ip, %.preheader.i ] ; 5 uses
  %niter563 = phi i64 [ 0, %.new557 ], [ %niter563.next.3, %.preheader.i ]
  %i.ii = add i64 %.01320.i, %5
  %.idx14.i = shl i64 %i.ii, 5
  %gep.i = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !2101
  %i.ij = or disjoint i64 %.01320.i, 1
  %i.ik = add i64 %i.ij, %5
  %.idx14.i.1 = shl i64 %i.ik, 5
  %gep.i.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.1, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !2101
  %i.il = or disjoint i64 %.01320.i, 2
  %i.im = add i64 %i.il, %5
  %.idx14.i.2 = shl i64 %i.im, 5
  %gep.i.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.2, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !2101
  %i.in = or disjoint i64 %.01320.i, 3
  %i.io = add i64 %i.in, %5
  %.idx14.i.3 = shl i64 %i.io, 5
  %gep.i.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.3, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !2101
  %i.ip = add nuw nsw i64 %.01320.i, 4            ; 2 uses
  %niter563.next.3 = add i64 %niter563, 4         ; 2 uses
  %niter563.ncmp.3 = icmp eq i64 %niter563.next.3, %unroll_iter562
  br i1 %niter563.ncmp.3, label %.sink.split.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !2087

bb.am:                                            ; preds = %bb.aj
  %i.iq = fcmp olt float %i.hn, %i.hu
  br i1 %i.iq, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.ir = fcmp olt float %i.he, %i.hd
  br i1 %i.ir, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.is = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.k, i32 noundef %switch.select5.i) #49 ; 2 uses
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  %i.iu = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !66, !noalias !2102
  %i.iw = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !66, !noalias !2102
  %i.iy = tail call i8 @llvm.umax.i8(i8 %i.ix, i8 1)
  %umax.i329 = zext i8 %i.iy to i64
  %i.iz = shl nuw nsw i64 %umax.i329, 2           ; 5 uses
  %i.ja = tail call i8 @llvm.umax.i8(i8 %i.iv, i8 1)
  %umax22.i330 = zext i8 %i.ja to i64             ; 2 uses
  %xtraiter544 = and i64 %umax22.i330, 3          ; 3 uses
  %i.jb = shl nuw nsw i64 1, %.sroa.0430.0.insert.ext
  %i.jc = and i64 %i.jb, 51404
  %.not566 = icmp eq i64 %i.jc, 0
  br i1 %.not566, label %.new543, label %.preheader.i331.epil.preheader

.new543:                                          ; preds = %bb.ap
  %unroll_iter548 = and i64 %umax22.i330, 252
  br label %.preheader.i331

.preheader.i331:                                  ; preds = %.preheader.i331, %.new543
  %.01320.i332 = phi i64 [ 0, %.new543 ], [ %i.jk, %.preheader.i331 ] ; 5 uses
  %niter549 = phi i64 [ 0, %.new543 ], [ %niter549.next.3, %.preheader.i331 ]
  %i.jd = add i64 %.01320.i332, %5
  %.idx14.i333 = shl i64 %i.jd, 5
  %gep.i334 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !2102
  %i.je = or disjoint i64 %.01320.i332, 1
  %i.jf = add i64 %i.je, %5
  %.idx14.i333.1 = shl i64 %i.jf, 5
  %gep.i334.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.1, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !2102
  %i.jg = or disjoint i64 %.01320.i332, 2
  %i.jh = add i64 %i.jg, %5
  %.idx14.i333.2 = shl i64 %i.jh, 5
  %gep.i334.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.2, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !2102
  %i.ji = or disjoint i64 %.01320.i332, 3
  %i.jj = add i64 %i.ji, %5
  %.idx14.i333.3 = shl i64 %i.jj, 5
  %gep.i334.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.3, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !2102
  %i.jk = add nuw nsw i64 %.01320.i332, 4         ; 2 uses
  %niter549.next.3 = add i64 %niter549, 4         ; 2 uses
  %niter549.ncmp.3 = icmp eq i64 %niter549.next.3, %unroll_iter548
  br i1 %niter549.ncmp.3, label %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa, label %.preheader.i331, !llvm.loop !2087

_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa: ; preds = %.preheader.i331
  %lcmp.mod546.not = icmp eq i64 %xtraiter544, 0
  br i1 %lcmp.mod546.not, label %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337, label %.preheader.i331.epil.preheader

.preheader.i331.epil.preheader:                   ; preds = %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa, %bb.ap
  %.01320.i332.epil.init = phi i64 [ 0, %bb.ap ], [ %i.jk, %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa ]
  %lcmp.mod547 = icmp ne i64 %xtraiter544, 0
  tail call void @llvm.assume(i1 %lcmp.mod547)
  br label %.preheader.i331.epil

.preheader.i331.epil:                             ; preds = %.preheader.i331.epil, %.preheader.i331.epil.preheader
  %.01320.i332.epil = phi i64 [ %i.jm, %.preheader.i331.epil ], [ %.01320.i332.epil.init, %.preheader.i331.epil.preheader ] ; 2 uses
  %epil.iter545 = phi i64 [ %epil.iter545.next, %.preheader.i331.epil ], [ 0, %.preheader.i331.epil.preheader ]
  %i.jl = add i64 %.01320.i332.epil, %5
  %.idx14.i333.epil = shl i64 %i.jl, 5
  %gep.i334.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.epil, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !2102
  %i.jm = add nuw nsw i64 %.01320.i332.epil, 1
  %epil.iter545.next = add i64 %epil.iter545, 1   ; 2 uses
  %epil.iter545.cmp.not = icmp eq i64 %epil.iter545.next, %xtraiter544
  br i1 %epil.iter545.cmp.not, label %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337, label %.preheader.i331.epil, !llvm.loop !2090

_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337: ; preds = %.preheader.i331.epil, %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa
  %.idx.i336 = shl i64 %5, 5
  %i.jn = getelementptr i8, ptr %11, i64 %.idx.i336
  %i.jo = getelementptr [4 x i8], ptr %i.jn, i64 %4
  store float %i.he, ptr %i.jo, align 4, !tbaa !69, !alias.scope !2102
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337, %bb.an
  %i.jp = fcmp olt float %i.hl, %i.hk
  br i1 %i.jp, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.jq = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.dd, i64 noundef %i.k, i32 noundef %switch.select5.i) #49 ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.js = add i64 %4, %i.g                        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.jt = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !66, !noalias !2103
  %invariant.gep.i338 = getelementptr [4 x i8], ptr %11, i64 %i.js ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !66, !noalias !2103
  %i.jx = tail call i8 @llvm.umax.i8(i8 %i.jw, i8 1)
  %umax.i339 = zext i8 %i.jx to i64
  %i.jy = shl nuw nsw i64 %umax.i339, 2           ; 5 uses
  %i.jz = tail call i8 @llvm.umax.i8(i8 %i.ju, i8 1)
  %umax22.i340 = zext i8 %i.jz to i64             ; 2 uses
  %xtraiter551 = and i64 %umax22.i340, 3          ; 3 uses
  %i.ka = shl nuw nsw i64 1, %.sroa.0430.0.insert.ext
  %i.kb = and i64 %i.ka, 51404
  %.not567 = icmp eq i64 %i.kb, 0
  br i1 %.not567, label %.new550, label %.preheader.i341.epil.preheader

.new550:                                          ; preds = %bb.as
  %unroll_iter555 = and i64 %umax22.i340, 252
  br label %.preheader.i341

.preheader.i341:                                  ; preds = %.preheader.i341, %.new550
  %.01320.i342 = phi i64 [ 0, %.new550 ], [ %i.kj, %.preheader.i341 ] ; 5 uses
  %niter556 = phi i64 [ 0, %.new550 ], [ %niter556.next.3, %.preheader.i341 ]
  %i.kc = add i64 %.01320.i342, %5
  %.idx14.i343 = shl i64 %i.kc, 5
  %gep.i344 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !2103
  %i.kd = or disjoint i64 %.01320.i342, 1
  %i.ke = add i64 %i.kd, %5
  %.idx14.i343.1 = shl i64 %i.ke, 5
  %gep.i344.1 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.1, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !2103
  %i.kf = or disjoint i64 %.01320.i342, 2
  %i.kg = add i64 %i.kf, %5
  %.idx14.i343.2 = shl i64 %i.kg, 5
  %gep.i344.2 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.2, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !2103
  %i.kh = or disjoint i64 %.01320.i342, 3
  %i.ki = add i64 %i.kh, %5
  %.idx14.i343.3 = shl i64 %i.ki, 5
  %gep.i344.3 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.3, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !2103
  %i.kj = add nuw nsw i64 %.01320.i342, 4         ; 2 uses
  %niter556.next.3 = add i64 %niter556, 4         ; 2 uses
  %niter556.ncmp.3 = icmp eq i64 %niter556.next.3, %unroll_iter555
  br i1 %niter556.ncmp.3, label %.sink.split.loopexit524.unr-lcssa, label %.preheader.i341, !llvm.loop !2087

bb.at:                                            ; preds = %bb.am
  %i.kk = fcmp olt float %i.hp, %i.ho
  br i1 %i.kk, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kl = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.k, i32 noundef %switch.select5.i234) #49 ; 2 uses
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  %i.kn = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !66, !noalias !2104
  %i.kp = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !66, !noalias !2104
  %i.kr = tail call i8 @llvm.umax.i8(i8 %i.kq, i8 1)
  %umax.i349 = zext i8 %i.kr to i64
  %i.ks = shl nuw nsw i64 %umax.i349, 2           ; 5 uses
  %i.kt = tail call i8 @llvm.umax.i8(i8 %i.ko, i8 1)
  %umax22.i350 = zext i8 %i.kt to i64             ; 2 uses
  %xtraiter531 = and i64 %umax22.i350, 3          ; 3 uses
  %i.ku = shl nuw nsw i64 1, %.sroa.0423.0.insert.ext
  %i.kv = and i64 %i.ku, 260830
  %.not564 = icmp eq i64 %i.kv, 0
  br i1 %.not564, label %.new, label %.preheader.i351.epil.preheader

.new:                                             ; preds = %bb.av
  %unroll_iter534 = and i64 %umax22.i350, 252
  br label %.preheader.i351

.preheader.i351:                                  ; preds = %.preheader.i351, %.new
  %.01320.i352 = phi i64 [ 0, %.new ], [ %i.ld, %.preheader.i351 ] ; 5 uses
  %niter535 = phi i64 [ 0, %.new ], [ %niter535.next.3, %.preheader.i351 ]
  %i.kw = add i64 %.01320.i352, %5
  %.idx14.i353 = shl i64 %i.kw, 5
  %gep.i354 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !2104
  %i.kx = or disjoint i64 %.01320.i352, 1
  %i.ky = add i64 %i.kx, %5
  %.idx14.i353.1 = shl i64 %i.ky, 5
  %gep.i354.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.1, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !2104
  %i.kz = or disjoint i64 %.01320.i352, 2
  %i.la = add i64 %i.kz, %5
  %.idx14.i353.2 = shl i64 %i.la, 5
  %gep.i354.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.2, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !2104
  %i.lb = or disjoint i64 %.01320.i352, 3
  %i.lc = add i64 %i.lb, %5
  %.idx14.i353.3 = shl i64 %i.lc, 5
  %gep.i354.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.3, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !2104
  %i.ld = add nuw nsw i64 %.01320.i352, 4         ; 2 uses
  %niter535.next.3 = add i64 %niter535, 4         ; 2 uses
  %niter535.ncmp.3 = icmp eq i64 %niter535.next.3, %unroll_iter534
  br i1 %niter535.ncmp.3, label %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa, label %.preheader.i351, !llvm.loop !2087

_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa: ; preds = %.preheader.i351
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br i1 %lcmp.mod532.not, label %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357, label %.preheader.i351.epil.preheader

.preheader.i351.epil.preheader:                   ; preds = %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa, %bb.av
  %.01320.i352.epil.init = phi i64 [ 0, %bb.av ], [ %i.ld, %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa ]
  %lcmp.mod533 = icmp ne i64 %xtraiter531, 0
  tail call void @llvm.assume(i1 %lcmp.mod533)
  br label %.preheader.i351.epil

.preheader.i351.epil:                             ; preds = %.preheader.i351.epil, %.preheader.i351.epil.preheader
  %.01320.i352.epil = phi i64 [ %i.lf, %.preheader.i351.epil ], [ %.01320.i352.epil.init, %.preheader.i351.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i351.epil ], [ 0, %.preheader.i351.epil.preheader ]
  %i.le = add i64 %.01320.i352.epil, %5
  %.idx14.i353.epil = shl i64 %i.le, 5
  %gep.i354.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.epil, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !2104
  %i.lf = add nuw nsw i64 %.01320.i352.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter531
  br i1 %epil.iter.cmp.not, label %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357, label %.preheader.i351.epil, !llvm.loop !2095

_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357: ; preds = %.preheader.i351.epil, %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa
  %.idx.i356 = shl i64 %5, 5
  %i.lg = getelementptr i8, ptr %11, i64 %.idx.i356
  %i.lh = getelementptr [4 x i8], ptr %i.lg, i64 %4
  store float %i.hp, ptr %i.lh, align 4, !tbaa !69, !alias.scope !2104
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN3jxl6N_AVX2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357, %bb.at
  %i.li = fcmp olt float %i.hs, %i.hr
  br i1 %i.li, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.lj = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.r, i32 noundef %switch.select5.i234) #49 ; 2 uses
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ll = add i64 %5, %i.g                        ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  %i.lm = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !66, !noalias !2105
  %i.lo = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !66, !noalias !2105
  %i.lq = tail call i8 @llvm.umax.i8(i8 %i.lp, i8 1)
  %umax.i359 = zext i8 %i.lq to i64
  %i.lr = shl nuw nsw i64 %umax.i359, 2           ; 5 uses
  %i.ls = tail call i8 @llvm.umax.i8(i8 %i.ln, i8 1)
  %umax22.i360 = zext i8 %i.ls to i64             ; 2 uses
  %xtraiter537 = and i64 %umax22.i360, 3          ; 3 uses
  %i.lt = shl nuw nsw i64 1, %.sroa.0423.0.insert.ext
  %i.lu = and i64 %i.lt, 260830
  %.not565 = icmp eq i64 %i.lu, 0
  br i1 %.not565, label %.new536, label %.preheader.i361.epil.preheader

.new536:                                          ; preds = %bb.ay
  %unroll_iter541 = and i64 %umax22.i360, 252
  br label %.preheader.i361

.preheader.i361:                                  ; preds = %.preheader.i361, %.new536
  %.01320.i362 = phi i64 [ 0, %.new536 ], [ %i.mc, %.preheader.i361 ] ; 5 uses
  %niter542 = phi i64 [ 0, %.new536 ], [ %niter542.next.3, %.preheader.i361 ]
  %i.lv = add i64 %.01320.i362, %i.ll
  %.idx14.i363 = shl i64 %i.lv, 5
  %gep.i364 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !2105
  %i.lw = or disjoint i64 %.01320.i362, 1
  %i.lx = add i64 %i.lw, %i.ll
  %.idx14.i363.1 = shl i64 %i.lx, 5
  %gep.i364.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.1, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !2105
  %i.ly = or disjoint i64 %.01320.i362, 2
  %i.lz = add i64 %i.ly, %i.ll
  %.idx14.i363.2 = shl i64 %i.lz, 5
  %gep.i364.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.2, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !2105
  %i.ma = or disjoint i64 %.01320.i362, 3
  %i.mb = add i64 %i.ma, %i.ll
  %.idx14.i363.3 = shl i64 %i.mb, 5
  %gep.i364.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.3, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !2105
  %i.mc = add nuw nsw i64 %.01320.i362, 4         ; 2 uses
  %niter542.next.3 = add i64 %niter542, 4         ; 2 uses
  %niter542.ncmp.3 = icmp eq i64 %niter542.next.3, %unroll_iter541
  br i1 %niter542.ncmp.3, label %.sink.split.loopexit525.unr-lcssa, label %.preheader.i361, !llvm.loop !2087

.sink.split.loopexit.unr-lcssa:                   ; preds = %.preheader.i
  %lcmp.mod560.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod560.not, label %.sink.split, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.sink.split.loopexit.unr-lcssa, %bb.al
  %.01320.i.epil.init = phi i64 [ 0, %bb.al ], [ %i.ip, %.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod561 = icmp ne i64 %xtraiter558, 0
  tail call void @llvm.assume(i1 %lcmp.mod561)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.01320.i.epil = phi i64 [ %i.me, %.preheader.i.epil ], [ %.01320.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter559 = phi i64 [ %epil.iter559.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.md = add i64 %.01320.i.epil, %5
  %.idx14.i.epil = shl i64 %i.md, 5
  %gep.i.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.epil, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !2101
  %i.me = add nuw nsw i64 %.01320.i.epil, 1
  %epil.iter559.next = add i64 %epil.iter559, 1   ; 2 uses
  %epil.iter559.cmp.not = icmp eq i64 %epil.iter559.next, %xtraiter558
  br i1 %epil.iter559.cmp.not, label %.sink.split, label %.preheader.i.epil, !llvm.loop !2098

.sink.split.loopexit524.unr-lcssa:                ; preds = %.preheader.i341
  %lcmp.mod553.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod553.not, label %.sink.split, label %.preheader.i341.epil.preheader

.preheader.i341.epil.preheader:                   ; preds = %.sink.split.loopexit524.unr-lcssa, %bb.as
  %.01320.i342.epil.init = phi i64 [ 0, %bb.as ], [ %i.kj, %.sink.split.loopexit524.unr-lcssa ]
  %lcmp.mod554 = icmp ne i64 %xtraiter551, 0
  tail call void @llvm.assume(i1 %lcmp.mod554)
  br label %.preheader.i341.epil

.preheader.i341.epil:                             ; preds = %.preheader.i341.epil, %.preheader.i341.epil.preheader
  %.01320.i342.epil = phi i64 [ %i.mg, %.preheader.i341.epil ], [ %.01320.i342.epil.init, %.preheader.i341.epil.preheader ] ; 2 uses
  %epil.iter552 = phi i64 [ %epil.iter552.next, %.preheader.i341.epil ], [ 0, %.preheader.i341.epil.preheader ]
  %i.mf = add i64 %.01320.i342.epil, %5
  %.idx14.i343.epil = shl i64 %i.mf, 5
  %gep.i344.epil = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.epil, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !2103
  %i.mg = add nuw nsw i64 %.01320.i342.epil, 1
  %epil.iter552.next = add i64 %epil.iter552, 1   ; 2 uses
  %epil.iter552.cmp.not = icmp eq i64 %epil.iter552.next, %xtraiter551
  br i1 %epil.iter552.cmp.not, label %.sink.split, label %.preheader.i341.epil, !llvm.loop !2099

.sink.split.loopexit525.unr-lcssa:                ; preds = %.preheader.i361
  %lcmp.mod539.not = icmp eq i64 %xtraiter537, 0
  br i1 %lcmp.mod539.not, label %.sink.split, label %.preheader.i361.epil.preheader

.preheader.i361.epil.preheader:                   ; preds = %.sink.split.loopexit525.unr-lcssa, %bb.ay
  %.01320.i362.epil.init = phi i64 [ 0, %bb.ay ], [ %i.mc, %.sink.split.loopexit525.unr-lcssa ]
  %lcmp.mod540 = icmp ne i64 %xtraiter537, 0
  tail call void @llvm.assume(i1 %lcmp.mod540)
  br label %.preheader.i361.epil

.preheader.i361.epil:                             ; preds = %.preheader.i361.epil, %.preheader.i361.epil.preheader
  %.01320.i362.epil = phi i64 [ %i.mi, %.preheader.i361.epil ], [ %.01320.i362.epil.init, %.preheader.i361.epil.preheader ] ; 2 uses
  %epil.iter538 = phi i64 [ %epil.iter538.next, %.preheader.i361.epil ], [ 0, %.preheader.i361.epil.preheader ]
  %i.mh = add i64 %.01320.i362.epil, %i.ll
  %.idx14.i363.epil = shl i64 %i.mh, 5
  %gep.i364.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.epil, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !2105
  %i.mi = add nuw nsw i64 %.01320.i362.epil, 1
  %epil.iter538.next = add i64 %epil.iter538, 1   ; 2 uses
  %epil.iter538.cmp.not = icmp eq i64 %epil.iter538.next, %xtraiter537
  br i1 %epil.iter538.cmp.not, label %.sink.split, label %.preheader.i361.epil, !llvm.loop !2100

.sink.split:                                      ; preds = %.sink.split.loopexit525.unr-lcssa, %.preheader.i361.epil, %.sink.split.loopexit524.unr-lcssa, %.preheader.i341.epil, %.sink.split.loopexit.unr-lcssa, %.preheader.i.epil
  %.sink517 = phi i64 [ %5, %.sink.split.loopexit.unr-lcssa ], [ %5, %.sink.split.loopexit524.unr-lcssa ], [ %5, %.preheader.i.epil ], [ %5, %.preheader.i341.epil ], [ %i.ll, %.preheader.i361.epil ], [ %i.ll, %.sink.split.loopexit525.unr-lcssa ]
  %.sink516 = phi i64 [ %4, %.sink.split.loopexit.unr-lcssa ], [ %i.js, %.sink.split.loopexit524.unr-lcssa ], [ %4, %.preheader.i.epil ], [ %i.js, %.preheader.i341.epil ], [ %4, %.preheader.i361.epil ], [ %4, %.sink.split.loopexit525.unr-lcssa ]
  %.sink = phi float [ %i.gz, %.sink.split.loopexit.unr-lcssa ], [ %i.hl, %.sink.split.loopexit524.unr-lcssa ], [ %i.gz, %.preheader.i.epil ], [ %i.hl, %.preheader.i341.epil ], [ %i.hs, %.preheader.i361.epil ], [ %i.hs, %.sink.split.loopexit525.unr-lcssa ]
  %.idx.i = shl i64 %.sink517, 5
  %i.mj = getelementptr i8, ptr %11, i64 %.idx.i
  %i.mk = getelementptr [4 x i8], ptr %i.mj, i64 %.sink516
  store float %.sink, ptr %i.mk, align 4, !tbaa !69
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.aw, %bb.aq, %bb.ax, %bb.au, %bb.ar, %bb.ao, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ab, %bb.z
  %.sroa.0390.0 = phi i32 [ %i.lj, %bb.ax ], [ %i.gx, %bb.ai ], [ %i.is, %bb.ao ], [ %i.hx, %bb.ak ], [ %i.kl, %bb.au ], [ %i.jq, %bb.ar ], [ %i.gt, %bb.ag ], [ %i.gm, %bb.ae ], [ %i.gf, %bb.ab ], [ %i.fy, %bb.z ], [ 0, %bb.aw ], [ 0, %bb.aq ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  br label %_ZN3jxl6N_AVX244MultiBlockTransformCrossesHorizontalBoundaryERKNS_15AcStrategyImageEmmm.exit.thread438

_ZN3jxl6N_AVX244MultiBlockTransformCrossesHorizontalBoundaryERKNS_15AcStrategyImageEmmm.exit.thread438: ; preds = %.lr.ph56.i, %.lr.ph56.i251, %.lr.ph64.i, %.lr.ph64.i274, %bb.az
  %.sroa.0390.1 = phi i32 [ %.sroa.0390.0, %bb.az ], [ 0, %.lr.ph64.i274 ], [ 0, %.lr.ph64.i ], [ 0, %.lr.ph56.i251 ], [ 0, %.lr.ph56.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  ret i32 %.sroa.0390.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_AVX214ProcessRectACSERKNS_14CompressParamsERKNS_9ACSConfigERKNS_5RectTImEERKNS_19ColorCorrelationMapEPfPjPNS_15AcStrategyImageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %3, ptr noalias noundef %4, ptr noalias nofree readnone captures(none) %5, ptr noundef %6) #11 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 12 uses
  %i.b = alloca [64 x float], align 16            ; 10 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 4 uses
  %i.f = load float, ptr %0, align 8, !tbaa !159  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 786432 ; 7 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !161    ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !162  ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !163  ; 4 uses
  %i.m = icmp ult i64 %i.l, 9
  br i1 %i.m, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !164  ; 4 uses
  %i.p = icmp ult i64 %i.o, 9
  br i1 %i.p, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %bb.b
  %i.q = lshr i64 %i.h, 3                         ; 2 uses
  %i.r = lshr i64 %i.j, 3                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !65
  %i.w = mul i64 %i.v, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.x, i64 64) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.q
  %i.z = load i8, ptr %i.y, align 1, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !166
  %i.ac = sitofp i8 %i.z to float
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 132
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !167 ; 2 uses
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.ac, float %i.ae, float %i.ab)
  store float %i.af, ptr %i.a, align 4, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !65
  %i.am = mul i64 %i.al, %i.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.an, i64 64) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.q
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !168
  %i.as = sitofp i8 %i.ap to float
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.as, float %i.ae, float %i.ar)
  store float %i.at, ptr %i.ah, align 4, !tbaa !69
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !169
  %i.aw = icmp sgt i32 %i.av, 5
  br i1 %i.aw, label %bb.ag, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.ax = fadd float %i.f, 1.400000e+00
  %i.ay = fdiv float 4.000000e-01, %i.ax
  %i.az = fsub float 1.000000e+00, %i.ay
  %.not229331.not = icmp eq i64 %i.o, 0
  br i1 %.not229331.not, label %.critedge246, label %.preheader326.lr.ph

.preheader326.lr.ph:                              ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %.not348 = icmp eq i64 %i.l, 0
  br i1 %.not348, label %.critedge246, label %.preheader326

.preheader326:                                    ; preds = %.preheader326.lr.ph, %.critedge244
  %i.bc = phi i64 [ %i.dk, %.critedge244 ], [ %i.l, %.preheader326.lr.ph ]
  %i.bd = phi i64 [ %i.dl, %.critedge244 ], [ %i.o, %.preheader326.lr.ph ]
  %i.be = phi i64 [ %i.dm, %.critedge244 ], [ 1, %.preheader326.lr.ph ]
  %.0221332 = phi i64 [ %i.dn, %.critedge244 ], [ 0, %.preheader326.lr.ph ] ; 3 uses
  %.not329.not = icmp eq i64 %i.be, 0
  br i1 %.not329.not, label %.critedge244, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader326
  %i.bf = add i64 %.0221332, %i.j                 ; 2 uses
  %i.bg = shl i64 %i.bf, 3
  %.idx = shl i64 %.0221332, 5
  %i.bh = getelementptr i8, ptr %i.b, i64 %.idx
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge
  %.0222330 = phi i64 [ 0, %.lr.ph ], [ %i.di, %.critedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #51
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #51
  %i.bi = add i64 %.0222330, %i.h                 ; 4 uses
  %i.bj = shl i64 %i.bi, 3
  %i.bk = load i32, ptr %i.au, align 4, !tbaa !169
  %i.bl = call i32 @_ZN3jxl6N_AVX220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeE(i64 noundef %i.bj, i64 noundef %i.bg, i32 noundef %i.bk, float noundef %i.f, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.a, ptr poison, ptr noundef %4, ptr noundef nonnull %i.g, ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #49 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.d, align 4, !tbaa !105 ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !66
  %i.br = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.bo
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !66
  %i.bt = shl nuw i32 %i.bn, 1                    ; 3 uses
  %i.bu = tail call i8 @llvm.umax.i8(i8 %i.bs, i8 1) ; 2 uses
  %umax46.i.i = zext i8 %i.bu to i64              ; 2 uses
  %i.bv = tail call i8 @llvm.umax.i8(i8 %i.bq, i8 1)
  %umax48.i.i = zext i8 %i.bv to i64
  %xtraiter = and i64 %umax46.i.i, 1
  %i.bw = shl nuw i64 1, %i.bo
  %i.bx = and i64 %i.bw, 258383
  %.not469 = icmp eq i64 %i.bx, 0
  %unroll_iter = and i64 %umax46.i.i, 254
  %i.by = trunc i32 %i.bt to i8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod468 = trunc i8 %i.bu to i1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %..critedge25_crit_edge.split.i.i, %bb.f
  %.038.i.i = phi i64 [ %i.de, %..critedge25_crit_edge.split.i.i ], [ 0, %bb.f ] ; 4 uses
  %i.bz = add i64 %.038.i.i, %i.bf                ; 3 uses
  br i1 %.not469, label %.preheader.i.i.new, label %.epil.preheader

.preheader.i.i.new:                               ; preds = %.preheader.i.i, %.preheader.i.i.new
  %.02036.i.i = phi i64 [ %i.cs, %.preheader.i.i.new ], [ 0, %.preheader.i.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.new ], [ 0, %.preheader.i.i ]
  %i.ca = load i64, ptr %i.ba, align 8, !tbaa !110
  %i.cb = mul i64 %i.ca, %i.bz
  %i.cc = or i64 %.02036.i.i, %.038.i.i
  %i.cd = icmp eq i64 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = or disjoint i32 %i.bt, %i.ce
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = load ptr, ptr %i.bb, align 8, !tbaa !111
  %i.ci = getelementptr i8, ptr %i.ch, i64 %.02036.i.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.bi
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.cb
  store i8 %i.cg, ptr %i.ck, align 1, !tbaa !66
  %i.cl = load i64, ptr %i.ba, align 8, !tbaa !110
  %i.cm = mul i64 %i.cl, %i.bz
  %i.cn = load ptr, ptr %i.bb, align 8, !tbaa !111
  %i.co = getelementptr i8, ptr %i.cn, i64 %.02036.i.i
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.bi
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cm
  store i8 %i.by, ptr %i.cr, align 1, !tbaa !66
  %i.cs = add nuw nsw i64 %.02036.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..critedge25_crit_edge.split.i.i.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !7

..critedge25_crit_edge.split.i.i.unr-lcssa:       ; preds = %.preheader.i.i.new
  br i1 %lcmp.mod.not, label %..critedge25_crit_edge.split.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..critedge25_crit_edge.split.i.i.unr-lcssa, %.preheader.i.i
end_hunk_3
begin_hunk_4_@_ZN3jxl6N_SSE220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeE:bb.a

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
  %.sroa.071.0.insert.ext = zext i32 %0 to i64    ; 5 uses
  %.sroa.071.0.insert.insert = or disjoint i64 %.sroa.071.0.insert.ext, 4294967296
  %i.b = trunc nuw nsw i64 %.sroa.071.0.insert.insert to i40
  store i40 %i.b, ptr %15, align 8
  %i.c = zext i32 %0 to i64                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66
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
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !66
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
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.071.0.insert.ext
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.071.0.insert.ext
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bd = shl nuw i32 %0, 1                       ; 3 uses
  %i.be = tail call i8 @llvm.umax.i8(i8 %i.ba, i8 1)
  %umax46.i.i = zext i8 %i.be to i64              ; 6 uses
  %i.bf = tail call i8 @llvm.umax.i8(i8 %i.ay, i8 1)
  %umax48.i.i = zext i8 %i.bf to i64
  %i.bg = load i64, ptr %i.bb, align 8, !tbaa !110
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !111
  %invariant.gep = getelementptr i8, ptr %i.bh, i64 %i.u
  %i.bi = shl nuw i64 1, %.sroa.071.0.insert.ext
  %i.bj = and i64 %i.bi, 259551
  %min.iters.check.not = icmp eq i64 %i.bj, 0
  %i.bk = shl nuw i64 1, %.sroa.071.0.insert.ext
  %i.bl = and i64 %i.bk, 6291455
  %min.iters.check113.not = icmp eq i64 %i.bl, 0
  %i.bm = and i64 %umax46.i.i, 12
  %n.vec = and i64 %umax46.i.i, 240               ; 4 uses
  %broadcast.splatinsert114 = insertelement <16 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat115 = shufflevector <16 x i32> %broadcast.splatinsert114, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %umax46.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  %n.vec116 = and i64 %umax46.i.i, 252            ; 3 uses
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n127 = icmp eq i64 %n.vec116, %umax46.i.i
  br label %iter.check

iter.check:                                       ; preds = %..critedge25_crit_edge.split.i.i, %._crit_edge95.split
  %.038.i.i = phi i64 [ %i.cj, %..critedge25_crit_edge.split.i.i ], [ 0, %._crit_edge95.split ] ; 5 uses
  %i.bn = add i64 %.038.i.i, %i.w
  %i.bo = mul i64 %i.bg, %i.bn
  %invariant.gep96 = getelementptr i8, ptr %invariant.gep, i64 %i.bo ; 3 uses
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
  %i.bp = or <16 x i64> %vec.ind, %broadcast.splat
  %i.bq = icmp eq <16 x i64> %i.bp, zeroinitializer
  %i.br = zext <16 x i1> %i.bq to <16 x i32>
  %i.bs = or disjoint <16 x i32> %broadcast.splat115, %i.br
  %i.bt = trunc <16 x i32> %i.bs to <16 x i8>
  %i.bu = getelementptr i8, ptr %invariant.gep96, i64 %index
  store <16 x i8> %i.bt, ptr %i.bu, align 1, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !3545

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
  %i.bw = or <4 x i64> %vec.ind124, %broadcast.splat118
  %i.bx = icmp eq <4 x i64> %i.bw, zeroinitializer
  %i.by = zext <4 x i1> %i.bx to <4 x i32>
  %i.bz = or disjoint <4 x i32> %broadcast.splat120, %i.by
  %i.ca = trunc <4 x i32> %i.bz to <4 x i8>
  %i.cb = getelementptr i8, ptr %invariant.gep96, i64 %index123
  store <4 x i8> %i.ca, ptr %i.cb, align 1, !tbaa !66
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %vec.ind.next126 = add nuw nsw <4 x i64> %vec.ind124, splat (i64 4)
  %i.cc = icmp eq i64 %index.next125, %n.vec116
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3546

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02036.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec116, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.02036.i.i = phi i64 [ %i.ci, %vec.epilog.scalar.ph ], [ %.02036.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cd = or i64 %.02036.i.i, %.038.i.i
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = or disjoint i32 %i.bd, %i.cf
  %i.ch = trunc i32 %i.cg to i8
  %gep97 = getelementptr i8, ptr %invariant.gep96, i64 %.02036.i.i
  store i8 %i.ch, ptr %gep97, align 1, !tbaa !66
  %i.ci = add nuw nsw i64 %.02036.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ci, %umax46.i.i
  br i1 %exitcond.not.i.i, label %..critedge25_crit_edge.split.i.i, label %vec.epilog.scalar.ph, !llvm.loop !3547

..critedge25_crit_edge.split.i.i:                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cj = add nuw nsw i64 %.038.i.i, 1            ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %i.cj, %umax48.i.i
  br i1 %exitcond45.not.i.i, label %_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit, label %iter.check, !llvm.loop !6

_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE.exit: ; preds = %..critedge25_crit_edge.split.i.i
  %.idx = shl i64 %4, 5
  %i.ck = getelementptr i8, ptr %11, i64 %.idx
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %3
  store float %i.aa, ptr %i.cl, align 4, !tbaa !69
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
end_hunk_4
begin_hunk_5_@_ZN3jxl6N_SSE235FindBestFirstLevelDivisionForSquareEmbmmmmRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEffPfS8_S8_Pj:bb.a
  %i.ew = udiv i64 %.0459, %i.g
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ew ; 3 uses
  br i1 %i.eu, label %.epil.preheader, label %.preheader.new

._crit_edge:                                      ; preds = %bb.x, %_ZN3jxl6N_SSE244MultiBlockTransformCrossesHorizontalBoundaryERKNS_15AcStrategyImageEmmm.exit315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  store float f0x7F7FFFFF, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #51
  store float f0x7F7FFFFF, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #51
  store float f0x7F7FFFFF, ptr %i.d, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #51
  store float f0x7F7FFFFF, ptr %i.e, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #51
  br i1 %.4.i281, label %bb.ac, label %bb.y

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %bb.x, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %.0225458.epil.init = phi i64 [ 0, %.preheader ], [ %i.fs, %.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod530)
  %i.ey = getelementptr [4 x i8], ptr %gep, i64 %.0225458.epil.init
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !69
  %i.fa = udiv i64 %.0225458.epil.init, %i.g
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fa ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !69
  %i.fd = fadd float %i.ez, %i.fc
  store float %i.fd, ptr %i.fb, align 4, !tbaa !69
  br label %bb.x

bb.x:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.fe = add nuw i64 %.0459, 1                   ; 2 uses
  %exitcond465.not = icmp eq i64 %i.fe, %0
  br i1 %exitcond465.not, label %._crit_edge, label %.preheader, !llvm.loop !3548

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.0225458 = phi i64 [ %i.fs, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ff = getelementptr [4 x i8], ptr %gep, i64 %.0225458
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !69
  %i.fh = udiv i64 %.0225458, %i.g
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fh ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !69
  %i.fk = fadd float %i.fg, %i.fj
  store float %i.fk, ptr %i.fi, align 4, !tbaa !69
  %i.fl = or disjoint i64 %.0225458, 1            ; 2 uses
  %i.fm = getelementptr [4 x i8], ptr %gep, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !69
  %i.fo = udiv i64 %i.fl, %i.g
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fo ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !69
  %i.fr = fadd float %i.fn, %i.fq
  store float %i.fr, ptr %i.fp, align 4, !tbaa !69
  %i.fs = add nuw i64 %.0225458, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.new, !llvm.loop !3549

bb.y:                                             ; preds = %._crit_edge
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !66
  %i.fv = lshr i8 %i.fu, 1
  %.sroa.0384.0.extract.trunc = zext nneg i8 %i.fv to i32
  %.not = icmp eq i32 %switch.select5.i, %.sroa.0384.0.extract.trunc
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fw = shl i64 %i.u, 3
  %i.fx = shl i64 %i.k, 3
  %i.fy = call i32 @_ZN3jxl6N_SSE215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %15, float noundef %9, i64 noundef %i.fw, i64 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #49 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.aa, label %bb.az

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ga = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dd
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !66
  %i.gc = lshr i8 %i.gb, 1
  %.sroa.0382.0.extract.trunc = zext nneg i8 %i.gc to i32
  %.not228 = icmp eq i32 %switch.select5.i, %.sroa.0382.0.extract.trunc
  br i1 %.not228, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gd = shl i64 %i.dd, 3
  %i.ge = shl i64 %i.k, 3
  %i.gf = call i32 @_ZN3jxl6N_SSE215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %15, float noundef %9, i64 noundef %i.gd, i64 noundef %i.ge, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #49 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.ac, label %bb.az

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %._crit_edge
  br i1 %.2.i299, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !66
  %i.gj = lshr i8 %i.gi, 1
  %.sroa.0380.0.extract.trunc = zext nneg i8 %i.gj to i32
  %.not229 = icmp eq i32 %switch.select5.i234, %.sroa.0380.0.extract.trunc
  br i1 %.not229, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = shl i64 %i.u, 3
  %i.gl = shl i64 %i.k, 3
  %i.gm = call i32 @_ZN3jxl6N_SSE215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %16, float noundef %9, i64 noundef %i.gk, i64 noundef %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #49 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.af, label %bb.az

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.go = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !66
  %i.gq = lshr i8 %i.gp, 1
  %.sroa.0.0.extract.trunc = zext nneg i8 %i.gq to i32
  %.not230 = icmp eq i32 %switch.select5.i234, %.sroa.0.0.extract.trunc
  br i1 %.not230, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gr = shl i64 %i.u, 3
  %i.gs = shl i64 %i.r, 3
  %i.gt = call i32 @_ZN3jxl6N_SSE215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %16, float noundef %9, i64 noundef %i.gr, i64 noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.e) #49 ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.ah, label %bb.az

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ac
  br i1 %1, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gv = shl i64 %i.u, 3
  %i.gw = shl i64 %i.k, 3
  %i.gx = call i32 @_ZN3jxl6N_SSE215EstimateEntropyERKNS_10AcStrategyEfmmRKNS_9ACSConfigEPKfPfS9_PjRf(ptr noundef nonnull align 4 dereferenceable(5) %17, float noundef %10, i64 noundef %i.gv, i64 noundef %i.gw, ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef %7, ptr noundef %12, ptr noundef %13, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #49 ; 2 uses
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %._crit_edge466, label %bb.az

._crit_edge466:                                   ; preds = %bb.ai
  %.pre = load float, ptr %i.f, align 4, !tbaa !69
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge466, %bb.ah
  %i.gz = phi float [ %.pre, %._crit_edge466 ], [ f0x7F7FFFFF, %bb.ah ] ; 4 uses
  %i.ha = load float, ptr %i.a, align 16, !tbaa !69 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hc = load float, ptr %i.hb, align 8, !tbaa !69 ; 2 uses
  %i.hd = fadd float %i.ha, %i.hc                 ; 3 uses
  %i.he = load float, ptr %i.b, align 4, !tbaa !69 ; 4 uses
  %i.hf = fcmp olt float %i.hd, %i.he
  %.sroa.speculated377 = select i1 %i.hf, float %i.hd, float %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !69 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !69 ; 2 uses
  %i.hk = fadd float %i.hh, %i.hj                 ; 3 uses
  %i.hl = load float, ptr %i.c, align 4, !tbaa !69 ; 5 uses
  %i.hm = fcmp olt float %i.hk, %i.hl
  %.sroa.speculated373 = select i1 %i.hm, float %i.hk, float %i.hl
  %i.hn = fadd float %.sroa.speculated377, %.sroa.speculated373 ; 2 uses
  %i.ho = fadd float %i.ha, %i.hh                 ; 3 uses
  %i.hp = load float, ptr %i.d, align 4, !tbaa !69 ; 4 uses
  %i.hq = fcmp olt float %i.ho, %i.hp
  %.sroa.speculated369 = select i1 %i.hq, float %i.ho, float %i.hp
  %i.hr = fadd float %i.hc, %i.hj                 ; 3 uses
  %i.hs = load float, ptr %i.e, align 4, !tbaa !69 ; 5 uses
  %i.ht = fcmp olt float %i.hr, %i.hs
  %.sroa.speculated = select i1 %i.ht, float %i.hr, float %i.hs
  %i.hu = fadd float %.sroa.speculated369, %.sroa.speculated ; 2 uses
  %i.hv = fcmp olt float %i.gz, %i.hn
  %i.hw = fcmp olt float %i.gz, %i.hu
  %or.cond = select i1 %i.hv, i1 %i.hw, i1 false
  br i1 %or.cond, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hx = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.k, i32 noundef %switch.select5.i238) #49 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.al, label %bb.az

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3566)
  %i.hz = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0421.0.insert.ext
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !66, !noalias !3566
  %i.ib = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0421.0.insert.ext
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !66, !noalias !3566
  %i.id = tail call i8 @llvm.umax.i8(i8 %i.ic, i8 1)
  %umax.i = zext i8 %i.id to i64
  %i.ie = shl nuw nsw i64 %umax.i, 2              ; 5 uses
  %i.if = tail call i8 @llvm.umax.i8(i8 %i.ia, i8 1)
  %umax22.i = zext i8 %i.if to i64                ; 2 uses
  %xtraiter558 = and i64 %umax22.i, 3             ; 3 uses
  %i.ig = shl nuw nsw i64 1, %.sroa.0421.0.insert.ext
  %i.ih = and i64 %i.ig, 196830
  %.not568 = icmp eq i64 %i.ih, 0
  br i1 %.not568, label %.new557, label %.preheader.i.epil.preheader

.new557:                                          ; preds = %bb.al
  %unroll_iter562 = and i64 %umax22.i, 252
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.new557
  %.01320.i = phi i64 [ 0, %.new557 ], [ %i.ip, %.preheader.i ] ; 5 uses
  %niter563 = phi i64 [ 0, %.new557 ], [ %niter563.next.3, %.preheader.i ]
  %i.ii = add i64 %.01320.i, %5
  %.idx14.i = shl i64 %i.ii, 5
  %gep.i = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !3566
  %i.ij = or disjoint i64 %.01320.i, 1
  %i.ik = add i64 %i.ij, %5
  %.idx14.i.1 = shl i64 %i.ik, 5
  %gep.i.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.1, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !3566
  %i.il = or disjoint i64 %.01320.i, 2
  %i.im = add i64 %i.il, %5
  %.idx14.i.2 = shl i64 %i.im, 5
  %gep.i.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.2, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !3566
  %i.in = or disjoint i64 %.01320.i, 3
  %i.io = add i64 %i.in, %5
  %.idx14.i.3 = shl i64 %i.io, 5
  %gep.i.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.3, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !3566
  %i.ip = add nuw nsw i64 %.01320.i, 4            ; 2 uses
  %niter563.next.3 = add i64 %niter563, 4         ; 2 uses
  %niter563.ncmp.3 = icmp eq i64 %niter563.next.3, %unroll_iter562
  br i1 %niter563.ncmp.3, label %.sink.split.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !3552

bb.am:                                            ; preds = %bb.aj
  %i.iq = fcmp olt float %i.hn, %i.hu
  br i1 %i.iq, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.ir = fcmp olt float %i.he, %i.hd
  br i1 %i.ir, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.is = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.k, i32 noundef %switch.select5.i) #49 ; 2 uses
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3567)
  %i.iu = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !66, !noalias !3567
  %i.iw = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !66, !noalias !3567
  %i.iy = tail call i8 @llvm.umax.i8(i8 %i.ix, i8 1)
  %umax.i329 = zext i8 %i.iy to i64
  %i.iz = shl nuw nsw i64 %umax.i329, 2           ; 5 uses
  %i.ja = tail call i8 @llvm.umax.i8(i8 %i.iv, i8 1)
  %umax22.i330 = zext i8 %i.ja to i64             ; 2 uses
  %xtraiter544 = and i64 %umax22.i330, 3          ; 3 uses
  %i.jb = shl nuw nsw i64 1, %.sroa.0430.0.insert.ext
  %i.jc = and i64 %i.jb, 51404
  %.not566 = icmp eq i64 %i.jc, 0
  br i1 %.not566, label %.new543, label %.preheader.i331.epil.preheader

.new543:                                          ; preds = %bb.ap
  %unroll_iter548 = and i64 %umax22.i330, 252
  br label %.preheader.i331

.preheader.i331:                                  ; preds = %.preheader.i331, %.new543
  %.01320.i332 = phi i64 [ 0, %.new543 ], [ %i.jk, %.preheader.i331 ] ; 5 uses
  %niter549 = phi i64 [ 0, %.new543 ], [ %niter549.next.3, %.preheader.i331 ]
  %i.jd = add i64 %.01320.i332, %5
  %.idx14.i333 = shl i64 %i.jd, 5
  %gep.i334 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !3567
  %i.je = or disjoint i64 %.01320.i332, 1
  %i.jf = add i64 %i.je, %5
  %.idx14.i333.1 = shl i64 %i.jf, 5
  %gep.i334.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.1, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !3567
  %i.jg = or disjoint i64 %.01320.i332, 2
  %i.jh = add i64 %i.jg, %5
  %.idx14.i333.2 = shl i64 %i.jh, 5
  %gep.i334.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.2, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !3567
  %i.ji = or disjoint i64 %.01320.i332, 3
  %i.jj = add i64 %i.ji, %5
  %.idx14.i333.3 = shl i64 %i.jj, 5
  %gep.i334.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.3, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !3567
  %i.jk = add nuw nsw i64 %.01320.i332, 4         ; 2 uses
  %niter549.next.3 = add i64 %niter549, 4         ; 2 uses
  %niter549.ncmp.3 = icmp eq i64 %niter549.next.3, %unroll_iter548
  br i1 %niter549.ncmp.3, label %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa, label %.preheader.i331, !llvm.loop !3552

_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa: ; preds = %.preheader.i331
  %lcmp.mod546.not = icmp eq i64 %xtraiter544, 0
  br i1 %lcmp.mod546.not, label %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337, label %.preheader.i331.epil.preheader

.preheader.i331.epil.preheader:                   ; preds = %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa, %bb.ap
  %.01320.i332.epil.init = phi i64 [ 0, %bb.ap ], [ %i.jk, %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa ]
  %lcmp.mod547 = icmp ne i64 %xtraiter544, 0
  tail call void @llvm.assume(i1 %lcmp.mod547)
  br label %.preheader.i331.epil

.preheader.i331.epil:                             ; preds = %.preheader.i331.epil, %.preheader.i331.epil.preheader
  %.01320.i332.epil = phi i64 [ %i.jm, %.preheader.i331.epil ], [ %.01320.i332.epil.init, %.preheader.i331.epil.preheader ] ; 2 uses
  %epil.iter545 = phi i64 [ %epil.iter545.next, %.preheader.i331.epil ], [ 0, %.preheader.i331.epil.preheader ]
  %i.jl = add i64 %.01320.i332.epil, %5
  %.idx14.i333.epil = shl i64 %i.jl, 5
  %gep.i334.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i333.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i334.epil, i8 0, i64 %i.iz, i1 false), !tbaa !69, !alias.scope !3567
  %i.jm = add nuw nsw i64 %.01320.i332.epil, 1
  %epil.iter545.next = add i64 %epil.iter545, 1   ; 2 uses
  %epil.iter545.cmp.not = icmp eq i64 %epil.iter545.next, %xtraiter544
  br i1 %epil.iter545.cmp.not, label %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337, label %.preheader.i331.epil, !llvm.loop !3555

_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337: ; preds = %.preheader.i331.epil, %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337.unr-lcssa
  %.idx.i336 = shl i64 %5, 5
  %i.jn = getelementptr i8, ptr %11, i64 %.idx.i336
  %i.jo = getelementptr [4 x i8], ptr %i.jn, i64 %4
  store float %i.he, ptr %i.jo, align 4, !tbaa !69, !alias.scope !3567
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit337, %bb.an
  %i.jp = fcmp olt float %i.hl, %i.hk
  br i1 %i.jp, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.jq = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.dd, i64 noundef %i.k, i32 noundef %switch.select5.i) #49 ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.js = add i64 %4, %i.g                        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3568)
  %i.jt = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !66, !noalias !3568
  %invariant.gep.i338 = getelementptr [4 x i8], ptr %11, i64 %i.js ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0430.0.insert.ext
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !66, !noalias !3568
  %i.jx = tail call i8 @llvm.umax.i8(i8 %i.jw, i8 1)
  %umax.i339 = zext i8 %i.jx to i64
  %i.jy = shl nuw nsw i64 %umax.i339, 2           ; 5 uses
  %i.jz = tail call i8 @llvm.umax.i8(i8 %i.ju, i8 1)
  %umax22.i340 = zext i8 %i.jz to i64             ; 2 uses
  %xtraiter551 = and i64 %umax22.i340, 3          ; 3 uses
  %i.ka = shl nuw nsw i64 1, %.sroa.0430.0.insert.ext
  %i.kb = and i64 %i.ka, 51404
  %.not567 = icmp eq i64 %i.kb, 0
  br i1 %.not567, label %.new550, label %.preheader.i341.epil.preheader

.new550:                                          ; preds = %bb.as
  %unroll_iter555 = and i64 %umax22.i340, 252
  br label %.preheader.i341

.preheader.i341:                                  ; preds = %.preheader.i341, %.new550
  %.01320.i342 = phi i64 [ 0, %.new550 ], [ %i.kj, %.preheader.i341 ] ; 5 uses
  %niter556 = phi i64 [ 0, %.new550 ], [ %niter556.next.3, %.preheader.i341 ]
  %i.kc = add i64 %.01320.i342, %5
  %.idx14.i343 = shl i64 %i.kc, 5
  %gep.i344 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !3568
  %i.kd = or disjoint i64 %.01320.i342, 1
  %i.ke = add i64 %i.kd, %5
  %.idx14.i343.1 = shl i64 %i.ke, 5
  %gep.i344.1 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.1, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !3568
  %i.kf = or disjoint i64 %.01320.i342, 2
  %i.kg = add i64 %i.kf, %5
  %.idx14.i343.2 = shl i64 %i.kg, 5
  %gep.i344.2 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.2, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !3568
  %i.kh = or disjoint i64 %.01320.i342, 3
  %i.ki = add i64 %i.kh, %5
  %.idx14.i343.3 = shl i64 %i.ki, 5
  %gep.i344.3 = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.3, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !3568
  %i.kj = add nuw nsw i64 %.01320.i342, 4         ; 2 uses
  %niter556.next.3 = add i64 %niter556, 4         ; 2 uses
  %niter556.ncmp.3 = icmp eq i64 %niter556.next.3, %unroll_iter555
  br i1 %niter556.ncmp.3, label %.sink.split.loopexit524.unr-lcssa, label %.preheader.i341, !llvm.loop !3552

bb.at:                                            ; preds = %bb.am
  %i.kk = fcmp olt float %i.hp, %i.ho
  br i1 %i.kk, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kl = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.k, i32 noundef %switch.select5.i234) #49 ; 2 uses
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3569)
  %i.kn = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !66, !noalias !3569
  %i.kp = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !66, !noalias !3569
  %i.kr = tail call i8 @llvm.umax.i8(i8 %i.kq, i8 1)
  %umax.i349 = zext i8 %i.kr to i64
  %i.ks = shl nuw nsw i64 %umax.i349, 2           ; 5 uses
  %i.kt = tail call i8 @llvm.umax.i8(i8 %i.ko, i8 1)
  %umax22.i350 = zext i8 %i.kt to i64             ; 2 uses
  %xtraiter531 = and i64 %umax22.i350, 3          ; 3 uses
  %i.ku = shl nuw nsw i64 1, %.sroa.0423.0.insert.ext
  %i.kv = and i64 %i.ku, 260830
  %.not564 = icmp eq i64 %i.kv, 0
  br i1 %.not564, label %.new, label %.preheader.i351.epil.preheader

.new:                                             ; preds = %bb.av
  %unroll_iter534 = and i64 %umax22.i350, 252
  br label %.preheader.i351

.preheader.i351:                                  ; preds = %.preheader.i351, %.new
  %.01320.i352 = phi i64 [ 0, %.new ], [ %i.ld, %.preheader.i351 ] ; 5 uses
  %niter535 = phi i64 [ 0, %.new ], [ %niter535.next.3, %.preheader.i351 ]
  %i.kw = add i64 %.01320.i352, %5
  %.idx14.i353 = shl i64 %i.kw, 5
  %gep.i354 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !3569
  %i.kx = or disjoint i64 %.01320.i352, 1
  %i.ky = add i64 %i.kx, %5
  %.idx14.i353.1 = shl i64 %i.ky, 5
  %gep.i354.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.1, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !3569
  %i.kz = or disjoint i64 %.01320.i352, 2
  %i.la = add i64 %i.kz, %5
  %.idx14.i353.2 = shl i64 %i.la, 5
  %gep.i354.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.2, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !3569
  %i.lb = or disjoint i64 %.01320.i352, 3
  %i.lc = add i64 %i.lb, %5
  %.idx14.i353.3 = shl i64 %i.lc, 5
  %gep.i354.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.3, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !3569
  %i.ld = add nuw nsw i64 %.01320.i352, 4         ; 2 uses
  %niter535.next.3 = add i64 %niter535, 4         ; 2 uses
  %niter535.ncmp.3 = icmp eq i64 %niter535.next.3, %unroll_iter534
  br i1 %niter535.ncmp.3, label %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa, label %.preheader.i351, !llvm.loop !3552

_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa: ; preds = %.preheader.i351
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br i1 %lcmp.mod532.not, label %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357, label %.preheader.i351.epil.preheader

.preheader.i351.epil.preheader:                   ; preds = %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa, %bb.av
  %.01320.i352.epil.init = phi i64 [ 0, %bb.av ], [ %i.ld, %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa ]
  %lcmp.mod533 = icmp ne i64 %xtraiter531, 0
  tail call void @llvm.assume(i1 %lcmp.mod533)
  br label %.preheader.i351.epil

.preheader.i351.epil:                             ; preds = %.preheader.i351.epil, %.preheader.i351.epil.preheader
  %.01320.i352.epil = phi i64 [ %i.lf, %.preheader.i351.epil ], [ %.01320.i352.epil.init, %.preheader.i351.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i351.epil ], [ 0, %.preheader.i351.epil.preheader ]
  %i.le = add i64 %.01320.i352.epil, %5
  %.idx14.i353.epil = shl i64 %i.le, 5
  %gep.i354.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i353.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i354.epil, i8 0, i64 %i.ks, i1 false), !tbaa !69, !alias.scope !3569
  %i.lf = add nuw nsw i64 %.01320.i352.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter531
  br i1 %epil.iter.cmp.not, label %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357, label %.preheader.i351.epil, !llvm.loop !3560

_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357: ; preds = %.preheader.i351.epil, %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357.unr-lcssa
  %.idx.i356 = shl i64 %5, 5
  %i.lg = getelementptr i8, ptr %11, i64 %.idx.i356
  %i.lh = getelementptr [4 x i8], ptr %i.lg, i64 %4
  store float %i.hp, ptr %i.lh, align 4, !tbaa !69, !alias.scope !3569
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN3jxl6N_SSE2L22SetEntropyForTransformEmmNS_14AcStrategyTypeEfPf.exit357, %bb.at
  %i.li = fcmp olt float %i.hs, %i.hr
  br i1 %i.li, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.lj = tail call i32 @_ZN3jxl15AcStrategyImage3SetEmmNS_14AcStrategyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %8, i64 noundef %i.u, i64 noundef %i.r, i32 noundef %switch.select5.i234) #49 ; 2 uses
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ll = add i64 %5, %i.g                        ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3570)
  %i.lm = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !66, !noalias !3570
  %i.lo = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %.sroa.0423.0.insert.ext
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !66, !noalias !3570
  %i.lq = tail call i8 @llvm.umax.i8(i8 %i.lp, i8 1)
  %umax.i359 = zext i8 %i.lq to i64
  %i.lr = shl nuw nsw i64 %umax.i359, 2           ; 5 uses
  %i.ls = tail call i8 @llvm.umax.i8(i8 %i.ln, i8 1)
  %umax22.i360 = zext i8 %i.ls to i64             ; 2 uses
  %xtraiter537 = and i64 %umax22.i360, 3          ; 3 uses
  %i.lt = shl nuw nsw i64 1, %.sroa.0423.0.insert.ext
  %i.lu = and i64 %i.lt, 260830
  %.not565 = icmp eq i64 %i.lu, 0
  br i1 %.not565, label %.new536, label %.preheader.i361.epil.preheader

.new536:                                          ; preds = %bb.ay
  %unroll_iter541 = and i64 %umax22.i360, 252
  br label %.preheader.i361

.preheader.i361:                                  ; preds = %.preheader.i361, %.new536
  %.01320.i362 = phi i64 [ 0, %.new536 ], [ %i.mc, %.preheader.i361 ] ; 5 uses
  %niter542 = phi i64 [ 0, %.new536 ], [ %niter542.next.3, %.preheader.i361 ]
  %i.lv = add i64 %.01320.i362, %i.ll
  %.idx14.i363 = shl i64 %i.lv, 5
  %gep.i364 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !3570
  %i.lw = or disjoint i64 %.01320.i362, 1
  %i.lx = add i64 %i.lw, %i.ll
  %.idx14.i363.1 = shl i64 %i.lx, 5
  %gep.i364.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.1, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !3570
  %i.ly = or disjoint i64 %.01320.i362, 2
  %i.lz = add i64 %i.ly, %i.ll
  %.idx14.i363.2 = shl i64 %i.lz, 5
  %gep.i364.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.2, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !3570
  %i.ma = or disjoint i64 %.01320.i362, 3
  %i.mb = add i64 %i.ma, %i.ll
  %.idx14.i363.3 = shl i64 %i.mb, 5
  %gep.i364.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.3, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !3570
  %i.mc = add nuw nsw i64 %.01320.i362, 4         ; 2 uses
  %niter542.next.3 = add i64 %niter542, 4         ; 2 uses
  %niter542.ncmp.3 = icmp eq i64 %niter542.next.3, %unroll_iter541
  br i1 %niter542.ncmp.3, label %.sink.split.loopexit525.unr-lcssa, label %.preheader.i361, !llvm.loop !3552

.sink.split.loopexit.unr-lcssa:                   ; preds = %.preheader.i
  %lcmp.mod560.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod560.not, label %.sink.split, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.sink.split.loopexit.unr-lcssa, %bb.al
  %.01320.i.epil.init = phi i64 [ 0, %bb.al ], [ %i.ip, %.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod561 = icmp ne i64 %xtraiter558, 0
  tail call void @llvm.assume(i1 %lcmp.mod561)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.01320.i.epil = phi i64 [ %i.me, %.preheader.i.epil ], [ %.01320.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter559 = phi i64 [ %epil.iter559.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.md = add i64 %.01320.i.epil, %5
  %.idx14.i.epil = shl i64 %i.md, 5
  %gep.i.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i.epil, i8 0, i64 %i.ie, i1 false), !tbaa !69, !alias.scope !3566
  %i.me = add nuw nsw i64 %.01320.i.epil, 1
  %epil.iter559.next = add i64 %epil.iter559, 1   ; 2 uses
  %epil.iter559.cmp.not = icmp eq i64 %epil.iter559.next, %xtraiter558
  br i1 %epil.iter559.cmp.not, label %.sink.split, label %.preheader.i.epil, !llvm.loop !3563

.sink.split.loopexit524.unr-lcssa:                ; preds = %.preheader.i341
  %lcmp.mod553.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod553.not, label %.sink.split, label %.preheader.i341.epil.preheader

.preheader.i341.epil.preheader:                   ; preds = %.sink.split.loopexit524.unr-lcssa, %bb.as
  %.01320.i342.epil.init = phi i64 [ 0, %bb.as ], [ %i.kj, %.sink.split.loopexit524.unr-lcssa ]
  %lcmp.mod554 = icmp ne i64 %xtraiter551, 0
  tail call void @llvm.assume(i1 %lcmp.mod554)
  br label %.preheader.i341.epil

.preheader.i341.epil:                             ; preds = %.preheader.i341.epil, %.preheader.i341.epil.preheader
  %.01320.i342.epil = phi i64 [ %i.mg, %.preheader.i341.epil ], [ %.01320.i342.epil.init, %.preheader.i341.epil.preheader ] ; 2 uses
  %epil.iter552 = phi i64 [ %epil.iter552.next, %.preheader.i341.epil ], [ 0, %.preheader.i341.epil.preheader ]
  %i.mf = add i64 %.01320.i342.epil, %5
  %.idx14.i343.epil = shl i64 %i.mf, 5
  %gep.i344.epil = getelementptr i8, ptr %invariant.gep.i338, i64 %.idx14.i343.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i344.epil, i8 0, i64 %i.jy, i1 false), !tbaa !69, !alias.scope !3568
  %i.mg = add nuw nsw i64 %.01320.i342.epil, 1
  %epil.iter552.next = add i64 %epil.iter552, 1   ; 2 uses
  %epil.iter552.cmp.not = icmp eq i64 %epil.iter552.next, %xtraiter551
  br i1 %epil.iter552.cmp.not, label %.sink.split, label %.preheader.i341.epil, !llvm.loop !3564

.sink.split.loopexit525.unr-lcssa:                ; preds = %.preheader.i361
  %lcmp.mod539.not = icmp eq i64 %xtraiter537, 0
  br i1 %lcmp.mod539.not, label %.sink.split, label %.preheader.i361.epil.preheader

.preheader.i361.epil.preheader:                   ; preds = %.sink.split.loopexit525.unr-lcssa, %bb.ay
  %.01320.i362.epil.init = phi i64 [ 0, %bb.ay ], [ %i.mc, %.sink.split.loopexit525.unr-lcssa ]
  %lcmp.mod540 = icmp ne i64 %xtraiter537, 0
  tail call void @llvm.assume(i1 %lcmp.mod540)
  br label %.preheader.i361.epil

.preheader.i361.epil:                             ; preds = %.preheader.i361.epil, %.preheader.i361.epil.preheader
  %.01320.i362.epil = phi i64 [ %i.mi, %.preheader.i361.epil ], [ %.01320.i362.epil.init, %.preheader.i361.epil.preheader ] ; 2 uses
  %epil.iter538 = phi i64 [ %epil.iter538.next, %.preheader.i361.epil ], [ 0, %.preheader.i361.epil.preheader ]
  %i.mh = add i64 %.01320.i362.epil, %i.ll
  %.idx14.i363.epil = shl i64 %i.mh, 5
  %gep.i364.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx14.i363.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %gep.i364.epil, i8 0, i64 %i.lr, i1 false), !tbaa !69, !alias.scope !3570
  %i.mi = add nuw nsw i64 %.01320.i362.epil, 1
  %epil.iter538.next = add i64 %epil.iter538, 1   ; 2 uses
  %epil.iter538.cmp.not = icmp eq i64 %epil.iter538.next, %xtraiter537
  br i1 %epil.iter538.cmp.not, label %.sink.split, label %.preheader.i361.epil, !llvm.loop !3565

.sink.split:                                      ; preds = %.sink.split.loopexit525.unr-lcssa, %.preheader.i361.epil, %.sink.split.loopexit524.unr-lcssa, %.preheader.i341.epil, %.sink.split.loopexit.unr-lcssa, %.preheader.i.epil
  %.sink517 = phi i64 [ %5, %.sink.split.loopexit.unr-lcssa ], [ %5, %.sink.split.loopexit524.unr-lcssa ], [ %5, %.preheader.i.epil ], [ %5, %.preheader.i341.epil ], [ %i.ll, %.preheader.i361.epil ], [ %i.ll, %.sink.split.loopexit525.unr-lcssa ]
  %.sink516 = phi i64 [ %4, %.sink.split.loopexit.unr-lcssa ], [ %i.js, %.sink.split.loopexit524.unr-lcssa ], [ %4, %.preheader.i.epil ], [ %i.js, %.preheader.i341.epil ], [ %4, %.preheader.i361.epil ], [ %4, %.sink.split.loopexit525.unr-lcssa ]
  %.sink = phi float [ %i.gz, %.sink.split.loopexit.unr-lcssa ], [ %i.hl, %.sink.split.loopexit524.unr-lcssa ], [ %i.gz, %.preheader.i.epil ], [ %i.hl, %.preheader.i341.epil ], [ %i.hs, %.preheader.i361.epil ], [ %i.hs, %.sink.split.loopexit525.unr-lcssa ]
  %.idx.i = shl i64 %.sink517, 5
  %i.mj = getelementptr i8, ptr %11, i64 %.idx.i
  %i.mk = getelementptr [4 x i8], ptr %i.mj, i64 %.sink516
  store float %.sink, ptr %i.mk, align 4, !tbaa !69
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.aw, %bb.aq, %bb.ax, %bb.au, %bb.ar, %bb.ao, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ab, %bb.z
  %.sroa.0390.0 = phi i32 [ %i.lj, %bb.ax ], [ %i.gx, %bb.ai ], [ %i.is, %bb.ao ], [ %i.hx, %bb.ak ], [ %i.kl, %bb.au ], [ %i.jq, %bb.ar ], [ %i.gt, %bb.ag ], [ %i.gm, %bb.ae ], [ %i.gf, %bb.ab ], [ %i.fy, %bb.z ], [ 0, %bb.aw ], [ 0, %bb.aq ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #51
  br label %_ZN3jxl6N_SSE244MultiBlockTransformCrossesHorizontalBoundaryERKNS_15AcStrategyImageEmmm.exit.thread438

_ZN3jxl6N_SSE244MultiBlockTransformCrossesHorizontalBoundaryERKNS_15AcStrategyImageEmmm.exit.thread438: ; preds = %.lr.ph56.i, %.lr.ph56.i251, %.lr.ph64.i, %.lr.ph64.i274, %bb.az
  %.sroa.0390.1 = phi i32 [ %.sroa.0390.0, %bb.az ], [ 0, %.lr.ph64.i274 ], [ 0, %.lr.ph64.i ], [ 0, %.lr.ph56.i251 ], [ 0, %.lr.ph56.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  ret i32 %.sroa.0390.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE214ProcessRectACSERKNS_14CompressParamsERKNS_9ACSConfigERKNS_5RectTImEERKNS_19ColorCorrelationMapEPfPjPNS_15AcStrategyImageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %3, ptr noalias noundef %4, ptr noalias nofree readnone captures(none) %5, ptr noundef %6) #6 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 12 uses
  %i.b = alloca [64 x float], align 16            ; 10 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 4 uses
  %i.f = load float, ptr %0, align 8, !tbaa !159  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 786432 ; 7 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !161    ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !162  ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !163  ; 4 uses
  %i.m = icmp ult i64 %i.l, 9
  br i1 %i.m, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !164  ; 4 uses
  %i.p = icmp ult i64 %i.o, 9
  br i1 %i.p, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %bb.b
  %i.q = lshr i64 %i.h, 3                         ; 2 uses
  %i.r = lshr i64 %i.j, 3                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #51
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !65
  %i.w = mul i64 %i.v, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.x, i64 64) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.q
  %i.z = load i8, ptr %i.y, align 1, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 132
  %i.ac = load <4 x float>, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !65
  %i.aj = mul i64 %i.ai, %i.r
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.q
  %i.am = load i8, ptr %i.al, align 1, !tbaa !66
  %i.an = load <2 x float>, ptr %i.aa, align 8, !tbaa !69
  %i.ao = insertelement <2 x i8> poison, i8 %i.z, i64 0
  %i.ap = insertelement <2 x i8> %i.ao, i8 %i.am, i64 1
  %i.aq = sitofp <2 x i8> %i.ap to <2 x float>
  %i.ar = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.ar, <2 x float> %i.an) ; 2 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  store float %i.at, ptr %i.a, align 4, !tbaa !69
  %i.au = extractelement <2 x float> %i.as, i64 1
  store float %i.au, ptr %i.ae, align 4, !tbaa !69
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !169
  %i.ax = icmp sgt i32 %i.aw, 5
  br i1 %i.ax, label %bb.ag, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.ay = fadd float %i.f, 1.400000e+00
  %i.az = fdiv float 4.000000e-01, %i.ay
  %i.ba = fsub float 1.000000e+00, %i.az
  %.not229331.not = icmp eq i64 %i.o, 0
  br i1 %.not229331.not, label %.critedge246, label %.preheader326.lr.ph

.preheader326.lr.ph:                              ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %.not348 = icmp eq i64 %i.l, 0
  br i1 %.not348, label %.critedge246, label %.preheader326

.preheader326:                                    ; preds = %.preheader326.lr.ph, %.critedge244
  %i.bd = phi i64 [ %i.dl, %.critedge244 ], [ %i.l, %.preheader326.lr.ph ]
  %i.be = phi i64 [ %i.dm, %.critedge244 ], [ %i.o, %.preheader326.lr.ph ]
  %i.bf = phi i64 [ %i.dn, %.critedge244 ], [ 1, %.preheader326.lr.ph ]
  %.0221332 = phi i64 [ %i.do, %.critedge244 ], [ 0, %.preheader326.lr.ph ] ; 3 uses
  %.not329.not = icmp eq i64 %i.bf, 0
  br i1 %.not329.not, label %.critedge244, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader326
  %i.bg = add i64 %.0221332, %i.j                 ; 2 uses
  %i.bh = shl i64 %i.bg, 3
  %.idx = shl i64 %.0221332, 5
  %i.bi = getelementptr i8, ptr %i.b, i64 %.idx
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge
  %.0222330 = phi i64 [ 0, %.lr.ph ], [ %i.dj, %.critedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #51
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #51
  %i.bj = add i64 %.0222330, %i.h                 ; 4 uses
  %i.bk = shl i64 %i.bj, 3
  %i.bl = load i32, ptr %i.av, align 4, !tbaa !169
  %i.bm = call i32 @_ZN3jxl6N_SSE220FindBest8x8TransformEmmifRKNS_9ACSConfigEPKfPNS_15AcStrategyImageEPfS8_PjS8_RNS_14AcStrategyTypeE(i64 noundef %i.bk, i64 noundef %i.bh, i32 noundef %i.bl, float noundef %i.f, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.a, ptr poison, ptr noundef %4, ptr noundef nonnull %i.g, ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #49 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bo = load i32, ptr %i.d, align 4, !tbaa !105 ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !66
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.bp
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !66
  %i.bu = shl nuw i32 %i.bo, 1                    ; 3 uses
  %i.bv = tail call i8 @llvm.umax.i8(i8 %i.bt, i8 1) ; 2 uses
  %umax46.i.i = zext i8 %i.bv to i64              ; 2 uses
  %i.bw = tail call i8 @llvm.umax.i8(i8 %i.br, i8 1)
  %umax48.i.i = zext i8 %i.bw to i64
  %xtraiter = and i64 %umax46.i.i, 1
  %i.bx = shl nuw i64 1, %i.bp
  %i.by = and i64 %i.bx, 258383
  %.not469 = icmp eq i64 %i.by, 0
  %unroll_iter = and i64 %umax46.i.i, 254
  %i.bz = trunc i32 %i.bu to i8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod468 = trunc i8 %i.bv to i1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %..critedge25_crit_edge.split.i.i, %bb.f
  %.038.i.i = phi i64 [ %i.df, %..critedge25_crit_edge.split.i.i ], [ 0, %bb.f ] ; 4 uses
  %i.ca = add i64 %.038.i.i, %i.bg                ; 3 uses
  br i1 %.not469, label %.preheader.i.i.new, label %.epil.preheader

.preheader.i.i.new:                               ; preds = %.preheader.i.i, %.preheader.i.i.new
  %.02036.i.i = phi i64 [ %i.ct, %.preheader.i.i.new ], [ 0, %.preheader.i.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.new ], [ 0, %.preheader.i.i ]
  %i.cb = load i64, ptr %i.bb, align 8, !tbaa !110
  %i.cc = mul i64 %i.cb, %i.ca
  %i.cd = or i64 %.02036.i.i, %.038.i.i
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = or disjoint i32 %i.bu, %i.cf
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = load ptr, ptr %i.bc, align 8, !tbaa !111
  %i.cj = getelementptr i8, ptr %i.ci, i64 %.02036.i.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.bj
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.cc
  store i8 %i.ch, ptr %i.cl, align 1, !tbaa !66
  %i.cm = load i64, ptr %i.bb, align 8, !tbaa !110
  %i.cn = mul i64 %i.cm, %i.ca
  %i.co = load ptr, ptr %i.bc, align 8, !tbaa !111
  %i.cp = getelementptr i8, ptr %i.co, i64 %.02036.i.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 1
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.bj
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cn
  store i8 %i.bz, ptr %i.cs, align 1, !tbaa !66
  %i.ct = add nuw nsw i64 %.02036.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..critedge25_crit_edge.split.i.i.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !7

..critedge25_crit_edge.split.i.i.unr-lcssa:       ; preds = %.preheader.i.i.new
  br i1 %lcmp.mod.not, label %..critedge25_crit_edge.split.i.i, label %.epil.preheader

end_hunk_5
