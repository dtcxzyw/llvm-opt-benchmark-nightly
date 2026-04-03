begin_hunk_0
inline.NumInlined: 494
inline.NumDeleted: 147
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  br i1 %i.fw, label %.lr.ph222, label %.loopexit

.lr.ph222:                                        ; preds = %.preheader215
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_1
begin_hunk_2
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.pre249.a = load ptr, ptr %i.fx, align 8, !tbaa !42 ; 2 uses
  br label %bb.p

end_hunk_2
begin_hunk_3
  br i1 %i.kc, label %bb.m, label %.preheader215

._crit_edge:                                      ; preds = %bb.v
  %i.kd = icmp sgt i32 %i.pd, 0
  %or.cond = and i1 %.2, %i.kd
  br i1 %or.cond, label %.lr.ph225, label %.loopexit214

.lr.ph225:                                        ; preds = %._crit_edge
  %i.ke = load ptr, ptr %i.gk, align 8, !tbaa !29
  %i.kf = load ptr, ptr %i.fx, align 8
  %i.kg = load ptr, ptr %i.gj, align 8
  %wide.trip.count241 = zext nneg i32 %i.pd to i64
  br label %bb.w

bb.p:                                             ; preds = %.lr.ph222, %bb.v
  %i.kh = phi ptr [ %.pre249.a, %.lr.ph222 ], [ %i.pb, %bb.v ] ; 2 uses
  %i.ki = phi ptr [ %.pre249.a, %.lr.ph222 ], [ %i.pc, %bb.v ] ; 2 uses
  %indvars.iv235 = phi i64 [ 0, %.lr.ph222 ], [ %indvars.iv.next236, %bb.v ] ; 7 uses
  %.0108221 = phi i1 [ false, %.lr.ph222 ], [ %.2, %bb.v ] ; 2 uses
  %i.kj = getelementptr inbounds nuw [288 x i8], ptr %i.ki, i64 %indvars.iv235 ; 7 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 88
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !76 ; 2 uses
  %.not118 = icmp eq ptr %i.kl, null
  br i1 %.not118, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 252
end_hunk_3
begin_hunk_4
  %i.oe = fcmp olt float %.0.i, %i.od
  %.1.i = select i1 %i.oe, float %i.od, float %.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pre250 = load ptr, ptr %i.fx, align 8, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.of = phi ptr [ %i.kh, %bb.r ], [ %.pre250, %bb.s ] ; 5 uses
  %.0111 = phi float [ %i.kp, %bb.r ], [ %.1.i, %bb.s ] ; 2 uses
  %i.og = load ptr, ptr %i.gj, align 8, !tbaa !29
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv235 ; 2 uses
  store float 0.000000e+00, ptr %i.oh, align 4, !tbaa !50
end_hunk_4
begin_hunk_5
  store float %i.pa, ptr %i.oj, align 4, !tbaa !104
  br label %bb.v

.critedge:                                        ; preds = %bb.p
  %9 = load ptr, ptr %i.gj, align 8, !tbaa !29
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv235
  store float 0.000000e+00, ptr %10, align 4, !tbaa !50
  %11 = getelementptr inbounds nuw i8, ptr %i.kj, i64 284
  store float 1.000000e+00, ptr %11, align 4, !tbaa !104
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %.critedge
  %i.pb = phi ptr [ %i.kh, %.critedge ], [ %i.of, %bb.t ], [ %i.of, %bb.u ]
  %i.pc = phi ptr [ %i.ki, %.critedge ], [ %i.of, %bb.t ], [ %i.of, %bb.u ]
  %.2 = phi i1 [ %.0108221, %.critedge ], [ %.0108221, %bb.t ], [ true, %bb.u ] ; 2 uses
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.pd = load i32, ptr %i.a, align 4, !tbaa !43  ; 4 uses
  %i.pe = sext i32 %i.pd to i64
  %i.pf = icmp slt i64 %indvars.iv.next236, %i.pe
  br i1 %i.pf, label %bb.p, label %._crit_edge
end_hunk_5
begin_hunk_6
  br i1 %exitcond242.not, label %.loopexit214, label %bb.w

.loopexit214:                                     ; preds = %bb.z, %._crit_edge
  %12 = icmp sgt i32 %i.pd, 0
  br i1 %12, label %.lr.ph228, label %.loopexit

.lr.ph228:                                        ; preds = %.loopexit214
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
end_hunk_6
