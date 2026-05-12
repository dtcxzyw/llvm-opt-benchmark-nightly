inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0_@getSubImagesChroma:bb.a
  br i1 %min.iters.check252, label %vec.epilog.ph274, label %vector.ph253

vector.ph253:                                     ; preds = %vector.main.loop.iter.check251
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !47, !alias.scope !48
  %broadcast.splatinsert262.a = insertelement <8 x i16> poison, i16 %i.bp, i64 0
  %broadcast.splat263.a = shufflevector <8 x i16> %broadcast.splatinsert262.a, <8 x i16> poison, <8 x i32> zeroinitializer
  %1 = load i16, ptr %i.bl, align 2, !tbaa !47, !alias.scope !51
  %broadcast.splatinsert260 = insertelement <8 x i16> poison, i16 %1, i64 0
  %broadcast.splat261 = shufflevector <8 x i16> %broadcast.splatinsert260, <8 x i16> poison, <8 x i32> zeroinitializer
  %2 = zext <8 x i16> %broadcast.splat261 to <8 x i32>
  %3 = mul nsw <8 x i32> %broadcast.splat259, %2
  %i.bq = zext <8 x i16> %broadcast.splat263.a to <8 x i32>
  %i.br = mul nuw nsw <8 x i32> %broadcast.splat257, %i.bq
  %i.bs = add <8 x i32> %3, splat (i32 32)
  %i.bt = add <8 x i32> %i.bs, %i.br
  %i.bu = lshr <8 x i32> %i.bt, splat (i32 6)
  %i.bv = trunc <8 x i32> %i.bu to <8 x i16>      ; 2 uses
end_hunk_0
begin_hunk_1_@getSubImagesChroma:bb.a

vec.epilog.ph274:                                 ; preds = %vector.main.loop.iter.check251, %vec.epilog.iter.check272
  %vec.epilog.resume.val269 = phi i64 [ %n.vec255, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check251 ]
  %i.bz = load i16, ptr %i.bo, align 2, !tbaa !47, !alias.scope !48
  %broadcast.splatinsert283.a = insertelement <2 x i16> poison, i16 %i.bz, i64 0
  %broadcast.splat284.a = shufflevector <2 x i16> %broadcast.splatinsert283.a, <2 x i16> poison, <2 x i32> zeroinitializer
  %4 = load i16, ptr %i.bl, align 2, !tbaa !47, !alias.scope !51
  %broadcast.splatinsert281 = insertelement <2 x i16> poison, i16 %4, i64 0
  %broadcast.splat282 = shufflevector <2 x i16> %broadcast.splatinsert281, <2 x i16> poison, <2 x i32> zeroinitializer
  %5 = zext <2 x i16> %broadcast.splat282 to <2 x i32>
  %6 = mul nsw <2 x i32> %broadcast.splat280, %5
  %i.ca = zext <2 x i16> %broadcast.splat284.a to <2 x i32>
  %i.cb = mul nuw nsw <2 x i32> %broadcast.splat278, %i.ca
  %i.cc = add <2 x i32> %6, splat (i32 32)
  %i.cd = add <2 x i32> %i.cc, %i.cb
  %i.ce = lshr <2 x i32> %i.cd, splat (i32 6)
  %i.cf = trunc <2 x i32> %i.ce to <2 x i16>
end_hunk_1
begin_hunk_2_@getSubImagesChroma:bb.a
  br i1 %min.iters.check182, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gj = load i16, ptr %i.gf, align 2, !tbaa !47, !alias.scope !75
  %broadcast.splatinsert187.a = insertelement <8 x i16> poison, i16 %i.gj, i64 0
  %broadcast.splat188.a = shufflevector <8 x i16> %broadcast.splatinsert187.a, <8 x i16> poison, <8 x i32> zeroinitializer
  %7 = load i16, ptr %i.ge, align 2, !tbaa !47, !alias.scope !78
  %broadcast.splatinsert185 = insertelement <8 x i16> poison, i16 %7, i64 0
  %broadcast.splat186 = shufflevector <8 x i16> %broadcast.splatinsert185, <8 x i16> poison, <8 x i32> zeroinitializer
  %8 = add nuw nsw i64 %n.vec, %i.gg
  %9 = zext <8 x i16> %broadcast.splat186 to <8 x i32>
  %10 = mul nsw <8 x i32> %broadcast.splat184, %9
  %i.gk = zext <8 x i16> %broadcast.splat188.a to <8 x i32>
  %i.gl = mul nuw nsw <8 x i32> %broadcast.splat, %i.gk
  %i.gm = add <8 x i32> %10, splat (i32 32)
  %i.gn = add <8 x i32> %i.gm, %i.gl
  %i.go = lshr <8 x i32> %i.gn, splat (i32 6)
  %i.gp = trunc <8 x i32> %i.go to <8 x i16>      ; 2 uses
end_hunk_2
begin_hunk_3_@getSubImagesChroma:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gs = load i16, ptr %i.gf, align 2, !tbaa !47, !alias.scope !75
  %broadcast.splatinsert198.a = insertelement <2 x i16> poison, i16 %i.gs, i64 0
  %broadcast.splat199.a = shufflevector <2 x i16> %broadcast.splatinsert198.a, <2 x i16> poison, <2 x i32> zeroinitializer
  %11 = load i16, ptr %i.ge, align 2, !tbaa !47, !alias.scope !78
  %broadcast.splatinsert196 = insertelement <2 x i16> poison, i16 %11, i64 0
  %broadcast.splat197 = shufflevector <2 x i16> %broadcast.splatinsert196, <2 x i16> poison, <2 x i32> zeroinitializer
  %12 = add nuw nsw i64 %n.vec191, %i.gg
  %13 = zext <2 x i16> %broadcast.splat197 to <2 x i32>
  %14 = mul nsw <2 x i32> %broadcast.splat195, %13
  %i.gt = zext <2 x i16> %broadcast.splat199.a to <2 x i32>
  %i.gu = mul nuw nsw <2 x i32> %broadcast.splat193, %i.gt
  %i.gv = add <2 x i32> %14, splat (i32 32)
  %i.gw = add <2 x i32> %i.gv, %i.gu
  %i.gx = lshr <2 x i32> %i.gw, splat (i32 6)
  %i.gy = trunc <2 x i32> %i.gx to <2 x i16>
end_hunk_3
begin_hunk_4_@getSubImagesChroma:bb.a
  br i1 %cmp.n202, label %._crit_edge.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv152.ph = phi i64 [ %i.gg, %iter.check ], [ %i.gg, %vector.memcheck ], [ %8, %vec.epilog.iter.check ], [ %12, %vec.epilog.middle.block ] ; 3 uses
  %.291120.us.us.us.ph = phi i32 [ %i.c, %iter.check ], [ %i.c, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ] ; 4 uses
  %i.ha = sub i32 %i.an, %.291120.us.us.us.ph
  %.neg = add i32 %.291120.us.us.us.ph, 1
end_hunk_4
begin_hunk_5_@getSubImagesChroma:bb.a
  br i1 %min.iters.check400, label %vec.epilog.ph422, label %vector.ph401

vector.ph401:                                     ; preds = %vector.main.loop.iter.check399
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !47, !alias.scope !87
  %broadcast.splatinsert410.a = insertelement <8 x i16> poison, i16 %i.jf, i64 0
  %broadcast.splat411.a = shufflevector <8 x i16> %broadcast.splatinsert410.a, <8 x i16> poison, <8 x i32> zeroinitializer
  %15 = load i16, ptr %i.jb, align 2, !tbaa !47, !alias.scope !90
  %broadcast.splatinsert408 = insertelement <8 x i16> poison, i16 %15, i64 0
  %broadcast.splat409 = shufflevector <8 x i16> %broadcast.splatinsert408, <8 x i16> poison, <8 x i32> zeroinitializer
  %16 = zext <8 x i16> %broadcast.splat409 to <8 x i32>
  %17 = mul nsw <8 x i32> %broadcast.splat407, %16
  %i.jg = zext <8 x i16> %broadcast.splat411.a to <8 x i32>
  %i.jh = mul nuw nsw <8 x i32> %broadcast.splat405, %i.jg
  %i.ji = add <8 x i32> %17, splat (i32 32)
  %i.jj = add <8 x i32> %i.ji, %i.jh
  %i.jk = lshr <8 x i32> %i.jj, splat (i32 6)
  %i.jl = trunc <8 x i32> %i.jk to <8 x i16>      ; 2 uses
end_hunk_5
begin_hunk_6_@getSubImagesChroma:bb.a

vec.epilog.ph422:                                 ; preds = %vector.main.loop.iter.check399, %vec.epilog.iter.check420
  %vec.epilog.resume.val417 = phi i64 [ %n.vec403, %vec.epilog.iter.check420 ], [ 0, %vector.main.loop.iter.check399 ]
  %i.jp = load i16, ptr %i.je, align 2, !tbaa !47, !alias.scope !87
  %broadcast.splatinsert431.a = insertelement <2 x i16> poison, i16 %i.jp, i64 0
  %broadcast.splat432.a = shufflevector <2 x i16> %broadcast.splatinsert431.a, <2 x i16> poison, <2 x i32> zeroinitializer
  %18 = load i16, ptr %i.jb, align 2, !tbaa !47, !alias.scope !90
  %broadcast.splatinsert429 = insertelement <2 x i16> poison, i16 %18, i64 0
  %broadcast.splat430 = shufflevector <2 x i16> %broadcast.splatinsert429, <2 x i16> poison, <2 x i32> zeroinitializer
  %19 = zext <2 x i16> %broadcast.splat430 to <2 x i32>
  %20 = mul nsw <2 x i32> %broadcast.splat428, %19
  %i.jq = zext <2 x i16> %broadcast.splat432.a to <2 x i32>
  %i.jr = mul nuw nsw <2 x i32> %broadcast.splat426, %i.jq
  %i.js = add <2 x i32> %20, splat (i32 32)
  %i.jt = add <2 x i32> %i.js, %i.jr
  %i.ju = lshr <2 x i32> %i.jt, splat (i32 6)
  %i.jv = trunc <2 x i32> %i.ju to <2 x i16>
end_hunk_6
begin_hunk_7_@getSubImagesChroma:bb.a
  br i1 %min.iters.check307, label %vec.epilog.ph331, label %vector.ph308

vector.ph308:                                     ; preds = %vector.main.loop.iter.check306
  %i.nb = load i16, ptr %i.mx, align 2, !tbaa !47, !alias.scope !108
  %broadcast.splatinsert317.a = insertelement <8 x i16> poison, i16 %i.nb, i64 0
  %broadcast.splat318.a = shufflevector <8 x i16> %broadcast.splatinsert317.a, <8 x i16> poison, <8 x i32> zeroinitializer
  %21 = load i16, ptr %i.mw, align 2, !tbaa !47, !alias.scope !111
  %broadcast.splatinsert315 = insertelement <8 x i16> poison, i16 %21, i64 0
  %broadcast.splat316 = shufflevector <8 x i16> %broadcast.splatinsert315, <8 x i16> poison, <8 x i32> zeroinitializer
  %22 = add nuw nsw i64 %n.vec310, %i.my
  %23 = zext <8 x i16> %broadcast.splat316 to <8 x i32>
  %24 = mul nsw <8 x i32> %broadcast.splat314, %23
  %i.nc = zext <8 x i16> %broadcast.splat318.a to <8 x i32>
  %i.nd = mul nuw nsw <8 x i32> %broadcast.splat312, %i.nc
  %i.ne = add <8 x i32> %24, splat (i32 32)
  %i.nf = add <8 x i32> %i.ne, %i.nd
  %i.ng = lshr <8 x i32> %i.nf, splat (i32 6)
  %i.nh = trunc <8 x i32> %i.ng to <8 x i16>      ; 2 uses
end_hunk_7
begin_hunk_8_@getSubImagesChroma:bb.a

vec.epilog.ph331:                                 ; preds = %vector.main.loop.iter.check306, %vec.epilog.iter.check329
  %vec.epilog.resume.val324 = phi i64 [ %n.vec310, %vec.epilog.iter.check329 ], [ 0, %vector.main.loop.iter.check306 ]
  %i.nk = load i16, ptr %i.mx, align 2, !tbaa !47, !alias.scope !108
  %broadcast.splatinsert340.a = insertelement <2 x i16> poison, i16 %i.nk, i64 0
  %broadcast.splat341.a = shufflevector <2 x i16> %broadcast.splatinsert340.a, <2 x i16> poison, <2 x i32> zeroinitializer
  %25 = load i16, ptr %i.mw, align 2, !tbaa !47, !alias.scope !111
  %broadcast.splatinsert338 = insertelement <2 x i16> poison, i16 %25, i64 0
  %broadcast.splat339 = shufflevector <2 x i16> %broadcast.splatinsert338, <2 x i16> poison, <2 x i32> zeroinitializer
  %26 = add nuw nsw i64 %n.vec333, %i.my
  %27 = zext <2 x i16> %broadcast.splat339 to <2 x i32>
  %28 = mul nsw <2 x i32> %broadcast.splat337, %27
  %i.nl = zext <2 x i16> %broadcast.splat341.a to <2 x i32>
  %i.nm = mul nuw nsw <2 x i32> %broadcast.splat335, %i.nl
  %i.nn = add <2 x i32> %28, splat (i32 32)
  %i.no = add <2 x i32> %i.nn, %i.nm
  %i.np = lshr <2 x i32> %i.no, splat (i32 6)
  %i.nq = trunc <2 x i32> %i.np to <2 x i16>
end_hunk_8
begin_hunk_9_@getSubImagesChroma:bb.a
  br i1 %cmp.n346, label %._crit_edge.us.us.us.1, label %vec.epilog.scalar.ph328.preheader

vec.epilog.scalar.ph328.preheader:                ; preds = %vector.memcheck291, %iter.check327, %vec.epilog.iter.check329, %vec.epilog.middle.block345
  %indvars.iv152.1.ph = phi i64 [ %i.my, %iter.check327 ], [ %i.my, %vector.memcheck291 ], [ %22, %vec.epilog.iter.check329 ], [ %26, %vec.epilog.middle.block345 ] ; 3 uses
  %.291120.us.us.us.1.ph = phi i32 [ %i.c, %iter.check327 ], [ %i.c, %vector.memcheck291 ], [ %i.ih, %vec.epilog.iter.check329 ], [ %i.ij, %vec.epilog.middle.block345 ] ; 4 uses
  %i.ns = sub i32 %i.id, %.291120.us.us.us.1.ph
  %.neg454 = add i32 %.291120.us.us.us.1.ph, 1
end_hunk_9
begin_hunk_10_@llvm.smin.i32
!52 = distinct !{!52, !50}
!53 = !{!54}
!54 = distinct !{!54, !50}
!55 = !{!52, !49}
!56 = distinct !{!56, !57, !58, !59}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_10
begin_hunk_11_@llvm.smin.i32
!79 = distinct !{!79, !77}
!80 = !{!81}
!81 = distinct !{!81, !77}
!82 = !{!79, !76}
!83 = distinct !{!83, !57, !58, !59}
!84 = distinct !{!84, !57, !58, !59}
!85 = distinct !{!85, !57}
end_hunk_11
begin_hunk_12_@llvm.smin.i32
!91 = distinct !{!91, !89}
!92 = !{!93}
!93 = distinct !{!93, !89}
!94 = !{!91, !88}
!95 = distinct !{!95, !57, !58, !59}
!96 = distinct !{!96, !57, !58, !59}
!97 = distinct !{!97, !57, !58}
end_hunk_12
begin_hunk_13_@llvm.smin.i32
!112 = distinct !{!112, !110}
!113 = !{!114}
!114 = distinct !{!114, !110}
!115 = !{!112, !109}
!116 = distinct !{!116, !57, !58, !59}
!117 = distinct !{!117, !57, !58, !59}
!118 = distinct !{!118, !57, !58}
end_hunk_13
