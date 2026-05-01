inline.NumInlined: 8495
inline.NumDeleted: 1611
begin_hunk_0_@_ZNSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EEaSERKS3_:bb.a
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN14duckdb_parquet11ColumnOrderESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN14duckdb_parquet11ColumnOrderESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN14duckdb_parquet11ColumnOrderESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %.09.i.i.i.i.i, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EEaSERKS3_:bb.a
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN14duckdb_parquet11ColumnOrderESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN14duckdb_parquet11ColumnOrderES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.bf, %_ZSt4copyIPN14duckdb_parquet11ColumnOrderES2_ET0_T_S4_S3_.exit ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.bh, %_ZSt4copyIPN14duckdb_parquet11ColumnOrderES2_ET0_T_S4_S3_.exit ] ; 2 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %.011.i.i.i.i, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8
  %i.bk = and i8 %i.bj, -2
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN14duckdb_parquet11ColumnChunkESaIS1_EE17_M_default_appendEm:bb.a
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 23 uses
  %.057.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnChunkE, i64 48), ptr %.08.i.i.i, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN14duckdb_parquet11ColumnChunkESaIS1_EE17_M_default_appendEm:bb.a
  store i64 0, ptr %i.s, align 8, !tbaa !867
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  tail call void @_ZN14duckdb_parquet14ColumnMetaDataC1Ev(ptr noundef nonnull align 8 dereferenceable(538) %i.t) #29
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 592
  store i64 0, ptr %i.u, align 8, !tbaa !875
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 600
  store i32 0, ptr %i.v, align 8, !tbaa !876
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 608
  store i64 0, ptr %i.w, align 8, !tbaa !877
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 616
  store i32 0, ptr %i.x, align 8, !tbaa !878
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 624
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet20ColumnCryptoMetaDataE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet23EncryptionWithFooterKeyE, i64 48)>, ptr %i.y, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 640
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet23EncryptionWithColumnKeyE, i64 48), ptr %i.z, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 648
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN14duckdb_parquet11ColumnChunkESaIS1_EE17_M_default_appendEm:bb.a
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNKSt6vectorIN14duckdb_parquet11ColumnChunkESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bw, %.lr.ph.i.i.i30 ], [ %i.av, %_ZNKSt6vectorIN14duckdb_parquet11ColumnChunkESaIS1_EE12_M_check_lenEmPKc.exit ] ; 23 uses
  %.057.i.i.i32 = phi i64 [ %i.bv, %.lr.ph.i.i.i30 ], [ %1, %_ZNKSt6vectorIN14duckdb_parquet11ColumnChunkESaIS1_EE12_M_check_lenEmPKc.exit ]
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnChunkE, i64 48), ptr %.08.i.i.i31, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN14duckdb_parquet11ColumnChunkESaIS1_EE17_M_default_appendEm:bb.a
  store i64 0, ptr %i.az, align 8, !tbaa !867
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  tail call void @_ZN14duckdb_parquet14ColumnMetaDataC1Ev(ptr noundef nonnull align 8 dereferenceable(538) %i.ba) #29
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 592
  store i64 0, ptr %i.bb, align 8, !tbaa !875
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 600
  store i32 0, ptr %i.bc, align 8, !tbaa !876
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 608
  store i64 0, ptr %i.bd, align 8, !tbaa !877
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 616
  store i32 0, ptr %i.be, align 8, !tbaa !878
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 624
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet20ColumnCryptoMetaDataE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet23EncryptionWithFooterKeyE, i64 48)>, ptr %i.bf, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 640
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet23EncryptionWithColumnKeyE, i64 48), ptr %i.bg, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 648
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EE17_M_default_appendEm:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %.08.i.i.i.prol, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, -2
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EE17_M_default_appendEm:bb.a
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN14duckdb_parquet11ColumnOrderEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %.08.i.i.i, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %i.y, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = and i8 %i.aa, -2
  store i8 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %i.ac, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = and i8 %i.ae, -2
  store i8 %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %i.ag, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = and i8 %i.ai, -2
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EE17_M_default_appendEm:bb.a
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.057.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EE12_M_check_lenEmPKc.exit ]
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %.08.i.i.i31.prol, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8
  %i.au = and i8 %i.at, -2
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EE17_M_default_appendEm:bb.a
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN14duckdb_parquet11ColumnOrderEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 9 uses
  %.057.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %.08.i.i.i31, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = and i8 %i.az, -2
  store i8 %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %i.bb, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8
  %i.be = and i8 %i.bd, -2
  store i8 %i.be, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %i.bf, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8
  %i.bi = and i8 %i.bh, -2
  store i8 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %i.bj, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8
  %i.bm = and i8 %i.bl, -2
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EE17_M_default_appendEm:bb.a
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN14duckdb_parquet11ColumnOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN14duckdb_parquet11ColumnOrderEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN14duckdb_parquet11ColumnOrderEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN14duckdb_parquet11ColumnOrderEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet11ColumnOrderE, i64 48), ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN14duckdb_parquet16TypeDefinedOrderE, i64 48)>, ptr %.012.i.i.i.i, align 8, !tbaa !22, !alias.scope !1485, !noalias !1488
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !38, !alias.scope !1488, !noalias !1485
end_hunk_10
