inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a
  br i1 %brmerge, label %scalar.ph124.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %.preheader.i35
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !8, !alias.scope !25
  %broadcast.splatinsert128.a = insertelement <2 x double> poison, double %i.dr, i64 0
  %broadcast.splat129.a = shufflevector <2 x double> %broadcast.splatinsert128.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !8, !alias.scope !28
  %broadcast.splatinsert130 = insertelement <2 x double> poison, double %i.ds, i64 0
  %broadcast.splat131 = shufflevector <2 x double> %broadcast.splatinsert130, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body126
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.ef = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.ee, i64 1
  %i.eh = fmul <2 x double> %i.eg, splat (double 1.500000e+00)
  %i.ei = fmul <2 x double> %i.eh, %broadcast.splat131
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %broadcast.splat129.a, <2 x double> %i.ei)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index127 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ek, align 8, !tbaa !8, !alias.scope !34, !noalias !36
  %i.el = fadd <2 x double> %wide.load, %i.ej
end_hunk_1
begin_hunk_2_@main:bb.a
  br i1 %brmerge210, label %scalar.ph169.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %.preheader.i44
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !8, !alias.scope !43
  %broadcast.splatinsert178.a = insertelement <2 x double> poison, double %i.gf, i64 0
  %broadcast.splat179.a = shufflevector <2 x double> %broadcast.splatinsert178.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = load double, ptr %i.ge, align 8, !tbaa !8, !alias.scope !46
  %broadcast.splatinsert176 = insertelement <2 x double> poison, double %i.gg, i64 0
  %broadcast.splat177 = shufflevector <2 x double> %broadcast.splatinsert176, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body174
end_hunk_2
begin_hunk_3_@main:bb.a
  %i.gm = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gl, i64 1
  %i.go = fmul <2 x double> %i.gn, splat (double 1.500000e+00)
  %i.gp = fmul <2 x double> %i.go, %broadcast.splat179.a
  %i.gq = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i47, i64 %index175
  %i.gr = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i47, i64 %i.gh
  %i.gs = load double, ptr %i.gq, align 8, !tbaa !8, !alias.scope !50
end_hunk_3
begin_hunk_4_@main:bb.a
  %i.gu = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gt, i64 1
  %i.gw = fmul <2 x double> %i.gv, splat (double 1.500000e+00)
  %i.gx = fmul <2 x double> %i.gw, %broadcast.splat177
  %i.gy = fadd <2 x double> %i.gp, %i.gx
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %index175 ; 2 uses
  %wide.load180 = load <2 x double>, ptr %i.gz, align 8, !tbaa !8, !alias.scope !52, !noalias !54
end_hunk_4
begin_hunk_5_@llvm.fmuladd.v2f64
!33 = distinct !{!33, !27}
!34 = !{!35}
!35 = distinct !{!35, !27}
!36 = !{!29, !31, !33, !26}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !15, !16}
!39 = distinct !{!39, !15}
end_hunk_5
begin_hunk_6_@llvm.fmuladd.v2f64
!51 = distinct !{!51, !45}
!52 = !{!53}
!53 = distinct !{!53, !45}
!54 = !{!47, !49, !51, !44}
!55 = distinct !{!55, !15, !16, !17}
!56 = distinct !{!56, !15, !16}
!57 = distinct !{!57, !15}
end_hunk_6
