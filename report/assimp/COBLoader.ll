inline.NumInlined: 2278
inline.NumDeleted: 956
begin_hunk_0_@_ZN6Assimp11COBImporter23ReadBasicNodeInfo_AsciiERNS_3COB4NodeERNS_12LineSplitterERKNS1_9ChunkInfoE:bb.a
  br i1 %.not9.i.i.i.i.i29, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit30.preheader, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit

_ZN6Assimp12LineSplitter11match_startEPKc.exit30.preheader: ; preds = %bb.x
  %i.fn = call noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !34, !align !35 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11COBImporter23ReadBasicNodeInfo_AsciiERNS_3COB4NodeERNS_12LineSplitterERKNS1_9ChunkInfoE:bb.a
  %i.ge = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 3 uses
  %i.gf = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %switch.idx.cast = zext nneg i32 %.0214276 to i64
  %switch.idx.mult = shl nuw nsw i64 %switch.idx.cast, 4
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %switch.idx.mult
  %.0.i = getelementptr inbounds nuw i8, ptr %5, i64 144
  store float %i.gf, ptr %.0.i, align 8
  %6 = ptrtoint ptr %i.ge to i64
  %7 = sub i64 %i.gb, %6
  %scevgep.i.i.1 = getelementptr i8, ptr %i.ge, i64 %7
  br label %bb.ab

default.unreachable5.i:                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.3
  unreachable

bb.ab:                                            ; preds = %bb.ad, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %.0.i.i.1 = phi ptr [ %i.ge, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit ], [ %i.gh, %bb.ad ] ; 4 uses
  %i.gg = load i8, ptr %.0.i.i.1, align 1
  switch i8 %i.gg, label %_ZN12aiMatrix4x4tIfEixEj.exit.1 [
    i8 32, label %bb.ac
    i8 9, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %.not.i.i.1 = icmp eq ptr %.0.i.i.1, %i.ga
  br i1 %.not.i.i.1, label %_ZN12aiMatrix4x4tIfEixEj.exit.1, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 1
  br label %bb.ab, !llvm.loop !79

_ZN12aiMatrix4x4tIfEixEj.exit.1:                  ; preds = %bb.ac, %bb.ab
  %.0.lcssa.i.i.1 = phi ptr [ %.0.i.i.1, %bb.ab ], [ %scevgep.i.i.1, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %i.a, align 4
  %8 = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i.1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 3 uses
  %9 = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %switch.idx.cast71 = zext nneg i32 %.0214276 to i64
  %switch.idx.mult72 = shl nuw nsw i64 %switch.idx.cast71, 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 %switch.idx.mult72
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 148
  store float %9, ptr %i.gi, align 4
  %i.gj = ptrtoint ptr %8 to i64
  %i.gk = sub i64 %i.gb, %i.gj
  %scevgep.i.i.2 = getelementptr i8, ptr %8, i64 %i.gk
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %_ZN12aiMatrix4x4tIfEixEj.exit.1
  %.0.i.i.2 = phi ptr [ %8, %_ZN12aiMatrix4x4tIfEixEj.exit.1 ], [ %i.gm, %bb.ag ] ; 4 uses
  %i.gl = load i8, ptr %.0.i.i.2, align 1
  switch i8 %i.gl, label %_ZN12aiMatrix4x4tIfEixEj.exit.2 [
    i8 32, label %bb.af
    i8 9, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %.not.i.i.2 = icmp eq ptr %.0.i.i.2, %i.ga
  br i1 %.not.i.i.2, label %_ZN12aiMatrix4x4tIfEixEj.exit.2, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i.i.2, i64 1
  br label %bb.ae, !llvm.loop !79

_ZN12aiMatrix4x4tIfEixEj.exit.2:                  ; preds = %bb.af, %bb.ae
  %.0.lcssa.i.i.2 = phi ptr [ %.0.i.i.2, %bb.ae ], [ %scevgep.i.i.2, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %i.a, align 4
  %11 = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 3 uses
  %12 = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %switch.idx.cast74 = zext nneg i32 %.0214276 to i64
  %switch.idx.mult75 = shl nuw nsw i64 %switch.idx.cast74, 4
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %switch.idx.mult75
  %i.gn = getelementptr inbounds nuw i8, ptr %13, i64 152
  store float %12, ptr %i.gn, align 8
  %i.go = ptrtoint ptr %11 to i64
  %i.gp = sub i64 %i.gb, %i.go
  %scevgep.i.i.3 = getelementptr i8, ptr %11, i64 %i.gp
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %_ZN12aiMatrix4x4tIfEixEj.exit.2
  %.0.i.i.3 = phi ptr [ %11, %_ZN12aiMatrix4x4tIfEixEj.exit.2 ], [ %i.gr, %bb.aj ] ; 4 uses
  %i.gq = load i8, ptr %.0.i.i.3, align 1
  switch i8 %i.gq, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.3 [
    i8 32, label %bb.ai
end_hunk_1
begin_hunk_2_@_ZN6Assimp11COBImporter23ReadBasicNodeInfo_AsciiERNS_3COB4NodeERNS_12LineSplitterERKNS1_9ChunkInfoE:bb.a
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3

_ZN12aiMatrix4x4tIfEixEj.exit.3:                  ; preds = %bb.al, %bb.ak, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.3
  %.pn.3 = phi i64 [ 176, %bb.ak ], [ 160, %bb.al ], [ 144, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.3 ]
  %.0.i.3 = getelementptr inbounds nuw i8, ptr %1, i64 %.pn.3
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i.3, i64 12
  store float %i.gt, ptr %i.gv, align 4
  %i.gw = add nuw nsw i32 %.0214276, 1
end_hunk_2
