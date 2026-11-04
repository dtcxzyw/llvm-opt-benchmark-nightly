Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/recording_replay?download=true
inline.NumInlined: 743
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b2RecStashQueryBegin:bb.a

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i32 %i.d to i64
  %i.o = mul nuw nsw i64 %i.n, 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.l, i64 %i.o, i1 false)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %bb.d ], [ %i.l, %bb.c ]
  %i.q = load i32, ptr %i.b, align 4, !tbaa !30
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 200
  tail call void @b2Free(ptr noundef %i.p, i64 noundef %i.s) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  store ptr %i.k, ptr %i.a, align 8, !tbaa !35
  store i32 %.0.i.i, ptr %i.b, align 4, !tbaa !30
  %.pre30 = load i32, ptr %i.c, align 8, !tbaa !98
  br label %b2RecGrowFrameQueries.exit

b2RecGrowFrameQueries.exit:                       ; preds = %.b2RecGrowFrameQueries.exit_crit_edge, %bb.f
  %i.t = phi i32 [ %i.d, %.b2RecGrowFrameQueries.exit_crit_edge ], [ %.pre30, %bb.f ]
  %i.u = phi ptr [ %.pre, %.b2RecGrowFrameQueries.exit_crit_edge ], [ %i.k, %bb.f ]
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [200 x i8], ptr %i.u, i64 %i.v ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.w, i8 0, i64 200, i1 false)
  store i32 %1, ptr %i.w, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !99   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  store i32 %i.y, ptr %i.z, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 196
  store i32 %3, ptr %i.aa, align 4, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  %i.ad = add nsw i32 %i.y, %3                    ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !30 ; 3 uses
  %.not.i.i = icmp sgt i32 %i.ad, %i.ae
  br i1 %.not.i.i, label %bb.g, label %b2RecGrowFrameHits.exit

bb.g:                                             ; preds = %b2RecGrowFrameQueries.exit
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = shl nsw i32 %i.ae, 1
  %spec.select.i.i24 = select i1 %i.af, i32 8, i32 %i.ag
  %.0.i.i25 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.i24, i32 %i.ad) ; 2 uses
  %i.ah = sext i32 %.0.i.i25 to i64
  %i.ai = mul nsw i64 %i.ah, 60
  %i.aj = tail call ptr @b2Alloc(i64 noundef %i.ai) #19 ; 2 uses
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 3 uses
  %.not26.i.i26 = icmp eq ptr %i.ak, null
  br i1 %.not26.i.i26, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = icmp sgt i32 %i.y, 0
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = zext nneg i32 %i.y to i64
  %i.an = mul nuw nsw i64 %i.am, 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.ak, i64 %i.an, i1 false)
  %.pre.i.i27 = load ptr, ptr %i.ab, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = phi ptr [ %.pre.i.i27, %bb.i ], [ %i.ak, %bb.h ]
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !30
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %i.aq, 60
  tail call void @b2Free(ptr noundef %i.ao, i64 noundef %i.ar) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !35
  store i32 %.0.i.i25, ptr %i.ac, align 4, !tbaa !30
  br label %b2RecGrowFrameHits.exit

b2RecGrowFrameHits.exit:                          ; preds = %b2RecGrowFrameQueries.exit, %bb.k
  %i.as = icmp sgt i32 %3, 0
  br i1 %i.as, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %b2RecGrowFrameHits.exit
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.at = icmp eq i32 %3, 1
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !89
  %i.av = load i32, ptr %i.x, align 8, !tbaa !99
  %i.aw = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.ax = add nsw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [60 x i8], ptr %i.au, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [60 x i8], ptr %2, i64 %indvars.iv.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.az, ptr noundef nonnull align 4 dereferenceable(60) %i.ba, i64 60, i1 false), !tbaa.struct !431
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %b2RecGrowFrameHits.exit
  %i.bb = load i32, ptr %i.x, align 8, !tbaa !99
  %i.bc = add nsw i32 %i.bb, %3
  store i32 %i.bc, ptr %i.x, align 8, !tbaa !99
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !98
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.c, align 8, !tbaa !98
  ret ptr %i.w

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !89
  %i.bg = load i32, ptr %i.x, align 8, !tbaa !99
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  %i.bi = add nsw i32 %i.bg, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [60 x i8], ptr %i.bf, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [60 x i8], ptr %2, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.bk, ptr noundef nonnull align 4 dereferenceable(60) %i.bl, i64 60, i1 false), !tbaa.struct !431
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !89
  %i.bn = load i32, ptr %i.x, align 8, !tbaa !99
  %i.bo = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bp = add nsw i32 %i.bn, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [60 x i8], ptr %i.bm, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [60 x i8], ptr %2, i64 %indvars.iv.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.br, ptr noundef nonnull align 4 dereferenceable(60) %i.bs, i64 60, i1 false), !tbaa.struct !431
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !430
}

declare i64 @b2World_OverlapShape(i32, <2 x float>, ptr noundef, i64, i64, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @b2World_CastRay(i32, <2 x float>, <2 x float>, i64, i64, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal float @b2RecReplayCastTrampoline(i64 %0, <2 x float> %1, <2 x float> %2, float noundef %3, ptr nofree noundef captures(none) %4) #14 {
bb.a:
  %.sroa.217.0.extract.shift = lshr i64 %0, 48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !129  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !128
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  store i8 1, ptr %i.f, align 1, !tbaa !130
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.016.0.extract.trunc = trunc i64 %0 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127
  %i.i = add nsw i32 %i.b, 1
  store i32 %i.i, ptr %i.a, align 4, !tbaa !129
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [60 x i8], ptr %i.h, i64 %i.j ; 6 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !133
  %.not20 = icmp eq i32 %i.l, %.sroa.016.0.extract.trunc
  br i1 %.not20, label %bb.d, label %b2RecVec2Differs.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.n = load i16, ptr %i.m, align 2, !tbaa !134
  %i.o = zext i16 %i.n to i64
  %.not21 = icmp eq i64 %.sroa.217.0.extract.shift, %i.o
  br i1 %.not21, label %bb.e, label %b2RecVec2Differs.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 4
  %i.r = fsub <2 x float> %1, %i.q                ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %.not.i = tail call i1 @llvm.is.fpclass.f32(float %i.s, /* (nan inf nzero sub norm) */ i32 959)
  %i.t = extractelement <2 x float> %i.r, i64 1
  %i.u = tail call i1 @llvm.is.fpclass.f32(float %i.t, /* (nan inf nzero sub norm) */ i32 959)
  %or.cond = select i1 %.not.i, i1 true, i1 %i.u
  br i1 %or.cond, label %b2RecVec2Differs.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %bc.i22 = bitcast <2 x float> %2 to <2 x i32>
  %i.w = load <2 x i32>, ptr %i.v, align 4
  %i.x = icmp ne <2 x i32> %i.w, %bc.i22          ; 2 uses
  %5 = extractelement <2 x i1> %i.x, i64 0
  %6 = extractelement <2 x i1> %i.x, i64 1
  %or.cond28 = select i1 %5, i1 true, i1 %6
  br i1 %or.cond28, label %b2RecVec2Differs.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.z = load i32, ptr %i.y, align 4, !tbaa !120
  %i.aa = bitcast float %3 to i32
  %.not29 = icmp eq i32 %i.z, %i.aa
  br i1 %.not29, label %bb.h, label %b2RecVec2Differs.exit.thread

b2RecVec2Differs.exit.thread:                     ; preds = %bb.f, %bb.e, %bb.g, %bb.d, %bb.c
  %i.ab = load ptr, ptr %4, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 25
  store i8 1, ptr %i.ac, align 1, !tbaa !130
  br label %bb.h

bb.h:                                             ; preds = %b2RecVec2Differs.exit.thread, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !132
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.0 = phi float [ 0.000000e+00, %bb.b ], [ %i.ae, %bb.h ]
  ret float %.0
}

declare i64 @b2World_CastShape(i32, <2 x float>, ptr noundef, <2 x float>, i64, i64, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @b2World_CollideMover(i32, <2 x float>, ptr noundef, i64, i64, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i1 @b2RecReplayPlaneTrampoline(i64 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #14 {
bb.a:
  %.sroa.218.0.extract.shift = lshr i64 %0, 48
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !129  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !128
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  store i8 1, ptr %i.f, align 1, !tbaa !130
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127
  %i.i = add nsw i32 %i.b, 1
  store i32 %i.i, ptr %i.a, align 4, !tbaa !129
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [60 x i8], ptr %i.h, i64 %i.j ; 9 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !133
  %.not21 = icmp eq i32 %i.l, %.sroa.0.0.extract.trunc
  br i1 %.not21, label %bb.d, label %b2RecVec2Differs.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.n = load i16, ptr %i.m, align 2, !tbaa !134
  %i.o = zext i16 %i.n to i64
  %.not22 = icmp eq i64 %.sroa.218.0.extract.shift, %i.o
  br i1 %.not22, label %bb.e, label %b2RecVec2Differs.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.q = load i32, ptr %1, align 4
  %i.r = load i32, ptr %i.p, align 4
  %.not.i = icmp ne i32 %i.q, %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp ne i32 %i.t, %i.v
  %or.cond = select i1 %.not.i, i1 true, i1 %i.w
  br i1 %or.cond, label %b2RecVec2Differs.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !432
  %.not33 = icmp eq i32 %i.y, %i.aa
  br i1 %.not33, label %bb.g, label %b2RecVec2Differs.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ad = load i32, ptr %i.ab, align 4
  %i.ae = load i32, ptr %i.ac, align 4
  %.not.i26 = icmp ne i32 %i.ad, %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp ne i32 %i.ag, %i.ai
  %or.cond32 = select i1 %.not.i26, i1 true, i1 %i.aj
  br i1 %or.cond32, label %b2RecVec2Differs.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !51, !range !21, !noundef !97
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.an = load i8, ptr %i.am, align 4, !tbaa !117, !range !21, !noundef !97
  %.not23 = icmp eq i8 %i.al, %i.an
  br i1 %.not23, label %bb.i, label %b2RecVec2Differs.exit.thread

b2RecVec2Differs.exit.thread:                     ; preds = %bb.g, %bb.e, %bb.h, %bb.f, %bb.d, %bb.c
  %i.ao = load ptr, ptr %2, align 8, !tbaa !126
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 25
  store i8 1, ptr %i.ap, align 1, !tbaa !130
  br label %bb.i

bb.i:                                             ; preds = %b2RecVec2Differs.exit.thread, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !123, !range !21, !noundef !97
  %i.as = trunc nuw i8 %i.ar to i1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.as, %bb.i ]
  ret i1 %.0
}

declare void @b2World_CastRayClosest(ptr dead_on_unwind writable sret(%struct.b2RayResult) align 4, i32, <2 x float>, <2 x float>, i64, i64) local_unnamed_addr #5

declare float @b2World_CastMover(i32, <2 x float>, ptr noundef, <2 x float>, i64, i64) local_unnamed_addr #5

declare zeroext i1 @b2Shape_TestPoint(i64, <2 x float>) local_unnamed_addr #5

declare void @b2Shape_RayCast(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, i64, <2 x float>, <2 x float>) local_unnamed_addr #5

declare i64 @b2HashWorldState(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @b2Shape_IsValid(i64) local_unnamed_addr #5

declare { <2 x float>, <2 x float> } @b2Shape_GetAABB(i64) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!"b2WorldId", !10, i64 0, !10, i64 2}
!12 = !{!"_Bool", !4, i64 0}
!13 = !{!"p1 _ZTS6b2Vec2", !8, i64 0}
!14 = !{!"p1 _ZTS17b2SurfaceMaterial", !8, i64 0}
!15 = !{!"p1 _ZTS16b2RecRecordedHit", !8, i64 0}
end_hunk_0
