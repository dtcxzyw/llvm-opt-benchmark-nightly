inline.NumInlined: 12
begin_hunk_0_@susan_corners:bb.a

bb.v:                                             ; preds = %bb.u
  %i.ob = icmp samesign ult i32 %i.nw, %i.nv
  %i.oc = trunc nuw nsw i64 %indvars.iv to i32    ; 6 uses
  br i1 %i.ob, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.od = sitofp i32 %i.nb to float
  %i.oe = tail call i32 @llvm.abs.i32(i32 %i.nu, i1 true) ; 2 uses
  %i.of = uitofp nneg i32 %i.oe to float
  %7 = fdiv float %i.od, %i.of                    ; 4 uses
  %.lhs.trunc839.us = trunc nuw nsw i32 %i.oe to i16
  %.rhs.trunc840.us = trunc nsw i32 %i.nu to i16
  %i.og = sdiv i16 %.lhs.trunc839.us, %.rhs.trunc840.us
  %.sext841.us = sext i16 %i.og to i32            ; 3 uses
  %i.oh = add nsw i32 %i.v, %.sext841.us
  %8 = mul nsw i32 %i.oh, %5
  %9 = fcmp olt float %7, 0.000000e+00
  %10 = fpext float %7 to double
  %.in.v.us = select i1 %9, double -5.000000e-01, double 5.000000e-01
  %.in.us = fadd double %.in.v.us, %10
  %11 = fptosi double %.in.us to i32
  %12 = add i32 %i.oc, %11
  %13 = add i32 %12, %8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !18
  %17 = zext i8 %16 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds i8, ptr %i.ad, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !18
  %21 = zext i8 %20 to i32
  %22 = shl nsw i32 %.sext841.us, 1
  %23 = add nsw i32 %22, %i.v
  %24 = mul nsw i32 %23, %5
  %25 = fmul float %7, 2.000000e+00               ; 2 uses
  %26 = fcmp olt float %25, 0.000000e+00
  %27 = fpext float %25 to double
  %.in834.v.us = select i1 %26, double -5.000000e-01, double 5.000000e-01
  %.in834.us = fadd double %.in834.v.us, %27
  %28 = fptosi double %.in834.us to i32
  %29 = add i32 %i.oc, %28
  %30 = add i32 %29, %24
  %i.oi = sext i32 %30 to i64
  %i.oj = getelementptr inbounds i8, ptr %0, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !18
  %i.ol = zext i8 %i.ok to i64
end_hunk_0
begin_hunk_1_@susan_corners:bb.a
  %i.on = getelementptr inbounds i8, ptr %i.ad, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !18
  %i.op = zext i8 %i.oo to i32
  %i.oq = add nuw nsw i32 %i.op, %21
  %i.or = mul nsw i32 %.sext841.us, 3
  %i.os = add nsw i32 %i.or, %i.v
  %i.ot = mul nsw i32 %i.os, %5
  %i.ou = fmul float %7, 3.000000e+00             ; 2 uses
  %i.ov = fcmp olt float %i.ou, 0.000000e+00
  %i.ow = fpext float %i.ou to double
  %.in835.v.us = select i1 %i.ov, double -5.000000e-01, double 5.000000e-01
end_hunk_1
