inline.NumInlined: 2278
inline.NumDeleted: 956
begin_hunk_0_@_ZN6Assimp11COBImporter23ReadBasicNodeInfo_AsciiERNS_3COB4NodeERNS_12LineSplitterERKNS1_9ChunkInfoE:bb.a
  br i1 %.not9.i.i.i.i.i29, label %_ZN6Assimp12LineSplitter11match_startEPKc.exit30.preheader, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit

_ZN6Assimp12LineSplitter11match_startEPKc.exit30.preheader: ; preds = %bb.x
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.fn = call noundef nonnull align 8 dereferenceable(59) ptr @_ZN6Assimp12LineSplitterppEv(ptr noundef nonnull align 8 dereferenceable(59) %2)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !34, !align !35 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11COBImporter23ReadBasicNodeInfo_AsciiERNS_3COB4NodeERNS_12LineSplitterERKNS1_9ChunkInfoE:bb.a
  %i.ge = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 3 uses
  %i.gf = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  switch i32 %.0214276, label %default.unreachable5.i [
    i32 0, label %_ZN12aiMatrix4x4tIfEixEj.exit
    i32 1, label %9
    i32 2, label %10
    i32 3, label %11
  ]

9:                                                ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  br label %_ZN12aiMatrix4x4tIfEixEj.exit

10:                                               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  br label %_ZN12aiMatrix4x4tIfEixEj.exit

11:                                               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  br label %_ZN12aiMatrix4x4tIfEixEj.exit

default.unreachable5.i:                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.3, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.1, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  unreachable

_ZN12aiMatrix4x4tIfEixEj.exit:                    ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, %9, %10, %11
  %.0.i = phi ptr [ %7, %10 ], [ %6, %11 ], [ %5, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit ], [ %8, %9 ]
  store float %i.gf, ptr %.0.i, align 4
  %12 = ptrtoint ptr %i.ge to i64
  %13 = sub i64 %i.gb, %12
  %scevgep.i.i.1 = getelementptr i8, ptr %i.ge, i64 %13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %_ZN12aiMatrix4x4tIfEixEj.exit
  %.0.i.i.1 = phi ptr [ %i.ge, %_ZN12aiMatrix4x4tIfEixEj.exit ], [ %i.gh, %bb.ad ] ; 4 uses
  %i.gg = load i8, ptr %.0.i.i.1, align 1
  switch i8 %i.gg, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.1 [
    i8 32, label %bb.ac
    i8 9, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %.not.i.i.1 = icmp eq ptr %.0.i.i.1, %i.ga
  br i1 %.not.i.i.1, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.1, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 1
  br label %bb.ab, !llvm.loop !79

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.1:       ; preds = %bb.ac, %bb.ab
  %.0.lcssa.i.i.1 = phi ptr [ %.0.i.i.1, %bb.ab ], [ %scevgep.i.i.1, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %i.a, align 4
  %14 = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i.1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 3 uses
  %15 = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  switch i32 %.0214276, label %default.unreachable5.i [
    i32 0, label %_ZN12aiMatrix4x4tIfEixEj.exit.1
    i32 1, label %18
    i32 2, label %17
    i32 3, label %16
  ]

16:                                               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.1
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.1

17:                                               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.1
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.1

18:                                               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.1
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.1

_ZN12aiMatrix4x4tIfEixEj.exit.1:                  ; preds = %18, %17, %16, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.1
  %.0.i.1 = phi ptr [ %7, %17 ], [ %6, %16 ], [ %5, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.1 ], [ %8, %18 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i.1, i64 4
  store float %15, ptr %i.gi, align 4
  %i.gj = ptrtoint ptr %14 to i64
  %i.gk = sub i64 %i.gb, %i.gj
  %scevgep.i.i.2 = getelementptr i8, ptr %14, i64 %i.gk
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %_ZN12aiMatrix4x4tIfEixEj.exit.1
  %.0.i.i.2 = phi ptr [ %14, %_ZN12aiMatrix4x4tIfEixEj.exit.1 ], [ %i.gm, %bb.ag ] ; 4 uses
  %i.gl = load i8, ptr %.0.i.i.2, align 1
  switch i8 %i.gl, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.2 [
    i8 32, label %bb.af
    i8 9, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %.not.i.i.2 = icmp eq ptr %.0.i.i.2, %i.ga
  br i1 %.not.i.i.2, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.2, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i.i.2, i64 1
  br label %bb.ae, !llvm.loop !79

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.2:       ; preds = %bb.af, %bb.ae
  %.0.lcssa.i.i.2 = phi ptr [ %.0.i.i.2, %bb.ae ], [ %scevgep.i.i.2, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %i.a, align 4
  %19 = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 3 uses
  %20 = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  switch i32 %.0214276, label %default.unreachable5.i [
    i32 0, label %_ZN12aiMatrix4x4tIfEixEj.exit.2
    i32 1, label %23
    i32 2, label %22
    i32 3, label %21
  ]

21:                                               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.2
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.2

22:                                               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.2
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.2

23:                                               ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.2
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.2

_ZN12aiMatrix4x4tIfEixEj.exit.2:                  ; preds = %23, %22, %21, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.2
  %.0.i.2 = phi ptr [ %7, %22 ], [ %6, %21 ], [ %5, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.2 ], [ %8, %23 ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i.2, i64 8
  store float %20, ptr %i.gn, align 4
  %i.go = ptrtoint ptr %19 to i64
  %i.gp = sub i64 %i.gb, %i.go
  %scevgep.i.i.3 = getelementptr i8, ptr %19, i64 %i.gp
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %_ZN12aiMatrix4x4tIfEixEj.exit.2
  %.0.i.i.3 = phi ptr [ %19, %_ZN12aiMatrix4x4tIfEixEj.exit.2 ], [ %i.gr, %bb.aj ] ; 4 uses
  %i.gq = load i8, ptr %.0.i.i.3, align 1
  switch i8 %i.gq, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.3 [
    i8 32, label %bb.ai
end_hunk_1
begin_hunk_2_@_ZN6Assimp11COBImporter23ReadBasicNodeInfo_AsciiERNS_3COB4NodeERNS_12LineSplitterERKNS1_9ChunkInfoE:bb.a
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3

_ZN12aiMatrix4x4tIfEixEj.exit.3:                  ; preds = %bb.al, %bb.ak, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.3
  %.0.i.3 = phi ptr [ %7, %bb.ak ], [ %8, %bb.al ], [ %5, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.3 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i.3, i64 12
  store float %i.gt, ptr %i.gv, align 4
  %i.gw = add nuw nsw i32 %.0214276, 1
end_hunk_2
