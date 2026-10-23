Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/mesh?download=true
inline.NumInlined: 455
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@b3WeldVertices:bb.a
  %i.jj = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.jk = sext i32 %.04569 to i64
  %i.jl = getelementptr inbounds [12 x i8], ptr %i.jj, i64 %i.jk ; 2 uses
  %i.jm = load ptr, ptr %0, align 8, !tbaa !36
  %i.jn = mul i64 %i.e, %indvars.iv
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jn ; 2 uses
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %i.jo, align 4, !tbaa !16
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %.sroa.23.0.copyload.i = load float, ptr %.sroa.23.0..sroa_idx.i, align 4, !tbaa !16
  store <2 x float> %.sroa.02.0.copyload.i, ptr %i.jl, align 4, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store float %.sroa.23.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  %i.jp = add nsw i32 %.04569, 1
  br label %bb.ar

bb.aq:                                            ; preds = %b3SpatialHash_FindDuplicate.exit
  %i.jq = sext i32 %.11.i to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !18
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !18
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pre.i95 = phi ptr [ %.pre.i96, %bb.ap ], [ %.pre.i, %bb.aq ]
  %i.ju = phi ptr [ %i.jh, %bb.ap ], [ %i.at, %bb.aq ]
  %.1 = phi i32 [ %i.jp, %bb.ap ], [ %.04569, %bb.aq ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !152

._crit_edge73.loopexit.unr-lcssa:                 ; preds = %bb.au
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge73, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge73.loopexit.unr-lcssa, %.lr.ph72
  %indvars.iv90.epil.init = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next91.3, %._crit_edge73.loopexit.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.epil.preheader
  %indvars.iv90.epil = phi i64 [ %indvars.iv90.epil.init, %.epil.preheader ], [ %indvars.iv.next91.epil, %bb.as ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.as ]
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv90.epil
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !18
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %.sroa.017.0120, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !18
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv90.epil
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !18
  %indvars.iv.next91.epil = add nuw nsw i64 %indvars.iv90.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge73, label %bb.as, !llvm.loop !153

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit.unr-lcssa, %bb.as, %._crit_edge
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !62 ; 2 uses
  %.not.i.i49 = icmp eq i64 %i.kc, 0
  br i1 %.not.i.i49, label %b3DestroySpatialHash.exit, label %bb.at

bb.at:                                            ; preds = %._crit_edge73
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !73
  %i.kf = mul i64 %i.kc, 18
  %i.kg = add i64 %i.kf, 26
  tail call void @b3Free(ptr noundef %i.ke, i64 noundef %i.kg) #18
  br label %b3DestroySpatialHash.exit

b3DestroySpatialHash.exit:                        ; preds = %._crit_edge73, %bb.at
  %i.kh = load ptr, ptr %3, align 8, !tbaa !163
  %i.ki = load i32, ptr %i.r, align 4, !tbaa !165
  %i.kj = sext i32 %i.ki to i64
  %i.kk = shl nsw i64 %i.kj, 3
  tail call void @b3Free(ptr noundef %i.kh, i64 noundef %i.kk) #18
  tail call void @b3Free(ptr noundef %.sroa.017.0120, i64 noundef %.sroa.13.0119) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.045.lcssa

bb.au:                                            ; preds = %bb.au, %.lr.ph72.new
  %indvars.iv90 = phi i64 [ 0, %.lr.ph72.new ], [ %indvars.iv.next91.3, %bb.au ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph72.new ], [ %niter.next.3, %bb.au ]
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv90
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !18
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %.sroa.017.0120, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !18
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv90
  store i32 %i.kp, ptr %i.kq, align 4, !tbaa !18
  %indvars.iv.next91 = or disjoint i64 %indvars.iv90, 1 ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next91
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !18
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %.sroa.017.0120, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !18
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next91
  store i32 %i.kv, ptr %i.kw, align 4, !tbaa !18
  %indvars.iv.next91.1 = or disjoint i64 %indvars.iv90, 2 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next91.1
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !18
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [4 x i8], ptr %.sroa.017.0120, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !18
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next91.1
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !18
  %indvars.iv.next91.2 = or disjoint i64 %indvars.iv90, 3 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next91.2
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !18
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %.sroa.017.0120, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !18
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next91.2
  store i32 %i.lh, ptr %i.li, align 4, !tbaa !18
  %indvars.iv.next91.3 = add nuw nsw i64 %indvars.iv90, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge73.loopexit.unr-lcssa, label %bb.au, !llvm.loop !154
}

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #6

declare zeroext i1 @b3IsSaneAABB(ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @b3BuildRecursive(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 5 uses
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %i.d = alloca [3 x float], align 4              ; 6 uses
  %i.e = alloca [3 x float], align 4              ; 6 uses
  %i.f = alloca [3 x float], align 8              ; 5 uses
  %i.g = alloca [3 x float], align 4              ; 6 uses
  %i.h = alloca [3 x float], align 4              ; 6 uses
  %i.i = alloca [3 x float], align 8              ; 5 uses
  %6 = alloca [8 x %struct.b3Bucket], align 16    ; 61 uses
  %7 = alloca %struct.b3Primitive, align 4        ; 4 uses
  %8 = alloca %struct.b3Primitive, align 4        ; 4 uses
  %9 = alloca %struct.b3Primitive, align 4        ; 4 uses
  %10 = alloca %struct.b3Primitive, align 4       ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = icmp sgt i32 %1, 4
  br i1 %i.l, label %bb.b, label %.preheader278

.preheader278:                                    ; preds = %bb.a
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.n, align 4, !tbaa !16, !noalias !34 ; 4 uses
  %.sroa.7137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7137.0.copyload.i = load float, ptr %.sroa.7137.0..sroa_idx.i, align 4, !tbaa !16, !noalias !34 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 7 uses
  br i1 %4, label %.preheader, label %.preheader487

bb.c:                                             ; preds = %.preheader
  %i.o = fsub <2 x float> %i.ah, %i.af            ; 2 uses
  %i.p = fsub float %i.aj, %i.ad                  ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.ah, %i.af
  %i.q = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop548 = fadd <2 x float> %i.ah, %i.af
  %i.r = extractelement <2 x float> %foldExtExtBinop548, i64 1
  %i.s = fadd float %i.aj, %i.ad
  %i.t = fmul float %i.q, 5.000000e-01            ; 2 uses
  %i.u = fmul float %i.r, 5.000000e-01            ; 2 uses
  %i.v = fmul float %i.s, 5.000000e-01            ; 2 uses
  %i.w = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.x = extractelement <2 x float> %i.o, i64 1   ; 2 uses
  %i.y = fcmp ult float %i.w, %i.x
  %i.z = fcmp ult float %i.w, %i.p
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %bb.g, label %.preheader296.i

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader ], [ 1, %bb.b ] ; 2 uses
  %.sroa.7137.0310.i = phi float [ %i.ad, %.preheader ], [ %.sroa.7137.0.copyload.i, %bb.b ] ; 2 uses
  %.sroa.0134.0309.i = phi <2 x float> [ %i.af, %.preheader ], [ %.sroa.0134.0.copyload.i, %bb.b ] ; 2 uses
  %.sroa.7133.0308.i = phi float [ %i.aj, %.preheader ], [ %.sroa.7137.0.copyload.i, %bb.b ] ; 2 uses
  %.sroa.0130.0307.i = phi <2 x float> [ %i.ah, %.preheader ], [ %.sroa.0134.0.copyload.i, %bb.b ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.0120.0.copyload.i = load <2 x float>, ptr %i.ab, align 4, !noalias !196 ; 4 uses
  %.sroa.2121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.2121.0.copyload.i = load float, ptr %.sroa.2121.0..sroa_idx.i, align 4, !noalias !196 ; 4 uses
  %i.ac = fcmp olt float %.sroa.7137.0310.i, %.sroa.2121.0.copyload.i
  %i.ad = select i1 %i.ac, float %.sroa.7137.0310.i, float %.sroa.2121.0.copyload.i ; 3 uses
  %i.ae = fcmp olt <2 x float> %.sroa.0134.0309.i, %.sroa.0120.0.copyload.i
  %i.af = select <2 x i1> %i.ae, <2 x float> %.sroa.0134.0309.i, <2 x float> %.sroa.0120.0.copyload.i ; 4 uses
  %i.ag = fcmp ogt <2 x float> %.sroa.0130.0307.i, %.sroa.0120.0.copyload.i
  %i.ah = select <2 x i1> %i.ag, <2 x float> %.sroa.0130.0307.i, <2 x float> %.sroa.0120.0.copyload.i ; 4 uses
  %i.ai = fcmp ogt float %.sroa.7133.0308.i, %.sroa.2121.0.copyload.i
  %i.aj = select i1 %i.ai, float %.sroa.7133.0308.i, float %.sroa.2121.0.copyload.i ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.c, label %.preheader, !llvm.loop !172

.preheader296.i:                                  ; preds = %bb.c, %.critedge180.i
  %.0168313.i = phi i32 [ %.2.i, %.critedge180.i ], [ %1, %bb.c ] ; 2 uses
  %.0169312.i = phi i32 [ %.2171.i, %.critedge180.i ], [ 0, %bb.c ]
  %i.ak = sext i32 %.0169312.i to i64
  %i.al = sext i32 %.0168313.i to i64             ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader296.i
  %indvars.iv359.i = phi i64 [ %i.ak, %.preheader296.i ], [ %indvars.iv.next360.i, %bb.e ] ; 4 uses
  %i.am = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv359.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load float, ptr %i.an, align 4, !tbaa !198, !noalias !196
  %i.ap = fcmp olt float %i.ao, %i.t
  br i1 %i.ap, label %bb.e, label %.critedge.split.loop.exit409.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next360.i = add nsw i64 %indvars.iv359.i, 1 ; 2 uses
  %i.aq = icmp slt i64 %indvars.iv.next360.i, %i.al
  br i1 %i.aq, label %bb.d, label %.critedge.i, !llvm.loop !173

.critedge.split.loop.exit409.i:                   ; preds = %bb.d
  %i.ar = trunc nsw i64 %indvars.iv359.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.critedge.split.loop.exit409.i
  %.pre-phi421 = phi i64 [ %indvars.iv359.i, %.critedge.split.loop.exit409.i ], [ %i.al, %bb.e ] ; 4 uses
  %.1170.lcssa.i = phi i32 [ %i.ar, %.critedge.split.loop.exit409.i ], [ %.0168313.i, %bb.e ] ; 3 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.al, i64 %.pre-phi421) ; 2 uses
  %11 = icmp slt i64 %.pre-phi421, %i.al
  br i1 %11, label %.lr.ph542, label %.critedge180.i

bb.f:                                             ; preds = %.lr.ph542
  %i.as = icmp sgt i64 %indvars.iv.next363.i, %.pre-phi421
  br i1 %i.as, label %.lr.ph542, label %.critedge180.i, !llvm.loop !174

.lr.ph542:                                        ; preds = %.critedge.i, %bb.f
  %indvars.iv362.i541 = phi i64 [ %indvars.iv.next363.i, %bb.f ], [ %i.al, %.critedge.i ]
  %indvars.iv.next363.i = add nsw i64 %indvars.iv362.i541, -1 ; 4 uses
  %i.at = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv.next363.i ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load float, ptr %i.au, align 4, !tbaa !198, !noalias !196
  %i.aw = fcmp ult float %i.av, %i.t
  br i1 %i.aw, label %.critedge2.i, label %bb.f, !llvm.loop !174

.critedge2.i:                                     ; preds = %.lr.ph542
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.ax = getelementptr inbounds [40 x i8], ptr %2, i64 %.pre-phi421 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %8, ptr noundef nonnull align 4 dereferenceable(40) %i.ax, i64 40, i1 false), !tbaa.struct !199, !noalias !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ax, ptr noundef nonnull align 4 dereferenceable(40) %i.at, i64 40, i1 false), !tbaa.struct !199, !noalias !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.at, ptr noundef nonnull align 4 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !199, !noalias !196
  %i.ay = add nsw i32 %.1170.lcssa.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.critedge180.i

.critedge180.i:                                   ; preds = %bb.f, %.critedge.i, %.critedge2.i
  %.2171.i = phi i32 [ %i.ay, %.critedge2.i ], [ %.1170.lcssa.i, %.critedge.i ], [ %.1170.lcssa.i, %bb.f ] ; 3 uses
  %.2.in.i = phi i64 [ %indvars.iv.next363.i, %.critedge2.i ], [ %smin, %.critedge.i ], [ %smin, %bb.f ]
  %.2.i = trunc i64 %.2.in.i to i32               ; 2 uses
  %i.az = icmp slt i32 %.2171.i, %.2.i
  br i1 %i.az, label %.preheader296.i, label %.loopexit.i, !llvm.loop !175

bb.g:                                             ; preds = %bb.c
  %i.ba = fcmp ult float %i.x, %i.p
  br i1 %i.ba, label %.preheader293.i, label %.preheader294.i

.preheader294.i:                                  ; preds = %bb.g, %.critedge181.i
  %.3316.i = phi i32 [ %.5.i, %.critedge181.i ], [ %1, %bb.g ] ; 2 uses
  %.3172315.i = phi i32 [ %.5174.i, %.critedge181.i ], [ 0, %bb.g ]
  %i.bb = sext i32 %.3172315.i to i64
  %i.bc = sext i32 %.3316.i to i64                ; 5 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.preheader294.i
  %indvars.iv365.i = phi i64 [ %i.bb, %.preheader294.i ], [ %indvars.iv.next366.i, %bb.i ] ; 4 uses
  %i.bd = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv365.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bf = load float, ptr %i.be, align 4, !tbaa !200, !noalias !196
  %i.bg = fcmp olt float %i.bf, %i.u
  br i1 %i.bg, label %bb.i, label %.critedge4.split.loop.exit411.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next366.i = add nsw i64 %indvars.iv365.i, 1 ; 2 uses
  %i.bh = icmp slt i64 %indvars.iv.next366.i, %i.bc
  br i1 %i.bh, label %bb.h, label %.critedge4.i, !llvm.loop !176

.critedge4.split.loop.exit411.i:                  ; preds = %bb.h
  %i.bi = trunc nsw i64 %indvars.iv365.i to i32
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.i, %.critedge4.split.loop.exit411.i
  %.pre-phi419 = phi i64 [ %indvars.iv365.i, %.critedge4.split.loop.exit411.i ], [ %i.bc, %bb.i ] ; 4 uses
  %.4173.lcssa.i = phi i32 [ %i.bi, %.critedge4.split.loop.exit411.i ], [ %.3316.i, %bb.i ] ; 3 uses
  %smin414 = tail call i64 @llvm.smin.i64(i64 %i.bc, i64 %.pre-phi419) ; 2 uses
  %12 = icmp slt i64 %.pre-phi419, %i.bc
  br i1 %12, label %.lr.ph544, label %.critedge181.i

bb.j:                                             ; preds = %.lr.ph544
  %i.bj = icmp sgt i64 %indvars.iv.next370.i, %.pre-phi419
  br i1 %i.bj, label %.lr.ph544, label %.critedge181.i, !llvm.loop !177

.lr.ph544:                                        ; preds = %.critedge4.i, %bb.j
  %indvars.iv369.i543 = phi i64 [ %indvars.iv.next370.i, %bb.j ], [ %i.bc, %.critedge4.i ]
  %indvars.iv.next370.i = add nsw i64 %indvars.iv369.i543, -1 ; 4 uses
  %i.bk = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv.next370.i ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !200, !noalias !196
  %i.bn = fcmp ult float %i.bm, %i.u
  br i1 %i.bn, label %.critedge6.i, label %bb.j, !llvm.loop !177

.critedge6.i:                                     ; preds = %.lr.ph544
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.bo = getelementptr inbounds [40 x i8], ptr %2, i64 %.pre-phi419 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %9, ptr noundef nonnull align 4 dereferenceable(40) %i.bo, i64 40, i1 false), !tbaa.struct !199, !noalias !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.bo, ptr noundef nonnull align 4 dereferenceable(40) %i.bk, i64 40, i1 false), !tbaa.struct !199, !noalias !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.bk, ptr noundef nonnull align 4 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !199, !noalias !196
  %i.bp = add nsw i32 %.4173.lcssa.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.critedge181.i

.critedge181.i:                                   ; preds = %bb.j, %.critedge4.i, %.critedge6.i
  %.5174.i = phi i32 [ %i.bp, %.critedge6.i ], [ %.4173.lcssa.i, %.critedge4.i ], [ %.4173.lcssa.i, %bb.j ] ; 3 uses
  %.5.in.i = phi i64 [ %indvars.iv.next370.i, %.critedge6.i ], [ %smin414, %.critedge4.i ], [ %smin414, %bb.j ]
  %.5.i = trunc i64 %.5.in.i to i32               ; 2 uses
  %i.bq = icmp slt i32 %.5174.i, %.5.i
  br i1 %i.bq, label %.preheader294.i, label %.loopexit.i, !llvm.loop !178

.preheader293.i:                                  ; preds = %bb.g, %.critedge182.i
  %.6319.i = phi i32 [ %.8.i, %.critedge182.i ], [ %1, %bb.g ] ; 2 uses
  %.6175318.i = phi i32 [ %.8177.i, %.critedge182.i ], [ 0, %bb.g ]
  %i.br = sext i32 %.6175318.i to i64
  %i.bs = sext i32 %.6319.i to i64                ; 5 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader293.i
  %indvars.iv372.i = phi i64 [ %i.br, %.preheader293.i ], [ %indvars.iv.next373.i, %bb.l ] ; 4 uses
  %i.bt = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv372.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !201, !noalias !196
  %i.bw = fcmp olt float %i.bv, %i.v
  br i1 %i.bw, label %bb.l, label %.critedge8.split.loop.exit413.i

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next373.i = add nsw i64 %indvars.iv372.i, 1 ; 2 uses
  %i.bx = icmp slt i64 %indvars.iv.next373.i, %i.bs
  br i1 %i.bx, label %bb.k, label %.critedge8.i, !llvm.loop !179

.critedge8.split.loop.exit413.i:                  ; preds = %bb.k
  %i.by = trunc nsw i64 %indvars.iv372.i to i32
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %bb.l, %.critedge8.split.loop.exit413.i
  %.pre-phi = phi i64 [ %indvars.iv372.i, %.critedge8.split.loop.exit413.i ], [ %i.bs, %bb.l ] ; 4 uses
  %.7176.lcssa.i = phi i32 [ %i.by, %.critedge8.split.loop.exit413.i ], [ %.6319.i, %bb.l ] ; 3 uses
  %smin415 = tail call i64 @llvm.smin.i64(i64 %i.bs, i64 %.pre-phi) ; 2 uses
  %13 = icmp slt i64 %.pre-phi, %i.bs
  br i1 %13, label %.lr.ph546, label %.critedge182.i

bb.m:                                             ; preds = %.lr.ph546
  %i.bz = icmp sgt i64 %indvars.iv.next377.i, %.pre-phi
  br i1 %i.bz, label %.lr.ph546, label %.critedge182.i, !llvm.loop !180

.lr.ph546:                                        ; preds = %.critedge8.i, %bb.m
  %indvars.iv376.i545 = phi i64 [ %indvars.iv.next377.i, %bb.m ], [ %i.bs, %.critedge8.i ]
  %indvars.iv.next377.i = add nsw i64 %indvars.iv376.i545, -1 ; 4 uses
  %i.ca = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv.next377.i ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !201, !noalias !196
  %i.cd = fcmp ult float %i.cc, %i.v
  br i1 %i.cd, label %.critedge10.i, label %bb.m, !llvm.loop !180

.critedge10.i:                                    ; preds = %.lr.ph546
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ce = getelementptr inbounds [40 x i8], ptr %2, i64 %.pre-phi ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %10, ptr noundef nonnull align 4 dereferenceable(40) %i.ce, i64 40, i1 false), !tbaa.struct !199, !noalias !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ce, ptr noundef nonnull align 4 dereferenceable(40) %i.ca, i64 40, i1 false), !tbaa.struct !199, !noalias !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ca, ptr noundef nonnull align 4 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !199, !noalias !196
  %i.cf = add nsw i32 %.7176.lcssa.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %.critedge182.i

.critedge182.i:                                   ; preds = %bb.m, %.critedge8.i, %.critedge10.i
  %.8177.i = phi i32 [ %i.cf, %.critedge10.i ], [ %.7176.lcssa.i, %.critedge8.i ], [ %.7176.lcssa.i, %bb.m ] ; 3 uses
  %.8.in.i = phi i64 [ %indvars.iv.next377.i, %.critedge10.i ], [ %smin415, %.critedge8.i ], [ %smin415, %bb.m ]
  %.8.i = trunc i64 %.8.in.i to i32               ; 2 uses
  %i.cg = icmp slt i32 %.8177.i, %.8.i
  br i1 %i.cg, label %.preheader293.i, label %.loopexit.i, !llvm.loop !181

.loopexit.i:                                      ; preds = %.critedge180.i, %.critedge181.i, %.critedge182.i
  %.sroa.12228.0 = phi i32 [ 2, %.critedge182.i ], [ 1, %.critedge181.i ], [ 0, %.critedge180.i ] ; 2 uses
  %.9.i = phi i32 [ %.8177.i, %.critedge182.i ], [ %.5174.i, %.critedge181.i ], [ %.2171.i, %.critedge180.i ] ; 3 uses
  %i.ch = icmp eq i32 %.9.i, 0
  %i.ci = add nsw i32 %1, -1
  %i.cj = icmp eq i32 %.9.i, %i.ci
  %or.cond184.i = select i1 %i.ch, i1 true, i1 %i.cj
  %i.ck = lshr i32 %1, 1
  %.10.i = select i1 %or.cond184.i, i32 %i.ck, i32 %.9.i ; 6 uses
  %i.cl = icmp sgt i32 %.10.i, 0
  br i1 %i.cl, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %wide.trip.count382.i = zext nneg i32 %.10.i to i64
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.loopexit.i
  %.sroa.0254.0.lcssa.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %.loopexit.i ], [ %i.cq, %.lr.ph.i ] ; 2 uses
  %.sroa.6257.0.lcssa.i = phi float [ f0x7F7FFFFF, %.loopexit.i ], [ %i.cs, %.lr.ph.i ] ; 2 uses
  %.sroa.7261.0.lcssa.i = phi <2 x float> [ splat (float f0xFF7FFFFF), %.loopexit.i ], [ %i.cu, %.lr.ph.i ] ; 2 uses
  %.sroa.8265.0.lcssa.i = phi float [ f0xFF7FFFFF, %.loopexit.i ], [ %i.cw, %.lr.ph.i ] ; 2 uses
  %i.cm = icmp slt i32 %.10.i, %1
  br i1 %i.cm, label %.lr.ph333.preheader.i, label %b3SplitMedian.exit.thread

.lr.ph333.preheader.i:                            ; preds = %.preheader.i
  %i.cn = sext i32 %.10.i to i64
  br label %.lr.ph333.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv379.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next380.i, %.lr.ph.i ] ; 2 uses
  %.sroa.8265.0323.i = phi float [ f0xFF7FFFFF, %.lr.ph.preheader.i ], [ %i.cw, %.lr.ph.i ] ; 2 uses
  %.sroa.7261.0322.i = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader.i ], [ %i.cu, %.lr.ph.i ] ; 2 uses
  %.sroa.6257.0321.i = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.i ], [ %i.cs, %.lr.ph.i ] ; 2 uses
  %.sroa.0254.0320.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph.preheader.i ], [ %i.cq, %.lr.ph.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv379.i ; 4 uses
  %.sroa.0277.0.copyload.i = load <2 x float>, ptr %i.co, align 4, !tbaa !16, !noalias !196 ; 2 uses
  %.sroa.4278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.4278.0.copyload.i = load float, ptr %.sroa.4278.0..sroa_idx.i, align 4, !tbaa !16, !noalias !196 ; 2 uses
  %.sroa.5279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %.sroa.5279.0.copyload.i = load <2 x float>, ptr %.sroa.5279.0..sroa_idx.i, align 4, !tbaa !16, !noalias !196 ; 2 uses
  %.sroa.6280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %.sroa.6280.0.copyload.i = load float, ptr %.sroa.6280.0..sroa_idx.i, align 4, !tbaa !16, !noalias !196 ; 2 uses
  %i.cp = fcmp olt <2 x float> %.sroa.0254.0320.i, %.sroa.0277.0.copyload.i
  %i.cq = select <2 x i1> %i.cp, <2 x float> %.sroa.0254.0320.i, <2 x float> %.sroa.0277.0.copyload.i ; 2 uses
  %i.cr = fcmp olt float %.sroa.6257.0321.i, %.sroa.4278.0.copyload.i
  %i.cs = select i1 %i.cr, float %.sroa.6257.0321.i, float %.sroa.4278.0.copyload.i ; 2 uses
  %i.ct = fcmp ogt <2 x float> %.sroa.7261.0322.i, %.sroa.5279.0.copyload.i
  %i.cu = select <2 x i1> %i.ct, <2 x float> %.sroa.7261.0322.i, <2 x float> %.sroa.5279.0.copyload.i ; 2 uses
  %i.cv = fcmp ogt float %.sroa.8265.0323.i, %.sroa.6280.0.copyload.i
  %i.cw = select i1 %i.cv, float %.sroa.8265.0323.i, float %.sroa.6280.0.copyload.i ; 2 uses
  %indvars.iv.next380.i = add nuw nsw i64 %indvars.iv379.i, 1 ; 2 uses
  %exitcond383.not.i = icmp eq i64 %indvars.iv.next380.i, %wide.trip.count382.i
  br i1 %exitcond383.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !182

.lr.ph333.i:                                      ; preds = %.lr.ph333.i, %.lr.ph333.preheader.i
  %indvars.iv384.i = phi i64 [ %i.cn, %.lr.ph333.preheader.i ], [ %indvars.iv.next385.i, %.lr.ph333.i ] ; 2 uses
  %.sroa.0237.0331.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph333.preheader.i ], [ %i.cz, %.lr.ph333.i ] ; 2 uses
  %.sroa.6240.0330.i = phi float [ f0x7F7FFFFF, %.lr.ph333.preheader.i ], [ %i.db, %.lr.ph333.i ] ; 2 uses
  %.sroa.7.0329.i = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph333.preheader.i ], [ %i.dd, %.lr.ph333.i ] ; 2 uses
  %.sroa.8.0328.i = phi float [ f0xFF7FFFFF, %.lr.ph333.preheader.i ], [ %i.df, %.lr.ph333.i ] ; 2 uses
  %i.cx = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv384.i ; 4 uses
  %.sroa.0289.0.copyload.i = load <2 x float>, ptr %i.cx, align 4, !tbaa !16, !noalias !196 ; 2 uses
  %.sroa.4290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.4290.0.copyload.i = load float, ptr %.sroa.4290.0..sroa_idx.i, align 4, !tbaa !16, !noalias !196 ; 2 uses
  %.sroa.5291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %.sroa.5291.0.copyload.i = load <2 x float>, ptr %.sroa.5291.0..sroa_idx.i, align 4, !tbaa !16, !noalias !196 ; 2 uses
  %.sroa.6292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  %.sroa.6292.0.copyload.i = load float, ptr %.sroa.6292.0..sroa_idx.i, align 4, !tbaa !16, !noalias !196 ; 2 uses
  %i.cy = fcmp olt <2 x float> %.sroa.0237.0331.i, %.sroa.0289.0.copyload.i
  %i.cz = select <2 x i1> %i.cy, <2 x float> %.sroa.0237.0331.i, <2 x float> %.sroa.0289.0.copyload.i ; 2 uses
  %i.da = fcmp olt float %.sroa.6240.0330.i, %.sroa.4290.0.copyload.i
  %i.db = select i1 %i.da, float %.sroa.6240.0330.i, float %.sroa.4290.0.copyload.i ; 2 uses
  %i.dc = fcmp ogt <2 x float> %.sroa.7.0329.i, %.sroa.5291.0.copyload.i
  %i.dd = select <2 x i1> %i.dc, <2 x float> %.sroa.7.0329.i, <2 x float> %.sroa.5291.0.copyload.i ; 2 uses
  %i.de = fcmp ogt float %.sroa.8.0328.i, %.sroa.6292.0.copyload.i
  %i.df = select i1 %i.de, float %.sroa.8.0328.i, float %.sroa.6292.0.copyload.i ; 2 uses
  %indvars.iv.next385.i = add nsw i64 %indvars.iv384.i, 1 ; 2 uses
  %exitcond388.not.i = icmp eq i64 %indvars.iv.next385.i, %wide.trip.count.i
  br i1 %exitcond388.not.i, label %b3SplitMedian.exit.thread, label %.lr.ph333.i, !llvm.loop !183

.preheader320.i:                                  ; preds = %.preheader487
  %i.dg = fsub <2 x float> %i.ff, %i.fb
  %i.dh = fsub float %i.fh, %i.fd
  %i.di = fmul <2 x float> %i.dg, splat (float 5.000000e-01)
  %i.dj = fmul float %i.dh, 5.000000e-01
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 60
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 116
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 140
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 168
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 172
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 196
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.eh = extractelement <2 x float> %i.fb, i64 0 ; 4 uses
  %i.ei = extractelement <2 x float> %i.fb, i64 1 ; 4 uses
  %i.ej = extractelement <2 x float> %i.ff, i64 0 ; 2 uses
  %i.ek = extractelement <2 x float> %i.ff, i64 1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.4304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.5305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.4304.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.5305.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %6, i64 44
  %.sroa.6306.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 60
  %.sroa.4304.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %6, i64 68
  %.sroa.5305.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %6, i64 72
  %.sroa.6306.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 88
  %.sroa.4304.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %6, i64 96
  %.sroa.5305.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %6, i64 100
  %.sroa.6306.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %6, i64 108
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 116
  %.sroa.4304.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %6, i64 124
  %.sroa.5305.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.sroa.6306.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 140
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 144
  %.sroa.4304.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %6, i64 152
  %.sroa.5305.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %6, i64 156
  %.sroa.6306.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %6, i64 164
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 168
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 172
  %.sroa.4304.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %6, i64 180
  %.sroa.5305.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %6, i64 184
  %.sroa.6306.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %6, i64 192
  br label %bb.o

.preheader487:                                    ; preds = %bb.b, %.preheader487
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i75, %.preheader487 ], [ 1, %bb.b ] ; 2 uses
  %.sroa.21.0324.i = phi float [ %i.fh, %.preheader487 ], [ %.sroa.7137.0.copyload.i, %bb.b ] ; 2 uses
  %.sroa.16.0323.i = phi <2 x float> [ %i.ff, %.preheader487 ], [ %.sroa.0134.0.copyload.i, %bb.b ] ; 2 uses
  %.sroa.10.0322.i = phi float [ %i.fd, %.preheader487 ], [ %.sroa.7137.0.copyload.i, %bb.b ] ; 2 uses
  %.sroa.0266.0321.i = phi <2 x float> [ %i.fb, %.preheader487 ], [ %.sroa.0134.0.copyload.i, %bb.b ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv.i68 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %.sroa.082.0.copyload.i = load <2 x float>, ptr %i.ez, align 4, !noalias !202 ; 4 uses
  %.sroa.283.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %.sroa.283.0.copyload.i = load float, ptr %.sroa.283.0..sroa_idx.i, align 4, !noalias !202 ; 4 uses
  %i.fa = fcmp olt <2 x float> %.sroa.0266.0321.i, %.sroa.082.0.copyload.i
  %i.fb = select <2 x i1> %i.fa, <2 x float> %.sroa.0266.0321.i, <2 x float> %.sroa.082.0.copyload.i ; 4 uses
  %i.fc = fcmp olt float %.sroa.10.0322.i, %.sroa.283.0.copyload.i
  %i.fd = select i1 %i.fc, float %.sroa.10.0322.i, float %.sroa.283.0.copyload.i ; 6 uses
  %i.fe = fcmp ogt <2 x float> %.sroa.16.0323.i, %.sroa.082.0.copyload.i
  %i.ff = select <2 x i1> %i.fe, <2 x float> %.sroa.16.0323.i, <2 x float> %.sroa.082.0.copyload.i ; 4 uses
  %i.fg = fcmp ogt float %.sroa.21.0324.i, %.sroa.283.0.copyload.i
  %i.fh = select i1 %i.fg, float %.sroa.21.0324.i, float %.sroa.283.0.copyload.i ; 4 uses
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next.i75, %wide.trip.count.i
  br i1 %exitcond.not.i76, label %.preheader320.i, label %.preheader487, !llvm.loop !186

bb.n:                                             ; preds = %bb.w
  %i.fi = icmp sgt i32 %.4.i, -1
  br i1 %i.fi, label %bb.x, label %b3SplitMedian.exit

bb.o:                                             ; preds = %bb.w, %.preheader320.i
  %.sroa.13.0 = phi i32 [ -1, %.preheader320.i ], [ %.sroa.13.3, %bb.w ] ; 2 uses
  %.sroa.11219.0 = phi i32 [ -1, %.preheader320.i ], [ %.sroa.11219.3, %bb.w ] ; 2 uses
  %.sroa.10218.0 = phi float [ undef, %.preheader320.i ], [ %.sroa.10218.3, %bb.w ] ; 2 uses
  %.sroa.9217.0 = phi <2 x float> [ undef, %.preheader320.i ], [ %.sroa.9217.3, %bb.w ] ; 2 uses
  %.sroa.8216.0 = phi float [ undef, %.preheader320.i ], [ %.sroa.8216.3, %bb.w ] ; 2 uses
  %.sroa.7215.0 = phi <2 x float> [ undef, %.preheader320.i ], [ %.sroa.7215.3, %bb.w ] ; 2 uses
  %.sroa.6214.0 = phi float [ undef, %.preheader320.i ], [ %.sroa.6214.3, %bb.w ] ; 2 uses
  %.sroa.5213.0 = phi <2 x float> [ undef, %.preheader320.i ], [ %.sroa.5213.3, %bb.w ] ; 2 uses
  %.sroa.4212.0 = phi float [ undef, %.preheader320.i ], [ %.sroa.4212.3, %bb.w ] ; 2 uses
  %.sroa.0211.0 = phi <2 x float> [ undef, %.preheader320.i ], [ %.sroa.0211.3, %bb.w ] ; 2 uses
end_hunk_0
