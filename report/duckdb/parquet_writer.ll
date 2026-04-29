inline.NumInlined: 5305
inline.NumDeleted: 2879
begin_hunk_0_@_ZN6duckdb13ParquetWriterC2ERNS_13ClientContextERNS_10FileSystemENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaISC_EEENSB_ISA_Lb1ESaISA_EEEN14duckdb_parquet16CompressionCodec4typeENS_13ChildFieldIDsENS_13ShreddingTypeERKNSB_ISt4pairISA_SA_ELb1ESaISN_EEENS_10shared_ptrINS_23ParquetEncryptionConfigELb1EEENS_12optional_idxEmbdlNS_14ParquetVersionENS_17GeoParquetVersionE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader179, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kr, 4611686018427387900     ; 3 uses
  %i.kv = shl i64 %n.vec, 3                       ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kl, i64 %i.kv  ; 2 uses
  %i.kx = getelementptr i8, ptr %i.ka, i64 %i.kv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.kl, i64 %offset.idx ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.ka, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ky = getelementptr i8, ptr %next.gep176, i64 16
end_hunk_0
begin_hunk_1_@_ZN6duckdb13ParquetWriter13AnalyzeSchemaERNS_20ColumnDataCollectionERNS_6vectorINS_10unique_ptrINS_12ColumnWriterESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE:bb.a
  br i1 %found.conflict361, label %.lr.ph.i.i.i.i.i.i.i.preheader381, label %vector.ph364

vector.ph364:                                     ; preds = %vector.memcheck354
  %n.vec366 = and i64 %i.ap, 4611686018427387900  ; 3 uses
  %i.at = shl i64 %n.vec366, 3                    ; 2 uses
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.z, i64 %i.at
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph364
  %index368 = phi i64 [ 0, %vector.ph364 ], [ %index.next375, %vector.body367 ] ; 2 uses
  %offset.idx369 = shl i64 %index368, 3           ; 2 uses
  %next.gep370 = getelementptr i8, ptr %i.ak, i64 %offset.idx369 ; 2 uses
  %next.gep372 = getelementptr i8, ptr %i.z, i64 %offset.idx369 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.aw = getelementptr i8, ptr %next.gep372, i64 16
end_hunk_1
begin_hunk_2_@_ZN6duckdb13ParquetWriter13AnalyzeSchemaERNS_20ColumnDataCollectionERNS_6vectorINS_10unique_ptrINS_12ColumnWriterESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i72.preheader380, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, 4611686018427387900     ; 3 uses
  %i.cs = shl i64 %n.vec, 3                       ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cj, i64 %i.cs  ; 2 uses
  %i.cu = getelementptr i8, ptr %i.by, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cj, i64 %offset.idx ; 2 uses
  %next.gep351 = getelementptr i8, ptr %i.by, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.cv = getelementptr i8, ptr %next.gep351, i64 16
end_hunk_2
begin_hunk_3_@_ZN6duckdb13ParquetWriter23InitializePreprocessingERNS_10unique_ptrINS_25ParquetWriteTransformDataESt14default_deleteIS2_ELb1EEE:bb.a
  br i1 %found.conflict181, label %.lr.ph.i.i.i.i.i.i.i.preheader201, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck174
  %n.vec186 = and i64 %i.au, 4611686018427387900  ; 3 uses
  %i.ay = shl i64 %n.vec186, 3                    ; 2 uses
  %i.az = getelementptr i8, ptr %i.ao, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ad, i64 %i.ay
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph184
  %index188 = phi i64 [ 0, %vector.ph184 ], [ %index.next195, %vector.body187 ] ; 2 uses
  %offset.idx189 = shl i64 %index188, 3           ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.ao, i64 %offset.idx189 ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.ad, i64 %offset.idx189 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.bb = getelementptr i8, ptr %next.gep192, i64 16
end_hunk_3
begin_hunk_4_@_ZN6duckdb13ParquetWriter23InitializePreprocessingERNS_10unique_ptrINS_25ParquetWriteTransformDataESt14default_deleteIS2_ELb1EEE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i39.preheader200, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cx, 4611686018427387900     ; 3 uses
  %i.db = shl i64 %n.vec, 3                       ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.db  ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cg, i64 %i.db
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cr, i64 %offset.idx ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.cg, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.de = getelementptr i8, ptr %next.gep171, i64 16
end_hunk_4
begin_hunk_5_@_ZN6duckdb13ParquetWriter15PrepareRowGroupERNS_20ColumnDataCollectionERNS_16PreparedRowGroupERNS_10unique_ptrINS_25ParquetWriteTransformDataESt14default_deleteIS6_ELb1EEE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader2824, label %vector.ph2798

vector.ph2798:                                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec2800 = and i64 %i.hh, 4611686018427387900 ; 3 uses
  %i.hj = shl i64 %n.vec2800, 3                   ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hb, i64 %i.hj  ; 2 uses
  %i.hl = getelementptr i8, ptr %.sroa.0751.01215, i64 %i.hj
  br label %vector.body2801

vector.body2801:                                  ; preds = %vector.body2801, %vector.ph2798
  %index2802 = phi i64 [ 0, %vector.ph2798 ], [ %index.next2809, %vector.body2801 ] ; 2 uses
  %offset.idx2803 = shl i64 %index2802, 3         ; 2 uses
  %next.gep2804 = getelementptr i8, ptr %i.hb, i64 %offset.idx2803 ; 2 uses
  %next.gep2806 = getelementptr i8, ptr %.sroa.0751.01215, i64 %offset.idx2803 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.hm = getelementptr i8, ptr %next.gep2806, i64 16
end_hunk_5
begin_hunk_6_@_ZN6duckdb13ParquetWriter15PrepareRowGroupERNS_20ColumnDataCollectionERNS_16PreparedRowGroupERNS_10unique_ptrINS_25ParquetWriteTransformDataESt14default_deleteIS6_ELb1EEE:bb.a
  br i1 %found.conflict2776, label %.lr.ph.i.i.i.i.i.i162.preheader2823, label %vector.ph2779

vector.ph2779:                                    ; preds = %vector.memcheck2769
  %n.vec2781 = and i64 %i.jb, 4611686018427387900 ; 3 uses
  %i.jf = shl i64 %n.vec2781, 3                   ; 2 uses
  %i.jg = getelementptr i8, ptr %i.iv, i64 %i.jf  ; 2 uses
  %i.jh = getelementptr i8, ptr %.sroa.0732.01218, i64 %i.jf
  br label %vector.body2782

vector.body2782:                                  ; preds = %vector.body2782, %vector.ph2779
  %index2783 = phi i64 [ 0, %vector.ph2779 ], [ %index.next2790, %vector.body2782 ] ; 2 uses
  %offset.idx2784 = shl i64 %index2783, 3         ; 2 uses
  %next.gep2785 = getelementptr i8, ptr %i.iv, i64 %offset.idx2784 ; 2 uses
  %next.gep2787 = getelementptr i8, ptr %.sroa.0732.01218, i64 %offset.idx2784 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.ji = getelementptr i8, ptr %next.gep2787, i64 16
end_hunk_6
begin_hunk_7_@_ZN6duckdb13ParquetWriter15PrepareRowGroupERNS_20ColumnDataCollectionERNS_16PreparedRowGroupERNS_10unique_ptrINS_25ParquetWriteTransformDataESt14default_deleteIS6_ELb1EEE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader2814, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ane, 4611686018427387900    ; 3 uses
  %i.ani = shl i64 %n.vec, 3                      ; 2 uses
  %i.anj = getelementptr i8, ptr %i.amy, i64 %i.ani ; 2 uses
  %i.ank = getelementptr i8, ptr %i.amn, i64 %i.ani
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.amy, i64 %offset.idx ; 2 uses
  %next.gep2766 = getelementptr i8, ptr %i.amn, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.anl = getelementptr i8, ptr %next.gep2766, i64 16
end_hunk_7
begin_hunk_8_@_ZN6duckdbL15GetStatsUnifierERKNS_12ColumnWriterERNS_6vectorINS_10unique_ptrINS_18ColumnStatsUnifierESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader112, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.pi, 4611686018427387900     ; 3 uses
  %i.pn = shl i64 %n.vec, 3                       ; 2 uses
  %i.po = getelementptr i8, ptr %i.pc, i64 %i.pn  ; 2 uses
  %i.pp = getelementptr i8, ptr %i.or, i64 %i.pn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.pc, i64 %offset.idx ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.or, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.pq = getelementptr i8, ptr %next.gep109, i64 16
end_hunk_8
