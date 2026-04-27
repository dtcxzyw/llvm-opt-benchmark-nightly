inline.NumInlined: 1645
inline.NumDeleted: 746
begin_hunk_0_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
  %i.ajg = phi ptr [ %i.aoa, %bb.ma ], [ %i.ahm, %.thread58.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1754
  %i.ajh = invoke fastcc noundef ptr @_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin()
          to label %bb.mc unwind label %bb.mb, !noalias !1758 ; 6 uses

bb.jq:                                            ; preds = %.thread58.i.i.i.i
  store i8 0, ptr %i.ahn, align 1, !noalias !1754
end_hunk_0
begin_hunk_1_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
bb.mc:                                            ; preds = %bb.jp
  store ptr %i.ajh, ptr %i.i, align 8, !noalias !1754
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.me unwind label %bb.md, !noalias !1758

bb.md:                                            ; preds = %bb.mc
  %i.aou = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.ajh) #32
          to label %bb.mh unwind label %bb.jn, !noalias !1758

bb.me:                                            ; preds = %bb.mc
  %i.aov = getelementptr inbounds nuw i8, ptr %i.ajh, i64 2072 ; 2 uses
  %i.aow = load i64, ptr %i.aov, align 8, !noalias !1758, !noundef !4 ; 2 uses
  %i.aox = add i64 %i.aow, -1
end_hunk_1
begin_hunk_2_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
          cleanup
  br label %bb.mh

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.mg, %bb.mf, %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1754
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 1912
  %.sroa.02.i.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ape, align 8, !noalias !1754 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.5.sroa.3.0..sroa.5.8..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.1375.sroa.6, i64 240, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.baj = invoke fastcc noundef ptr @_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin()
          to label %bb.qr unwind label %bb.qq     ; 6 uses

bb.qp:                                            ; preds = %bb.qn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
end_hunk_3
begin_hunk_4_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
  store ptr %i.bac, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.bak = invoke fastcc noundef ptr @_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin()
          to label %bb.re unwind label %bb.rd     ; 6 uses

bb.qq:                                            ; preds = %bb.qo
  %i.bal = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
bb.qr:                                            ; preds = %bb.qo
  store ptr %i.baj, ptr %i.bn, align 8
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn)
          to label %bb.qt unwind label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.bam = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.baj) #32
          to label %bb.ra unwind label %bb.e

bb.qt:                                            ; preds = %bb.qr
  %i.ban = getelementptr inbounds nuw i8, ptr %i.baj, i64 2072 ; 2 uses
  %i.bao = load i64, ptr %i.ban, align 8, !noundef !4 ; 2 uses
  %i.bap = add i64 %i.bao, -1
end_hunk_5
begin_hunk_6_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
          cleanup
  br label %bb.ra

bb.qx:                                            ; preds = %bb.qv, %bb.qt, %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.baw = getelementptr inbounds nuw i8, ptr %1, i64 2712
  store i8 0, ptr %i.baw, align 8
end_hunk_6
begin_hunk_7_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
  %.sroa.04.0.ph = ptrtoint ptr %i.bac to i64
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit58

bb.qy:                                            ; preds = %bb.ri, %bb.rg, %bb.rh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %1, i64 2712
end_hunk_7
begin_hunk_8_@_RNCINvMs6_NtNtCs95DO3lnzZ3L_4moka6future5cacheINtB8_5CacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE28try_insert_with_hash_and_funNCNvMs3_NtB1A_10datafusionNtB3o_19UnitySchemaProvider9get_creds0NtB1A_17UnityCatalogErrorE0B1A_:bb.a
bb.re:                                            ; preds = %bb.qp
  store ptr %i.bak, ptr %i.bl, align 8
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl)
          to label %bb.rg unwind label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.bbh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.bak) #32
          to label %bb.rj unwind label %bb.e

bb.rg:                                            ; preds = %bb.re
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bak, i64 2072 ; 2 uses
  %i.bbj = load i64, ptr %i.bbi, align 8, !noundef !4 ; 2 uses
  %i.bbk = add i64 %i.bbj, -1
end_hunk_8
begin_hunk_9_@_RNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_19UnitySchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table0B9_:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_9
begin_hunk_10_@_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin:bb.a

_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.g, %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %i.c, %bb.a ]
  %.val.i.i = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noundef !4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.val.i.i, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2072 ; 2 uses
end_hunk_10
begin_hunk_11_@_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin:bb.a

bb.i:                                             ; preds = %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ad = tail call noundef nonnull align 8 ptr @_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default9collector()
  %i.ae = tail call noundef ptr @_RNvMs1_NtCsee2lL6QbnsJ_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2072 ; 4 uses
end_hunk_11
begin_hunk_12_@_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin:bb.a

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.bg = load i64, ptr %i.af, align 8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 2080 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4 ; 2 uses
end_hunk_12
begin_hunk_13_@_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin:bb.a

bb.u:                                             ; preds = %bb.f, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br label %_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.r, %bb.s, %bb.u
end_hunk_13
