begin_hunk_0
inline.NumInlined: 492
inline.NumDeleted: 147
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  br i1 %i.fw, label %.lr.ph222, label %.loopexit

.lr.ph222:                                        ; preds = %.preheader215
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_1
begin_hunk_2
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre249.a = load ptr, ptr %i.fx, align 8, !tbaa !42 ; 2 uses
  br label %bb.p

end_hunk_2
begin_hunk_3
  br i1 %i.kc, label %bb.m, label %.preheader215

._crit_edge:                                      ; preds = %bb.v
  %i.kd = icmp sgt i32 %i.pd, 0                   ; 2 uses
  %or.cond = and i1 %.2, %i.kd
  br i1 %or.cond, label %.lr.ph225, label %.loopexit214

.lr.ph225:                                        ; preds = %._crit_edge
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ke = load ptr, ptr %9, align 8, !tbaa !29
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.kf = load ptr, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.kg = load ptr, ptr %11, align 8
  %wide.trip.count241 = zext nneg i32 %i.pd to i64
  br label %bb.w

bb.p:                                             ; preds = %.lr.ph222, %bb.v
  %i.kh = phi ptr [ %.pre249.a, %.lr.ph222 ], [ %i.pb, %bb.v ] ; 4 uses
  %i.ki = phi ptr [ %.pre249.a, %.lr.ph222 ], [ %i.pc, %bb.v ] ; 2 uses
  %indvars.iv235 = phi i64 [ 0, %.lr.ph222 ], [ %indvars.iv.next236, %bb.v ] ; 8 uses
  %.0108221 = phi i1 [ false, %.lr.ph222 ], [ %.2, %bb.v ] ; 2 uses
  %i.kj = getelementptr inbounds nuw [288 x i8], ptr %i.ki, i64 %indvars.iv235 ; 6 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 88
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !76 ; 2 uses
  %.not118 = icmp eq ptr %i.kl, null
  br i1 %.not118, label %12, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 252
end_hunk_3
begin_hunk_4
  %i.oe = fcmp olt float %.0.i, %i.od
  %.1.i = select i1 %i.oe, float %i.od, float %.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pre250 = load ptr, ptr %i.fx, align 8, !tbaa !42 ; 2 uses
  br label %bb.t

12:                                               ; preds = %bb.p
  %13 = load ptr, ptr %i.gj, align 8, !tbaa !29
  %14 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv235
  store float 0.000000e+00, ptr %14, align 4, !tbaa !50
  %15 = getelementptr inbounds nuw [288 x i8], ptr %i.kh, i64 %indvars.iv235
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 284
  store float 1.000000e+00, ptr %16, align 4, !tbaa !104
  br label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.s
  %17 = phi ptr [ %.pre250, %bb.s ], [ %i.kh, %bb.r ] ; 2 uses
  %i.of = phi ptr [ %.pre250, %bb.s ], [ %i.ki, %bb.r ] ; 3 uses
  %.0111 = phi float [ %.1.i, %bb.s ], [ %i.kp, %bb.r ] ; 2 uses
  %i.og = load ptr, ptr %i.gj, align 8, !tbaa !29
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv235 ; 2 uses
  store float 0.000000e+00, ptr %i.oh, align 4, !tbaa !50
end_hunk_4
begin_hunk_5
  store float %i.pa, ptr %i.oj, align 4, !tbaa !104
  br label %bb.v

bb.v:                                             ; preds = %12, %bb.t, %bb.u
  %i.pb = phi ptr [ %i.kh, %12 ], [ %17, %bb.u ], [ %17, %bb.t ]
  %i.pc = phi ptr [ %i.kh, %12 ], [ %i.of, %bb.u ], [ %i.of, %bb.t ]
  %.2 = phi i1 [ %.0108221, %12 ], [ true, %bb.u ], [ %.0108221, %bb.t ] ; 2 uses
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.pd = load i32, ptr %i.a, align 4, !tbaa !43  ; 3 uses
  %i.pe = sext i32 %i.pd to i64
  %i.pf = icmp slt i64 %indvars.iv.next236, %i.pe
  br i1 %i.pf, label %bb.p, label %._crit_edge
end_hunk_5
begin_hunk_6
  br i1 %exitcond242.not, label %.loopexit214, label %bb.w

.loopexit214:                                     ; preds = %bb.z, %._crit_edge
  br i1 %i.kd, label %.lr.ph228, label %.loopexit

.lr.ph228:                                        ; preds = %.loopexit214
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
end_hunk_6
