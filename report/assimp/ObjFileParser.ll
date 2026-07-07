inline.NumInlined: 2069
inline.NumDeleted: 754
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6Assimp13ObjFileParser21getHomogeneousVector3ERSt6vectorI10aiVector3tIfESaIS3_EE:bb.a
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48:     ; preds = %.lr.ph.i45
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 %.023.i46
  store i8 %i.co, ptr %i.cp, align 1
  %i.cq = add nuw nsw i64 %.023.i46, 1            ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 3 uses
  store ptr %i.cr, ptr %0, align 8
  %.not.i49 = icmp eq ptr %i.cr, %.sroa.03.0.copyload.i36
  br i1 %.not.i49, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57, label %.lr.ph.i45.1

.lr.ph.i45.1:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48
  %i.cs = load i8, ptr %i.cr, align 1             ; 2 uses
  switch i8 %i.cs, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48.1 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48.1:   ; preds = %.lr.ph.i45.1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cu = add nuw nsw i64 %.023.i46, 2            ; 9 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 2 ; 3 uses
  store ptr %i.cv, ptr %0, align 8
  %.not.i49.1 = icmp eq ptr %i.cv, %.sroa.03.0.copyload.i36
  br i1 %.not.i49.1, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57, label %.lr.ph.i45.2

.lr.ph.i45.2:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48.1
  %i.cw = load i8, ptr %i.cv, align 1             ; 2 uses
  switch i8 %i.cw, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48.2 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48.2:   ; preds = %.lr.ph.i45.2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cu
  store i8 %i.cw, ptr %i.cx, align 1
  %i.cy = icmp eq i64 %i.cu, 4094
  br i1 %i.cy, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57, label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48.2
  %i.cz = add nuw nsw i64 %.023.i46, 3            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 3 ; 3 uses
  store ptr %i.da, ptr %0, align 8
  %.not.i49.2 = icmp eq ptr %i.da, %.sroa.03.0.copyload.i36
  br i1 %.not.i49.2, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57, label %.lr.ph.i45, !llvm.loop !25

_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57: ; preds = %.lr.ph.i45, %.lr.ph.i45, %.lr.ph.i45, %.lr.ph.i45, %.lr.ph.i45, %.lr.ph.i45, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48, %.lr.ph.i45.1, %.lr.ph.i45.1, %.lr.ph.i45.1, %.lr.ph.i45.1, %.lr.ph.i45.1, %.lr.ph.i45.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48.1, %.lr.ph.i45.2, %.lr.ph.i45.2, %.lr.ph.i45.2, %.lr.ph.i45.2, %.lr.ph.i45.2, %.lr.ph.i45.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48.2, %bb.j, %bb.i
  %.1.i47 = phi i64 [ 0, %bb.i ], [ %i.cz, %bb.j ], [ %.023.i46, %.lr.ph.i45 ], [ %.023.i46, %.lr.ph.i45 ], [ %.023.i46, %.lr.ph.i45 ], [ %.023.i46, %.lr.ph.i45 ], [ %.023.i46, %.lr.ph.i45 ], [ %.023.i46, %.lr.ph.i45 ], [ %i.cq, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48 ], [ %i.cq, %.lr.ph.i45.1 ], [ %i.cq, %.lr.ph.i45.1 ], [ %i.cq, %.lr.ph.i45.1 ], [ %i.cq, %.lr.ph.i45.1 ], [ %i.cq, %.lr.ph.i45.1 ], [ %i.cq, %.lr.ph.i45.1 ], [ 4095, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48.2 ], [ %i.cu, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i48.1 ], [ %i.cu, %.lr.ph.i45.2 ], [ %i.cu, %.lr.ph.i45.2 ], [ %i.cu, %.lr.ph.i45.2 ], [ %i.cu, %.lr.ph.i45.2 ], [ %i.cu, %.lr.ph.i45.2 ], [ %i.cu, %.lr.ph.i45.2 ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 %.1.i47
  store i8 0, ptr %i.db, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store float 0.000000e+00, ptr %i.b, align 4
  %i.dc = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  %i.dd = load float, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.sroa.04.0.copyload.i58 = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.03.0.copyload.i59 = load ptr, ptr %i.f, align 8 ; 9 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i59, i64 -1 ; 4 uses
  %i.df = icmp eq ptr %.sroa.04.0.copyload.i58, %.sroa.03.0.copyload.i59
  %i.dg = icmp eq ptr %.sroa.04.0.copyload.i58, %i.de
  %.0.i6.i.i60 = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %.0.i6.i.i60, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i65, label %.lr.ph.i.i61

.lr.ph.i.i61:                                     ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i63
  %.sroa.0.07.i.i62 = phi ptr [ %i.di, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i63 ], [ %.sroa.04.0.copyload.i58, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57 ] ; 3 uses
  %i.dh = load i8, ptr %.sroa.0.07.i.i62, align 1
  switch i8 %i.dh, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i65 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i63
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i63
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i63:           ; preds = %.lr.ph.i.i61, %.lr.ph.i.i61
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i62, i64 1 ; 4 uses
  %i.dj = icmp eq ptr %i.di, %.sroa.03.0.copyload.i59
  %i.dk = icmp eq ptr %i.di, %i.de
  %.0.i.i.i64 = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %.0.i.i.i64, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i65, label %.lr.ph.i.i61, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i65: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i63, %.lr.ph.i.i61, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57
  %.sroa.0.0.lcssa.i.i66 = phi ptr [ %.sroa.04.0.copyload.i58, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit57 ], [ %.sroa.0.07.i.i62, %.lr.ph.i.i61 ], [ %i.di, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i63 ] ; 4 uses
  store ptr %.sroa.0.0.lcssa.i.i66, ptr %0, align 8
  %i.dl = load i8, ptr %.sroa.0.0.lcssa.i.i66, align 1
  %i.dm = icmp eq i8 %i.dl, 92
  br i1 %i.dm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i65
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i66, i64 2 ; 5 uses
  store ptr %i.dn, ptr %0, align 8
  %i.do = icmp eq ptr %i.dn, %.sroa.03.0.copyload.i59
  %i.dp = icmp eq ptr %i.dn, %i.de
  %.0.i6.i14.i73 = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %.0.i6.i14.i73, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i78, label %.lr.ph.i15.i74

.lr.ph.i15.i74:                                   ; preds = %bb.k, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76
  %.sroa.0.07.i16.i75 = phi ptr [ %i.dr, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76 ], [ %i.dn, %bb.k ] ; 3 uses
  %i.dq = load i8, ptr %.sroa.0.07.i16.i75, align 1
  switch i8 %i.dq, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i78 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76:         ; preds = %.lr.ph.i15.i74, %.lr.ph.i15.i74
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i16.i75, i64 1 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.03.0.copyload.i59
  %i.dt = icmp eq ptr %i.dr, %i.de
  %.0.i.i18.i77 = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %.0.i.i18.i77, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i78, label %.lr.ph.i15.i74, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i78: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76, %.lr.ph.i15.i74, %bb.k
  %.sroa.0.0.lcssa.i19.i79 = phi ptr [ %i.dn, %bb.k ], [ %.sroa.0.07.i16.i75, %.lr.ph.i15.i74 ], [ %i.dr, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76 ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i19.i79, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i78, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i65
  %i.du = phi ptr [ %.sroa.0.0.lcssa.i19.i79, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i78 ], [ %.sroa.0.0.lcssa.i.i66, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i65 ] ; 2 uses
  %.not22.i67 = icmp eq ptr %i.du, %.sroa.03.0.copyload.i59
  br i1 %.not22.i67, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.l, %bb.m
  %i.dv = phi ptr [ %i.ei, %bb.m ], [ %i.du, %bb.l ] ; 4 uses
  %.023.i69 = phi i64 [ %i.eh, %bb.m ], [ 0, %bb.l ] ; 10 uses
  %i.dw = load i8, ptr %i.dv, align 1             ; 2 uses
  switch i8 %i.dw, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71:     ; preds = %.lr.ph.i68
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 %.023.i69
  store i8 %i.dw, ptr %i.dx, align 1
  %i.dy = add nuw nsw i64 %.023.i69, 1            ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 3 uses
  store ptr %i.dz, ptr %0, align 8
  %.not.i72 = icmp eq ptr %i.dz, %.sroa.03.0.copyload.i59
  br i1 %.not.i72, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80, label %.lr.ph.i68.1

.lr.ph.i68.1:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71
  %i.ea = load i8, ptr %i.dz, align 1             ; 2 uses
  switch i8 %i.ea, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.1 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.1:   ; preds = %.lr.ph.i68.1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dy
  store i8 %i.ea, ptr %i.eb, align 1
  %i.ec = add nuw nsw i64 %.023.i69, 2            ; 9 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 2 ; 3 uses
  store ptr %i.ed, ptr %0, align 8
  %.not.i72.1 = icmp eq ptr %i.ed, %.sroa.03.0.copyload.i59
  br i1 %.not.i72.1, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80, label %.lr.ph.i68.2

.lr.ph.i68.2:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.1
  %i.ee = load i8, ptr %i.ed, align 1             ; 2 uses
  switch i8 %i.ee, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.2 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.2:   ; preds = %.lr.ph.i68.2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ec
  store i8 %i.ee, ptr %i.ef, align 1
  %i.eg = icmp eq i64 %i.ec, 4094
  br i1 %i.eg, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80, label %bb.m

bb.m:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.2
  %i.eh = add nuw nsw i64 %.023.i69, 3            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 3 ; 3 uses
  store ptr %i.ei, ptr %0, align 8
  %.not.i72.2 = icmp eq ptr %i.ei, %.sroa.03.0.copyload.i59
  br i1 %.not.i72.2, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80, label %.lr.ph.i68, !llvm.loop !25

_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80: ; preds = %.lr.ph.i68, %.lr.ph.i68, %.lr.ph.i68, %.lr.ph.i68, %.lr.ph.i68, %.lr.ph.i68, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71, %.lr.ph.i68.1, %.lr.ph.i68.1, %.lr.ph.i68.1, %.lr.ph.i68.1, %.lr.ph.i68.1, %.lr.ph.i68.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.1, %.lr.ph.i68.2, %.lr.ph.i68.2, %.lr.ph.i68.2, %.lr.ph.i68.2, %.lr.ph.i68.2, %.lr.ph.i68.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.2, %bb.m, %bb.l
  %.1.i70 = phi i64 [ 0, %bb.l ], [ %i.eh, %bb.m ], [ %.023.i69, %.lr.ph.i68 ], [ %.023.i69, %.lr.ph.i68 ], [ %.023.i69, %.lr.ph.i68 ], [ %.023.i69, %.lr.ph.i68 ], [ %.023.i69, %.lr.ph.i68 ], [ %.023.i69, %.lr.ph.i68 ], [ %i.dy, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71 ], [ %i.dy, %.lr.ph.i68.1 ], [ %i.dy, %.lr.ph.i68.1 ], [ %i.dy, %.lr.ph.i68.1 ], [ %i.dy, %.lr.ph.i68.1 ], [ %i.dy, %.lr.ph.i68.1 ], [ %i.dy, %.lr.ph.i68.1 ], [ 4095, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.2 ], [ %i.ec, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.1 ], [ %i.ec, %.lr.ph.i68.2 ], [ %i.ec, %.lr.ph.i68.2 ], [ %i.ec, %.lr.ph.i68.2 ], [ %i.ec, %.lr.ph.i68.2 ], [ %i.ec, %.lr.ph.i68.2 ], [ %i.ec, %.lr.ph.i68.2 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 %.1.i70
  store i8 0, ptr %i.ej, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store float 0.000000e+00, ptr %i.a, align 4
  %i.ek = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.el = load float, ptr %i.a, align 4           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.em = fcmp oeq float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
  %i.en = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull @.str.6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_throw(ptr nonnull %i.en, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.en) #28
  resume { ptr, i32 } %i.eo

bb.q:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
  %2 = fdiv float %i.an, %i.el                    ; 2 uses
  %3 = fdiv float %i.bv, %i.el                    ; 2 uses
  %i.ep = fdiv float %i.dd, %i.el                 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.er = load ptr, ptr %i.eq, align 8            ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8
  %.not.i81 = icmp eq ptr %i.er, %i.et
  br i1 %.not.i81, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store float %2, ptr %i.er, align 4
  %4 = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store float %3, ptr %4, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store float %i.ep, ptr %i.eu, align 4
  %i.ev = load ptr, ptr %i.eq, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store ptr %i.ew, ptr %i.eq, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.ex = load ptr, ptr %1, align 8               ; 5 uses
  %i.ey = ptrtoint ptr %i.er to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.t, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.fc = sdiv exact i64 %i.fa, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 768614336404564650)
  %i.fg = select i1 %i.fe, i64 768614336404564650, i64 %i.ff ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fh = mul nuw nsw i64 %i.fg, 12
  %i.fi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #30 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa ; 3 uses
  store float %2, ptr %5, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %3, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.ep, ptr %i.fk, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.ex, %i.er
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i ], [ %i.fi, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i ], [ %i.ex, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !31
  %i.fl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, %i.er
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fi, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fm, %.lr.ph.i.i.i.i.i ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i35.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fa) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.fi, ptr %1, align 8
  store ptr %i.fn, ptr %i.eq, align 8
  %i.fo = getelementptr inbounds nuw [12 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fo, ptr %i.es, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit: ; preds = %bb.r, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8 ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fq = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.not.i82 = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i82, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit
  %i.fr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.fs = icmp eq ptr %.sroa.01.0.copyload, %i.fr
  br i1 %i.fs, label %.critedge.i, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.fu, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.ft = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.ft, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i83
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.fv = icmp eq ptr %i.fu, %.sroa.0.0.copyload
  %i.fw = icmp eq ptr %i.fu, %i.fr
  %.0.i.i = or i1 %i.fv, %i.fw
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i83, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i83, %.lr.ph.i83, %.lr.ph.i83, %.lr.ph.i83, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.fu, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i83 ], [ %.sroa.010.021.i, %.lr.ph.i83 ], [ %.sroa.010.021.i, %.lr.ph.i83 ], [ %.sroa.010.021.i, %.lr.ph.i83 ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.fy = load i32, ptr %i.fp, align 8
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fp, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.fx, %bb.v ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.w
  %.sroa.010.136.i = ptrtoint ptr %.sroa.010.1.i to i64
  %i.ga = sub i64 %i.fq, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.ga
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.gc, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.gb = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.gb, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.gc, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit, %bb.w
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit ], [ %.sroa.010.1.i, %bb.w ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13ObjFileParser14getTwoVectors3ERSt6vectorI10aiVector3tIfESaIS3_EES6_(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 30 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %0, align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %i.h, align 8 ; 9 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i, i64 -1 ; 4 uses
  %i.j = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.03.0.copyload.i
  %i.k = icmp eq ptr %.sroa.04.0.copyload.i, %i.i
  %.0.i6.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i6.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.04.0.copyload.i, %bb.a ] ; 3 uses
  %i.l = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.l, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.n = icmp eq ptr %i.m, %.sroa.03.0.copyload.i
  %i.o = icmp eq ptr %i.m, %i.i
  %.0.i.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %.0.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.04.0.copyload.i, %bb.a ], [ %.sroa.0.07.i.i, %.lr.ph.i.i ], [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 4 uses
  store ptr %.sroa.0.0.lcssa.i.i, ptr %0, align 8
  %i.p = load i8, ptr %.sroa.0.0.lcssa.i.i, align 1
  %i.q = icmp eq i8 %i.p, 92
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 2 ; 5 uses
  store ptr %i.r, ptr %0, align 8
  %i.s = icmp eq ptr %i.r, %.sroa.03.0.copyload.i
  %i.t = icmp eq ptr %i.r, %i.i
  %.0.i6.i14.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %.0.i6.i14.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.b, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
  %.sroa.0.07.i16.i = phi ptr [ %i.v, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i ], [ %i.r, %bb.b ] ; 3 uses
  %i.u = load i8, ptr %.sroa.0.07.i16.i, align 1
  switch i8 %i.u, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i:           ; preds = %.lr.ph.i15.i, %.lr.ph.i15.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i16.i, i64 1 ; 4 uses
  %i.w = icmp eq ptr %i.v, %.sroa.03.0.copyload.i
  %i.x = icmp eq ptr %i.v, %i.i
  %.0.i.i18.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %.0.i.i18.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, label %.lr.ph.i15.i, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i, %.lr.ph.i15.i, %bb.b
  %.sroa.0.0.lcssa.i19.i = phi ptr [ %i.r, %bb.b ], [ %.sroa.0.07.i16.i, %.lr.ph.i15.i ], [ %i.v, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i19.i, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.y = phi ptr [ %.sroa.0.0.lcssa.i19.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 2 uses
  %.not22.i = icmp eq ptr %i.y, %.sroa.03.0.copyload.i
  br i1 %.not22.i, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.z = phi ptr [ %i.am, %bb.d ], [ %i.y, %bb.c ] ; 4 uses
  %.023.i = phi i64 [ %i.al, %bb.d ], [ 0, %bb.c ] ; 10 uses
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  switch i8 %i.aa, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %.023.i
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = add nuw nsw i64 %.023.i, 1              ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  store ptr %i.ad, ptr %0, align 8
  %.not.i = icmp eq ptr %i.ad, %.sroa.03.0.copyload.i
  br i1 %.not.i, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
end_hunk_0
