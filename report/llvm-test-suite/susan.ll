inline.NumInlined: 12
begin_hunk_0_@susan_corners:bb.a

bb.v:                                             ; preds = %bb.u
  %i.ob = icmp samesign ult i32 %i.nw, %i.nv
  %i.oc = trunc nsw i64 %indvars.iv to i32        ; 5 uses
  br i1 %i.ob, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.od = sitofp i32 %i.nb to float
  %i.oe = tail call i32 @llvm.abs.i32(i32 %i.nu, i1 true) ; 2 uses
  %i.of = uitofp nneg i32 %i.oe to float
  %.lhs.trunc839.us = trunc nuw nsw i32 %i.oe to i16
  %.rhs.trunc840.us = trunc nsw i32 %i.nu to i16
  %i.og = sdiv i16 %.lhs.trunc839.us, %.rhs.trunc840.us
  %.sext841.us = sext i16 %i.og to i32            ; 3 uses
  %7 = shl nsw i32 %.sext841.us, 1
  %8 = fdiv float %i.od, %i.of                    ; 3 uses
  %i.oh = add nsw i32 %7, %i.v
  %9 = add nsw i32 %i.v, %.sext841.us
  %10 = mul nsw i32 %i.oh, %5
  %11 = mul nsw i32 %9, %5
  %12 = fmul float %8, 2.000000e+00
  %13 = insertelement <2 x float> poison, float %8, i64 0
  %14 = insertelement <2 x float> %13, float %12, i64 1 ; 2 uses
  %15 = fcmp olt <2 x float> %14, zeroinitializer
  %16 = fpext <2 x float> %14 to <2 x double>
  %17 = select <2 x i1> %15, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %18 = fadd <2 x double> %17, %16
  %19 = fptosi <2 x double> %18 to <2 x i32>
  %20 = insertelement <2 x i32> poison, i32 %i.oc, i64 0
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <2 x i32> zeroinitializer
  %22 = add <2 x i32> %21, %19
  %23 = insertelement <2 x i32> poison, i32 %11, i64 0
  %24 = insertelement <2 x i32> %23, i32 %10, i64 1
  %25 = add <2 x i32> %22, %24                    ; 2 uses
  %26 = extractelement <2 x i32> %25, i64 0
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !18
  %30 = zext i8 %29 to i64
  %31 = sub nsw i64 0, %30
  %32 = getelementptr inbounds i8, ptr %i.ad, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !18
  %34 = zext i8 %33 to i32
  %35 = extractelement <2 x i32> %25, i64 1
  %i.oi = sext i32 %35 to i64
  %i.oj = getelementptr inbounds i8, ptr %0, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !18
  %i.ol = zext i8 %i.ok to i64
end_hunk_0
begin_hunk_1_@susan_corners:bb.a
  %i.on = getelementptr inbounds i8, ptr %i.ad, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !18
  %i.op = zext i8 %i.oo to i32
  %i.oq = add nuw nsw i32 %i.op, %34
  %i.or = mul nsw i32 %.sext841.us, 3
  %i.os = add nsw i32 %i.or, %i.v
  %i.ot = mul nsw i32 %i.os, %5
  %i.ou = fmul float %8, 3.000000e+00             ; 2 uses
  %i.ov = fcmp olt float %i.ou, 0.000000e+00
  %i.ow = fpext float %i.ou to double
  %.in835.v.us = select i1 %i.ov, double -5.000000e-01, double 5.000000e-01
end_hunk_1
