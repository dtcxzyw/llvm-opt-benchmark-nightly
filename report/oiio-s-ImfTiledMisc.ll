begin_hunk_0

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_119calculateNumYLevelsERKNS_15TileDescriptionEiiii.exit: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_119calculateNumXLevelsERKNS_15TileDescriptionEiiii.exit.thread, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19roundLog2EiNS_17LevelRoundingModeE.exit.i43, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19roundLog2EiNS_17LevelRoundingModeE.exit22.i30
  %.val2966 = phi i32 [ %.val29, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19roundLog2EiNS_17LevelRoundingModeE.exit22.i30 ], [ %.val2969, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19roundLog2EiNS_17LevelRoundingModeE.exit.i43 ], [ %.val2965, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_119calculateNumXLevelsERKNS_15TileDescriptionEiiii.exit.thread ] ; [#uses=2 type=i32]
  %.0.i31 = phi i32 [ %80, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19roundLog2EiNS_17LevelRoundingModeE.exit22.i30 ], [ %62, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_19roundLog2EiNS_17LevelRoundingModeE.exit.i43 ], [ 1, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_119calculateNumXLevelsERKNS_15TileDescriptionEiiii.exit.thread ] ; [#uses=1 type=i32]
  %.0.i31.fr = freeze i32 %.0.i31                 ; [#uses=4 type=i32]
  store i32 %.0.i31.fr, ptr %8, align 4, !tbaa !3
  %81 = load i32, ptr %7, align 4, !tbaa !3       ; [#uses=4 type=i32]
  %82 = sext i32 %81 to i64                       ; [#uses=1 type=i64]
  %83 = icmp slt i32 %81, 0                       ; [#uses=1 type=i1]
end_hunk_0
begin_hunk_1
  %85 = select i1 %83, i64 -1, i64 %84            ; [#uses=1 type=i64]
  %86 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %85) #14 ; [#uses=1 type=ptr]
  store ptr %86, ptr %5, align 8, !tbaa !37
  %87 = zext nneg i32 %.0.i31.fr to i64           ; [#uses=1 type=i64]
  %88 = icmp slt i32 %.0.i31.fr, 0                ; [#uses=1 type=i1]
  %89 = shl nuw nsw i64 %87, 2                    ; [#uses=1 type=i64]
  %spec.select = select i1 %88, i64 -1, i64 %89   ; [#uses=1 type=i64]
  %90 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select) #14 ; [#uses=2 type=ptr]
  store ptr %90, ptr %6, align 8, !tbaa !37
end_hunk_1
begin_hunk_2
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117calculateNumTilesEPiiiiiNS_17LevelRoundingModeE.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117calculateNumTilesEPiiiiiNS_17LevelRoundingModeE.exit: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117calculateNumTilesEPiiiiiNS_17LevelRoundingModeE.exit.loopexit, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_119calculateNumYLevelsERKNS_15TileDescriptionEiiii.exit
  %110 = phi i32 [ %.pre, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117calculateNumTilesEPiiiiiNS_17LevelRoundingModeE.exit.loopexit ], [ %.0.i31.fr, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_119calculateNumYLevelsERKNS_15TileDescriptionEiiii.exit ] ; [#uses=2 type=i32]
  %111 = icmp sgt i32 %110, 0                     ; [#uses=1 type=i1]
  br i1 %111, label %.lr.ph.i54, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_117calculateNumTilesEPiiiiiNS_17LevelRoundingModeE.exit63

end_hunk_2
