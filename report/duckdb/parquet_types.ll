inline.NumInlined: 8495
inline.NumDeleted: 1611
begin_hunk_0_@_ZN14duckdb_parquet14SizeStatisticsC2EOS0_:_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !136
  store ptr %i.s, ptr %i.p, align 8, !tbaa !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !80  ; 2 uses
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.pre12 = load ptr, ptr %.phi.trans.insert11, align 8, !tbaa !136
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %5 = load <2 x ptr>, ptr %.phi.trans.insert, align 8, !tbaa !130
  store <2 x ptr> %5, ptr %i.h, align 8, !tbaa !130
  store ptr %.pre12, ptr %4, align 8, !tbaa !136
  %.not.i.i.i.i.i.i6 = icmp eq ptr %.pre, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i6, label %_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit7, label %bb.a

bb.a:                                             ; preds = %_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.pre) #31
  br label %_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit7

_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit7:       ; preds = %_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit, %bb.a
end_hunk_0
begin_hunk_1_@_ZN14duckdb_parquet14SizeStatisticsC1EOS0_:_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136
  store ptr %i.m, ptr %i.j, align 8, !tbaa !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !80  ; 2 uses
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !136
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %4 = load <2 x ptr>, ptr %.phi.trans.insert, align 8, !tbaa !130
  store <2 x ptr> %4, ptr %i.b, align 8, !tbaa !130
  store ptr %.pre11, ptr %3, align 8, !tbaa !136
  %.not.i.i.i.i.i.i5 = icmp eq ptr %.pre, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i5, label %_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit6, label %bb.a

bb.a:                                             ; preds = %_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.pre) #31
  br label %_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit6

_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit6:       ; preds = %_ZN6duckdb6vectorIlLb1ESaIlEEaSEOS2_.exit, %bb.a
end_hunk_1
begin_hunk_2_@_ZN14duckdb_parquet14ColumnMetaDataC2EOS0_:_ZN6duckdb6vectorIN14duckdb_parquet8Encoding4typeELb1ESaIS3_EEaSEOS5_.exit
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !786
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !786
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !724 ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre32 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !727 ; 2 uses
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.pre38 = load ptr, ptr %.phi.trans.insert37, align 8, !tbaa !787
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %5 = load <2 x ptr>, ptr %.phi.trans.insert33, align 8, !tbaa !780
  store <2 x ptr> %5, ptr %i.h, align 8, !tbaa !780
  store ptr %.pre38, ptr %4, align 8, !tbaa !787
  %.not4.i.i.i.i.i.i = icmp eq ptr %.pre, %.pre32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6duckdb6vectorIN14duckdb_parquet8Encoding4typeELb1ESaIS3_EEaSEOS5_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.be, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %.pre, %_ZN6duckdb6vectorIN14duckdb_parquet8Encoding4typeELb1ESaIS3_EEaSEOS5_.exit ] ; 3 uses
  %i.bb = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.bd = icmp eq ptr %i.bb, %i.bc
end_hunk_2
begin_hunk_3_@_ZN14duckdb_parquet14ColumnMetaDataC2EOS0_:_ZN6duckdb6vectorIN14duckdb_parquet8Encoding4typeELb1ESaIS3_EEaSEOS5_.exit

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i20 = icmp eq ptr %i.be, %.pre32
  br i1 %.not.i.i.i.i.i.i20, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !728

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %_ZN6duckdb6vectorIN14duckdb_parquet8Encoding4typeELb1ESaIS3_EEaSEOS5_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, label %bb.a

bb.a:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.pre) #31
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.a
end_hunk_3
begin_hunk_4_@_ZN14duckdb_parquet14ColumnMetaDataC1EOS0_:_ZN6duckdb6vectorIN14duckdb_parquet8Encoding4typeELb1ESaIS3_EEaSEOS5_.exit
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !786
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !786
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !724 ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre31 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !727 ; 2 uses
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre37 = load ptr, ptr %.phi.trans.insert36, align 8, !tbaa !787
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %4 = load <2 x ptr>, ptr %.phi.trans.insert32, align 8, !tbaa !780
  store <2 x ptr> %4, ptr %i.b, align 8, !tbaa !780
  store ptr %.pre37, ptr %3, align 8, !tbaa !787
  %.not4.i.i.i.i.i.i = icmp eq ptr %.pre, %.pre31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6duckdb6vectorIN14duckdb_parquet8Encoding4typeELb1ESaIS3_EEaSEOS5_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %.pre, %_ZN6duckdb6vectorIN14duckdb_parquet8Encoding4typeELb1ESaIS3_EEaSEOS5_.exit ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.ax = icmp eq ptr %i.av, %i.aw
end_hunk_4
begin_hunk_5_@_ZN14duckdb_parquet14ColumnMetaDataC1EOS0_:_ZN6duckdb6vectorIN14duckdb_parquet8Encoding4typeELb1ESaIS3_EEaSEOS5_.exit

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i19 = icmp eq ptr %i.ay, %.pre31
  br i1 %.not.i.i.i.i.i.i19, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !728

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %_ZN6duckdb6vectorIN14duckdb_parquet8Encoding4typeELb1ESaIS3_EEaSEOS5_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, label %bb.a

bb.a:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.pre) #31
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.a
end_hunk_5
begin_hunk_6_@_ZN14duckdb_parquet23EncryptionWithColumnKeyC2EOS0_:_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !787
  store ptr %i.r, ptr %i.o, align 8, !tbaa !787
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !36  ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.s = icmp eq ptr %.pre, %i.i
  %i.t = load ptr, ptr %3, align 8, !tbaa !36     ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.v = icmp eq ptr %i.t, %i.u                   ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN14duckdb_parquet23EncryptionWithColumnKeyC2EOS0_:_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit

bb.c:                                             ; preds = %bb.b
  %i.z = load i8, ptr %i.t, align 1, !tbaa !38
  store i8 %i.z, ptr %.pre, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre, ptr align 1 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
end_hunk_7
begin_hunk_8_@_ZN14duckdb_parquet23EncryptionWithColumnKeyC2EOS0_:_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  store i64 %i.ai, ptr %i.j, align 8, !tbaa !39
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !38
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !38
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %.pre, ptr %3, align 8, !tbaa !36
  store i64 %i.ag, ptr %i.u, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_8
begin_hunk_9_@_ZN14duckdb_parquet23EncryptionWithColumnKeyC2EOS0_:_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.e, %bb.f
  %i.ak = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %.pre, %bb.e ], [ %i.u, %bb.f ], [ %i.t, %bb.a ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.al, align 8, !tbaa !39
  store i8 0, ptr %i.ak, align 1, !tbaa !38
end_hunk_9
begin_hunk_10_@_ZN14duckdb_parquet23EncryptionWithColumnKeyC1EOS0_:_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !787
  store ptr %i.l, ptr %i.i, align 8, !tbaa !787
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !36  ; 6 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.m = icmp eq ptr %.pre, %i.c
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.p = icmp eq ptr %i.n, %i.o                   ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN14duckdb_parquet23EncryptionWithColumnKeyC1EOS0_:_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = load i8, ptr %i.n, align 1, !tbaa !38
  store i8 %i.t, ptr %.pre, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre, ptr align 1 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
end_hunk_11
begin_hunk_12_@_ZN14duckdb_parquet23EncryptionWithColumnKeyC1EOS0_:_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !39
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !38
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !38
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %.pre, ptr %2, align 8, !tbaa !36
  store i64 %i.aa, ptr %i.o, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

end_hunk_12
begin_hunk_13_@_ZN14duckdb_parquet23EncryptionWithColumnKeyC1EOS0_:_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.e, %bb.f
  %i.ae = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %.pre, %bb.e ], [ %i.o, %bb.f ], [ %i.n, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.af, align 8, !tbaa !39
  store i8 0, ptr %i.ae, align 1, !tbaa !38
end_hunk_13
