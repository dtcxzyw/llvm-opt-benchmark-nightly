inline.NumInlined: 51
inline.NumDeleted: 20
begin_hunk_0_@_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.bg = load float, ptr %i.aj, align 8, !tbaa !20 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.sroa.082.0.copyload = load float, ptr %i.bh, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %9 = load <2 x float>, ptr %.sroa.14.0..sroa_idx, align 8 ; 2 uses
  %i.bi = extractelement <2 x float> %9, i64 0    ; 2 uses
  %i.bj = fcmp ogt float %i.bg, 0x3F50624DE0000000
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 120
  br label %bb.d

bb.c:                                             ; preds = %bb.h
  %i.bm = add nuw nsw i32 %i.bn, 1
  %exitcond = icmp eq i32 %i.bn, 32
  br i1 %exitcond, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.bn = phi i32 [ 1, %.lr.ph ], [ %i.bm, %bb.c ] ; 2 uses
  %.sroa.082.0145165 = phi float [ %.sroa.082.0.copyload, %.lr.ph ], [ %.sroa.082.0.copyload86, %bb.c ]
  %.sroa.11.0146164 = phi float [ %.sroa.11.0.copyload, %.lr.ph ], [ %.sroa.11.0.copyload93, %bb.c ]
  %.sroa.14.0147163 = phi float [ %i.bi, %.lr.ph ], [ %.sroa.14.0.copyload102, %bb.c ]
  %.054148162 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bs, %bb.c ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE:bb.a
bb.g:                                             ; preds = %bb.f
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %i.bs, ptr %i.cx, align 8, !tbaa !36
  %.sroa.082.0.copyload84 = load float, ptr %i.bh, align 8
  %.sroa.11.0.copyload89 = load float, ptr %.sroa.11.0..sroa_idx, align 4
  %10 = load <2 x float>, ptr %.sroa.14.0..sroa_idx, align 8
  br label %.thread.sink.split

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.079, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !32
  %.sroa.082.0.copyload86 = load float, ptr %i.bh, align 8 ; 2 uses
  %.sroa.11.0.copyload93 = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %.sroa.14.0.copyload102 = load float, ptr %.sroa.14.0..sroa_idx, align 8 ; 3 uses
  %i.cy = fcmp ogt float %i.cv, 0x3F50624DE0000000
  br i1 %i.cy, label %bb.c, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.h
  %.sroa.17.0.copyload111 = load float, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !33
  %11 = insertelement <2 x float> poison, float %.sroa.14.0.copyload102, i64 0
  %12 = insertelement <2 x float> %11, float %.sroa.17.0.copyload111, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.082.0.lcssa = phi float [ %.sroa.082.0.copyload, %bb.b ], [ %.sroa.082.0.copyload86, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.11.0.lcssa = phi float [ %.sroa.11.0.copyload, %bb.b ], [ %.sroa.11.0.copyload93, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.14.0.lcssa = phi float [ %i.bi, %bb.b ], [ %.sroa.14.0.copyload102, %._crit_edge.loopexit ]
  %.054.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %i.bs, %._crit_edge.loopexit ]
  %13 = phi <2 x float> [ %9, %bb.b ], [ %12, %._crit_edge.loopexit ]
  %14 = fmul float %i.ah, %.sroa.11.0.lcssa
  %i.cz = call float @llvm.fmuladd.f32(float %.sroa.082.0.lcssa, float %i.ag, float %14)
  %i.da = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa, float %i.ai, float %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.dc = load float, ptr %i.db, align 8, !tbaa !39
  %i.dd = fneg float %i.dc
end_hunk_1
begin_hunk_2_@_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE:bb.a

bb.i:                                             ; preds = %._crit_edge
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.054.lcssa, ptr %i.df, align 8, !tbaa !36
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.i, %bb.g
  %.sroa.082.0.copyload84.sink = phi float [ %.sroa.082.0.copyload84, %bb.g ], [ %.sroa.082.0.lcssa, %bb.i ]
  %.sroa.11.0.copyload89.sink = phi float [ %.sroa.11.0.copyload89, %bb.g ], [ %.sroa.11.0.lcssa, %bb.i ]
  %.sink159 = phi ptr [ %i.bf, %bb.g ], [ %.sroa.079, %bb.i ]
  %15 = phi <2 x float> [ %10, %bb.g ], [ %13, %bb.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 136
  store float %.sroa.082.0.copyload84.sink, ptr %i.dg, align 8
  %.sroa.11.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %5, i64 140
  store float %.sroa.11.0.copyload89.sink, ptr %.sroa.11.0..sroa_idx90, align 4
  %.sroa.14.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <2 x float> %15, ptr %.sroa.14.0..sroa_idx99, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 4 dereferenceable(16) %.sink159, i64 16, i1 false)
  br label %.thread
end_hunk_2
