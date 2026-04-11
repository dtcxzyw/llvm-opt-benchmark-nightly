inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@KDTree_QueryCircleIntersectWeighted_Float:bb.a
  %i.p = sext i32 %i.o to i64                     ; 4 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %6, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !42 ; 2 uses
  %11 = getelementptr inbounds [4 x i8], ptr %8, i64 %i.p
  %12 = fpext float %i.r to double                ; 3 uses
  %13 = call double @pow(double noundef %12, double noundef 2.000000e+00) #9, !tbaa !4
  %i.s = load float, ptr %11, align 4, !tbaa !42  ; 2 uses
  %i.t = fpext float %i.s to double               ; 3 uses
  %i.u = call double @pow(double noundef %i.t, double noundef 2.000000e+00) #9, !tbaa !4
  %i.v = fadd double %13, %i.u
  %i.w = call double @sqrt(double noundef %i.v) #9, !tbaa !4 ; 6 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %7, i64 %i.p
  %i.y = load float, ptr %i.x, align 4, !tbaa !42 ; 2 uses
end_hunk_0
begin_hunk_1_@KDTree_QueryCircleIntersectWeighted_Float:bb.a
  %i.ak = call double @pow(double noundef %i.aj, double noundef 2.000000e+00) #9, !tbaa !4
  %i.al = fadd double %i.af, %i.ak
  %i.am = call double @sqrt(double noundef %i.al) #9, !tbaa !4 ; 5 uses
  %i.an = call double @pow(double noundef %12, double noundef 2.000000e+00) #9, !tbaa !4
  %i.ao = call double @pow(double noundef %i.aj, double noundef 2.000000e+00) #9, !tbaa !4
  %i.ap = fadd double %i.an, %i.ao
  %i.aq = call double @sqrt(double noundef %i.ap) #9, !tbaa !4 ; 5 uses
end_hunk_1
begin_hunk_2_@KDTree_QueryCircleIntersectWeighted_Float:bb.a

bb.i:                                             ; preds = %bb.g, %bb.h
  %or.cond11 = phi i1 [ true, %bb.h ], [ %or.cond9, %bb.g ]
  %14 = insertelement <2 x float> poison, float %i.y, i64 0
  %15 = insertelement <2 x float> %14, float %i.ah, i64 1
  %16 = fpext <2 x float> %15 to <2 x double>
  %17 = fmul <2 x double> %16, splat (double 5.000000e-01)
  %18 = insertelement <2 x double> poison, double %12, i64 0
  %19 = insertelement <2 x double> %18, double %i.t, i64 1
  %20 = fadd <2 x double> %17, %19
  %21 = fcmp ogt <2 x double> %20, zeroinitializer ; 2 uses
  %22 = extractelement <2 x i1> %21, i64 0        ; 3 uses
  %23 = xor i1 %22, true                          ; 2 uses
  %24 = extractelement <2 x i1> %21, i64 1        ; 3 uses
  %i.bc = xor i1 %24, true                        ; 2 uses
  %or.cond = and i1 %22, %24
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_2
begin_hunk_3_@KDTree_QueryCircleIntersectWeighted_Float:bb.a
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %or.cond3 = and i1 %24, %23
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
end_hunk_3
begin_hunk_4_@KDTree_QueryCircleIntersectWeighted_Float:bb.a
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %or.cond5 = and i1 %23, %i.bc
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
end_hunk_4
begin_hunk_5_@KDTree_QueryCircleIntersectWeighted_Float:bb.a
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %or.cond7 = and i1 %22, %i.bc
  br i1 %or.cond7, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
end_hunk_5
