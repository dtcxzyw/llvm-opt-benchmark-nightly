inline.NumInlined: 1119
inline.NumDeleted: 346
begin_hunk_0_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  %i.ey = icmp eq i8 %i.ex, 115
  br i1 %i.ey, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = icmp eq i8 %i.fa, 112
  br i1 %i.fb, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN6Assimp18ObjFileMtlImporter10getTextureEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.hl

.critedge:                                        ; preds = %bb.aa, %bb.z, %bb.ab
  store ptr %i.et, ptr %i.ae, align 8
  %i.fc = load ptr, ptr %i.ap, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %.not145 = icmp eq ptr %i.fe, null
  br i1 %.not145, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %.critedge
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 20628
  %i.fg = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.fi = icmp eq ptr %i.et, %i.bh
  %i.fj = icmp eq ptr %i.et, %i.fh
  %.0.i6.i.i.i177 = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %.0.i6.i.i.i177, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader, label %.lr.ph.i.i.i178

.lr.ph.i.i.i178:                                  ; preds = %bb.ad, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180
  %.sroa.0.07.i.i.i179 = phi ptr [ %i.fl, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180 ], [ %i.et, %bb.ad ] ; 3 uses
  %i.fk = load i8, ptr %.sroa.0.07.i.i.i179, align 1
  switch i8 %i.fk, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180:        ; preds = %.lr.ph.i.i.i178, %.lr.ph.i.i.i178
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i179, i64 1 ; 4 uses
  %i.fm = icmp eq ptr %i.fl, %i.bh
  %i.fn = icmp eq ptr %i.fl, %i.fh
  %.0.i.i.i.i181 = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %.0.i.i.i.i181, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader, label %.lr.ph.i.i.i178, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180, %.lr.ph.i.i.i178, %bb.ad
  %.sroa.0.0.i.i184.ph = phi ptr [ %i.et, %bb.ad ], [ %.sroa.0.07.i.i.i179, %.lr.ph.i.i.i178 ], [ %i.fl, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i180 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182: ; preds = %bb.af, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader
  %.sroa.0.0.i.i184 = phi ptr [ %.sroa.0.0.i.i184.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader ], [ %i.ga, %bb.af ] ; 13 uses
  %.0.i.i185 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.preheader ], [ %i.fz, %bb.af ] ; 11 uses
  %i.fo = load i8, ptr %.sroa.0.0.i.i184, align 1 ; 2 uses
  switch i8 %i.fo, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182
  %i.fp = icmp eq ptr %.sroa.0.0.i.i184, %i.bh
  %i.fq = icmp eq ptr %.sroa.0.0.i.i184, %i.fh
  %.0.i.i.i191 = select i1 %i.fp, i1 true, i1 %i.fq
  br i1 %.0.i.i.i191, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186, label %bb.ae

bb.ae:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.0.i.i185
  store i8 %i.fo, ptr %i.fr, align 1
  %i.fs = icmp eq i64 %.0.i.i185, 2046
  br i1 %i.fs, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1: ; preds = %bb.ae
  %i.ft = or disjoint i64 %.0.i.i185, 1           ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i184, i64 1 ; 10 uses
  %i.fv = load i8, ptr %i.fu, align 1             ; 2 uses
  switch i8 %i.fv, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1
  %i.fw = icmp eq ptr %i.fu, %i.bh
  %i.fx = icmp eq ptr %i.fu, %i.fh
  %.0.i.i.i191.1 = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %.0.i.i.i191.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186, label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ft
  store i8 %i.fv, ptr %i.fy, align 1
  %i.fz = add nuw nsw i64 %.0.i.i185, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i184, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1, %bb.ae, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182
  %.sroa.0.0.i.i184.lcssa = phi ptr [ %.sroa.0.0.i.i184, %bb.ae ], [ %.sroa.0.0.i.i184, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.sroa.0.0.i.i184, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %i.fu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fu, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.fu, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1 ]
  %.1.i.i187 = phi i64 [ 2047, %bb.ae ], [ %.0.i.i185, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %.0.i.i185, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182 ], [ %i.ft, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.ft, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.ft, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.ft, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.ft, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.ft, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i182.1 ], [ %i.ft, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i190.1 ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.1.i.i187
  store i8 0, ptr %i.gb, align 1
  store ptr %.sroa.0.0.i.i184.lcssa, ptr %i.ae, align 8
  %i.gc = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i188 = load i8, ptr %i.gc, align 1
  %i.gd = icmp eq i8 %char0.i188, 0
  br i1 %i.gd, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192, label %bb.ag

bb.ag:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #22
  store float 0.000000e+00, ptr %i.ac, align 4
  %i.ge = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.gc, ptr noundef nonnull align 4 dereferenceable(4) %i.ac, i1 noundef zeroext true) ; 0 uses
  %i.gf = load float, ptr %i.ac, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186, %bb.ag
  %storemerge.i189 = phi float [ %i.gf, %bb.ag ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i186 ]
  store float %storemerge.i189, ptr %i.ff, align 4
  %.sroa.084.0.copyload.pre = load ptr, ptr %i.ae, align 8
  %.sroa.083.0.copyload.pre = load ptr, ptr %i.af, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192, %.critedge
  %.sroa.083.0.copyload = phi ptr [ %.sroa.083.0.copyload.pre, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192 ], [ %i.bh, %.critedge ] ; 7 uses
  %.sroa.084.0.copyload = phi ptr [ %.sroa.084.0.copyload.pre, %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit192 ], [ %i.et, %.critedge ] ; 5 uses
  %i.gg = ptrtoint ptr %.sroa.083.0.copyload to i64
  %.not.i193 = icmp ult ptr %.sroa.084.0.copyload, %.sroa.083.0.copyload
  br i1 %.not.i193, label %.preheader.i195, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212

.preheader.i195:                                  ; preds = %bb.ah
  %i.gh = getelementptr inbounds i8, ptr %.sroa.083.0.copyload, i64 -1 ; 2 uses
  %i.gi = icmp eq ptr %.sroa.084.0.copyload, %i.gh
  br i1 %i.gi, label %.critedge.i198, label %.lr.ph.i196

.lr.ph.i196:                                      ; preds = %.preheader.i195, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i210
  %.sroa.010.021.i197 = phi ptr [ %i.gk, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i210 ], [ %.sroa.084.0.copyload, %.preheader.i195 ] ; 6 uses
  %i.gj = load i8, ptr %.sroa.010.021.i197, align 1
  switch i8 %i.gj, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i210 [
    i8 13, label %.critedge.i198
    i8 10, label %.critedge.i198
    i8 0, label %.critedge.i198
    i8 12, label %.critedge.i198
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i210:            ; preds = %.lr.ph.i196
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i197, i64 1 ; 4 uses
  %i.gl = icmp eq ptr %i.gk, %.sroa.083.0.copyload
  %i.gm = icmp eq ptr %i.gk, %i.gh
  %.0.i.i211 = or i1 %i.gl, %i.gm
  br i1 %.0.i.i211, label %.critedge.i198, label %.lr.ph.i196, !llvm.loop !9

.critedge.i198:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i210, %.lr.ph.i196, %.lr.ph.i196, %.lr.ph.i196, %.lr.ph.i196, %.preheader.i195
  %.sroa.010.0.lcssa.i199 = phi ptr [ %.sroa.084.0.copyload, %.preheader.i195 ], [ %i.gk, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i210 ], [ %.sroa.010.021.i197, %.lr.ph.i196 ], [ %.sroa.010.021.i197, %.lr.ph.i196 ], [ %.sroa.010.021.i197, %.lr.ph.i196 ], [ %.sroa.010.021.i197, %.lr.ph.i196 ] ; 3 uses
  %.not19.i200 = icmp eq ptr %.sroa.010.0.lcssa.i199, %.sroa.083.0.copyload
  br i1 %.not19.i200, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i198
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i199, i64 1
  %i.go = load i32, ptr %i.ar, align 8
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.ar, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge.i198
  %.sroa.010.1.i201 = phi ptr [ %i.gn, %bb.ai ], [ %.sroa.010.0.lcssa.i199, %.critedge.i198 ] ; 5 uses
  %.not2030.i202 = icmp eq ptr %.sroa.010.1.i201, %.sroa.083.0.copyload
  br i1 %.not2030.i202, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212, label %.lr.ph32.preheader.i203

.lr.ph32.preheader.i203:                          ; preds = %bb.aj
  %.sroa.010.136.i204 = ptrtoint ptr %.sroa.010.1.i201 to i64
  %i.gq = sub i64 %i.gg, %.sroa.010.136.i204
  %scevgep.i205 = getelementptr i8, ptr %.sroa.010.1.i201, i64 %i.gq
  br label %.lr.ph32.i206

.lr.ph32.i206:                                    ; preds = %.critedge4.i208, %.lr.ph32.preheader.i203
  %.sroa.010.231.i207 = phi ptr [ %i.gs, %.critedge4.i208 ], [ %.sroa.010.1.i201, %.lr.ph32.preheader.i203 ] ; 3 uses
  %i.gr = load i8, ptr %.sroa.010.231.i207, align 1
  switch i8 %i.gr, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212 [
    i8 9, label %.critedge4.i208
    i8 32, label %.critedge4.i208
  ]

.critedge4.i208:                                  ; preds = %.lr.ph32.i206, %.lr.ph32.i206
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i207, i64 1 ; 2 uses
  %.not20.i209 = icmp eq ptr %i.gs, %.sroa.083.0.copyload
  br i1 %.not20.i209, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212, label %.lr.ph32.i206, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212: ; preds = %.lr.ph32.i206, %.critedge4.i208, %bb.ah, %bb.aj
  %.sroa.010.3.i194 = phi ptr [ %.sroa.084.0.copyload, %bb.ah ], [ %.sroa.010.1.i201, %bb.aj ], [ %.sroa.010.231.i207, %.lr.ph32.i206 ], [ %scevgep.i205, %.critedge4.i208 ]
  store ptr %.sroa.010.3.i194, ptr %i.ae, align 8
  br label %bb.hl

bb.ak:                                            ; preds = %bb.b, %bb.b
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store ptr %i.gt, ptr %i.ae, align 8
  %i.gu = load i8, ptr %i.gt, align 1
  switch i8 %i.gu, label %bb.ax [
    i8 115, label %bb.al
    i8 105, label %bb.aq
    i8 101, label %bb.av
    i8 111, label %bb.aw
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 5 uses
  store ptr %i.gv, ptr %i.ae, align 8
  %i.gw = load ptr, ptr %i.ap, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 64
  %i.gy = load ptr, ptr %i.gx, align 8            ; 2 uses
  %.not144 = icmp eq ptr %i.gy, null
  br i1 %.not144, label %bb.ax, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 20632
  %i.ha = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.hc = icmp eq ptr %i.gv, %i.bh
  %i.hd = icmp eq ptr %i.gv, %i.hb
  %.0.i6.i.i.i215 = select i1 %i.hc, i1 true, i1 %i.hd
  br i1 %.0.i6.i.i.i215, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader, label %.lr.ph.i.i.i216

.lr.ph.i.i.i216:                                  ; preds = %bb.am, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218
  %.sroa.0.07.i.i.i217 = phi ptr [ %i.hf, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218 ], [ %i.gv, %bb.am ] ; 3 uses
  %i.he = load i8, ptr %.sroa.0.07.i.i.i217, align 1
  switch i8 %i.he, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218:        ; preds = %.lr.ph.i.i.i216, %.lr.ph.i.i.i216
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i217, i64 1 ; 4 uses
  %i.hg = icmp eq ptr %i.hf, %i.bh
  %i.hh = icmp eq ptr %i.hf, %i.hb
  %.0.i.i.i.i219 = select i1 %i.hg, i1 true, i1 %i.hh
  br i1 %.0.i.i.i.i219, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader, label %.lr.ph.i.i.i216, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218, %.lr.ph.i.i.i216, %bb.am
  %.sroa.0.0.i.i222.ph = phi ptr [ %i.gv, %bb.am ], [ %.sroa.0.07.i.i.i217, %.lr.ph.i.i.i216 ], [ %i.hf, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i218 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220: ; preds = %bb.ao, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader
  %.sroa.0.0.i.i222 = phi ptr [ %.sroa.0.0.i.i222.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader ], [ %i.hu, %bb.ao ] ; 13 uses
  %.0.i.i223 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.preheader ], [ %i.ht, %bb.ao ] ; 11 uses
  %i.hi = load i8, ptr %.sroa.0.0.i.i222, align 1 ; 2 uses
  switch i8 %i.hi, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220
  %i.hj = icmp eq ptr %.sroa.0.0.i.i222, %i.bh
  %i.hk = icmp eq ptr %.sroa.0.0.i.i222, %i.hb
  %.0.i.i.i229 = select i1 %i.hj, i1 true, i1 %i.hk
  br i1 %.0.i.i.i229, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224, label %bb.an

bb.an:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.0.i.i223
  store i8 %i.hi, ptr %i.hl, align 1
  %i.hm = icmp eq i64 %.0.i.i223, 2046
  br i1 %i.hm, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1: ; preds = %bb.an
  %i.hn = or disjoint i64 %.0.i.i223, 1           ; 8 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i222, i64 1 ; 10 uses
  %i.hp = load i8, ptr %i.ho, align 1             ; 2 uses
  switch i8 %i.hp, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1
  %i.hq = icmp eq ptr %i.ho, %i.bh
  %i.hr = icmp eq ptr %i.ho, %i.hb
  %.0.i.i.i229.1 = select i1 %i.hq, i1 true, i1 %i.hr
  br i1 %.0.i.i.i229.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224, label %bb.ao

bb.ao:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hn
  store i8 %i.hp, ptr %i.hs, align 1
  %i.ht = add nuw nsw i64 %.0.i.i223, 2
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i222, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1, %bb.an, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220
  %.sroa.0.0.i.i222.lcssa = phi ptr [ %.sroa.0.0.i.i222, %bb.an ], [ %.sroa.0.0.i.i222, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.sroa.0.0.i.i222, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %i.ho, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.ho, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.ho, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.ho, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.ho, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.ho, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.ho, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1 ]
  %.1.i.i225 = phi i64 [ 2047, %bb.an ], [ %.0.i.i223, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %.0.i.i223, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220 ], [ %i.hn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hn, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i220.1 ], [ %i.hn, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i228.1 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.1.i.i225
  store i8 0, ptr %i.hv, align 1
  store ptr %.sroa.0.0.i.i222.lcssa, ptr %i.ae, align 8
  %i.hw = load ptr, ptr %i.aq, align 8            ; 2 uses
  %char0.i226 = load i8, ptr %i.hw, align 1
  %i.hx = icmp eq i8 %char0.i226, 0
  br i1 %i.hx, label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit230, label %bb.ap

bb.ap:                                            ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #22
  store float 0.000000e+00, ptr %i.ab, align 4
  %i.hy = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.hw, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, i1 noundef zeroext true) ; 0 uses
  %i.hz = load float, ptr %i.ab, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #22
  br label %_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit230

_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf.exit230: ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224, %bb.ap
  %storemerge.i227 = phi float [ %i.hz, %bb.ap ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i224 ]
  store float %storemerge.i227, ptr %i.gz, align 4
  br label %bb.ax

bb.aq:                                            ; preds = %bb.ak
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 5 uses
  store ptr %i.ia, ptr %i.ae, align 8
  %i.ib = load ptr, ptr %i.ap, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %.not143 = icmp eq ptr %i.id, null
  br i1 %.not143, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 20640
  %i.if = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.ig = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 4 uses
  %i.ih = icmp eq ptr %i.ia, %i.bh
  %i.ii = icmp eq ptr %i.ia, %i.ig
  %.0.i6.i.i.i233 = select i1 %i.ih, i1 true, i1 %i.ii
  br i1 %.0.i6.i.i.i233, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader, label %.lr.ph.i.i.i234

.lr.ph.i.i.i234:                                  ; preds = %bb.ar, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236
  %.sroa.0.07.i.i.i235 = phi ptr [ %i.ik, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236 ], [ %i.ia, %bb.ar ] ; 3 uses
  %i.ij = load i8, ptr %.sroa.0.07.i.i.i235, align 1
  switch i8 %i.ij, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236:        ; preds = %.lr.ph.i.i.i234, %.lr.ph.i.i.i234
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i235, i64 1 ; 4 uses
  %i.il = icmp eq ptr %i.ik, %i.bh
  %i.im = icmp eq ptr %i.ik, %i.ig
  %.0.i.i.i.i237 = select i1 %i.il, i1 true, i1 %i.im
  br i1 %.0.i.i.i.i237, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader, label %.lr.ph.i.i.i234, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236, %.lr.ph.i.i.i234, %bb.ar
  %.sroa.0.0.i.i240.ph = phi ptr [ %i.ia, %bb.ar ], [ %.sroa.0.07.i.i.i235, %.lr.ph.i.i.i234 ], [ %i.ik, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i236 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238: ; preds = %bb.at, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader
  %.sroa.0.0.i.i240 = phi ptr [ %.sroa.0.0.i.i240.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader ], [ %i.iz, %bb.at ] ; 13 uses
  %.0.i.i241 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.preheader ], [ %i.iy, %bb.at ] ; 11 uses
  %i.in = load i8, ptr %.sroa.0.0.i.i240, align 1 ; 2 uses
  switch i8 %i.in, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246:  ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238
  %i.io = icmp eq ptr %.sroa.0.0.i.i240, %i.bh
  %i.ip = icmp eq ptr %.sroa.0.0.i.i240, %i.ig
  %.0.i.i.i247 = select i1 %i.io, i1 true, i1 %i.ip
  br i1 %.0.i.i.i247, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242, label %bb.as

bb.as:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 %.0.i.i241
  store i8 %i.in, ptr %i.iq, align 1
  %i.ir = icmp eq i64 %.0.i.i241, 2046
  br i1 %i.ir, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1: ; preds = %bb.as
  %i.is = or disjoint i64 %.0.i.i241, 1           ; 8 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i240, i64 1 ; 10 uses
  %i.iu = load i8, ptr %i.it, align 1             ; 2 uses
  switch i8 %i.iu, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i238.1
  %i.iv = icmp eq ptr %i.it, %i.bh
  %i.iw = icmp eq ptr %i.it, %i.ig
  %.0.i.i.i247.1 = select i1 %i.iv, i1 true, i1 %i.iw
  br i1 %.0.i.i.i247.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit.i242, label %bb.at

bb.at:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i246.1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.is
  store i8 %i.iu, ptr %i.ix, align 1
  %i.iy = add nuw nsw i64 %.0.i.i241, 2
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i240, i64 2
end_hunk_0
begin_hunk_1_@_ZN6Assimp18ObjFileMtlImporter4loadEv:bb.a
  br i1 %i.bge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1030, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1028

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1028: ; preds = %bb.hh
  %i.bgf = load i64, ptr %i.aj, align 8
  %i.bgg = add i64 %i.bgf, 1
  call void @_ZdlPvm(ptr noundef %i.bgd, i64 noundef %i.bgg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1030

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1030: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1028, %bb.gp
  %.pn.pn = phi { ptr, i32 } [ %i.bct, %bb.gp ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1028 ], [ %.pn, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.hm

bb.hi:                                            ; preds = %bb.b
  %i.bgh = ptrtoint ptr %i.bh to i64
  %.not.i1031 = icmp ult ptr %i.bi, %i.bh
  br i1 %.not.i1031, label %.preheader.i1033, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050

.preheader.i1033:                                 ; preds = %bb.hi
  %i.bgi = getelementptr inbounds i8, ptr %i.bh, i64 -1 ; 2 uses
  %i.bgj = icmp eq ptr %i.bi, %i.bgi
  br i1 %i.bgj, label %.critedge.i1036, label %.lr.ph.i1034

.lr.ph.i1034:                                     ; preds = %.preheader.i1033, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048
  %.sroa.010.021.i1035 = phi ptr [ %i.bgl, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048 ], [ %i.bi, %.preheader.i1033 ] ; 6 uses
  %i.bgk = load i8, ptr %.sroa.010.021.i1035, align 1
  switch i8 %i.bgk, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048 [
    i8 13, label %.critedge.i1036
    i8 10, label %.critedge.i1036
    i8 0, label %.critedge.i1036
    i8 12, label %.critedge.i1036
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048:           ; preds = %.lr.ph.i1034
  %i.bgl = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i1035, i64 1 ; 4 uses
  %i.bgm = icmp eq ptr %i.bgl, %i.bh
  %i.bgn = icmp eq ptr %i.bgl, %i.bgi
  %.0.i.i1049 = or i1 %i.bgm, %i.bgn
  br i1 %.0.i.i1049, label %.critedge.i1036, label %.lr.ph.i1034, !llvm.loop !9

.critedge.i1036:                                  ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048, %.lr.ph.i1034, %.lr.ph.i1034, %.lr.ph.i1034, %.lr.ph.i1034, %.preheader.i1033
  %.sroa.010.0.lcssa.i1037 = phi ptr [ %i.bi, %.preheader.i1033 ], [ %i.bgl, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i1048 ], [ %.sroa.010.021.i1035, %.lr.ph.i1034 ], [ %.sroa.010.021.i1035, %.lr.ph.i1034 ], [ %.sroa.010.021.i1035, %.lr.ph.i1034 ], [ %.sroa.010.021.i1035, %.lr.ph.i1034 ] ; 3 uses
  %.not19.i1038 = icmp eq ptr %.sroa.010.0.lcssa.i1037, %i.bh
  br i1 %.not19.i1038, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %.critedge.i1036
  %i.bgo = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i1037, i64 1
  %i.bgp = load i32, ptr %i.ar, align 8
  %i.bgq = add i32 %i.bgp, 1
  store i32 %i.bgq, ptr %i.ar, align 8
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %.critedge.i1036
  %.sroa.010.1.i1039 = phi ptr [ %i.bgo, %bb.hj ], [ %.sroa.010.0.lcssa.i1037, %.critedge.i1036 ] ; 5 uses
  %.not2030.i1040 = icmp eq ptr %.sroa.010.1.i1039, %i.bh
  br i1 %.not2030.i1040, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050, label %.lr.ph32.preheader.i1041

.lr.ph32.preheader.i1041:                         ; preds = %bb.hk
  %.sroa.010.136.i1042 = ptrtoint ptr %.sroa.010.1.i1039 to i64
  %i.bgr = sub i64 %i.bgh, %.sroa.010.136.i1042
  %scevgep.i1043 = getelementptr i8, ptr %.sroa.010.1.i1039, i64 %i.bgr
  br label %.lr.ph32.i1044

.lr.ph32.i1044:                                   ; preds = %.critedge4.i1046, %.lr.ph32.preheader.i1041
  %.sroa.010.231.i1045 = phi ptr [ %i.bgt, %.critedge4.i1046 ], [ %.sroa.010.1.i1039, %.lr.ph32.preheader.i1041 ] ; 3 uses
  %i.bgs = load i8, ptr %.sroa.010.231.i1045, align 1
  switch i8 %i.bgs, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050 [
    i8 9, label %.critedge4.i1046
    i8 32, label %.critedge4.i1046
  ]

.critedge4.i1046:                                 ; preds = %.lr.ph32.i1044, %.lr.ph32.i1044
  %i.bgt = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i1045, i64 1 ; 2 uses
  %.not20.i1047 = icmp eq ptr %i.bgt, %i.bh
  br i1 %.not20.i1047, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050, label %.lr.ph32.i1044, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050: ; preds = %.lr.ph32.i1044, %.critedge4.i1046, %bb.hi, %bb.hk
  %.sroa.010.3.i1032 = phi ptr [ %i.bi, %bb.hi ], [ %.sroa.010.1.i1039, %bb.hk ], [ %.sroa.010.231.i1045, %.lr.ph32.i1044 ], [ %scevgep.i1043, %.critedge4.i1046 ]
  store ptr %.sroa.010.3.i1032, ptr %i.ae, align 8
  br label %bb.hl

bb.hl:                                            ; preds = %bb.ac, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit212, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit1050, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1027, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit712, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit574, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit448, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit385, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit268, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit174, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit
  %i.bgu = load ptr, ptr %i.ae, align 8           ; 2 uses
  %i.bgv = load ptr, ptr %i.af, align 8           ; 2 uses
  %.not1073 = icmp eq ptr %i.bgu, %i.bgv
  br i1 %.not1073, label %.loopexit, label %bb.b, !llvm.loop !61

.loopexit:                                        ; preds = %bb.hl, %bb.a
  ret void

bb.hm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1030, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428
  %.pn133.pn.pn = phi { ptr, i32 } [ %.pn133.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428 ], [ %.pn130.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit537 ], [ %.pn127.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715 ], [ %.pn124.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit901 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1030 ]
  resume { ptr, i32 } %.pn133.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp18ObjFileMtlImporter12getColorRGBAEP9aiColor3D(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca [1024 x i8], align 16             ; 7 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca [1024 x i8], align 16             ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.g, align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.06.0.copyload = load ptr, ptr %i.h, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  %i.i = getelementptr inbounds i8, ptr %.sroa.06.0.copyload, i64 -1 ; 4 uses
  %i.j = icmp eq ptr %.sroa.07.0.copyload, %.sroa.06.0.copyload
  %i.k = icmp eq ptr %.sroa.07.0.copyload, %i.i
  %.0.i6.i.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i6.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i ], [ %.sroa.07.0.copyload, %bb.a ] ; 3 uses
  %i.l = load i8, ptr %.sroa.0.07.i.i.i, align 1
  switch i8 %i.l, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i:           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 1 ; 4 uses
  %i.n = icmp eq ptr %i.m, %.sroa.06.0.copyload
  %i.o = icmp eq ptr %i.m, %i.i
  %.0.i.i.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %.0.i.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader, label %.lr.ph.i.i.i, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i, %.lr.ph.i.i.i, %bb.a
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.07.0.copyload, %bb.a ], [ %.sroa.0.07.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i: ; preds = %bb.c, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader ], [ %i.ab, %bb.c ] ; 13 uses
  %.0.i.i = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.preheader ], [ %i.aa, %bb.c ] ; 11 uses
  %i.p = load i8, ptr %.sroa.0.0.i.i, align 1     ; 2 uses
  switch i8 %i.p, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i [
    i8 32, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 9, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 13, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 10, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 0, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 12, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i:     ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i
  %i.q = icmp eq ptr %.sroa.0.0.i.i, %.sroa.06.0.copyload
  %i.r = icmp eq ptr %.sroa.0.0.i.i, %i.i
  %.0.i.i.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %.0.i.i.i, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0.i.i
  store i8 %i.p, ptr %i.s, align 2
  %i.t = icmp eq i64 %.0.i.i, 1022
  br i1 %i.t, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1: ; preds = %bb.b
  %i.u = or disjoint i64 %.0.i.i, 1               ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1 ; 10 uses
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  switch i8 %i.w, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 [
    i8 32, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 9, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 13, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 10, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 0, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
    i8 12, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1:   ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1
  %i.x = icmp eq ptr %i.v, %.sroa.06.0.copyload
  %i.y = icmp eq ptr %i.v, %i.i
  %.0.i.i.i.1 = select i1 %i.x, i1 true, i1 %i.y
  br i1 %.0.i.i.i.1, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  store i8 %i.w, ptr %i.z, align 1
  %i.aa = add nuw nsw i64 %.0.i.i, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, !llvm.loop !12

_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i, %bb.b
  %.sroa.0.0.i.i.lcssa = phi ptr [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.sroa.0.0.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ %.sroa.0.0.i.i, %bb.b ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.v, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 ]
  %.1.i.i = phi i64 [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i ], [ %.0.i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ 1023, %bb.b ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i.1 ], [ %i.u, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i.1 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1.i.i
  store i8 0, ptr %i.ac, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store float 0.000000e+00, ptr %i.e, align 4
  %i.ad = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i1 noundef zeroext true) ; 0 uses
  %i.ae = load float, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  store ptr %.sroa.0.0.i.i.lcssa, ptr %i.g, align 8
  store float %i.ae, ptr %1, align 4
  %i.af = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %2 = icmp ult i8 %i.ag, 14
  %switch.maskindex = zext nneg i8 %i.ag to i16
  %switch.shifted = lshr i16 13313, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %2, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit
  %.sroa.03.0.copyload = load ptr, ptr %i.h, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false)
  %i.ah = getelementptr inbounds i8, ptr %.sroa.03.0.copyload, i64 -1 ; 4 uses
  %i.ai = icmp eq ptr %i.af, %.sroa.03.0.copyload
  %i.aj = icmp eq ptr %i.af, %i.ah
  %.0.i6.i.i.i12 = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %.0.i6.i.i.i12, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15
  %.sroa.0.07.i.i.i14 = phi ptr [ %i.al, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15 ], [ %i.af, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 3 uses
  %i.ak = load i8, ptr %.sroa.0.07.i.i.i14, align 1
  switch i8 %i.ak, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15:         ; preds = %.lr.ph.i.i.i13, %.lr.ph.i.i.i13
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i14, i64 1 ; 4 uses
  %i.am = icmp eq ptr %i.al, %.sroa.03.0.copyload
  %i.an = icmp eq ptr %i.al, %i.ah
  %.0.i.i.i.i16 = select i1 %i.am, i1 true, i1 %i.an
  br i1 %.0.i.i.i.i16, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader, label %.lr.ph.i.i.i13, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15, %.lr.ph.i.i.i13, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.sroa.0.0.i.i19.ph = phi ptr [ %i.af, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.sroa.0.07.i.i.i14, %.lr.ph.i.i.i13 ], [ %i.al, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i15 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17: ; preds = %bb.e, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader
  %.sroa.0.0.i.i19 = phi ptr [ %.sroa.0.0.i.i19.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader ], [ %i.ba, %bb.e ] ; 13 uses
  %.0.i.i20 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.preheader ], [ %i.az, %bb.e ] ; 11 uses
  %i.ao = load i8, ptr %.sroa.0.0.i.i19, align 1  ; 2 uses
  switch i8 %i.ao, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22 [
    i8 32, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 9, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 13, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 10, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 0, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 12, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22:   ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17
  %i.ap = icmp eq ptr %.sroa.0.0.i.i19, %.sroa.03.0.copyload
  %i.aq = icmp eq ptr %.sroa.0.0.i.i19, %i.ah
  %.0.i.i.i23 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.0.i.i.i23, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.i.i20
  store i8 %i.ao, ptr %i.ar, align 2
  %i.as = icmp eq i64 %.0.i.i20, 1022
  br i1 %i.as, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1: ; preds = %bb.d
  %i.at = or disjoint i64 %.0.i.i20, 1            ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i19, i64 1 ; 10 uses
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  switch i8 %i.av, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22.1 [
    i8 32, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 9, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 13, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 10, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 0, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
    i8 12, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1
  %i.aw = icmp eq ptr %i.au, %.sroa.03.0.copyload
  %i.ax = icmp eq ptr %i.au, %i.ah
  %.0.i.i.i23.1 = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %.0.i.i.i23.1, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22.1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.at
  store i8 %i.av, ptr %i.ay, align 1
  %i.az = add nuw nsw i64 %.0.i.i20, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i19, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17, !llvm.loop !12

_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22, %bb.d
  %.sroa.0.0.i.i19.lcssa = phi ptr [ %.sroa.0.0.i.i19, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.sroa.0.0.i.i19, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.sroa.0.0.i.i19, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.sroa.0.0.i.i19, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.sroa.0.0.i.i19, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.sroa.0.0.i.i19, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.sroa.0.0.i.i19, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22 ], [ %.sroa.0.0.i.i19, %bb.d ], [ %i.au, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.au, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.au, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.au, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.au, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.au, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.au, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22.1 ] ; 5 uses
  %.1.i.i21 = phi i64 [ %.0.i.i20, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.0.i.i20, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.0.i.i20, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.0.i.i20, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.0.i.i20, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.0.i.i20, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17 ], [ %.0.i.i20, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22 ], [ 1023, %bb.d ], [ %i.at, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.at, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.at, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.at, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.at, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.at, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i17.1 ], [ %i.at, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i22.1 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.i.i21
  store i8 0, ptr %i.bb, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store float 0.000000e+00, ptr %i.c, align 4
  %i.bc = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true) ; 0 uses
  %i.bd = load float, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  store ptr %.sroa.0.0.i.i19.lcssa, ptr %i.g, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.h, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  %i.be = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 4 uses
  %i.bf = icmp eq ptr %.sroa.0.0.i.i19.lcssa, %.sroa.0.0.copyload
  %i.bg = icmp eq ptr %.sroa.0.0.i.i19.lcssa, %i.be
  %.0.i6.i.i.i25 = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %.0.i6.i.i.i25, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.preheader, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i28
  %.sroa.0.07.i.i.i27 = phi ptr [ %i.bi, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i28 ], [ %.sroa.0.0.i.i19.lcssa, %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24 ] ; 3 uses
  %i.bh = load i8, ptr %.sroa.0.07.i.i.i27, align 1
  switch i8 %i.bh, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i28
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i28
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i28:         ; preds = %.lr.ph.i.i.i26, %.lr.ph.i.i.i26
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i27, i64 1 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, %.sroa.0.0.copyload
  %i.bk = icmp eq ptr %i.bi, %i.be
  %.0.i.i.i.i29 = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %.0.i.i.i.i29, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.preheader, label %.lr.ph.i.i.i26, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i28, %.lr.ph.i.i.i26, %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24
  %.sroa.0.0.i.i32.ph = phi ptr [ %.sroa.0.0.i.i19.lcssa, %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit24 ], [ %.sroa.0.07.i.i.i27, %.lr.ph.i.i.i26 ], [ %i.bi, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i.i28 ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30: ; preds = %bb.g, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.preheader
  %.sroa.0.0.i.i32 = phi ptr [ %.sroa.0.0.i.i32.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.preheader ], [ %i.bx, %bb.g ] ; 13 uses
  %.0.i.i33 = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.preheader ], [ %i.bw, %bb.g ] ; 11 uses
  %i.bl = load i8, ptr %.sroa.0.0.i.i32, align 1  ; 2 uses
  switch i8 %i.bl, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35 [
    i8 32, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
    i8 9, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
    i8 13, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
    i8 10, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
    i8 0, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
    i8 12, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35:   ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30
  %i.bm = icmp eq ptr %.sroa.0.0.i.i32, %.sroa.0.0.copyload
  %i.bn = icmp eq ptr %.sroa.0.0.i.i32, %i.be
  %.0.i.i.i36 = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %.0.i.i.i36, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i.i33
  store i8 %i.bl, ptr %i.bo, align 2
  %i.bp = icmp eq i64 %.0.i.i33, 1022
  br i1 %i.bp, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1: ; preds = %bb.f
  %i.bq = or disjoint i64 %.0.i.i33, 1            ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i32, i64 1 ; 10 uses
  %i.bs = load i8, ptr %i.br, align 1             ; 2 uses
  switch i8 %i.bs, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35.1 [
    i8 32, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
    i8 9, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
    i8 13, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
    i8 10, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
    i8 0, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
    i8 12, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35.1: ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1
  %i.bt = icmp eq ptr %i.br, %.sroa.0.0.copyload
  %i.bu = icmp eq ptr %i.br, %i.be
  %.0.i.i.i36.1 = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %.0.i.i.i36.1, label %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37, label %bb.g

bb.g:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35.1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bq
  store i8 %i.bs, ptr %i.bv, align 1
  %i.bw = add nuw nsw i64 %.0.i.i33, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i32, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30, !llvm.loop !12

_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35, %bb.f
  %.sroa.0.0.i.i32.lcssa = phi ptr [ %.sroa.0.0.i.i32, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.sroa.0.0.i.i32, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.sroa.0.0.i.i32, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.sroa.0.0.i.i32, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.sroa.0.0.i.i32, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.sroa.0.0.i.i32, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.sroa.0.0.i.i32, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35 ], [ %.sroa.0.0.i.i32, %bb.f ], [ %i.br, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.br, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.br, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.br, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.br, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.br, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.br, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35.1 ]
  %.1.i.i34 = phi i64 [ %.0.i.i33, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.0.i.i33, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.0.i.i33, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.0.i.i33, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.0.i.i33, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.0.i.i33, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30 ], [ %.0.i.i33, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35 ], [ 1023, %bb.f ], [ %i.bq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.bq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.bq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.bq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.bq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.bq, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.i30.1 ], [ %i.bq, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i35.1 ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i.i34
  store i8 0, ptr %i.by, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store float 0.000000e+00, ptr %i.a, align 4
  %i.bz = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.ca = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  store ptr %.sroa.0.0.i.i32.lcssa, ptr %i.g, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread:          ; preds = %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit, %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37
  %.040 = phi float [ %i.bd, %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37 ], [ 0.000000e+00, %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit ]
  %.0 = phi float [ %i.ca, %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit37 ], [ 0.000000e+00, %_ZN6Assimp8getFloatIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rf.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %.040, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.0, ptr %i.cc, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp18ObjFileMtlImporter13getFloatValueERf(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.b, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 4 uses
  %i.g = icmp eq ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  %i.h = icmp eq ptr %.sroa.01.0.copyload, %i.f
  %.0.i6.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %.0.i6.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.j, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.01.0.copyload, %bb.a ] ; 3 uses
  %i.i = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.k = icmp eq ptr %i.j, %.sroa.0.0.copyload
  %i.l = icmp eq ptr %i.j, %i.f
  %.0.i.i.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %.0.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader, label %.lr.ph.i.i, !llvm.loop !11

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.01.0.copyload, %bb.a ], [ %i.j, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.0.07.i.i, %.lr.ph.i.i ]
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %bb.c, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.i.ph, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader ], [ %i.y, %bb.c ] ; 13 uses
  %.0.i = phi i64 [ 0, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.preheader ], [ %i.x, %bb.c ] ; 11 uses
  %i.m = load i8, ptr %.sroa.0.0.i, align 1       ; 2 uses
  switch i8 %i.m, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.n = icmp eq ptr %.sroa.0.0.i, %.sroa.0.0.copyload
  %i.o = icmp eq ptr %.sroa.0.0.i, %i.f
  %.0.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %.0.i.i, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.i
  store i8 %i.m, ptr %i.p, align 1
  %i.q = icmp eq i64 %.0.i, 2046
  br i1 %i.q, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1: ; preds = %bb.b
  %i.r = or disjoint i64 %.0.i, 1                 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 10 uses
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  switch i8 %i.t, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 [
    i8 32, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 9, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 13, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 10, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 0, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
    i8 12, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1:     ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1
  %i.u = icmp eq ptr %i.s, %.sroa.0.0.copyload
  %i.v = icmp eq ptr %i.s, %i.f
  %.0.i.i.1 = select i1 %i.u, i1 true, i1 %i.v
  br i1 %.0.i.i.1, label %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.r
  store i8 %i.t, ptr %i.w, align 1
  %i.x = add nuw nsw i64 %.0.i, 2
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  br label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, !llvm.loop !12

_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %bb.b
  %.sroa.0.0.i.lcssa = phi ptr [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.0.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ %.sroa.0.0.i, %bb.b ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.s, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 ]
  %.1.i = phi i64 [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.0.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ 2047, %bb.b ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i.1 ], [ %i.r, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %.1.i
  store i8 0, ptr %i.z, align 1
  store ptr %.sroa.0.0.i.lcssa, ptr %i.b, align 8
  %i.aa = load ptr, ptr %i.d, align 8             ; 2 uses
  %char0 = load i8, ptr %i.aa, align 1
  %i.ab = icmp eq i8 %char0, 0
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store float 0.000000e+00, ptr %i.a, align 4
  %i.ac = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.ad = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit, %bb.d
  %storemerge = phi float [ %i.ad, %bb.d ], [ 0.000000e+00, %_ZN6Assimp12CopyNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_S3_m.exit ]
  store float %storemerge, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp18ObjFileMtlImporter10getTextureEv(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 -1, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(20776) ptr @_Znwm(i64 noundef 20776) #23 ; 24 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20580
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20776) %i.i, i8 0, i64 20560, i1 false)
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.000000e-01>, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 20596
  store <2 x float> splat (float 6.000000e-01), ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 20604
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 20628
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 20636
  store i32 1, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 20640
  store <4 x float> splat (float 1.000000e+00), ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 20660
  store i8 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 20668
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 20676
  store i8 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 20680
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.s, i8 0, i64 13, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 20700
  store i8 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 20708
  store i8 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 20716
  store i8 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 20724
  store i8 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 20732
  store i8 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 20740
  store i8 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 20744
  store float 0.000000e+00, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 20752
  store i8 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 20760
  store i8 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 20768
  store i8 0, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 20772
  store float 1.000000e+00, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 20560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ae, i8 0, i64 20, i1 false)
  store ptr %i.i, ptr %i.f, align 8
  %i.af = load ptr, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.ai, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ai, ptr noundef nonnull align 1 dereferenceable(14) @.str.25, i64 14, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 14, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 0, ptr %i.ak, align 2
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_:bb.a
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !151

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #22 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, Assimp::ObjFile::Material *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, Assimp::ObjFile::Material *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %0, ptr %5, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #23 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load i64, ptr %3, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.b, align 8
  %i.m = load i64, ptr %i.g, align 8
  store i64 %i.m, ptr %i.e, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.n, ptr %i.q, align 8
  store ptr %i.g, ptr %i.d, align 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.r, align 8
  store ptr %i.a, ptr %i.o, align 8
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 5 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.q, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.x) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.af = sub i64 %i.x, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.ah = phi i1 [ %i.ag, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.al

bb.h:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8: ; preds = %bb.h
  %i.ao = load i64, ptr %i.e, align 8
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i
  %.sroa.0.011 = phi ptr [ %i.a, %.thread ], [ %i.t, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret ptr %.sroa.0.011
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!7 = distinct !{!7, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"branch_weights", i32 4, i32 28}
!18 = distinct !{!18, !4, !15, !16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !4, !15}
!22 = distinct !{!22, !4, !15, !16}
!23 = distinct !{!23, !4, !15, !16}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !4, !15}
!26 = distinct !{null}
!27 = distinct !{!27, !4, !15, !16}
!28 = distinct !{!28, !4, !15, !16}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !4, !15}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0:thread"}
!33 = distinct !{!33, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4, !15, !16}
!38 = distinct !{!38, !4, !15, !16}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !4, !15}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0:thread"}
!43 = distinct !{!43, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0:thread"}
!48 = distinct !{!48, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!51 = distinct !{!51, !4, !15, !16}
!52 = distinct !{!52, !4, !15, !16}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !4, !15}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!57 = distinct !{!57, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!60 = distinct !{!60, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!61 = distinct !{!61, !4}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!66 = distinct !{!66, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!67 = !{!68, !65}
!68 = distinct !{!68, !69, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!69 = distinct !{!69, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!70 = distinct !{!70, !4}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!73 = distinct !{!73, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!74 = distinct !{!74, !4}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!77 = distinct !{!77, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!78 = distinct !{!78, !4}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv: argument 0"}
!81 = distinct !{!81, !"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEZ13ai_trim_rightRS9_EUlhE_ET_SE_SE_T0_: argument 0"}
!84 = distinct !{!84, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEZ13ai_trim_rightRS9_EUlhE_ET_SE_SE_T0_"}
!85 = !{!86, !83}
!86 = distinct !{!86, !87, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_: argument 0"}
!87 = distinct !{!87, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!90 = distinct !{!90, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!91 = distinct !{!91, !4}
!92 = distinct !{!92, !4}
!93 = distinct !{!93, !4}
!94 = distinct !{!94, !4}
!95 = distinct !{!95, !4}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!101 = !{!97, !100}
!102 = distinct !{!102, !4}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!105 = distinct !{!105, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!108 = !{!104, !107}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!111 = distinct !{!111, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!114 = distinct !{!114, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!117 = distinct !{!117, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!120 = distinct !{!120, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!121 = !{!119, !116, !113, !110}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!124 = distinct !{!124, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!127 = distinct !{!127, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!130 = distinct !{!130, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!131 = !{!129, !126, !123}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc: argument 0"}
!134 = distinct !{!134, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!135 = distinct !{!135, !4}
!136 = distinct !{!136, !4}
!137 = distinct !{!137, !4}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!140 = distinct !{!140, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!143 = distinct !{!143, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!146 = distinct !{!146, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!149 = distinct !{!149, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!150 = !{!148, !145, !142, !139}
!151 = distinct !{!151, !4}
end_hunk_2
