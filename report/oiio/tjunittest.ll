inline.NumInlined: 62
inline.NumDeleted: 12
begin_hunk_0_@cmpBitmap:bb.a
  %i.n = load i32, ptr @precision, align 4        ; 2 uses
  %i.o = icmp slt i32 %i.n, 9                     ; 5 uses
  %i.p = icmp samesign ult i32 %i.n, 13           ; 9 uses
  %i.q = sitofp i32 %i.l to double                ; 2 uses
  %.not132 = icmp eq i32 %4, 0                    ; 2 uses
  %i.r = add nsw i64 %i.a, -7
  %i.s = icmp ult i64 %i.r, 4
end_hunk_0
begin_hunk_1_@cmpBitmap:bb.a
  %invariant.gep233 = getelementptr [2 x i8], ptr %0, i64 %i.w
  %invariant.gep235 = getelementptr i8, ptr %0, i64 %i.v
  %invariant.gep237 = getelementptr i8, ptr %0, i64 %i.w
  %5 = insertelement <2 x double> poison, double %i.q, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge145
end_hunk_1
begin_hunk_2_@cmpBitmap:bb.a

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr [2 x i8], ptr %0, i64 %i.am ; 4 uses
  %7 = getelementptr i8, ptr %i.au, i64 2
  %8 = load i16, ptr %i.au, align 2, !tbaa !18    ; 2 uses
  %i.av = load i16, ptr %7, align 2, !tbaa !18    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.au, i64 4
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !18 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.au, i64 6
end_hunk_2
begin_hunk_3_@cmpBitmap:bb.a

bb.k:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr %0, i64 %i.am     ; 4 uses
  %9 = getelementptr i8, ptr %i.ba, i64 1
  %10 = load i8, ptr %i.ba, align 1, !tbaa !17
  %11 = load i8, ptr %9, align 1, !tbaa !17
  %12 = zext i8 %10 to i32
  %i.bb = zext i8 %11 to i32
  %i.bc = getelementptr i8, ptr %i.ba, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.be = zext i8 %i.bd to i32
end_hunk_3
begin_hunk_4_@cmpBitmap:bb.a
  br label %getVal.exit153

bb.l:                                             ; preds = %bb.j
  %i.bi = sext i16 %8 to i32
  %i.bj = sext i16 %i.av to i32
  %i.bk = sext i16 %i.ax to i32
  %i.bl = sext i16 %i.az to i32
  br label %getVal.exit153

bb.m:                                             ; preds = %bb.j
  %i.bm = zext i16 %8 to i32
  %i.bn = zext i16 %i.av to i32
  %i.bo = zext i16 %i.ax to i32
  %i.bp = zext i16 %i.az to i32
end_hunk_4
begin_hunk_5_@cmpBitmap:bb.a

getVal.exit153:                                   ; preds = %bb.k, %bb.l, %bb.m
  %.0.i150196 = phi i32 [ %i.be, %bb.k ], [ %i.bk, %bb.l ], [ %i.bo, %bb.m ]
  %.0.i146174180194 = phi i32 [ %12, %bb.k ], [ %i.bi, %bb.l ], [ %i.bm, %bb.m ]
  %.0.i148182192 = phi i32 [ %i.bb, %bb.k ], [ %i.bj, %bb.l ], [ %i.bn, %bb.m ]
  %.0.i152 = phi i32 [ %i.bh, %bb.k ], [ %i.bl, %bb.l ], [ %i.bp, %bb.m ]
  %13 = insertelement <2 x i32> poison, i32 %.0.i146174180194, i64 0
  %14 = insertelement <2 x i32> %13, i32 %.0.i148182192, i64 1
  %15 = sitofp <2 x i32> %14 to <2 x double>
  %16 = sitofp i32 %.0.i152 to double             ; 2 uses
  %17 = insertelement <2 x double> poison, double %16, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = fmul nnan <2 x double> %18, %15
  %20 = fdiv <2 x double> %19, %6
  %21 = fadd <2 x double> %20, splat (double 5.000000e-01)
  %22 = fptosi <2 x double> %21 to <2 x i32>      ; 3 uses
  %i.bq = sitofp i32 %.0.i150196 to double
  %i.br = fmul nnan double %i.bq, %16
  %i.bs = fdiv double %i.br, %i.q
  %i.bt = fadd double %i.bs, 5.000000e-01
  %i.bu = fptosi double %i.bt to i32
end_hunk_5
begin_hunk_6_@cmpBitmap:bb.a
  br i1 %.not132, label %bb.o, label %bb.n

bb.n:                                             ; preds = %getVal.exit153
  %23 = extractelement <2 x i32> %22, i64 0
  %.not136 = icmp eq i32 %i.ak, %23
  %24 = extractelement <2 x i32> %22, i64 1
  %.not137 = icmp eq i32 %i.ak, %24
  %or.cond = select i1 %.not136, i1 %.not137, i1 false
  %or.cond140 = select i1 %or.cond, i1 %.not135, i1 false
  br i1 %or.cond140, label %bb.ae, label %.critedge144

bb.o:                                             ; preds = %getVal.exit153
  %25 = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %26 = insertelement <2 x i32> %25, i32 %i.ab, i64 1
  %27 = icmp eq <2 x i32> %26, %22                ; 2 uses
  %28 = extractelement <2 x i1> %27, i64 0
  %29 = extractelement <2 x i1> %27, i64 1
  %or.cond141 = select i1 %28, i1 %29, i1 false
  %or.cond142 = select i1 %or.cond141, i1 %.not135, i1 false
  br i1 %or.cond142, label %bb.ae, label %.critedge144

end_hunk_6
