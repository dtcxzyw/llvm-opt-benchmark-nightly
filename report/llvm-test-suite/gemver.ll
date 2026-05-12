inline.NumInlined: 16
inline.NumDeleted: 4
begin_hunk_0_@main:bb.a
  br i1 %.not, label %vector.ph73, label %scalar.ph

vector.ph73:                                      ; preds = %.preheader69.i
  %i.db = load double, ptr %i.da, align 8, !tbaa !8, !alias.scope !19
  %broadcast.splatinsert83.a = insertelement <2 x double> poison, double %i.db, i64 0
  %broadcast.splat84.a = shufflevector <2 x double> %broadcast.splatinsert83.a, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dc = load double, ptr %i.cz, align 8, !tbaa !8, !alias.scope !22
  %broadcast.splatinsert79 = insertelement <2 x double> poison, double %i.dc, i64 0
  %broadcast.splat80 = shufflevector <2 x double> %broadcast.splatinsert79, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body74
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load77 = load <2 x double>, ptr %i.df, align 8, !tbaa !8, !alias.scope !29
  %wide.load78 = load <2 x double>, ptr %i.dg, align 8, !tbaa !8, !alias.scope !29
  %i.dh = fmul <2 x double> %broadcast.splat80, %wide.load77
  %i.di = fmul <2 x double> %broadcast.splat80, %wide.load78
  %i.dj = fadd <2 x double> %wide.load, %i.dh
  %i.dk = fadd <2 x double> %wide.load76, %i.di
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index75 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load81 = load <2 x double>, ptr %i.dl, align 8, !tbaa !8, !alias.scope !30
  %wide.load82 = load <2 x double>, ptr %i.dm, align 8, !tbaa !8, !alias.scope !30
  %i.dn = fmul <2 x double> %broadcast.splat84.a, %wide.load81
  %i.do = fmul <2 x double> %broadcast.splat84.a, %wide.load82
  %i.dp = fadd <2 x double> %i.dj, %i.dn
  %i.dq = fadd <2 x double> %i.dk, %i.do
  store <2 x double> %i.dp, ptr %i.dd, align 8, !tbaa !8, !alias.scope !24, !noalias !26
end_hunk_1
begin_hunk_2_@fputc
!23 = distinct !{!23, !21}
!24 = !{!25}
!25 = distinct !{!25, !21}
!26 = !{!23, !27, !20, !28}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = !{!27}
end_hunk_2
