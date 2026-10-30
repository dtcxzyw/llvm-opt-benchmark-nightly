Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourPathCorridor?download=true
inline.NumInlined: 32
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z28dtMergeCorridorStartShortcutPjiiPKji:bb.a

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.us.lr.ph
  %indvars.iv.next7184.in = phi i64 [ %i.f, %.preheader.us.lr.ph ], [ %indvars.iv.next7184, %._crit_edge.us ]
  %.049.us83 = phi i32 [ -1, %.preheader.us.lr.ph ], [ %.2.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.051.us82 = phi i32 [ -1, %.preheader.us.lr.ph ], [ %.253.us.lcssa, %._crit_edge.us ] ; 2 uses
  %indvars.iv.next7184 = add nsw i64 %indvars.iv.next7184.in, -1 ; 4 uses
  %indvars85 = trunc i64 %indvars.iv.next7184 to i32 ; 2 uses
  %i.m = and i64 %indvars.iv.next7184, 4294967295
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.049.us83, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat90 = shufflevector <4 x i32> %broadcast.splatinsert89, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi91 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ac, %vector.body ]
  %i.p = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi92 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.q = sub i64 %i.d, %index                     ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %3, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !11
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.t = icmp eq <4 x i32> %broadcast.splat90, %reverse
  %i.u = freeze <4 x i1> %i.t                     ; 4 uses
  %i.v = or <4 x i1> %vec.phi92, %i.u             ; 2 uses
  %i.w = trunc i64 %i.q to i32
  %i.x = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.z = add <4 x i32> %i.y, <i32 -1, i32 -2, i32 -3, i32 -4>
  %i.aa = bitcast <4 x i1> %i.u to i4
  %.not107 = icmp eq i4 %i.aa, 0                  ; 2 uses
  %i.ab = select i1 %.not107, <4 x i1> %i.p, <4 x i1> %i.u ; 2 uses
  %i.ac = select i1 %.not107, <4 x i32> %vec.phi91, <4 x i32> %i.z ; 2 uses
  %i.ad = or <4 x i1> %vec.phi, %i.u              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %i.af = bitcast <4 x i1> %i.ad to i4
  %i.ag = icmp ne i4 %i.af, 0                     ; 2 uses
  %i.ah = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.ac, <4 x i1> %i.ab, i32 %.049.us83) ; 2 uses
  %i.ai = bitcast <4 x i1> %i.v to i4
  %.not110 = icmp eq i4 %i.ai, 0
  %rdx.select = select i1 %.not110, i32 %.051.us82, i32 %indvars85 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.d, %.preheader.us ], [ %i.g, %middle.block ]
  %.04661.us.ph = phi i1 [ false, %.preheader.us ], [ %i.ag, %middle.block ]
  %.15060.us.ph = phi i32 [ %.049.us83, %.preheader.us ], [ %i.ah, %middle.block ]
  %.15259.us.ph = phi i32 [ %.051.us82, %.preheader.us ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.253.us.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.253.us, %scalar.ph ] ; 2 uses
  %.2.us.lcssa = phi i32 [ %i.ah, %middle.block ], [ %.2.us, %scalar.ph ] ; 2 uses
  %.1.us.lcssa = phi i1 [ %i.ag, %middle.block ], [ %.1.us, %scalar.ph ]
  %i.aj = trunc nuw i64 %indvars.iv.next7184 to i32
  %i.ak = icmp slt i32 %i.aj, 1
  %or.cond112.not = select i1 %.1.us.lcssa, i1 true, i1 %i.ak
  br i1 %or.cond112.not, label %.split66.us, label %.preheader.us

.split66.us:                                      ; preds = %._crit_edge.us, %.split.us.preheader
  %.us-phi = phi i32 [ -1, %.split.us.preheader ], [ %.253.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.us-phi67 = phi i32 [ -1, %.split.us.preheader ], [ %.2.us.lcssa, %._crit_edge.us ] ; 7 uses
  %i.al = icmp eq i32 %.us-phi, -1
  %i.am = icmp slt i32 %.us-phi67, 1
  %or.cond58 = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond58, label %.split66.us.thread, label %bb.b

bb.b:                                             ; preds = %.split66.us
  %i.an = sub nsw i32 %1, %.us-phi
  %i.ao = tail call noundef i32 @llvm.smax.i32(i32 %i.an, i32 0) ; 2 uses
  %i.ap = add nuw nsw i32 %i.ao, %.us-phi67
  %i.aq = icmp sgt i32 %i.ap, %2
  %i.ar = sub nsw i32 %2, %.us-phi67
  %spec.select = select i1 %i.aq, i32 %i.ar, i32 %i.ao ; 3 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = zext nneg i32 %.us-phi67 to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as
  %i.au = zext nneg i32 %.us-phi to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au
  %i.aw = sext i32 %spec.select to i64
  %i.ax = shl nsw i64 %i.aw, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.av, i64 %i.ax, i1 false)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %wide.trip.count = zext nneg i32 %.us-phi67 to i64 ; 5 uses
  %min.iters.check96 = icmp ult i32 %.us-phi67, 8
  %i.ay = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ay, -32
  %or.cond = or i1 %min.iters.check96, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader114, label %vector.ph97

vector.ph97:                                      ; preds = %.lr.ph.preheader
  %n.vec98 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next103, %vector.body99 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index100 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load101 = load <4 x i32>, ptr %i.az, align 4, !tbaa !11
  %wide.load102 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !11
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index100 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x i32> %wide.load101, ptr %i.bb, align 4, !tbaa !11
  store <4 x i32> %wide.load102, ptr %i.bc, align 4, !tbaa !11
  %index.next103 = add nuw i64 %index100, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next103, %n.vec98
  br i1 %i.bd, label %middle.block104, label %vector.body99, !llvm.loop !36

middle.block104:                                  ; preds = %vector.body99
  %cmp.n105 = icmp eq i64 %n.vec98, %wide.trip.count
  br i1 %cmp.n105, label %._crit_edge, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %.lr.ph.preheader, %middle.block104
  %indvars.iv73.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec98, %middle.block104 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader114, %.lr.ph.prol
  %indvars.iv73.prol = phi i64 [ %indvars.iv.next74.prol, %.lr.ph.prol ], [ %indvars.iv73.ph, %.lr.ph.preheader114 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader114 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv73.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !11
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73.prol
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !11
  %indvars.iv.next74.prol = add nuw nsw i64 %indvars.iv73.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !37

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader114
  %indvars.iv73.unr = phi i64 [ %indvars.iv73.ph, %.lr.ph.preheader114 ], [ %indvars.iv.next74.prol, %.lr.ph.prol ]
  %i.bh = sub nsw i64 %indvars.iv73.ph, %wide.trip.count
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block104
  %i.bj = add nsw i32 %spec.select, %.us-phi67
  br label %.split66.us.thread

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv73 = phi i64 [ %indvars.iv.next74.3, %.lr.ph ], [ %indvars.iv73.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv73
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !11
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !11
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next74
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !11
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next74
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !11
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next74.1
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next74.1
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !11
  %indvars.iv.next74.2 = add nuw nsw i64 %indvars.iv73, 3 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next74.2
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !11
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next74.2
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !11
  %indvars.iv.next74.3 = add nuw nsw i64 %indvars.iv73, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next74.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !38

.split66.us.thread:                               ; preds = %bb.a, %._crit_edge, %.split66.us
  %.156 = phi i32 [ %1, %.split66.us ], [ %i.bj, %._crit_edge ], [ %1, %bb.a ]
  ret i32 %.156
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN14dtPathCorridorC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((24, 40)) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN14dtPathCorridorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @_Z6dtFreePv(ptr noundef %i.b) #11
  ret void
}

declare void @_Z6dtFreePv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZN14dtPathCorridor4initEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((24, 32)) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 2
  %i.c = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %i.b, i32 noundef 0) #11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !18
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.f, align 4, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

declare noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN14dtPathCorridor5resetEjPKf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 36)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !22
  store float %i.a, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load float, ptr %2, align 4, !tbaa !22
  store float %i.i, ptr %i.h, align 4, !tbaa !22
  %i.j = load float, ptr %i.b, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.j, ptr %i.k, align 8, !tbaa !22
  %i.l = load float, ptr %i.e, align 4, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.l, ptr %i.m, align 4, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  store i32 %1, ptr %i.o, align 4, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.p, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @_ZN14dtPathCorridor11findCornersEPfPhPjiP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = call noundef i32 @_ZNK14dtNavMeshQuery16findStraightPathEPKfS1_PKjiPfPhPjPiii(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %i.d, i32 noundef %i.f, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef 0) #11 ; 0 uses
  %.promoted = load i32, ptr %i.a, align 4, !tbaa !11 ; 4 uses
  %.not23 = icmp eq i32 %.promoted, 0
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = sext i32 %.promoted to i64               ; 2 uses
  %i.n = load i8, ptr %2, align 1, !tbaa !39
  %i.o = and i8 %i.n, 4
  %.not1946 = icmp eq i8 %i.o, 0
  br i1 %.not1946, label %.lr.ph48, label %._crit_edge

.lr.ph48:                                         ; preds = %.lr.ph, %bb.c
  %indvars.iv47 = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.p = phi i32 [ %i.z, %bb.c ], [ %.promoted, %.lr.ph ]
  %i.q = load float, ptr %0, align 8, !tbaa !22
  %i.r = load float, ptr %1, align 4, !tbaa !22
  %i.s = fsub float %i.q, %i.r                    ; 2 uses
  %i.t = load float, ptr %i.h, align 8, !tbaa !22
  %i.u = load float, ptr %i.i, align 4, !tbaa !22
  %i.v = fsub float %i.t, %i.u                    ; 2 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = call noundef float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.w)
  %i.y = fcmp ogt float %i.x, f0x38D1B717
  br i1 %i.y, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph48
  %indvars.iv.next = add nsw i64 %indvars.iv47, -1 ; 7 uses
  %cond = icmp eq i64 %indvars.iv.next, 0
  br i1 %cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = trunc nsw i64 %indvars.iv.next to i32    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %i.j, i64 %indvars.iv.next, i1 false)
  %i.aa = shl nsw i64 %indvars.iv.next, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %3, ptr nonnull align 4 %i.k, i64 %i.aa, i1 false)
  %i.ab = mul nsw i64 %indvars.iv.next, 12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %1, ptr nonnull align 4 %i.l, i64 %i.ab, i1 false)
  %i.ac = load i8, ptr %2, align 1, !tbaa !39
  %i.ad = and i8 %i.ac, 4
  %.not19 = icmp eq i8 %i.ad, 0
  br i1 %.not19, label %.lr.ph48, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %.lr.ph48, %.lr.ph
  %.lcssa = phi i32 [ %.promoted, %.lr.ph ], [ %i.z, %bb.c ], [ %i.p, %.lr.ph48 ] ; 2 uses
  %indvars.iv.lcssa = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %bb.c ], [ %indvars.iv47, %.lr.ph48 ] ; 2 uses
  %i.ae = icmp sgt i64 %indvars.iv.lcssa, 0
  br i1 %i.ae, label %.lr.ph30.preheader, label %.loopexit

.lr.ph30.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = and i64 %indvars.iv.lcssa, 4294967295
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %bb.e
  %indvars.iv33 = phi i64 [ 0, %.lr.ph30.preheader ], [ %indvars.iv.next34, %bb.e ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv33
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !39
  %i.ah = and i8 %i.ag, 4
  %.not21 = icmp eq i8 %i.ah, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph30
  %i.ai = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.aj = add nuw nsw i32 %i.ai, 1
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph30
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph30

.loopexit:                                        ; preds = %bb.b, %bb.e, %bb.a, %._crit_edge, %bb.d
  %i.ak = phi i32 [ %.lcssa, %bb.e ], [ %.lcssa, %._crit_edge ], [ %i.aj, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.ak
}

declare noundef i32 @_ZNK14dtNavMeshQuery16findStraightPathEPKfS1_PKjiPfPhPjPiii(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @_ZN14dtPathCorridor22optimizePathVisibilityEPKffP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = alloca [32 x i32], align 16              ; 12 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca [3 x float], align 4              ; 3 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.g = load float, ptr %1, align 4, !tbaa !22
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %6 = load float, ptr %5, align 4, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !22
  %i.j = load float, ptr %0, align 8, !tbaa !22   ; 2 uses
  %i.k = fsub float %i.g, %i.j                    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !22 ; 2 uses
  %i.n = fsub float %i.i, %i.m                    ; 3 uses
  %i.o = fmul float %i.n, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.o)
  %i.q = tail call noundef float @sqrtf(float noundef %i.p) #11 ; 2 uses
  %i.r = fcmp olt float %i.q, f0x3C23D70A
  br i1 %i.r, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = fadd float %i.q, f0x3C23D70A             ; 2 uses
  %i.u = fcmp olt float %i.t, %2
  %i.v = select i1 %i.u, float %i.t, float %2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !22 ; 2 uses
  %i.y = fsub float %6, %i.x
  %i.z = fdiv float %2, %i.v                      ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.y, i64 1
  %i.ac = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x float> poison, float %i.j, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.x, i64 1
  %i.ag = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> %i.af)
  store <2 x float> %i.ag, ptr %i.a, align 8, !tbaa !22
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.n, float %i.z, float %i.m)
  store float %i.ah, ptr %i.s, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store i32 0, ptr %i.f, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !11
  %i.al = call noundef i32 @_ZNK14dtNavMeshQuery7raycastEjPKfS1_PK13dtQueryFilterPfS5_PjPii(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.ak, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, i32 noundef 32) #11 ; 0 uses
  %i.am = load i32, ptr %i.f, align 4, !tbaa !11  ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  %i.ao = load float, ptr %i.d, align 4
  %i.ap = fcmp ogt float %i.ao, 9.900000e-01
  %or.cond = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond, label %.split.us.preheader.i, label %bb.e

.split.us.preheader.i:                            ; preds = %bb.b
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !18 ; 10 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !19 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !20 ; 2 uses
  %i.aw = zext nneg i32 %i.am to i64              ; 5 uses
  %i.ax = icmp sgt i32 %i.at, 0
  br i1 %i.ax, label %.preheader.us.i.lr.ph, label %.split66.us.i

.preheader.us.i.lr.ph:                            ; preds = %.split.us.preheader.i
  %i.ay = zext nneg i32 %i.at to i64
  %min.iters.check = icmp ult i32 %i.am, 8
  %n.vec = and i64 %i.aw, 2147483644              ; 2 uses
  %i.az = and i64 %i.aw, 3
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  br label %.preheader.us.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.04661.us.i = phi i1 [ %.1.us.i, %scalar.ph ], [ %.04661.us.i.ph, %scalar.ph.preheader ]
  %.15060.us.i = phi i32 [ %.2.us.i, %scalar.ph ], [ %.15060.us.i.ph, %scalar.ph.preheader ]
  %.15259.us.i = phi i32 [ %.253.us.i, %scalar.ph ], [ %.15259.us.i.ph, %scalar.ph.preheader ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bc = icmp eq i32 %i.bh, %i.bb                ; 3 uses
  %.253.us.i = select i1 %i.bc, i32 %indvars.i17, i32 %.15259.us.i ; 2 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %.2.us.i = select i1 %i.bc, i32 %i.bd, i32 %.15060.us.i ; 2 uses
  %.1.us.i = select i1 %i.bc, i1 true, i1 %.04661.us.i ; 2 uses
  %i.be = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.be, label %scalar.ph, label %._crit_edge.us.i, !llvm.loop !40

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.i.lr.ph
  %indvars.iv.next71.i16.in = phi i64 [ %i.ay, %.preheader.us.i.lr.ph ], [ %indvars.iv.next71.i16, %._crit_edge.us.i ]
  %.049.us.i15 = phi i32 [ -1, %.preheader.us.i.lr.ph ], [ %.2.us.i.lcssa, %._crit_edge.us.i ] ; 3 uses
  %.051.us.i14 = phi i32 [ -1, %.preheader.us.i.lr.ph ], [ %.253.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next71.i16 = add nsw i64 %indvars.iv.next71.i16.in, -1 ; 4 uses
  %indvars.i17 = trunc i64 %indvars.iv.next71.i16 to i32 ; 2 uses
  %i.bf = and i64 %indvars.iv.next71.i16, 4294967295
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !11 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.049.us.i15, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert21 = insertelement <4 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat22 = shufflevector <4 x i32> %broadcast.splatinsert21, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi23.a = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bv, %vector.body ]
  %i.bi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bu, %vector.body ]
  %vec.phi24 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %i.bj = sub i64 %i.aw, %index                   ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %i.b, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -16
  %wide.load = load <4 x i32>, ptr %i.bl, align 4, !tbaa !11
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bm = icmp eq <4 x i32> %broadcast.splat22, %reverse
  %i.bn = freeze <4 x i1> %i.bm                   ; 4 uses
  %i.bo = or <4 x i1> %vec.phi24, %i.bn           ; 2 uses
  %i.bp = trunc i64 %i.bj to i32
  %i.bq = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %i.br = shufflevector <4 x i32> %i.bq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bs = add <4 x i32> %i.br, <i32 -1, i32 -2, i32 -3, i32 -4>
  %i.bt = bitcast <4 x i1> %i.bn to i4
  %.not = icmp eq i4 %i.bt, 0                     ; 2 uses
  %i.bu = select i1 %.not, <4 x i1> %i.bi, <4 x i1> %i.bn ; 2 uses
  %i.bv = select i1 %.not, <4 x i32> %vec.phi23.a, <4 x i32> %i.bs ; 2 uses
  %i.bw = or <4 x i1> %vec.phi, %i.bn             ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %i.by = bitcast <4 x i1> %i.bw to i4
  %i.bz = icmp ne i4 %i.by, 0                     ; 2 uses
  %i.ca = call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.bv, <4 x i1> %i.bu, i32 %.049.us.i15) ; 2 uses
  %i.cb = bitcast <4 x i1> %i.bo to i4
  %.not41 = icmp eq i4 %i.cb, 0
  %rdx.select = select i1 %.not41, i32 %.051.us.i14, i32 %indvars.i17 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.aw, %.preheader.us.i ], [ %i.az, %middle.block ]
  %.04661.us.i.ph = phi i1 [ false, %.preheader.us.i ], [ %i.bz, %middle.block ]
  %.15060.us.i.ph = phi i32 [ %.049.us.i15, %.preheader.us.i ], [ %i.ca, %middle.block ]
  %.15259.us.i.ph = phi i32 [ %.051.us.i14, %.preheader.us.i ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %.253.us.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.253.us.i, %scalar.ph ] ; 2 uses
  %.2.us.i.lcssa = phi i32 [ %i.ca, %middle.block ], [ %.2.us.i, %scalar.ph ] ; 2 uses
  %.1.us.i.lcssa = phi i1 [ %i.bz, %middle.block ], [ %.1.us.i, %scalar.ph ]
  %i.cc = trunc nuw i64 %indvars.iv.next71.i16 to i32
  %i.cd = icmp slt i32 %i.cc, 1
  %or.cond44.not = select i1 %.1.us.i.lcssa, i1 true, i1 %i.cd
  br i1 %or.cond44.not, label %.split66.us.i, label %.preheader.us.i

.split66.us.i:                                    ; preds = %._crit_edge.us.i, %.split.us.preheader.i
  %.us-phi.i = phi i32 [ -1, %.split.us.preheader.i ], [ %.253.us.i.lcssa, %._crit_edge.us.i ] ; 3 uses
  %.us-phi67.i = phi i32 [ -1, %.split.us.preheader.i ], [ %.2.us.i.lcssa, %._crit_edge.us.i ] ; 6 uses
  %i.ce = icmp eq i32 %.us-phi.i, -1
  %i.cf = icmp slt i32 %.us-phi67.i, 1
  %or.cond58.i = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond58.i, label %_Z28dtMergeCorridorStartShortcutPjiiPKji.exit, label %bb.c

bb.c:                                             ; preds = %.split66.us.i
  %i.cg = sub nsw i32 %i.at, %.us-phi.i
  %i.ch = call noundef i32 @llvm.smax.i32(i32 %i.cg, i32 0) ; 2 uses
  %i.ci = add nuw nsw i32 %i.ch, %.us-phi67.i
  %i.cj = icmp sgt i32 %i.ci, %i.av
  %i.ck = sub nsw i32 %i.av, %.us-phi67.i
  %spec.select.i = select i1 %i.cj, i32 %i.ck, i32 %i.ch ; 3 uses
  %.not.i = icmp eq i32 %spec.select.i, 0
  %.pre = zext nneg i32 %.us-phi67.i to i64       ; 6 uses
  br i1 %.not.i, label %.lr.ph.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.pre
  %i.cm = zext nneg i32 %.us-phi.i to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cm
  %i.co = sext i32 %spec.select.i to i64
  %i.cp = shl nsw i64 %i.co, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %i.cn, i64 %i.cp, i1 false)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c, %bb.d
  %min.iters.check28 = icmp ult i32 %.us-phi67.i, 8
  %i.cq = sub i64 %i.c, %i.ar
  %diff.check = icmp ugt i64 %i.cq, -32
  %or.cond42 = select i1 %min.iters.check28, i1 true, i1 %diff.check
  br i1 %or.cond42, label %.lr.ph.i.preheader, label %vector.ph29

vector.ph29:                                      ; preds = %.lr.ph.preheader.i
  %n.vec30 = and i64 %.pre, 2147483640            ; 3 uses
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph29
  %index32 = phi i64 [ 0, %vector.ph29 ], [ %index.next35, %vector.body31 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index32 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load33.a = load <4 x i32>, ptr %i.cr, align 16, !tbaa !11
  %wide.load34 = load <4 x i32>, ptr %i.cs, align 16, !tbaa !11
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x i32> %wide.load33.a, ptr %i.ct, align 4, !tbaa !11
  store <4 x i32> %wide.load34, ptr %i.cu, align 4, !tbaa !11
  %index.next35 = add nuw i64 %index32, 8         ; 2 uses
  %i.cv = icmp eq i64 %index.next35, %n.vec30
  br i1 %i.cv, label %middle.block36, label %vector.body31, !llvm.loop !42

middle.block36:                                   ; preds = %vector.body31
  %cmp.n37 = icmp eq i64 %n.vec30, %.pre
  br i1 %cmp.n37, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block36
  %indvars.iv73.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec30, %middle.block36 ] ; 3 uses
  %xtraiter = and i64 %.pre, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv73.i.prol = phi i64 [ %indvars.iv.next74.i.prol, %.lr.ph.i.prol ], [ %indvars.iv73.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv73.i.prol
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !11
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv73.i.prol
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !11
  %indvars.iv.next74.i.prol = add nuw nsw i64 %indvars.iv73.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !43

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv73.i.unr = phi i64 [ %indvars.iv73.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next74.i.prol, %.lr.ph.i.prol ]
  %i.cz = sub nsw i64 %indvars.iv73.i.ph, %.pre
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block36
  %i.db = add nsw i32 %spec.select.i, %.us-phi67.i
  br label %_Z28dtMergeCorridorStartShortcutPjiiPKji.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i.3, %.lr.ph.i ], [ %indvars.iv73.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv73.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !11
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv73.i
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !11
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !11
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next74.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !11
  %indvars.iv.next74.i.1 = add nuw nsw i64 %indvars.iv73.i, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i.1
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !11
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next74.i.1
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !11
  %indvars.iv.next74.i.2 = add nuw nsw i64 %indvars.iv73.i, 3 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i.2
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !11
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next74.i.2
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !11
  %indvars.iv.next74.i.3 = add nuw nsw i64 %indvars.iv73.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next74.i.3, %.pre
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !44

_Z28dtMergeCorridorStartShortcutPjiiPKji.exit:    ; preds = %.split66.us.i, %._crit_edge.i
  %.156.i = phi i32 [ %i.at, %.split66.us.i ], [ %i.db, %._crit_edge.i ]
  store i32 %.156.i, ptr %i.as, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %_Z28dtMergeCorridorStartShortcutPjiiPKji.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef i32 @_ZNK14dtNavMeshQuery7raycastEjPKfS1_PK13dtQueryFilterPfS5_PjPii(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZN14dtPathCorridor20optimizePathTopologyEP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 12 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = icmp slt i32 %i.e, 3
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr [4 x i8], ptr %i.h, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = tail call noundef i32 @_ZN14dtNavMeshQuery18initSlicedFindPathEjjPKfS1_PK13dtQueryFilterj(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.i, i32 noundef %i.m, ptr noundef nonnull %0, ptr noundef nonnull %i.n, ptr noundef %2, i32 noundef 0) #11 ; 0 uses
  %i.p = tail call noundef i32 @_ZN14dtNavMeshQuery20updateSlicedFindPathEiPi(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef 32, ptr noundef null) #11 ; 0 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.r = load i32, ptr %i.d, align 8, !tbaa !19
  %i.s = call noundef i32 @_ZN14dtNavMeshQuery29finalizeSlicedFindPathPartialEPKjiPjPii(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.q, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef 32) #11
  %i.t = and i32 %i.s, 1073741824
  %i.u = icmp ne i32 %i.t, 0
  %i.v = load i32, ptr %i.c, align 4              ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  %or.cond = select i1 %i.u, i1 %i.w, i1 false    ; 2 uses
  br i1 %or.cond, label %.split.us.preheader.i, label %bb.e

.split.us.preheader.i:                            ; preds = %bb.b
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !18   ; 10 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = load i32, ptr %i.d, align 8, !tbaa !19   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ac = zext nneg i32 %i.v to i64               ; 5 uses
  %i.ad = icmp sgt i32 %i.z, 0
  br i1 %i.ad, label %.preheader.us.i.lr.ph, label %.split66.us.i

.preheader.us.i.lr.ph:                            ; preds = %.split.us.preheader.i
  %i.ae = zext nneg i32 %i.z to i64
  %min.iters.check = icmp ult i32 %i.v, 8
  %n.vec = and i64 %i.ac, 2147483644              ; 2 uses
  %i.af = and i64 %i.ac, 3
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br label %.preheader.us.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.04661.us.i = phi i1 [ %.1.us.i, %scalar.ph ], [ %.04661.us.i.ph, %scalar.ph.preheader ]
  %.15060.us.i = phi i32 [ %.2.us.i, %scalar.ph ], [ %.15060.us.i.ph, %scalar.ph.preheader ]
  %.15259.us.i = phi i32 [ %.253.us.i, %scalar.ph ], [ %.15259.us.i.ph, %scalar.ph.preheader ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !11
  %i.ai = icmp eq i32 %i.an, %i.ah                ; 3 uses
  %.253.us.i = select i1 %i.ai, i32 %indvars.i14, i32 %.15259.us.i ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %.2.us.i = select i1 %i.ai, i32 %i.aj, i32 %.15060.us.i ; 2 uses
  %.1.us.i = select i1 %i.ai, i1 true, i1 %.04661.us.i ; 2 uses
  %i.ak = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ak, label %scalar.ph, label %._crit_edge.us.i, !llvm.loop !45

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.i.lr.ph
  %indvars.iv.next71.i13.in = phi i64 [ %i.ae, %.preheader.us.i.lr.ph ], [ %indvars.iv.next71.i13, %._crit_edge.us.i ]
  %.049.us.i12 = phi i32 [ -1, %.preheader.us.i.lr.ph ], [ %.2.us.i.lcssa, %._crit_edge.us.i ] ; 3 uses
  %.051.us.i11 = phi i32 [ -1, %.preheader.us.i.lr.ph ], [ %.253.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next71.i13 = add nsw i64 %indvars.iv.next71.i13.in, -1 ; 4 uses
  %indvars.i14 = trunc i64 %indvars.iv.next71.i13 to i32 ; 2 uses
  %i.al = and i64 %indvars.iv.next71.i13, 4294967295
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !11 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.049.us.i12, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat19 = shufflevector <4 x i32> %broadcast.splatinsert18, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi20 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bb, %vector.body ]
  %i.ao = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi21 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.ap = sub i64 %i.ac, %index                   ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.a, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !11
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.as = icmp eq <4 x i32> %broadcast.splat19, %reverse
  %i.at = freeze <4 x i1> %i.as                   ; 4 uses
  %i.au = or <4 x i1> %vec.phi21, %i.at           ; 2 uses
  %i.av = trunc i64 %i.ap to i32
  %i.aw = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.ax = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ay = add <4 x i32> %i.ax, <i32 -1, i32 -2, i32 -3, i32 -4>
  %i.az = bitcast <4 x i1> %i.at to i4
  %.not = icmp eq i4 %i.az, 0                     ; 2 uses
  %i.ba = select i1 %.not, <4 x i1> %i.ao, <4 x i1> %i.at ; 2 uses
  %i.bb = select i1 %.not, <4 x i32> %vec.phi20, <4 x i32> %i.ay ; 2 uses
  %i.bc = or <4 x i1> %vec.phi, %i.at             ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %i.be = bitcast <4 x i1> %i.bc to i4
  %i.bf = icmp ne i4 %i.be, 0                     ; 2 uses
  %i.bg = call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.bb, <4 x i1> %i.ba, i32 %.049.us.i12) ; 2 uses
  %i.bh = bitcast <4 x i1> %i.au to i4
  %.not38 = icmp eq i4 %i.bh, 0
  %rdx.select = select i1 %.not38, i32 %.051.us.i11, i32 %indvars.i14 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ac, %.preheader.us.i ], [ %i.af, %middle.block ]
  %.04661.us.i.ph = phi i1 [ false, %.preheader.us.i ], [ %i.bf, %middle.block ]
  %.15060.us.i.ph = phi i32 [ %.049.us.i12, %.preheader.us.i ], [ %i.bg, %middle.block ]
  %.15259.us.i.ph = phi i32 [ %.051.us.i11, %.preheader.us.i ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %.253.us.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.253.us.i, %scalar.ph ] ; 2 uses
  %.2.us.i.lcssa = phi i32 [ %i.bg, %middle.block ], [ %.2.us.i, %scalar.ph ] ; 2 uses
  %.1.us.i.lcssa = phi i1 [ %i.bf, %middle.block ], [ %.1.us.i, %scalar.ph ]
  %i.bi = trunc nuw i64 %indvars.iv.next71.i13 to i32
  %i.bj = icmp slt i32 %i.bi, 1
  %or.cond41.not = select i1 %.1.us.i.lcssa, i1 true, i1 %i.bj
  br i1 %or.cond41.not, label %.split66.us.i, label %.preheader.us.i

.split66.us.i:                                    ; preds = %._crit_edge.us.i, %.split.us.preheader.i
  %.us-phi.i = phi i32 [ -1, %.split.us.preheader.i ], [ %.253.us.i.lcssa, %._crit_edge.us.i ] ; 3 uses
  %.us-phi67.i = phi i32 [ -1, %.split.us.preheader.i ], [ %.2.us.i.lcssa, %._crit_edge.us.i ] ; 6 uses
  %i.bk = icmp eq i32 %.us-phi.i, -1
  %i.bl = icmp slt i32 %.us-phi67.i, 1
  %or.cond58.i = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond58.i, label %_Z28dtMergeCorridorStartShortcutPjiiPKji.exit, label %bb.c

bb.c:                                             ; preds = %.split66.us.i
  %i.bm = sub nsw i32 %i.z, %.us-phi.i
  %i.bn = call noundef i32 @llvm.smax.i32(i32 %i.bm, i32 0) ; 2 uses
  %i.bo = add nuw nsw i32 %i.bn, %.us-phi67.i
  %i.bp = icmp sgt i32 %i.bo, %i.ab
  %i.bq = sub nsw i32 %i.ab, %.us-phi67.i
  %spec.select.i = select i1 %i.bp, i32 %i.bq, i32 %i.bn ; 3 uses
  %.not.i = icmp eq i32 %spec.select.i, 0
  %.pre = zext nneg i32 %.us-phi67.i to i64       ; 6 uses
  br i1 %.not.i, label %.lr.ph.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.pre
  %i.bs = zext nneg i32 %.us-phi.i to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bs
  %i.bu = sext i32 %spec.select.i to i64
  %i.bv = shl nsw i64 %i.bu, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %i.bt, i64 %i.bv, i1 false)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c, %bb.d
  %min.iters.check25 = icmp ult i32 %.us-phi67.i, 8
  %i.bw = sub i64 %i.b, %i.y
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond39 = select i1 %min.iters.check25, i1 true, i1 %diff.check
  br i1 %or.cond39, label %.lr.ph.i.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %.lr.ph.preheader.i
  %n.vec27 = and i64 %.pre, 2147483640            ; 3 uses
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next32, %vector.body28 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index29 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load30 = load <4 x i32>, ptr %i.bx, align 16, !tbaa !11
  %wide.load31 = load <4 x i32>, ptr %i.by, align 16, !tbaa !11
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index29 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <4 x i32> %wide.load30, ptr %i.bz, align 4, !tbaa !11
  store <4 x i32> %wide.load31, ptr %i.ca, align 4, !tbaa !11
  %index.next32 = add nuw i64 %index29, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next32, %n.vec27
  br i1 %i.cb, label %middle.block33, label %vector.body28, !llvm.loop !47

middle.block33:                                   ; preds = %vector.body28
  %cmp.n34 = icmp eq i64 %n.vec27, %.pre
  br i1 %cmp.n34, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block33
  %indvars.iv73.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec27, %middle.block33 ] ; 3 uses
  %xtraiter = and i64 %.pre, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv73.i.prol = phi i64 [ %indvars.iv.next74.i.prol, %.lr.ph.i.prol ], [ %indvars.iv73.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv73.i.prol
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !11
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv73.i.prol
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !11
  %indvars.iv.next74.i.prol = add nuw nsw i64 %indvars.iv73.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !48

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv73.i.unr = phi i64 [ %indvars.iv73.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next74.i.prol, %.lr.ph.i.prol ]
  %i.cf = sub nsw i64 %indvars.iv73.i.ph, %.pre
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block33
  %i.ch = add nsw i32 %spec.select.i, %.us-phi67.i
  br label %_Z28dtMergeCorridorStartShortcutPjiiPKji.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i.3, %.lr.ph.i ], [ %indvars.iv73.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv73.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !11
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv73.i
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !11
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !11
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next74.i
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !11
  %indvars.iv.next74.i.1 = add nuw nsw i64 %indvars.iv73.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i.1
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !11
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next74.i.1
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !11
  %indvars.iv.next74.i.2 = add nuw nsw i64 %indvars.iv73.i, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i.2
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !11
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next74.i.2
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !11
  %indvars.iv.next74.i.3 = add nuw nsw i64 %indvars.iv73.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next74.i.3, %.pre
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !49

_Z28dtMergeCorridorStartShortcutPjiiPKji.exit:    ; preds = %.split66.us.i, %._crit_edge.i
  %.156.i = phi i32 [ %i.z, %.split66.us.i ], [ %i.ch, %._crit_edge.i ]
  store i32 %.156.i, ptr %i.d, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_Z28dtMergeCorridorStartShortcutPjiiPKji.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi i1 [ %or.cond, %bb.e ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef i32 @_ZN14dtNavMeshQuery18initSlicedFindPathEjjPKfS1_PK13dtQueryFilterj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN14dtNavMeshQuery20updateSlicedFindPathEiPi(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZN14dtNavMeshQuery29finalizeSlicedFindPathPartialEPKjiPjPii(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZN14dtPathCorridor25moveOverOffmeshConnectionEjPjPfS1_P14dtNavMeshQuery(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 5 uses
  %.02834 = load i32, ptr %i.b, align 4, !tbaa !11 ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = icmp ne i32 %.02834, %1
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02836 = phi i32 [ %.02834, %.lr.ph.preheader ], [ %.028, %.lr.ph ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.028 = load i32, ptr %i.i, align 4, !tbaa !11  ; 3 uses
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.h
  %i.k = icmp ne i32 %.028, %1
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.029.lcssa = phi i32 [ 0, %bb.a ], [ %.02836, %._crit_edge.loopexit ] ; 2 uses
  %.027.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge.loopexit ] ; 5 uses
  %.028.lcssa = phi i32 [ %.02834, %bb.a ], [ %.028, %._crit_edge.loopexit ] ; 2 uses
  %i.n = icmp eq i32 %.027.lcssa, %i.d
  br i1 %i.n, label %bb.c, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.o = icmp slt i32 %.027.lcssa, %i.d
  br i1 %i.o, label %.lr.ph41.preheader, label %._crit_edge42

.lr.ph41.preheader:                               ; preds = %.preheader
  %i.p = zext nneg i32 %.027.lcssa to i64
  %i.q = zext nneg i32 %.027.lcssa to i64
  br label %.lr.ph41

._crit_edge42:                                    ; preds = %.lr.ph41, %.preheader
  %.lcssa = phi i32 [ %i.d, %.preheader ], [ %i.aa, %.lr.ph41 ]
  %i.r = sub nsw i32 %.lcssa, %.027.lcssa
  store i32 %i.r, ptr %i.c, align 8, !tbaa !19
  store i32 %.029.lcssa, ptr %2, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.028.lcssa, ptr %i.s, align 4, !tbaa !11
  %i.t = load ptr, ptr %5, align 8, !tbaa !57
  %i.u = tail call noundef i32 @_ZNK9dtNavMesh33getOffMeshConnectionPolyEndPointsEjjPfS0_(ptr noundef nonnull align 8 dereferenceable(100) %i.t, i32 noundef %.029.lcssa, i32 noundef %.028.lcssa, ptr noundef %3, ptr noundef %4) #11
  %i.v = and i32 %i.u, 1073741824
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %.lr.ph41
  %indvars.iv48 = phi i64 [ %i.p, %.lr.ph41.preheader ], [ %indvars.iv.next49, %.lr.ph41 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv48
  %i.x = load i32, ptr %i.w, align 4, !tbaa !11
  %i.y = sub nuw nsw i64 %indvars.iv48, %i.q
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.y
  store i32 %i.x, ptr %i.z, align 4, !tbaa !11
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next49, %i.ab
  br i1 %i.ac, label %.lr.ph41, label %._crit_edge42

bb.b:                                             ; preds = %._crit_edge42
  %i.ad = load float, ptr %4, align 4, !tbaa !22
  store float %i.ad, ptr %0, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.af, ptr %i.ag, align 4, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ai, ptr %i.aj, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge42, %._crit_edge
  %.1 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge42 ], [ true, %bb.b ]
  ret i1 %.1
}

declare noundef i32 @_ZNK9dtNavMesh33getOffMeshConnectionPolyEndPointsEjjPfS0_(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZN14dtPathCorridor12movePositionEPKfP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [16 x i32], align 16              ; 11 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %i.h = call noundef i32 @_ZNK14dtNavMeshQuery16moveAlongSurfaceEjPKfS1_PK13dtQueryFilterPfPjPii(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %i.g, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 16) #11
  %i.i = and i32 %i.h, 1073741824
  %i.j = icmp ne i32 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !18   ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !20   ; 3 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !11   ; 11 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.split.us.preheader.i, label %_Z25dtMergeCorridorStartMovedPjiiPKji.exit

.split.us.preheader.i:                            ; preds = %bb.b
  %i.r = zext nneg i32 %i.p to i64                ; 5 uses
  %i.s = icmp sgt i32 %i.m, 0
  br i1 %i.s, label %.preheader.us.i.lr.ph, label %.split67.us.i

.preheader.us.i.lr.ph:                            ; preds = %.split.us.preheader.i
  %i.t = zext nneg i32 %i.m to i64
  %min.iters.check = icmp ult i32 %i.p, 8
  %n.vec = and i64 %i.r, 2147483644               ; 2 uses
  %i.u = and i64 %i.r, 3
  %cmp.n = icmp eq i64 %n.vec, %i.r
  br label %.preheader.us.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.04962.us.i = phi i1 [ %.1.us.i, %scalar.ph ], [ %.04962.us.i.ph, %scalar.ph.preheader ]
  %.15361.us.i = phi i32 [ %.2.us.i, %scalar.ph ], [ %.15361.us.i.ph, %scalar.ph.preheader ]
  %.15560.us.i = phi i32 [ %.256.us.i, %scalar.ph ], [ %.15560.us.i.ph, %scalar.ph.preheader ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11
  %i.x = icmp eq i32 %i.ac, %i.w                  ; 3 uses
  %.256.us.i = select i1 %i.x, i32 %indvars.i12, i32 %.15560.us.i ; 2 uses
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %.2.us.i = select i1 %i.x, i32 %i.y, i32 %.15361.us.i ; 2 uses
  %.1.us.i = select i1 %i.x, i1 true, i1 %.04962.us.i ; 2 uses
  %i.z = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.z, label %scalar.ph, label %._crit_edge.us.i, !llvm.loop !58

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.i.lr.ph
  %indvars.iv.next72.i11.in = phi i64 [ %i.t, %.preheader.us.i.lr.ph ], [ %indvars.iv.next72.i11, %._crit_edge.us.i ]
  %.052.us.i10 = phi i32 [ -1, %.preheader.us.i.lr.ph ], [ %.2.us.i.lcssa, %._crit_edge.us.i ] ; 3 uses
  %.054.us.i9 = phi i32 [ -1, %.preheader.us.i.lr.ph ], [ %.256.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next72.i11 = add nsw i64 %indvars.iv.next72.i11.in, -1 ; 4 uses
  %indvars.i12 = trunc i64 %indvars.iv.next72.i11 to i32 ; 2 uses
  %i.aa = and i64 %indvars.iv.next72.i11, 4294967295
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.052.us.i10, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat17 = shufflevector <4 x i32> %broadcast.splatinsert16, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aq, %vector.body ]
  %i.ad = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi19 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ae = sub i64 %i.r, %index                    ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.b, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !11
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ah = icmp eq <4 x i32> %broadcast.splat17, %reverse
  %i.ai = freeze <4 x i1> %i.ah                   ; 4 uses
  %i.aj = or <4 x i1> %vec.phi19, %i.ai           ; 2 uses
  %i.ak = trunc i64 %i.ae to i32
  %i.al = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.am = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.an = add <4 x i32> %i.am, <i32 -1, i32 -2, i32 -3, i32 -4>
  %i.ao = bitcast <4 x i1> %i.ai to i4
  %.not = icmp eq i4 %i.ao, 0                     ; 2 uses
  %i.ap = select i1 %.not, <4 x i1> %i.ad, <4 x i1> %i.ai ; 2 uses
  %i.aq = select i1 %.not, <4 x i32> %vec.phi18, <4 x i32> %i.an ; 2 uses
  %i.ar = or <4 x i1> %vec.phi, %i.ai             ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %i.at = bitcast <4 x i1> %i.ar to i4
  %i.au = icmp ne i4 %i.at, 0                     ; 2 uses
  %i.av = call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.aq, <4 x i1> %i.ap, i32 %.052.us.i10) ; 2 uses
  %i.aw = bitcast <4 x i1> %i.aj to i4
  %.not40 = icmp eq i4 %i.aw, 0
  %rdx.select = select i1 %.not40, i32 %.054.us.i9, i32 %indvars.i12 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.r, %.preheader.us.i ], [ %i.u, %middle.block ]
  %.04962.us.i.ph = phi i1 [ false, %.preheader.us.i ], [ %i.au, %middle.block ]
  %.15361.us.i.ph = phi i32 [ %.052.us.i10, %.preheader.us.i ], [ %i.av, %middle.block ]
  %.15560.us.i.ph = phi i32 [ %.054.us.i9, %.preheader.us.i ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %.256.us.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.256.us.i, %scalar.ph ] ; 2 uses
  %.2.us.i.lcssa = phi i32 [ %i.av, %middle.block ], [ %.2.us.i, %scalar.ph ] ; 2 uses
  %.1.us.i.lcssa = phi i1 [ %i.au, %middle.block ], [ %.1.us.i, %scalar.ph ]
  %i.ax = trunc nuw i64 %indvars.iv.next72.i11 to i32
  %i.ay = icmp slt i32 %i.ax, 1
  %or.cond.not = select i1 %.1.us.i.lcssa, i1 true, i1 %i.ay
  br i1 %or.cond.not, label %.split67.us.i, label %.preheader.us.i

.split67.us.i:                                    ; preds = %._crit_edge.us.i, %.split.us.preheader.i
  %.us-phi.i = phi i32 [ -1, %.split.us.preheader.i ], [ %.256.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.us-phi68.i = phi i32 [ -1, %.split.us.preheader.i ], [ %.2.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %i.az = icmp eq i32 %.us-phi.i, -1
  %i.ba = icmp eq i32 %.us-phi68.i, -1
  %or.cond.i = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %_Z25dtMergeCorridorStartMovedPjiiPKji.exit, label %bb.c

bb.c:                                             ; preds = %.split67.us.i
  %i.bb = sub nsw i32 %i.p, %.us-phi68.i          ; 5 uses
  %i.bc = add nuw nsw i32 %.us-phi.i, 1
  %i.bd = call noundef i32 @llvm.smin.i32(i32 %i.bc, i32 %i.m) ; 2 uses
  %i.be = sub nsw i32 %i.m, %i.bd                 ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = icmp sgt i32 %i.bf, %i.o
  %i.bh = sub nsw i32 %i.o, %i.bb
  %spec.select.i = select i1 %i.bg, i32 %i.bh, i32 %i.be ; 3 uses
  %i.bi = icmp sgt i32 %spec.select.i, 0
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bj = sext i32 %i.bb to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bj
  %i.bl = sext i32 %i.bd to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bl
  %i.bn = zext nneg i32 %spec.select.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.bm, i64 %i.bo, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bp = call noundef i32 @llvm.smin.i32(i32 %i.bb, i32 %i.o) ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.bp to i64 ; 7 uses
  %min.iters.check25 = icmp ult i32 %i.bp, 24
  br i1 %min.iters.check25, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader.i
  %i.br = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.bs = trunc nsw i64 %i.br to i32
  %i.bt = xor i32 %i.bs, -1
  %i.bu = add i32 %i.p, %i.bt
  %i.bv = icmp sge i32 %i.bu, %i.p
  %i.bw = icmp ugt i64 %i.br, 4294967295
  %i.bx = or i1 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.by = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.bz = getelementptr i8, ptr %i.k, i64 %i.by
  %i.ca = add nsw i32 %i.p, -1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 2
  %i.cd = add nsw i64 %i.cc, 4                    ; 2 uses
  %i.ce = sub nsw i64 %i.cd, %i.by
  %i.cf = getelementptr i8, ptr %i.b, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.b, i64 %i.cd
  %bound0 = icmp ult ptr %i.k, %i.cg
  %bound1 = icmp ult ptr %i.cf, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck
  %n.vec27 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next34, %vector.body28 ] ; 3 uses
  %i.ch = trunc i64 %index29 to i32
  %i.ci = xor i32 %i.ch, -1
  %i.cj = add i32 %i.p, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -12
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -28
  %wide.load30 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !11, !alias.scope !65
  %wide.load31 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !11, !alias.scope !65
  %reverse32 = shufflevector <4 x i32> %wide.load30, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse33 = shufflevector <4 x i32> %wide.load31, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index29 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <4 x i32> %reverse32, ptr %i.co, align 4, !tbaa !11, !alias.scope !66, !noalias !65
  store <4 x i32> %reverse33, ptr %i.cp, align 4, !tbaa !11, !alias.scope !66, !noalias !65
  %index.next34 = add nuw i64 %index29, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next34, %n.vec27
  br i1 %i.cq, label %middle.block35, label %vector.body28, !llvm.loop !63

middle.block35:                                   ; preds = %vector.body28
  %cmp.n36 = icmp eq i64 %n.vec27, %wide.trip.count.i
  br i1 %cmp.n36, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader.i, %middle.block35
  %indvars.iv74.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec27, %middle.block35 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.cr = trunc nuw nsw i64 %indvars.iv74.i.ph to i32
  %i.cs = xor i32 %i.cr, -1
  %i.ct = add nsw i32 %i.p, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !11
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv74.i.ph
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !11
  %indvars.iv.next75.i.prol = or disjoint i64 %indvars.iv74.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv74.i.unr = phi i64 [ %indvars.iv74.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next75.i.prol, %.lr.ph.i.prol ]
  %i.cy = add nsw i64 %wide.trip.count.i, -1
  %i.cz = icmp eq i64 %indvars.iv74.i.ph, %i.cy
  br i1 %i.cz, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block35, %bb.e
  %i.da = add nsw i32 %spec.select.i, %i.bb
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !18
  br label %_Z25dtMergeCorridorStartMovedPjiiPKji.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.1, %.lr.ph.i ], [ %indvars.iv74.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.db = trunc i64 %indvars.iv74.i to i32
  %i.dc = xor i32 %i.db, -1
  %i.dd = add i32 %i.p, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !11
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv74.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !11
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %i.di = trunc i64 %indvars.iv.next75.i to i32
  %i.dj = xor i32 %i.di, -1
  %i.dk = add i32 %i.p, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !11
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next75.i
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !11
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next75.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !64

_Z25dtMergeCorridorStartMovedPjiiPKji.exit:       ; preds = %bb.b, %.split67.us.i, %._crit_edge.i
  %i.dp = phi ptr [ %.pre, %._crit_edge.i ], [ %i.k, %.split67.us.i ], [ %i.k, %bb.b ]
  %.058.i = phi i32 [ %i.da, %._crit_edge.i ], [ %i.m, %.split67.us.i ], [ %i.m, %bb.b ]
  store i32 %.058.i, ptr %i.l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !22
  store float %i.dr, ptr %i.d, align 4, !tbaa !22
  %i.ds = load i32, ptr %i.dp, align 4, !tbaa !11
  %i.dt = call noundef i32 @_ZNK14dtNavMeshQuery13getPolyHeightEjPKfPf(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %i.ds, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.du = load float, ptr %i.d, align 4, !tbaa !22
  %i.dv = load float, ptr %i.a, align 4, !tbaa !22
  store float %i.dv, ptr %0, align 8, !tbaa !22
  store float %i.du, ptr %i.dq, align 4, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !22
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.dx, ptr %i.dy, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Z25dtMergeCorridorStartMovedPjiiPKji.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i1 %i.j
}

declare noundef i32 @_ZNK14dtNavMeshQuery16moveAlongSurfaceEjPKfS1_PK13dtQueryFilterPfPjPii(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK14dtNavMeshQuery13getPolyHeightEjPKfPf(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZN14dtPathCorridor18moveTargetPositionEPKfP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = alloca [16 x i32], align 16              ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = call noundef i32 @_ZNK14dtNavMeshQuery16moveAlongSurfaceEjPKfS1_PK13dtQueryFilterPfPjPii(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %i.k, ptr noundef nonnull %i.l, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 16) #11
  %i.n = and i32 %i.m, 1073741824
  %i.o = icmp ne i32 %i.n, 0                      ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.q = load i32, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !20
  %i.t = load i32, ptr %i.c, align 4, !tbaa !11   ; 4 uses
  %i.u = icmp sgt i32 %i.q, 0
  %i.v = icmp sgt i32 %i.t, 0
  %or.cond72.i = and i1 %i.u, %i.v
  br i1 %or.cond72.i, label %.preheader.us.preheader.i, label %_Z23dtMergeCorridorEndMovedPjiiPKji.exit

.preheader.us.preheader.i:                        ; preds = %bb.b
  %i.w = zext nneg i32 %i.t to i64                ; 5 uses
  %i.x = zext nneg i32 %i.q to i64
  %min.iters.check = icmp ult i32 %i.t, 8
  %n.vec = and i64 %i.w, 2147483644               ; 2 uses
  %i.y = and i64 %i.w, 3
  %cmp.n = icmp eq i64 %n.vec, %i.w
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next65.i, %._crit_edge.us.i ] ; 3 uses
  %.03550.us.i = phi i32 [ -1, %.preheader.us.preheader.i ], [ %.2.us.i.lcssa, %._crit_edge.us.i ] ; 3 uses
  %.03749.us.i = phi i32 [ -1, %.preheader.us.preheader.i ], [ %.239.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv64.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11  ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv64.i to i32 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.03550.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert7 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat8 = shufflevector <4 x i32> %broadcast.splatinsert7, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi9 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ap, %vector.body ]
  %i.ac = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi10 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ad = sub i64 %i.w, %index                    ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %i.b, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -16
  %wide.load = load <4 x i32>, ptr %i.af, align 4, !tbaa !11
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ag = icmp eq <4 x i32> %broadcast.splat8, %reverse
  %i.ah = freeze <4 x i1> %i.ag                   ; 4 uses
  %i.ai = or <4 x i1> %vec.phi10, %i.ah           ; 2 uses
  %i.aj = trunc i64 %i.ad to i32
  %i.ak = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.am = add <4 x i32> %i.al, <i32 -1, i32 -2, i32 -3, i32 -4>
  %i.an = bitcast <4 x i1> %i.ah to i4
  %.not = icmp eq i4 %i.an, 0                     ; 2 uses
  %i.ao = select i1 %.not, <4 x i1> %i.ac, <4 x i1> %i.ah ; 2 uses
  %i.ap = select i1 %.not, <4 x i32> %vec.phi9, <4 x i32> %i.am ; 2 uses
  %i.aq = or <4 x i1> %vec.phi, %i.ah             ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %i.as = bitcast <4 x i1> %i.aq to i4
  %i.at = icmp ne i4 %i.as, 0                     ; 2 uses
  %i.au = call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.ap, <4 x i1> %i.ao, i32 %.03550.us.i) ; 2 uses
  %i.av = bitcast <4 x i1> %i.ai to i4
  %.not15 = icmp eq i4 %i.av, 0
  %rdx.select = select i1 %.not15, i32 %.03749.us.i, i32 %i.ab ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.w, %.preheader.us.i ], [ %i.y, %middle.block ]
  %.03245.us.i.ph = phi i1 [ false, %.preheader.us.i ], [ %i.at, %middle.block ]
  %.13644.us.i.ph = phi i32 [ %.03550.us.i, %.preheader.us.i ], [ %i.au, %middle.block ]
  %.13843.us.i.ph = phi i32 [ %.03749.us.i, %.preheader.us.i ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.03245.us.i = phi i1 [ %.1.us.i, %scalar.ph ], [ %.03245.us.i.ph, %scalar.ph.preheader ]
  %.13644.us.i = phi i32 [ %.2.us.i, %scalar.ph ], [ %.13644.us.i.ph, %scalar.ph.preheader ]
  %.13843.us.i = phi i32 [ %.239.us.i, %scalar.ph ], [ %.13843.us.i.ph, %scalar.ph.preheader ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !11
  %i.ay = icmp eq i32 %i.aa, %i.ax                ; 3 uses
  %.239.us.i = select i1 %i.ay, i32 %i.ab, i32 %.13843.us.i ; 2 uses
  %i.az = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %.2.us.i = select i1 %i.ay, i32 %i.az, i32 %.13644.us.i ; 2 uses
  %.1.us.i = select i1 %i.ay, i1 true, i1 %.03245.us.i ; 2 uses
  %i.ba = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ba, label %scalar.ph, label %._crit_edge.us.i, !llvm.loop !68

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %.239.us.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.239.us.i, %scalar.ph ] ; 3 uses
  %.2.us.i.lcssa = phi i32 [ %i.au, %middle.block ], [ %.2.us.i, %scalar.ph ] ; 3 uses
  %.1.us.i.lcssa = phi i1 [ %i.at, %middle.block ], [ %.1.us.i, %scalar.ph ]
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %i.bb = icmp samesign uge i64 %indvars.iv.next65.i, %i.x
  %or.cond61.not.i = select i1 %.1.us.i.lcssa, i1 true, i1 %i.bb
  br i1 %or.cond61.not.i, label %._crit_edge52.i, label %.preheader.us.i

._crit_edge52.i:                                  ; preds = %._crit_edge.us.i
  %i.bc = icmp eq i32 %.239.us.i.lcssa, -1
  %i.bd = icmp eq i32 %.2.us.i.lcssa, -1
  %or.cond.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i, label %_Z23dtMergeCorridorEndMovedPjiiPKji.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge52.i
  %i.be = add nuw nsw i32 %.239.us.i.lcssa, 1     ; 3 uses
  %i.bf = add nuw nsw i32 %.2.us.i.lcssa, 1       ; 2 uses
  %i.bg = sub nsw i32 %i.t, %i.bf
  %i.bh = sub nsw i32 %i.s, %i.be
  %i.bi = call noundef i32 @llvm.smin.i32(i32 %i.bg, i32 %i.bh) ; 3 uses
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bj
  %i.bl = zext nneg i32 %i.bf to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bl
  %i.bn = sext i32 %i.bi to i64
  %i.bo = shl nsw i64 %i.bn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull readonly align 4 %i.bm, i64 %i.bo, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bp = add nsw i32 %i.bi, %i.be
  br label %_Z23dtMergeCorridorEndMovedPjiiPKji.exit

_Z23dtMergeCorridorEndMovedPjiiPKji.exit:         ; preds = %bb.b, %._crit_edge52.i, %bb.e
  %.041.i = phi i32 [ %i.bp, %bb.e ], [ %i.q, %._crit_edge52.i ], [ %i.q, %bb.b ]
  store i32 %.041.i, ptr %i.f, align 8, !tbaa !19
  %i.bq = load <2 x float>, ptr %i.a, align 8, !tbaa !22
  store <2 x float> %i.bq, ptr %i.l, align 4, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = load float, ptr %i.br, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bs, ptr %i.bt, align 4, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Z23dtMergeCorridorEndMovedPjiiPKji.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i1 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN14dtPathCorridor11setCorridorEPKfPKji(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((12, 24), (32, 36)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %1, align 4, !tbaa !22
  store float %i.b, ptr %i.a, align 4, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.d, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.g, ptr %i.h, align 4, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = sext i32 %3 to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %2, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %3, ptr %i.m, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN14dtPathCorridor12fixPathStartEjPKf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 12)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !22
  store float %i.a, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.j = add i32 %i.i, -1
  %or.cond = icmp ult i32 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 6 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i32 %i.i to i64
  %i.n = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.p, ptr %i.q, align 4, !tbaa !11
  store i32 %1, ptr %i.l, align 4, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !11
  store i32 3, ptr %i.h, align 8, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 %1, ptr %i.l, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i1 true
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZN14dtPathCorridor15trimInvalidPathEjPKfP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !11
  %i.i = tail call noundef zeroext i1 @_ZNK14dtNavMeshQuery14isValidPolyRefEjPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.h, ptr noundef %4) #11
  %.pre.pre = load i32, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.j = sext i32 %.pre.pre to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.0.lcssa.ph.in = phi i64 [ %indvars.iv, %bb.b ], [ %indvars.iv.next, %bb.c ]
  %.0.lcssa.ph = trunc i64 %.0.lcssa.ph.in to i32 ; 3 uses
  %i.l = icmp eq i32 %.pre.pre, %.0.lcssa.ph
  br i1 %i.l, label %bb.f, label %bb.d

.critedge.thread:                                 ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %bb.f, label %.thread

bb.d:                                             ; preds = %.critedge
  %i.n = icmp eq i32 %.0.lcssa.ph, 0
  br i1 %i.n, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %bb.e

.thread:                                          ; preds = %.critedge.thread, %bb.d
  %i.o = load float, ptr %2, align 4, !tbaa !22
  store float %i.o, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.q, ptr %i.r, align 4, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.t, ptr %i.u, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  store i32 %1, ptr %i.w, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.thread
  %i.x = phi ptr [ %i.w, %.thread ], [ %.pre17, %._crit_edge ]
  %storemerge = phi i32 [ 1, %.thread ], [ %.0.lcssa.ph, %._crit_edge ] ; 2 uses
  store i32 %storemerge, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.z = load <2 x float>, ptr %i.y, align 4, !tbaa !22
  store <2 x float> %i.z, ptr %i.a, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.ab, ptr %i.ac, align 8, !tbaa !22
  %i.ad = zext nneg i32 %storemerge to i64
  %i.ae = getelementptr [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !11
  %i.ah = call noundef i32 @_ZNK14dtNavMeshQuery26closestPointOnPolyBoundaryEjPKfPf(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.ag, ptr noundef nonnull %i.a, ptr noundef nonnull %i.y) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %.critedge.thread, %.critedge, %bb.e
  ret i1 true
}

declare noundef zeroext i1 @_ZNK14dtNavMeshQuery14isValidPolyRefEjPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK14dtNavMeshQuery26closestPointOnPolyBoundaryEjPKfPf(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZN14dtPathCorridor7isValidEiP14dtNavMeshQueryPK13dtQueryFilter(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = tail call noundef i32 @llvm.smin.i32(i32 %i.b, i32 %1) ; 2 uses
  %.not11 = icmp slt i32 %i.c, 1
  br i1 %.not11, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %i.h = tail call noundef zeroext i1 @_ZNK14dtNavMeshQuery14isValidPolyRefEjPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %i.g, ptr noundef %3) #11 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.h, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32>, <4 x i1>, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"p1 int", !15, i64 0}
!17 = !{!"_ZTS14dtPathCorridor", !7, i64 0, !7, i64 12, !16, i64 24, !8, i64 32, !8, i64 36}
!18 = !{!17, !16, i64 24}
!19 = !{!17, !8, i64 32}
!20 = !{!17, !8, i64 36}
!21 = !{!"float", !7, i64 0}
!22 = !{!21, !21, i64 0}
!23 = distinct !{!23, !12, !13}
!24 = distinct !{!24, !13, !12}
!25 = distinct !{!25, i1 false, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !13, !12}
!29 = distinct !{!29, !13}
!30 = !{!26}
!31 = !{!27}
!32 = distinct !{!32, !13, !12}
!33 = distinct !{!33, !12, !13}
!34 = distinct !{!34, !12, !13}
!35 = distinct !{!35, !13, !12}
!36 = distinct !{!36, !13, !12}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !13}
!39 = !{!7, !7, i64 0}
!40 = distinct !{!40, !12, !13}
!41 = distinct !{!41, !13, !12}
!42 = distinct !{!42, !13, !12}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !12, !13}
!46 = distinct !{!46, !13, !12}
!47 = distinct !{!47, !13, !12}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !13}
!50 = !{!"p1 _ZTS9dtNavMesh", !15, i64 0}
!51 = !{!"p1 _ZTS6dtNode", !15, i64 0}
!52 = !{!"p1 _ZTS13dtQueryFilter", !15, i64 0}
!53 = !{!"_ZTSN14dtNavMeshQuery11dtQueryDataE", !8, i64 0, !51, i64 8, !21, i64 16, !8, i64 20, !8, i64 24, !7, i64 28, !7, i64 40, !52, i64 56, !8, i64 64, !21, i64 68}
!54 = !{!"p1 _ZTS10dtNodePool", !15, i64 0}
!55 = !{!"p1 _ZTS11dtNodeQueue", !15, i64 0}
!56 = !{!"_ZTS14dtNavMeshQuery", !50, i64 0, !53, i64 8, !54, i64 80, !54, i64 88, !55, i64 96}
!57 = !{!56, !50, i64 0}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !13, !12}
!60 = distinct !{!60, i1 false, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !13, !12}
!64 = distinct !{!64, !13}
!65 = !{!61}
!66 = !{!62}
!67 = distinct !{!67, !13, !12}
!68 = distinct !{!68, !12, !13}
end_hunk_0
