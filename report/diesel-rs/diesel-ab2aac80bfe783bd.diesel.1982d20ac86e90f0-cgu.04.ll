inline.NumInlined: 1804
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories0ENCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations22migrations_directories0ENCNvB3e_23migrations_in_directory0ENCNvXs_B3e_NtB3e_19FileBasedMigrationsINtNtCsjRvGck33osM_6diesel9migration15MigrationSourceNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendE10migrations0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtBb8_4SendEL_EEEB8c_8try_folduNCINvNvB8c_12try_for_each4callIBae_DINtB5O_9MigrationB6C_EEL_EINtNtNtBc_3ops12control_flow11ControlFlowBco_ENcNtBcU_5Break0E0BcU_E0IBcV_BcU_EEB6K_:bb.a
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i120.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !1585

bb.bi:                                            ; preds = %bb.bh
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i123.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !alias.scope !1663, !noalias !1646, !nonnull !4, !noundef !4 ; 2 uses
  %.val3.i.i124.i.i.i.i.i.i.i = load i64, ptr %.sroa.65.0..sroa_idx6.i.i.i.i.i, align 8, !alias.scope !1663, !noalias !1646 ; 2 uses
  store i8 0, ptr %.val2.i.i123.i.i.i.i.i.i.i, align 1, !noalias !1585
  %i.cv = icmp eq i64 %.val3.i.i124.i.i.i.i.i.i.i, 0
  br i1 %i.cv, label %common.resume.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i123.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i124.i.i.i.i.i.i.i, i64 noundef 1) #33, !noalias !1585
  br label %common.resume.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i120.i.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.val.i.i121.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !alias.scope !1663, !noalias !1646, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i122.i.i.i.i.i.i.i = load i64, ptr %.sroa.65.0..sroa_idx6.i.i.i.i.i, align 8, !alias.scope !1663, !noalias !1646 ; 2 uses
  store i8 0, ptr %.val.i.i121.i.i.i.i.i.i.i, align 1, !noalias !1585
  %i.cw = icmp eq i64 %.val1.i.i122.i.i.i.i.i.i.i, 0
  br i1 %i.cw, label %_RNCNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories00Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i120.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i121.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i122.i.i.i.i.i.i.i, i64 noundef 1) #33, !noalias !1585
  br label %_RNCNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories00Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit103.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i99.i.i.i.i.i.i.i, %bb.r
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys6os_str5bytes3BufECs2bNgeUs5Jlc_6diesel.exit.i128.i.i.i.i.i.i.i unwind label %bb.bl, !noalias !1585

bb.bl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit103.i.i.i.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body105.i.i.i.i.i.i.i unwind label %bb.bm, !noalias !1585

bb.bm:                                            ; preds = %bb.bl
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1585
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys6os_str5bytes3BufECs2bNgeUs5Jlc_6diesel.exit.i128.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit103.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit132.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1585

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit132.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys6os_str5bytes3BufECs2bNgeUs5Jlc_6diesel.exit.i128.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1583
  br label %bb.ba

_RNCNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories00Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i: ; preds = %bb.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i120.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1574
  br label %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.be, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1574
  br label %bb.cr

bb.bn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit119.i.i.i.i.i.i.i, %bb.z
  %.sroa.045.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1580, !noalias !1646 ; 2 uses
  %.sroa.10.i.i.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 8, !noalias !1646
  %.sroa.10.i.i.sroa.6.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.65.0..sroa_idx6.i.i.i.i.i, align 8, !noalias !1646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.i.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.sroa.7.0..sroa.446.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !1574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1574
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.045.0.copyload.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.cr, label %bb.bo

_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNCNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories00Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i, %bb.c
  %.sroa.9.0.ph.ph.i.i.i.i.i = phi ptr [ %.sroa.9.0.i.i.i.i.i.i, %_RNCNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories00Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i ], [ %.sroa.57.0.copyload.i.i.i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1664
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.7.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1668
  br label %bb.ca

bb.bo:                                            ; preds = %bb.bn
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.i.sroa.5.i.i.i.i.i, i64 16, i1 false), !noalias !1679
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.sroa.5.i.i.i.i.i)
  %i.cz = ptrtoint ptr %.sroa.10.i.i.sroa.0.0.copyload.i.i.i.i.i to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1664
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.7.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1675
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 %i.cz, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1682
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %.sroa.10.i.i.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !1682
  store ptr %.sroa.045.0.copyload.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !1675
  invoke void @_RNvMsA_NtCsgczF5crJ4sT_3std2fsNtB5_8DirEntry4path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.bq unwind label %bb.bp, !noalias !1683

.body.i.i.i2.i.i.i.i.i:                           ; preds = %bb.bt, %bb.br, %bb.bp
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.df, %bb.br ], [ %i.da, %bb.bp ], [ %i.dg, %bb.bt ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std2fs8DirEntryECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(40) %i.c) #30
          to label %common.resume.i.i.i.i.i unwind label %bb.bz, !noalias !1683

bb.bp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i, %bb.bo
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i2.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !1675, !nonnull !4, !noundef !4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noalias !1675, !noundef !4
  invoke void @_RNvMs0_NtCskLp0vI1JK7v_17diesel_migrations21file_based_migrationsNtB5_16SqlFileMigration9from_path(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef %i.de)
          to label %bb.bs unwind label %bb.br, !noalias !1684

bb.br:                                            ; preds = %bb.bq
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.d) #30
          to label %.body.i.i.i2.i.i.i.i.i unwind label %bb.bz, !noalias !1683

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i unwind label %bb.bt, !noalias !1683

bb.bt:                                            ; preds = %bb.bs
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i.i2.i.i.i.i.i unwind label %bb.bu, !noalias !1683

bb.bu:                                            ; preds = %bb.bt
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1683
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i unwind label %bb.bp, !noalias !1683

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  %i.di = load ptr, ptr %i.c, align 8, !alias.scope !1697, !noalias !1675, !nonnull !4, !noundef !4
  %i.dj = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !1698
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.bv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.bw, !noalias !1683

bb.bw:                                            ; preds = %bb.bv
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !1699, !noalias !1675, !nonnull !4, !noundef !4 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1699, !noalias !1675 ; 2 uses
  store i8 0, ptr %.val2.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1683
  %i.dm = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dm, label %common.resume.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i.i.i.i.i.i.i.i.i, i64 noundef 1) #33, !noalias !1683
  br label %common.resume.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !1699, !noalias !1675, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1699, !noalias !1675 ; 2 uses
  store i8 0, ptr %.val.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1683
  %i.dn = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef 1) #33, !noalias !1683
  br label %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.br, %.body.i.i.i2.i.i.i.i.i
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1683
  unreachable

_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i: ; preds = %bb.by, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.pr.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !1700 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1675
  %.sroa.4.0..sroa_idx.i2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.4.i.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i2.i.i.i.i.i.i, align 8, !noalias !1700
  %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx.i2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.i.sroa.6.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx.i2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !1700
  %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i2.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i2.sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !1700
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1703
  %i.dp = icmp eq i64 %.sroa.0.0.copyload.pr.i.i.i.i.i.i.i, -1
  br i1 %i.dp, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i, %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i.i.i.i
  %.sroa.4.i.sroa.6.0.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.ph.ph.i.i.i.i.i, %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.4.i.sroa.6.0.copyload.i.i.i.i.i.i, %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.4.i.sroa.0.0.i.i.i.i.i.i = phi i64 [ 2, %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.4.i.sroa.0.0.copyload.i.i.i.i.i.i, %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1705
  store i64 %.sroa.4.i.sroa.0.0.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !1709
  %.sroa.4.i.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.4.i.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.4.i.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1709
  %.sroa.4.i.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.i.i.i.i.i.i, i64 16, i1 false), !noalias !1709
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !1710
  %i.dq = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 32, i64 noundef range(i64 1, 9) 8) #33, !noalias !1710 ; 6 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.cb, label %bb.ci, !prof !1447

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #31
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.cc, !noalias !1713

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskLp0vI1JK7v_17diesel_migrations6errors14MigrationErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #30
          to label %common.resume.i.i.i.i.i unwind label %bb.cd, !noalias !1713

bb.cd:                                            ; preds = %bb.cc
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1713
  unreachable

bb.ce:                                            ; preds = %_RNCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations23migrations_in_directory0Cs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.8.0..sroa_idx3.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx3.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !1700
  store i64 %.sroa.0.0.copyload.pr.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !1705
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i2.i.i.i.i.i.i, i64 32, i1 false), !noalias !1700
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !1714
  %i.du = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 80, i64 noundef range(i64 1, 9) 8) #33, !noalias !1714 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.cf, label %bb.cp, !prof !1447

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #31
          to label %.noexc5.i.i.i.i.i.i.i.i.i unwind label %bb.cg, !noalias !1713

.noexc5.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.cf
  unreachable

bb.cg:                                            ; preds = %bb.cf
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations16SqlFileMigrationECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #30
          to label %common.resume.i.i.i.i.i unwind label %bb.ch, !noalias !1713

bb.ch:                                            ; preds = %bb.cg
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !1713
  unreachable

bb.ci:                                            ; preds = %bb.ca
  store i64 %.sroa.4.i.sroa.0.0.i.i.i.i.i.i, ptr %i.dq, align 8, !noalias !1717
  %.sroa.4.i.sroa.6.0..sroa_idx11.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %.sroa.4.i.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.4.i.sroa.6.0..sroa_idx11.i.i.i.i.i.i, align 8, !noalias !1717
  %.sroa.4.i.sroa.7.0..sroa_idx13.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.0..sroa_idx13.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.i.i.i.i.i.i, i64 16, i1 false), !noalias !1717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1703
  %.val.i.i.i.i5.i.i.i.i.i = load ptr, ptr %3, align 8, !noalias !1718, !noundef !4 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.val7.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dy, align 8, !noalias !1718 ; 6 uses
  %i.dz = icmp eq ptr %.val.i.i.i.i5.i.i.i.i.i, null
  br i1 %i.dz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i.i.i.i.i.i.i) ]
  %i.ea = load ptr, ptr %.val7.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !4, !noalias !1722 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void %i.ea(ptr noundef nonnull %.val.i.i.i.i5.i.i.i.i.i)
          to label %bb.cl unwind label %bb.cn, !noalias !1722

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.eb = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !range !37, !invariant.load !4, !noalias !1722 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ee = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !range !38, !invariant.load !4, !noalias !1722
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i5.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ec, i64 noundef range(i64 1, 536870913) %i.ef) #33, !noalias !1722
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.ck
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !range !37, !invariant.load !4, !noalias !1722 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.body.i.i.i.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ek = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !range !38, !invariant.load !4, !noalias !1722
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i5.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ei, i64 noundef range(i64 1, 536870913) %i.el) #33, !noalias !1722
  br label %.body.i.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.du, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !1713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1703
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %i.em = ptrtoint ptr %i.du to i64
  store i64 %i.em, ptr %.sroa.53.i.i.i.i, align 8, !alias.scope !1724, !noalias !1725
  br label %bb.cq

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.co, %bb.cn
  store ptr %i.dq, ptr %3, align 8, !noalias !1718
  store ptr @31, ptr %i.dy, align 8, !noalias !1718
  br label %common.resume.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl, %bb.ci
  store ptr %i.dq, ptr %3, align 8, !noalias !1718
  store ptr @31, ptr %i.dy, align 8, !noalias !1718
  br label %bb.cq

bb.cq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i, %bb.cp
  %.sink5.i.i.i.i.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.8.i.i.i.i, %bb.cp ], [ %.sroa.53.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i ]
  %.sink.i.sink.i.i.i.i.i.i.i.i.i = phi ptr [ @29, %bb.cp ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %.sink.i.sink.i.i.i.i.i.i.i.i.i, ptr %.sink5.i.i.i.i.i.sroa.phi.i.i.i.i, align 8, !alias.scope !1724, !noalias !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.7.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1664
  %.sroa.53.i.i.i.i.0..sroa.53.i.i.i.i.0..sroa.53.i.i.i.i.0..sroa.53.i.i.i.0..sroa.53.i.i.i.0..sroa.53.i.i.0..sroa.53.i.i.0..sroa.53.i.0..sroa.53.i.0..sroa.53.0..sroa.53.0..sroa.53.8..i.i.i.i = load i64, ptr %.sroa.53.i.i.i.i, align 8, !alias.scope !1726, !noalias !1729, !noundef !4
  %i.en = inttoptr i64 %.sroa.53.i.i.i.i.0..sroa.53.i.i.i.i.0..sroa.53.i.i.i.i.0..sroa.53.i.i.i.0..sroa.53.i.i.i.0..sroa.53.i.i.0..sroa.53.i.i.0..sroa.53.i.0..sroa.53.i.0..sroa.53.0..sroa.53.0..sroa.53.8..i.i.i.i to ptr
  %.sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i.i.i.i = load i64, ptr %.sroa.8.i.i.i.i, align 8, !alias.scope !1726, !noalias !1729
  %i.eo = inttoptr i64 %.sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i.i.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.en, ptr %i.ep, align 8, !alias.scope !1731, !noalias !1734
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.eo, ptr %i.eq, align 8, !alias.scope !1731, !noalias !1734
  br label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories0ENCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations22migrations_directories0ENCNvB3a_23migrations_in_directory0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultNtB3a_16SqlFileMigrationNtNtB3c_6errors14MigrationErrorEIB6a_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EIB7v_DNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtBaF_4SendEL_EEuINtNtNtBc_3ops12control_flow11ControlFlowIBbe_B7u_EENCNvXs_B3a_NtB3a_19FileBasedMigrationsINtB87_15MigrationSourceB8O_E10migrations0NCINvXB8_INtB8_12GenericShuntIBO_BN_Bc3_EIB6a_NtNtBc_7convert10InfallibleBae_EEB55_8try_folduNCINvNvB55_12try_for_each4callB7u_BbS_NcNtBbS_5Break0E0BbS_E0E0Bbd_EB8W_.exit

bb.cr:                                            ; preds = %bb.bn, %.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @_RNvXsz_NtCsgczF5crJ4sT_3std2fsNtB5_7ReadDirNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !1568
  %i.er = load i64, ptr %i.q, align 8, !range !517, !noalias !1569, !noundef !4
  %i.es = trunc nuw i64 %i.er to i1
  br i1 %i.es, label %bb.b, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories0ENCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations22migrations_directories0ENCNvB3a_23migrations_in_directory0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultNtB3a_16SqlFileMigrationNtNtB3c_6errors14MigrationErrorEIB6a_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EIB7v_DNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtBaF_4SendEL_EEuINtNtNtBc_3ops12control_flow11ControlFlowIBbe_B7u_EENCNvXs_B3a_NtB3a_19FileBasedMigrationsINtB87_15MigrationSourceB8O_E10migrations0NCINvXB8_INtB8_12GenericShuntIBO_BN_Bc3_EIB6a_NtNtBc_7convert10InfallibleBae_EEB55_8try_folduNCINvNvB55_12try_for_each4callB7u_BbS_NcNtBbS_5Break0E0BbS_E0E0Bbd_EB8W_.exit

_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_10filter_map9FilterMapNtNtCsgczF5crJ4sT_3std2fs7ReadDirNCNvCs6lX4jqJppWb_20migrations_internals22migrations_directories0ENCNvNtCskLp0vI1JK7v_17diesel_migrations21file_based_migrations22migrations_directories0ENCNvB3a_23migrations_in_directory0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultNtB3a_16SqlFileMigrationNtNtB3c_6errors14MigrationErrorEIB6a_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EIB7v_DNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtBaF_4SendEL_EEuINtNtNtBc_3ops12control_flow11ControlFlowIBbe_B7u_EENCNvXs_B3a_NtB3a_19FileBasedMigrationsINtB87_15MigrationSourceB8O_E10migrations0NCINvXB8_INtB8_12GenericShuntIBO_BN_Bc3_EIB6a_NtNtBc_7convert10InfallibleBae_EEB55_8try_folduNCINvNvB55_12try_for_each4callB7u_BbS_NcNtBbS_5Break0E0BbS_E0E0Bbd_EB8W_.exit: ; preds = %bb.cr, %bb.a, %bb.cq
  %storemerge.i.i.i.i = phi i64 [ 1, %bb.cq ], [ 0, %bb.a ], [ 0, %bb.cr ]
  store i64 %storemerge.i.i.i.i, ptr %0, align 8, !alias.scope !1735, !noalias !1734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1561
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5RangejRNtNtB1a_6string6StringENCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB2r_6Config10set_filters0_0ENCB2o_s1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCskxSKy3V5Mgr_5regex5error5ErrorEEB3A_8try_folduNCINvNvB3A_12try_for_each4callINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtB5F_5regex6string5RegexEINtNtNtBc_3ops12control_flow11ControlFlowB6V_ENcNtB7Z_5Break0E0B7Z_E0IB80_B7Z_EEB2t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1742
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = tail call { ptr, ptr } @_RNvXsX_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_5RangejRNtNtBb_6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !1745 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5RangejRNtNtB16_6string6StringENCNvMNtCs2bNgeUs5Jlc_6diesel6configNtB2n_6Config10set_filters0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldReINtNtBc_6result6ResultINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexENtNtB5t_5error5ErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB6u_B4N_EENCB2k_s1_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B7j_EIB4s_NtNtBc_7convert10InfallibleB67_EEB3l_8try_folduNCINvNvB3l_12try_for_each4callB4N_B78_NcNtB78_5Break0E0B78_E0E0B6t_EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val5.i.i = load ptr, ptr %i.f, align 8, !noalias !1745, !nonnull !4, !align !36, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1746
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1748, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1748, !noundef !4
  call void @_RNvMs3_NtNtCskxSKy3V5Mgr_5regex5regex6stringNtB5_5Regex3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k), !noalias !1748
  %i.l = load ptr, ptr %i.a, align 8, !noalias !1751, !noundef !4 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %3, align 8, !range !1752, !alias.scope !1753, !noalias !1756, !noundef !4
  %switch.i.i.i.i.i.i = icmp ugt i64 %i.n, -3
  br i1 %switch.i.i.i.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !1763
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvCs9whUg0Yoyo4_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs3bbNWNt4QPc_12tracing_core8metadata11LevelFilterEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callINtB1u_5EntryB2d_ENCINvMsj_B2B_IB2z_B55_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel:bb.a
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.1, align 8, !noalias !2206
  %i.l = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %.sroa.43.0..sroa_idx.i.i.2 = getelementptr i8, ptr %i.l, i64 112
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.2, align 8, !noalias !2206
  %i.m = add nuw i64 %.sroa.0.011.i, 4            ; 2 uses
  %i.n = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %.sroa.43.0..sroa_idx.i.i.3 = getelementptr i8, ptr %i.n, i64 152
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.3, align 8, !noalias !2206
  %i.o = add i64 %i.i, 4                          ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.m, %1
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs9whUg0Yoyo4_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs3bbNWNt4QPc_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsj_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i

_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCs9whUg0Yoyo4_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs3bbNWNt4QPc_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsj_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.o, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2217
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCs7RVENRMef48_12sharded_slab5shardINtB1u_5ShardNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB1w_3cfg13DefaultConfigE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callINtNtB1w_4page6SharedB2h_B3m_ENCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5A_3VecB4X_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !36, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.f = icmp ult i64 %i.b, %i.d
  br i1 %i.f, label %.lr.ph.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i
  %i.g = phi i64 [ %i.t, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i ], [ %.sroa.4.0.copyload, %bb.a ] ; 2 uses
  %.sroa.0.012.i = phi i64 [ %i.h, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = add nuw i64 %.sroa.0.012.i, 1            ; 2 uses
  %i.i = trunc i64 %.sroa.0.012.i to i32          ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i, label %.preheader21.i.i.i.i

.preheader21.i.i.i.i:                             ; preds = %.lr.ph.i, %bb.c
  %.sroa.015.1.i.i.i.i = phi i64 [ %.sroa.015.2.i.i.i.i, %bb.c ], [ 1, %.lr.ph.i ] ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.n, %bb.c ], [ %i.i, %.lr.ph.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.o, %bb.c ], [ 2, %.lr.ph.i ] ; 3 uses
  %i.k = and i32 %.sroa.07.0.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader21.i.i.i.i
  %i.l = mul i64 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i ; 2 uses
  %i.m = icmp eq i32 %.sroa.07.0.i.i.i.i, 1
  br i1 %i.m, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader21.i.i.i.i
  %.sroa.015.2.i.i.i.i = phi i64 [ %i.l, %bb.b ], [ %.sroa.015.1.i.i.i.i, %.preheader21.i.i.i.i ]
  %i.n = lshr i32 %.sroa.07.0.i.i.i.i, 1
  %i.o = mul i64 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i
  br label %.preheader21.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i.loopexit: ; preds = %bb.b
  %i.p = shl i64 %i.l, 5
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i.loopexit, %.lr.ph.i
  %.sroa.015.0.i.i.i.i = phi i64 [ 32, %.lr.ph.i ], [ %i.p, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i.loopexit ] ; 2 uses
  %i.q = load i64, ptr %i.e, align 8, !noalias !2218, !noundef !4 ; 2 uses
  %i.r = add i64 %i.q, %.sroa.015.0.i.i.i.i
  store i64 %i.r, ptr %i.e, align 8, !noalias !2218
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.g ; 4 uses
  store ptr null, ptr %i.s, align 8, !noalias !2225
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 274877906944, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !2225
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %.sroa.015.0.i.i.i.i, ptr %.sroa.66.0..sroa_idx.i.i, align 8, !noalias !2225
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.q, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2225
  %i.t = add i64 %i.g, 1                          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i

_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.t, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtCs7RVENRMef48_12sharded_slab4page6SharedNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2230
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCs7RVENRMef48_12sharded_slab5shardINtB1u_5ShardNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB1w_3cfg13DefaultConfigE3news_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callNtNtB1w_4page5LocalNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5r_3VecB4Z_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCs7RVENRMef48_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.b = shl i64 %.sroa.4.0.copyload, 3
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %i.b
  %i.c = sub nuw i64 %1, %0                       ; 2 uses
  %i.d = shl i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.d, i1 false), !noalias !2231
  %i.e = add i64 %i.c, %.sroa.4.0.copyload
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCs7RVENRMef48_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit

_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCs7RVENRMef48_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.a, %.lr.ph.i
  %.val5.i = phi i64 [ %i.e, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2240
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENvMs2_NtNtCs7RVENRMef48_12sharded_slab4page4slotINtB1v_4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB1z_3cfg13DefaultConfigE3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4callB2b_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5f_3VecB2b_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.b = icmp ult i64 %0, %1
  br i1 %i.b, label %.lr.ph.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCs7RVENRMef48_12sharded_slab4page4slot4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtNtCs7RVENRMef48_12sharded_slab4page4slot4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i
  %.val7.i = phi i64 [ %i.e, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtNtCs7RVENRMef48_12sharded_slab4page4slot4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.c, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtNtCs7RVENRMef48_12sharded_slab4page4slot4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i ], [ %0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2241
  invoke void @_RNvMs2_NtNtCs7RVENRMef48_12sharded_slab4page4slotINtB5_4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB9_3cfg13DefaultConfigE3newCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, i64 noundef %.sroa.0.011.i)
          to label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtNtCs7RVENRMef48_12sharded_slab4page4slot4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i unwind label %bb.b, !noalias !2246

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtNtCs7RVENRMef48_12sharded_slab4page4slot4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %.lr.ph.i
  %i.c = add i64 %.sroa.0.011.i, 1                ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %.sroa.7.0.copyload, i64 %.val7.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !2247
  %i.e = add i64 %.val7.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2241
  %exitcond.not.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCs7RVENRMef48_12sharded_slab4page4slot4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2246
  resume { ptr, i32 } %i.f

_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCs7RVENRMef48_12sharded_slab4page4slot4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtNtCs7RVENRMef48_12sharded_slab4page4slot4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.e, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjINtNtNtCs7RVENRMef48_12sharded_slab4page4slot4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cs2bNgeUs5Jlc_6diesel.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2246
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangelENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB2h_6string6StringEINtNtB1C_11deserialize7FromSqlINtNtB1y_9sql_types5ArrayNtNtB1C_9sql_types4TextENtNtB1A_7backend2PgE8from_sql0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleINtNtB2h_5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtB7y_4SendEL_EEEB4S_8try_folduNCINvNvB4S_12try_for_each4callB2J_INtNtB12_12control_flow11ControlFlowB2J_ENcNtB8S_5Break0E0B8S_E0IB8T_B8S_EECs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2255)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !2257, !noalias !2264, !noundef !4 ; 2 uses
  %.promoted.i = load i32, ptr %i.j, align 8, !alias.scope !2266, !noalias !2252 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %.promoted.i)
  %i.q = load ptr, ptr %1, align 8, !nonnull !4, !align !36 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.m, align 8, !nonnull !4
  %i.t = load ptr, ptr %i.n, align 8, !nonnull !4, !align !36
  %exitcond.not.i165.not = icmp slt i32 %.promoted.i, %i.l
  br i1 %exitcond.not.i165.not, label %.lr.ph.preheader, label %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCs40k4W9msRzi_5alloc6string6StringEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.u = insertelement <2 x ptr> <ptr poison, ptr @34>, ptr %i.t, i64 0
  br label %.lr.ph

_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCs40k4W9msRzi_5alloc6string6StringEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.i
  %exitcond.not.i = icmp eq i32 %i.w, %smax.i
  br i1 %exitcond.not.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCs40k4W9msRzi_5alloc6string6StringEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCs40k4W9msRzi_5alloc6string6StringEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i
  %i.v = phi i32 [ %i.w, %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCs40k4W9msRzi_5alloc6string6StringEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i ], [ %.promoted.i, %.lr.ph.preheader ]
  %i.w = add i32 %i.v, 1                          ; 3 uses
  store i32 %i.w, ptr %i.j, align 8, !alias.scope !2266, !noalias !2252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2270
  call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2277
  store i32 0, ptr %i.c, align 4, !noalias !2277
  call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  %i.x = load i64, ptr %i.r, align 8, !alias.scope !2282, !noalias !2283, !noundef !4 ; 3 uses
  %i.y = icmp ult i64 %i.x, 4
  %i.z = load ptr, ptr %i.q, align 8, !alias.scope !2282, !noalias !2283, !nonnull !4, !noundef !4 ; 3 uses
  br i1 %i.y, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2277
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !2282, !noalias !2283
  store i64 0, ptr %i.r, align 8, !alias.scope !2282, !noalias !2283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2270
  store ptr @83, ptr %i.d, align 8, !noalias !2270
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2270
  %i.ab = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 8, i64 noundef range(i64 1, 9) 8) #33, !noalias !2270 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.c, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCs2bNgeUs5Jlc_6diesel.exit.i.i.i, !prof !1447

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #31
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !2270

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #30
          to label %common.resume.i.i unwind label %bb.e, !noalias !2270

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !2270
  unreachable

common.resume.i.i:                                ; preds = %.body.i.i.i, %bb.m, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bf, %.body.i.i.i ], [ %i.ad, %bb.d ], [ %i.as, %bb.m ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCs2bNgeUs5Jlc_6diesel.exit.i.i.i: ; preds = %bb.b
  store ptr @83, ptr %i.ab, align 8, !noalias !2270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2270
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i

bb.f:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 3 uses
  %i.ag = add nsw i64 %i.x, -4                    ; 4 uses
  call void @_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull %i.c, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81), !noalias !2285
  %.val.i.i.i.i = load i32, ptr %i.c, align 4, !noalias !2277 ; 2 uses
  %i.ah = call noundef i32 @llvm.bswap.i32(i32 %.val.i.i.i.i) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2277
  store ptr %i.af, ptr %i.q, align 8, !alias.scope !2282, !noalias !2283
  store i64 %i.ag, ptr %i.r, align 8, !alias.scope !2282, !noalias !2283
  store i32 %i.ah, ptr %i.h, align 4, !noalias !2270
  %i.ai = load i8, ptr %i.s, align 1, !range !519, !noalias !2270, !noundef !4
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = icmp eq i32 %.val.i.i.i.i, -1
  %or.cond.i.i.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i.i.i, label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.ah, -1
  br i1 %i.al, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2270
  %i.am = call noundef dereferenceable_or_null(1) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 1, i64 noundef range(i64 1, 9) 1) #33, !noalias !2270 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i, !prof !1447

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #31, !noalias !2270
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i: ; preds = %bb.h
  store i8 3, ptr %i.am, align 1, !noalias !2270
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i

bb.j:                                             ; preds = %bb.g
  %i.ao = zext nneg i32 %i.ah to i64              ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.ag, %i.ao
  br i1 %.not.i.i.i, label %bb.k, label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2286
  store i64 %i.ag, ptr %i.b, align 8, !noalias !2286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2286
  store ptr %i.h, ptr %i.a, align 8, !noalias !2286
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !2286
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ap, align 8, !noalias !2286
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !2286
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @25, ptr noundef nonnull %i.a), !noalias !2270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2286
  %.sroa.79.sroa.0.0.copyload32.i.i.i = load i64, ptr %i.f, align 8, !noalias !2270
  %.sroa.79.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.79.sroa.8.0.copyload34.i.i.i = load ptr, ptr %.sroa.79.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !2270
  %.sroa.79.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.79.sroa.9.0.copyload37.i.i.i = load i64, ptr %.sroa.79.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !2270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2270
  store i64 %.sroa.79.sroa.0.0.copyload32.i.i.i, ptr %i.e, align 8, !noalias !2270
  %.sroa.451.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.79.sroa.8.0.copyload34.i.i.i, ptr %.sroa.451.0..sroa_idx.i.i.i, align 8, !noalias !2270
  %.sroa.552.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.79.sroa.9.0.copyload37.i.i.i, ptr %.sroa.552.0..sroa_idx.i.i.i, align 8, !noalias !2270
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2289
  %i.aq = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 24, i64 noundef range(i64 1, 9) 8) #33, !noalias !2289 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs2bNgeUs5Jlc_6diesel.exit.i.i.i, !prof !1447

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #31
          to label %.noexc57.i.i.i unwind label %bb.m, !noalias !2270

.noexc57.i.i.i:                                   ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #30
          to label %common.resume.i.i unwind label %bb.n, !noalias !2270

bb.n:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !2270
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs2bNgeUs5Jlc_6diesel.exit.i.i.i: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2270
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i

_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i: ; preds = %bb.f, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCs2bNgeUs5Jlc_6diesel.exit.i.i.i
  %.sroa.5.0.copyload5.i.i = phi ptr [ @36, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ @33, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i ], [ @5, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ @115, %bb.f ]
  %.sroa.4.0.copyload3.i.i = phi ptr [ %i.ab, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ %i.am, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i ], [ %i.aq, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs2bNgeUs5Jlc_6diesel.exit.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2270
  br label %.loopexit.i

_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ao
  %i.av = sub nuw i64 %i.ag, %i.ao
  store ptr %i.au, ptr %i.q, align 8, !noalias !2270
  store i64 %i.av, ptr %i.r, align 8, !noalias !2270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2270
  store ptr %i.af, ptr %i.g, align 8, !noalias !2270
  store i64 %i.ao, ptr %i.o, align 8, !noalias !2270
  store <2 x ptr> %i.u, ptr %i.p, align 8, !noalias !2270
  call void @_RNvXs9_NtNtCsjRvGck33osM_6diesel10type_impls10primitivesNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB9_11deserialize7FromSqlNtNtB9_9sql_types4TextNtNtNtB9_2pg7backend2PgE8from_sqlCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g), !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2270
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.i, align 8, !noalias !2267 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2270
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2267 ; 2 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2267 ; 2 uses
  %i.aw = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, -1
  br i1 %i.aw, label %.loopexit.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.i

.loopexit.i:                                      ; preds = %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i
  %.sroa.5.0.copyload8.i.i = phi ptr [ %.sroa.5.0.copyload5.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.i.i ] ; 2 uses
  %.sroa.4.0.copyload6.i.i = phi ptr [ %.sroa.4.0.copyload3.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.i.i ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %3, align 8, !noalias !2293, !noundef !4 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.val3.i.i.i = load ptr, ptr %i.ax, align 8, !noalias !2293 ; 6 uses
  %i.ay = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ay, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i) ]
  %i.az = load ptr, ptr %.val3.i.i.i, align 8, !invariant.load !4, !noalias !2293 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void %i.az(ptr noundef nonnull %.val.i.i.i)
          to label %bb.q unwind label %bb.s, !noalias !2293

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !37, !invariant.load !4, !noalias !2293 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !range !38, !invariant.load !4, !noalias !2293
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.bb, i64 noundef range(i64 1, 536870913) %i.be) #33, !noalias !2293
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i

bb.s:                                             ; preds = %bb.p
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !37, !invariant.load !4, !noalias !2293 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.body.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !38, !invariant.load !4, !noalias !2293
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #33, !noalias !2293
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.t, %bb.s
  store ptr %.sroa.4.0.copyload6.i.i, ptr %3, align 8, !noalias !2293
  store ptr %.sroa.5.0.copyload8.i.i, ptr %i.ax, align 8, !noalias !2293
  br label %common.resume.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i: ; preds = %bb.r, %bb.q, %.loopexit.i
  store ptr %.sroa.4.0.copyload6.i.i, ptr %3, align 8, !noalias !2293
  store ptr %.sroa.5.0.copyload8.i.i, ptr %i.ax, align 8, !noalias !2293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2267
  br label %.loopexit25.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBR_6string6StringEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayNtNtBc_9sql_types4TextENtNtBa_7backend2PgE8from_sql0Cs2bNgeUs5Jlc_6diesel.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2267
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, -2
  br i1 %.not.i.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCs40k4W9msRzi_5alloc6string6StringEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i, label %.loopexit25.i

_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCs40k4W9msRzi_5alloc6string6StringEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i._crit_edge: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCs40k4W9msRzi_5alloc6string6StringEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i, %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !2297, !noalias !2255
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB2E_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3R_4SendEL_EEuINtNtB8_12control_flow11ControlFlowIB4q_B2A_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2E_3vec3VecB2A_EINtNtB5m_11deserialize7FromSqlINtNtB5i_9sql_types5ArrayNtNtB5m_9sql_types4TextENtNtB5k_7backend2PgE8from_sql0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B59_EIB2f_NtNtBa_7convert10InfallibleB3c_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4Y_NcNtB4Y_5Break0E0B4Y_E0E0B4p_ECs2bNgeUs5Jlc_6diesel.exit

.loopexit25.i:                                    ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i
  %.sroa.7.sroa.5.1.ph.i = phi ptr [ undef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i ], [ %.sroa.5.0.copyload.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.i ]
  %.sroa.7.sroa.0.1.ph.i = phi ptr [ undef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i ], [ %.sroa.4.0.copyload.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.i ]
  %.sroa.0.0.ph.i = phi i64 [ -1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.thread.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1q_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2D_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1q_3vec3VecB1m_EINtNtB4e_11deserialize7FromSqlINtNtB4a_9sql_types5ArrayNtNtB4e_9sql_types4TextENtNtB4c_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3g_5range5RangelEB41_EIB11_NtNtBa_7convert10InfallibleB1Y_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8C_12try_for_each4callB1m_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0Cs2bNgeUs5Jlc_6diesel.exit.i ]
  store i64 %.sroa.0.0.ph.i, ptr %0, align 8, !alias.scope !2300, !noalias !2255
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.sroa.0.1.ph.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2300, !noalias !2255
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.sroa.5.1.ph.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2300, !noalias !2255
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB2E_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3R_4SendEL_EEuINtNtB8_12control_flow11ControlFlowIB4q_B2A_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2E_3vec3VecB2A_EINtNtB5m_11deserialize7FromSqlINtNtB5i_9sql_types5ArrayNtNtB5m_9sql_types4TextENtNtB5k_7backend2PgE8from_sql0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B59_EIB2f_NtNtBa_7convert10InfallibleB3c_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4Y_NcNtB4Y_5Break0E0B4Y_E0E0B4p_ECs2bNgeUs5Jlc_6diesel.exit

_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldlINtNtBa_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB2E_5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3R_4SendEL_EEuINtNtB8_12control_flow11ControlFlowIB4q_B2A_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2E_3vec3VecB2A_EINtNtB5m_11deserialize7FromSqlINtNtB5i_9sql_types5ArrayNtNtB5m_9sql_types4TextENtNtB5k_7backend2PgE8from_sql0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B59_EIB2f_NtNtBa_7convert10InfallibleB3c_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4Y_NcNtB4Y_5Break0E0B4Y_E0E0B4p_ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCs40k4W9msRzi_5alloc6string6StringEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i._crit_edge, %.loopexit25.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrKj1_ENCINvMs_NtB1v_3argNtB2x_3Arg14default_valuesB1r_AB1r_B2l_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callB1r_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4D_3VecB1r_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !2307, !noalias !2304 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !alias.scope !2307, !noalias !2304 ; 3 uses
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !alias.scope !2307, !noalias !2304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.c = load i64, ptr %i.a, align 8, !alias.scope !2312, !noalias !2313, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2312, !noalias !2313, !noundef !4 ; 4 uses
  %i.f = icmp ule i64 %i.c, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %.not6.i.i = icmp eq i64 %i.c, %i.e
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.e, 1
  %i.g = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2315
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = add i64 %.sroa.8.16.copyload.i, 1
  store i64 1, ptr %i.a, align 8, !alias.scope !2312, !noalias !2313
  br label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit

_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %i.j = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %i.c, %bb.a ]
  %.val3.i.i = phi i64 [ %i.i, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !2318
  call void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrEj1_NtB4_11PartialDrop12partial_dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.j, i64 noundef %i.e), !noalias !2307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrKj1_ENCINvMs_NtB1v_3argNtB2x_3Arg25default_missing_values_osB1r_AB1r_B2l_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3y_8for_each4callB1r_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4O_3VecB1r_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !2322, !noalias !2319 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !alias.scope !2322, !noalias !2319 ; 3 uses
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !alias.scope !2322, !noalias !2319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  %i.c = load i64, ptr %i.a, align 8, !alias.scope !2327, !noalias !2328, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2327, !noalias !2328, !noundef !4 ; 4 uses
  %i.f = icmp ule i64 %i.c, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %.not6.i.i = icmp eq i64 %i.c, %i.e
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg25default_missing_values_osBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Y_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.e, 1
  %i.g = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2330
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = add i64 %.sroa.8.16.copyload.i, 1
  store i64 1, ptr %i.a, align 8, !alias.scope !2327, !noalias !2328
  br label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg25default_missing_values_osBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Y_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit

_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg25default_missing_values_osBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4Y_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %i.j = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %i.c, %bb.a ]
  %.val3.i.i = phi i64 [ %i.i, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !2333
  call void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStrEj1_NtB4_11PartialDrop12partial_dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.j, i64 noundef %i.e), !noalias !2322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterReKj1_ENCINvMs_NtNtCs9ZYirdRbabK_12clap_builder7builder3argNtB1G_3Arg14default_valuesB1r_AB1r_B1u_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB34_8for_each4callNtNtB1I_6os_str5OsStrNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4B_3VecB47_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !2334, !noalias !2337 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !alias.scope !2334, !noalias !2337 ; 3 uses
  %i.a = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.a)
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterReKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStruNCINvMs_NtB2r_3argNtB3p_3Arg14default_valuesBT_ABT_BW_E0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4N_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3h_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !alias.scope !2334, !noalias !2337
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0
  tail call void @llvm.assume(i1 %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i ; 3 uses
  store i64 0, ptr %i.c, align 8, !noalias !2339
  %.sroa.43.0..sroa_idx.i.i.i.i.us.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.43.0..sroa_idx.i.i.i.i.us.i, align 8, !noalias !2339
  %.sroa.54.0..sroa_idx.i.i.i.i.us.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.54.0..sroa_idx.i.i.i.i.us.i, align 8, !noalias !2355
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = add i64 %.sroa.8.16.copyload.i, 1
  br label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterReKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStruNCINvMs_NtB2r_3argNtB3p_3Arg14default_valuesBT_ABT_BW_E0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4N_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3h_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit

_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterReKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCs9ZYirdRbabK_12clap_builder7builder6os_str5OsStruNCINvMs_NtB2r_3argNtB3p_3Arg14default_valuesBT_ABT_BW_E0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB4N_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3h_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %.val3.i.i = phi i64 [ %i.d, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !2356
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterReKj1_ENCNvXss_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserNtB1G_20PossibleValuesParserINtNtBc_7convert4FromAB1r_B1u_E4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3C_8for_each4callNtNtB1I_14possible_value13PossibleValueNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5r_3VecB4F_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !2357, !noalias !2360 ; 4 uses
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.16.copyload.i = load i64, ptr %.sroa.9.16..sroa_idx.i, align 8, !alias.scope !2357, !noalias !2360 ; 4 uses
  %.sroa.11.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.16.copyload.i = load ptr, ptr %.sroa.11.16..sroa_idx.i, align 8, !alias.scope !2357, !noalias !2360
  %i.b = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.b)
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterReKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuNCNvXss_NtB2r_12value_parserNtB3H_20PossibleValuesParserINtNtBa_7convert4FromABT_BW_E4from0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5E_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3z_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.c = icmp eq i64 %.sroa.0.0.copyload, 0
  tail call void @llvm.assume(i1 %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2362
  br i1 %.not.i.i, label %.lr.ph.i.us.i, label %.lr.ph.i.preheader4.i

.lr.ph.i.preheader4.i:                            ; preds = %.lr.ph.i.preheader.i
  invoke void @_RNvXs0_NtNtCs9ZYirdRbabK_12clap_builder7builder14possible_valueNtB5_13PossibleValueINtNtCscI6d9CVNmLh_4core7convert4FromReE4fromCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %.lr.ph.i.peel.next.i unwind label %.body.split.loopexit.split-lp.i, !noalias !2374

.lr.ph.i.peel.next.i:                             ; preds = %.lr.ph.i.preheader4.i
  unreachable

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.preheader.i
  invoke void @_RNvXs0_NtNtCs9ZYirdRbabK_12clap_builder7builder14possible_valueNtB5_13PossibleValueINtNtCscI6d9CVNmLh_4core7convert4FromReE4fromCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %.loopexit.split.us.i unwind label %.body.split.us.i, !noalias !2374

.loopexit.split.us.i:                             ; preds = %.lr.ph.i.us.i
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %.sroa.11.16.copyload.i, i64 %.sroa.9.16.copyload.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !2375
  %i.e = add i64 %.sroa.9.16.copyload.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2362
  br label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterReKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuNCNvXss_NtB2r_12value_parserNtB3H_20PossibleValuesParserINtNtBa_7convert4FromABT_BW_E4from0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5E_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3z_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit

.body.split.us.i:                                 ; preds = %.lr.ph.i.us.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.split.loopexit.split-lp.i:                  ; preds = %.lr.ph.i.preheader4.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterReKj1_ENCNvXss_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserNtB1G_20PossibleValuesParserINtNtBc_7convert4FromAB1r_B1u_E4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3C_8for_each4callNtNtB1I_14possible_value13PossibleValueNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5r_3VecB4F_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterReKj2_ENCNvXss_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserNtB1G_20PossibleValuesParserINtNtBc_7convert4FromAB1r_B1u_E4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3C_8for_each4callNtNtB1I_14possible_value13PossibleValueNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5r_3VecB4F_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !2383, !noalias !2380 ; 4 uses
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.16.copyload.i = load i64, ptr %.sroa.9.16..sroa_idx.i, align 8, !alias.scope !2383, !noalias !2380 ; 2 uses
  %.sroa.11.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.16.copyload.i = load ptr, ptr %.sroa.11.16..sroa_idx.i, align 8, !alias.scope !2383, !noalias !2380
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.c = load i64, ptr %0, align 8, !alias.scope !2388, !noalias !2389, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2388, !noalias !2389, !noundef !4 ; 3 uses
  %i.f = icmp ule i64 %i.c, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %.not6.i.i = icmp eq i64 %i.c, %i.e
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterReKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuNCNvXss_NtB2r_12value_parserNtB3H_20PossibleValuesParserINtNtBa_7convert4FromABT_BW_E4from0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5E_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3z_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.val5.i.i = phi i64 [ %i.o, %bb.b ], [ %.sroa.9.16.copyload.i, %bb.a ] ; 3 uses
  %i.g = phi i64 [ %i.m, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.h = icmp ult i64 %i.g, 2
  call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2380, !noalias !2391, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2380, !noalias !2391, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2394
  invoke void @_RNvXs0_NtNtCs9ZYirdRbabK_12clap_builder7builder14possible_valueNtB5_13PossibleValueINtNtCscI6d9CVNmLh_4core7convert4FromReE4fromCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %bb.b unwind label %.body.i, !noalias !2401

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %.sroa.11.16.copyload.i, i64 %.val5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !2402
  %i.o = add i64 %.val5.i.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2394
  %.not.i.i = icmp eq i64 %i.m, %i.e
  br i1 %.not.i.i, label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterReKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuNCNvXss_NtB2r_12value_parserNtB3H_20PossibleValuesParserINtNtBa_7convert4FromABT_BW_E4from0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5E_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3z_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.i

.body.i:                                          ; preds = %.lr.ph.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val5.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !2401
  resume { ptr, i32 } %i.p

_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterReKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuNCNvXss_NtB2r_12value_parserNtB3H_20PossibleValuesParserINtNtBa_7convert4FromABT_BW_E4from0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5E_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3z_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.b, %bb.a
  %.val3.i.i = phi i64 [ %.sroa.9.16.copyload.i, %bb.a ], [ %i.o, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !2401
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterReKj3_ENCNvXss_NtNtCs9ZYirdRbabK_12clap_builder7builder12value_parserNtB1G_20PossibleValuesParserINtNtBc_7convert4FromAB1r_B1u_E4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3C_8for_each4callNtNtB1I_14possible_value13PossibleValueNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5r_3VecB4F_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !2410, !noalias !2407 ; 4 uses
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.16.copyload.i = load i64, ptr %.sroa.9.16..sroa_idx.i, align 8, !alias.scope !2410, !noalias !2407 ; 2 uses
  %.sroa.11.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.16.copyload.i = load ptr, ptr %.sroa.11.16..sroa_idx.i, align 8, !alias.scope !2410, !noalias !2407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  %i.c = load i64, ptr %0, align 8, !alias.scope !2415, !noalias !2416, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2415, !noalias !2416, !noundef !4 ; 3 uses
  %i.f = icmp ule i64 %i.c, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %.not6.i.i = icmp eq i64 %i.c, %i.e
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterReKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuNCNvXss_NtB2r_12value_parserNtB3H_20PossibleValuesParserINtNtBa_7convert4FromABT_BW_E4from0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5E_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3z_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.val5.i.i = phi i64 [ %i.o, %bb.b ], [ %.sroa.9.16.copyload.i, %bb.a ] ; 3 uses
  %i.g = phi i64 [ %i.m, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.h = icmp ult i64 %i.g, 3
  call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2407, !noalias !2418, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2407, !noalias !2418, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2421
  invoke void @_RNvXs0_NtNtCs9ZYirdRbabK_12clap_builder7builder14possible_valueNtB5_13PossibleValueINtNtCscI6d9CVNmLh_4core7convert4FromReE4fromCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %bb.b unwind label %.body.i, !noalias !2428

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %.sroa.11.16.copyload.i, i64 %.val5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !2429
  %i.o = add i64 %.val5.i.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2421
  %.not.i.i = icmp eq i64 %i.m, %i.e
  br i1 %.not.i.i, label %_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterReKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuNCNvXss_NtB2r_12value_parserNtB3H_20PossibleValuesParserINtNtBa_7convert4FromABT_BW_E4from0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5E_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3z_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.i

.body.i:                                          ; preds = %.lr.ph.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val5.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !2428
  resume { ptr, i32 } %i.p

_RINvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB6_8IntoIterReKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCs9ZYirdRbabK_12clap_builder7builder14possible_value13PossibleValueuNCNvXss_NtB2r_12value_parserNtB3H_20PossibleValuesParserINtNtBa_7convert4FromABT_BW_E4from0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5E_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3z_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.b, %bb.a
  %.val3.i.i = phi i64 [ %.sroa.9.16.copyload.i, %bb.a ], [ %i.o, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !2428
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEENCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference15load_table_datas_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4callRB1X_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5l_3VecB57_E14extend_trustedBN_E0E0EB2Q_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_RB1q_uNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference15load_table_datas_0NCINvNvB2b_8for_each4callB3z_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5C_3VecB3z_E14extend_trustedINtB31_3MapBF_B3F_EE0E0E0EB3N_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 5                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 128
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 576460752303423484       ; 4 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [32 x i8], ptr %0, <2 x i64> %vec.ind
  %wide.gep2 = getelementptr inbounds nuw [32 x i8], ptr %0, <2 x i64> %step.add
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x ptr> %wide.gep, ptr %i.h, align 8, !noalias !2434
  store <2 x ptr> %wide.gep2, ptr %i.i, align 8, !noalias !2434
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !2446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_RB1q_uNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference15load_table_datas_0NCINvNvB2b_8for_each4callB3z_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5C_3VecB3z_E14extend_trustedINtB31_3MapBF_B3F_EE0E0E0EB3N_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.f, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.k = phi i64 [ %i.n, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.k
  store ptr %i.l, ptr %i.m, align 8, !noalias !2434
  %i.n = add i64 %i.k, 1                          ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_RB1q_uNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference15load_table_datas_0NCINvNvB2b_8for_each4callB3z_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5C_3VecB3z_E14extend_trustedINtB31_3MapBF_B3F_EE0E0E0EB3N_.exit, label %scalar.ph, !llvm.loop !2449

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtCsa9kMtYseX4l_11serde_regex5SerdeNtNtNtCskxSKy3V5Mgr_5regex5regex6string5RegexEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_RB1q_uNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference15load_table_datas_0NCINvNvB2b_8for_each4callB3z_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5C_3VecB3z_E14extend_trustedINtB31_3MapBF_B3F_EE0E0E0EB3N_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %middle.block ], [ %i.n, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2450
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2N_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB4g_16MigrationHarnessB2H_E14run_migrations0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleIB1o_DNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtB9H_4SendEL_EEEB7f_8try_folduNCINvNvB7f_12try_for_each4callNtB20_16MigrationVersionINtNtNtBc_3ops12control_flow11ControlFlowBaX_ENcNtBbl_5Break0E0Bbl_E0IBbm_Bbl_EEB2P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2454)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2456, !noalias !2451, !nonnull !4, !noundef !4
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !2456, !noalias !2451
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i = load ptr, ptr %i.b, align 8, !nonnull !4, !align !36
  br label %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i

_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.i, %bb.a
  %.sroa.6.0.i = phi ptr [ %i.f, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.i ], [ %.promoted.i, %bb.a ] ; 3 uses
  %i.e = icmp eq ptr %.sroa.6.0.i, %i.d
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 16 ; 2 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !2456, !noalias !2451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2459
  call void @_RNvXs1_NtCskLp0vI1JK7v_17diesel_migrations17migration_harnessINtB5_17HarnessWithOutputNtNtCs2bNgeUs5Jlc_6diesel8database15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB5_16MigrationHarnessNtNtNtB1o_21multi_connection_impl7backend12MultiBackendE13run_migrationB1q_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.6.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @37), !noalias !2463
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !2459 ; 3 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2459 ; 3 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2459 ; 3 uses
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i, -2
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.i

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %3, align 8, !noalias !2464, !noundef !4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.val3.i.i.i = load ptr, ptr %i.h, align 8, !noalias !2464 ; 6 uses
  %i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %i.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i) ]
  %i.j = load ptr, ptr %.val3.i.i.i, align 8, !invariant.load !4, !noalias !2468 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.j(ptr noundef nonnull %.val.i.i.i)
          to label %bb.f unwind label %bb.h, !noalias !2468

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !37, !invariant.load !4, !noalias !2468 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !38, !invariant.load !4, !noalias !2468
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #33, !noalias !2468
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.thread.i

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !37, !invariant.load !4, !noalias !2468 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.body.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !38, !invariant.load !4, !noalias !2468
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #33, !noalias !2468
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  store ptr %.sroa.4.0.copyload.i.i, ptr %3, align 8, !noalias !2464
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.h, align 8, !noalias !2464
  resume { ptr, i32 } %i.p

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.thread.i: ; preds = %bb.g, %bb.f, %bb.c
  store ptr %.sroa.4.0.copyload.i.i, ptr %3, align 8, !noalias !2464
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.h, align 8, !noalias !2464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2459
  br label %.loopexit.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2459
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -3
  br i1 %.not.i.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i, label %.loopexit.i

bb.j:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEENtNtB4_9try_trait3Try6branchCs2bNgeUs5Jlc_6diesel.exit.i
  store i64 -3, ptr %0, align 8, !alias.scope !2469, !noalias !2454
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3A_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtB1m_16MigrationVersionIBK_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB6b_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB6K_B5n_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB29_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB7H_16MigrationHarnessB23_E14run_migrations0NCINvXB4q_INtB4q_12GenericShuntINtB4o_3MapB3_B7z_EIB52_NtNtBa_7convert10InfallibleB5L_EEB3u_8try_folduNCINvNvB3u_12try_for_each4callB5n_B7o_NcNtB7o_5Break0E0B7o_E0E0B6J_EB2b_.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.thread.i
  %.sroa.7.sroa.5.1.ph.i = phi ptr [ undef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.thread.i ], [ %.sroa.5.0.copyload.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.i ]
  %.sroa.7.sroa.0.1.ph.i = phi ptr [ undef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.thread.i ], [ %.sroa.4.0.copyload.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B46_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB2q_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB6r_16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6j_EIB3L_NtNtBa_7convert10InfallibleB4u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbe_12try_for_each4callB46_B68_NcNtB68_5Break0E0B68_E0E0B2s_.exit.i ]
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8, !alias.scope !2472, !noalias !2454
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.sroa.0.1.ph.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2472, !noalias !2454
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.sroa.5.1.ph.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2472, !noalias !2454
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3A_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtB1m_16MigrationVersionIBK_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB6b_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB6K_B5n_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB29_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB7H_16MigrationHarnessB23_E14run_migrations0NCINvXB4q_INtB4q_12GenericShuntINtB4o_3MapB3_B7z_EIB52_NtNtBa_7convert10InfallibleB5L_EEB3u_8try_folduNCINvNvB3u_12try_for_each4callB5n_B7o_NcNtB7o_5Break0E0B7o_E0E0B6J_EB2b_.exit

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3A_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtB1m_16MigrationVersionIBK_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB6b_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB6K_B5n_EENCNvYINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness17HarnessWithOutputNtB29_15InferConnectionNtNtNtCsgczF5crJ4sT_3std2io5stdio6StdoutEINtB7H_16MigrationHarnessB23_E14run_migrations0NCINvXB4q_INtB4q_12GenericShuntINtB4o_3MapB3_B7z_EIB52_NtNtBa_7convert10InfallibleB5L_EEB3u_8try_folduNCINvNvB3u_12try_for_each4callB5n_B7o_NcNtB7o_5Break0E0B7o_E0E0B6J_EB2b_.exit: ; preds = %bb.j, %.loopexit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg28load_foreign_key_constraints00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callB1n_NCINvMsj_NtB1r_3vecINtB4J_3VecB1n_E14extend_trustedBN_E0E0EB2a_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !36, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNCNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg28load_foreign_key_constraints00NCINvNvB1t_8for_each4callBQ_NCINvMsj_NtBU_3vecINtB4Y_3VecBQ_E14extend_trustedINtB2j_3MapBF_B2V_EE0E0E0EB35_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val16.i = load ptr, ptr %i.m, align 8, !noalias !2476, !nonnull !4, !noundef !4
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val17.i = load i64, ptr %i.n, align 8, !noalias !2476, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2479
  invoke void @_RNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference22rust_name_for_sql_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !2476

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2482
  %i.p = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2479
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.k
  br i1 %i.r, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNCNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg28load_foreign_key_constraints00NCINvNvB1t_8for_each4callBQ_NCINvMsj_NtBU_3vecINtB4Y_3VecBQ_E14extend_trustedINtB2j_3MapBF_B2V_EE0E0E0EB35_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2476
  resume { ptr, i32 } %i.s

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNCNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals2pg28load_foreign_key_constraints00NCINvNvB1t_8for_each4callBQ_NCINvMsj_NtBU_3vecINtB4Y_3VecBQ_E14extend_trustedINtB2j_3MapBF_B2V_EE0E0E0EB35_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2476
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCNvMNtCs9ZYirdRbabK_12clap_builder5errorNtB25_5Error13invalid_value0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callB1n_NCINvMsj_NtB1r_3vecINtB4o_3VecB1n_E14extend_trustedBN_E0E0ECs2bNgeUs5Jlc_6diesel(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNCNvMNtCs9ZYirdRbabK_12clap_builder5errorNtB30_5Error13invalid_value0NCINvNvB1t_8for_each4callBQ_NCINvMsj_NtBU_3vecINtB4D_3VecBQ_E14extend_trustedINtB2j_3MapBF_B2V_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2487
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !2493

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2494
  %i.i = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2487
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNCNvMNtCs9ZYirdRbabK_12clap_builder5errorNtB30_5Error13invalid_value0NCINvNvB1t_8for_each4callBQ_NCINvMsj_NtBU_3vecINtB4D_3VecBQ_E14extend_trustedINtB2j_3MapBF_B2V_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2493
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNCNvMNtCs9ZYirdRbabK_12clap_builder5errorNtB30_5Error13invalid_value0NCINvNvB1t_8for_each4callBQ_NCINvMsj_NtBU_3vecINtB4D_3VecBQ_E14extend_trustedINtB2j_3MapBF_B2V_EE0E0E0ECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2493
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference15load_table_datas1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callB1n_NCINvMsj_NtB1r_3vecINtB4D_3VecB1n_E14extend_trustedBN_E0E0EB28_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !36, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference15load_table_datas1_0NCINvNvB1t_8for_each4callBQ_NCINvMsj_NtBU_3vecINtB4S_3VecBQ_E14extend_trustedINtB2j_3MapBF_B2V_EE0E0E0EB33_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val16.i = load ptr, ptr %i.m, align 8, !noalias !2499, !nonnull !4, !noundef !4
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val17.i = load i64, ptr %i.n, align 8, !noalias !2499, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2502
  invoke void @_RNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference22rust_name_for_sql_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !2499

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2505
  %i.p = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2502
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.k
  br i1 %i.r, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference15load_table_datas1_0NCINvNvB1t_8for_each4callBQ_NCINvMsj_NtBU_3vecINtB4S_3VecBQ_E14extend_trustedINtB2j_3MapBF_B2V_EE0E0E0EB33_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2499
  resume { ptr, i32 } %i.s

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_BQ_uNCNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference15load_table_datas1_0NCINvNvB1t_8for_each4callBQ_NCINvMsj_NtBU_3vecINtB4S_3VecBQ_E14extend_trustedINtB2j_3MapBF_B2V_EE0E0E0EB33_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2499
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgczF5crJ4sT_3std4path9ComponentENCNvCs2bNgeUs5Jlc_6diesel33convert_absolute_path_to_relatives1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB32_8for_each4callRNtNtNtB1r_3ffi6os_str5OsStrNCINvXsF_B1p_NtB1p_7PathBufINtNtB36_7collect6ExtendB45_E6extendBN_E0E0EB23_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsgczF5crJ4sT_3std4path9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1y_8adapters3map8map_foldRBQ_RNtNtNtBU_3ffi6os_str5OsStruNCNvCs2bNgeUs5Jlc_6diesel33convert_absolute_path_to_relatives1_0NCINvNvB1s_8for_each4callB2Q_NCINvXsF_BS_NtBS_7PathBufINtNtB1w_7collect6ExtendB2Q_E6extendINtB2i_3MapBF_B3i_EE0E0E0EB3m_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 56
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsgczF5crJ4sT_3std4path9ComponentRNtNtNtBZ_3ffi6os_str5OsStruNCNvCs2bNgeUs5Jlc_6diesel33convert_absolute_path_to_relatives1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1w_NCINvXsF_BX_NtBX_7PathBufINtNtB3b_7collect6ExtendB1w_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Y_EE0E0E0B22_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.p, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsgczF5crJ4sT_3std4path9ComponentRNtNtNtBZ_3ffi6os_str5OsStruNCNvCs2bNgeUs5Jlc_6diesel33convert_absolute_path_to_relatives1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1w_NCINvXsF_BX_NtBX_7PathBufINtNtB3b_7collect6ExtendB1w_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Y_EE0E0E0B22_.exit.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.01.0.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2510)
  %i.g = load i8, ptr %i.f, align 8, !range !2513, !alias.scope !2514, !noalias !2519, !noundef !4 ; 2 uses
  %i.h = icmp samesign ugt i8 %i.g, 5
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENCNCNvNtB1t_12print_schema13output_schemas_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3w_8for_each4callINtNtBc_6option6OptionNtB1p_10ColumnTypeENCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5n_3VecB4z_E14extend_trustedBN_E0E0EB1t_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  %i.do = load i8, ptr %.sroa.5.0.copyload, align 1, !range !91, !noalias !2602, !noundef !4
  %i.dp = icmp eq i8 %i.do, 2
  br i1 %i.dp, label %.split.i.i.i.i, label %.invoke.i

.invoke.i:                                        ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE6filterNCNCNCNvNtBP_12print_schema13output_schemas_00s_0EBP_.exit.thread8.i.i.i
  invoke fastcc void @_RNvXsa_NtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structuresNtB5_10ColumnTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(120) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ar)
          to label %.invoke.i._RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i_crit_edge unwind label %.loopexit.split-lp.loopexit.i, !noalias !2576

.invoke.i._RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i_crit_edge: ; preds = %.invoke.i
  %.sroa.0.0.copyload2.i.i.pre = load i64, ptr %i.i, align 16, !noalias !2605
  br label %_RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i

.split.i.i.i.i:                                   ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeE6filterNCNCNCNvNtBP_12print_schema13output_schemas_00s_0EBP_.exit.thread8.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2602
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2602
  store ptr %i.aq, ptr %i.b, align 8, !noalias !2602
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !2602
  store ptr %i.dq, ptr %i.v, align 8, !noalias !2602
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !2602
  store ptr %i.dr, ptr %i.w, align 8, !noalias !2602
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !2602
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @24, ptr noundef nonnull %i.b)
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2576

.noexc23.i:                                       ; preds = %.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2602
  %i.ds = load ptr, ptr %i.x, align 8, !noalias !2602, !nonnull !4, !noundef !4
  %i.dt = load i64, ptr %i.y, align 8, !noalias !2602, !noundef !4
  invoke void @_RNvXNtCs8t5PhLzwZ12_4heck11upper_cameleNtB2_16ToUpperCamelCase19to_upper_camel_case(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.dt)
          to label %bb.t unwind label %bb.s, !noalias !2606

.body.i.i.i.i:                                    ; preds = %bb.w, %bb.u, %bb.s
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.dv, %bb.u ], [ %i.du, %bb.s ], [ %i.eb, %bb.w ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.loopexit.split-lp.i unwind label %bb.aa, !noalias !2606

bb.s:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i, %.noexc23.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.t:                                             ; preds = %.noexc23.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2602
  invoke fastcc void @_RNvXsa_NtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structuresNtB5_10ColumnTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ar)
          to label %bb.v unwind label %bb.u, !noalias !2606

bb.u:                                             ; preds = %bb.t
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #30
          to label %.body.i.i.i.i unwind label %bb.aa, !noalias !2606

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aa, ptr noundef nonnull align 16 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !2607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !2607
  %i.dw = load i8, ptr %i.ae, align 16, !range !519, !noalias !2602, !noundef !4
  store i8 %i.dw, ptr %i.af, align 16, !alias.scope !2599, !noalias !2607
  %i.dx = load i8, ptr %i.ag, align 1, !range !519, !noalias !2602, !noundef !4
  store i8 %i.dx, ptr %i.ah, align 1, !alias.scope !2599, !noalias !2607
  %i.dy = load i8, ptr %i.ai, align 2, !range !519, !noalias !2602, !noundef !4
  store i8 %i.dy, ptr %i.aj, align 2, !alias.scope !2599, !noalias !2607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !2607
  %i.dz = load <2 x i64>, ptr %i.a, align 16, !noalias !2602
  %i.ea = load i64, ptr %i.a, align 16, !range !517, !noalias !2602, !noundef !4
  store <2 x i64> %i.dz, ptr %i.i, align 16, !alias.scope !2599, !noalias !2607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2602
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i unwind label %bb.w, !noalias !2606

bb.w:                                             ; preds = %bb.v
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body.i.i.i.i unwind label %bb.x, !noalias !2606

bb.x:                                             ; preds = %bb.w
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !2606
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i unwind label %bb.s, !noalias !2606

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2602
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i unwind label %bb.y, !noalias !2606

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.loopexit.split-lp.i unwind label %bb.z, !noalias !2606

bb.z:                                             ; preds = %bb.y
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !2606
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc24.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !2576

.noexc24.i:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit19.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2602
  br label %_RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i

bb.aa:                                            ; preds = %bb.u, %.body.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !2606
  unreachable

_RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i: ; preds = %.invoke.i._RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i_crit_edge, %.noexc24.i
  %.sroa.0.0.copyload2.i.i = phi i64 [ %.sroa.0.0.copyload2.i.i.pre, %.invoke.i._RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i_crit_edge ], [ %i.ea, %.noexc24.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.am, i64 112, i1 false), !noalias !2608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2577
  br label %.loopexit25.i

.loopexit25.i:                                    ; preds = %_RNCNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s_00Bb_.exitthread-pre-split.i.i.i.i.i.i, %_RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i, %.noexc.i
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload2.i.i, %_RNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s0_0B9_.exit.i.i.i ], [ -1, %.noexc.i ], [ -1, %_RNCNCNCNCNvNtCs2bNgeUs5Jlc_6diesel12print_schema13output_schemas_00s_00Bb_.exitthread-pre-split.i.i.i.i.i.i ]
  %i.eg = getelementptr inbounds nuw [120 x i8], ptr %.sroa.10.0.copyload, i64 %.sroa.6.0 ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %i.eg, align 8, !noalias !2609
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.i.i, i64 112, i1 false), !noalias !2614
  %i.eh = add i64 %.sroa.6.0, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %i.ei = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ej = icmp eq i64 %i.ei, %i.r
  br i1 %i.ej, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionNtBS_10ColumnTypeEuNCNCNvNtBW_12print_schema13output_schemas_00NCINvNvB2f_8for_each4callB3D_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5C_3VecB3D_E14extend_trustedINtB35_3MapBF_B4i_EE0E0E0EBW_.exit, label %bb.c

.loopexit.split-lp.i:                             ; preds = %bb.y, %.body.i.i.i.i, %bb.q, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i, %bb.q ], [ %i.ed, %bb.y ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit26.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp27.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.6.0, ptr %.sroa.0.0.copyload, align 8, !noalias !2576
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionNtBS_10ColumnTypeEuNCNCNvNtBW_12print_schema13output_schemas_00NCINvNvB2f_8for_each4callB3D_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5C_3VecB3D_E14extend_trustedINtB35_3MapBF_B4i_EE0E0E0EBW_.exit: ; preds = %.loopexit25.i, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.eh, %.loopexit25.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2576
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENCNvNtNtB1t_10migrations11diff_schema20collect_record_types0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB4E_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDB3L_p4ItemTINtNtB62_6borrow3CoweEINtNtBc_6option6OptionRSNtB1p_10ColumnTypeEEEL_EINtNtNtBa_7sources4once4OnceB6H_EEuINtNtNtBc_3ops12control_flow11ControlFlowTB6I_B7q_EENCINvNvXsi_B4E_B4R_B3L_8try_fold7flattenB5D_uB8p_NCINvNvB3L_8find_map5checkB6H_B94_QNCB2O_s_0E0E0E0B8p_EB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2620, !noalias !2615, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !2620, !noalias !2615 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2e_8adapters3map12map_try_foldRBJ_INtNtB34_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDB28_p4ItemTINtNtB45_6borrow3CoweEINtNtBa_6option6OptionRSNtBL_10ColumnTypeEEEL_EINtNtNtB2e_7sources4once4OnceB4K_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB4L_B5t_EENCNvNtNtBP_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB34_7flattenINtB8q_13FlattenCompatppE13iter_try_fold7flattenB3F_uB6s_NCINvNvXsi_B8q_B8E_B28_8try_fold7flattenB3F_uB6s_NCINvNvB28_8find_map5checkB4K_B77_QNCB7k_s_0E0E0E0E0B6s_EBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %.sroa.53.0..8.val.sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.66.0..8.val.sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.79.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.812.0..8.val.sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %.lr.ph.i
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.p ] ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192 ; 3 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !2620, !noalias !2615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2623
  call void @llvm.experimental.noalias.scope.decl(metadata !2624)
  call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2630
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2633, !noalias !2634, !nonnull !4, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2633, !noalias !2634, !noundef !4 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8, !noalias !2630
  store i64 %i.o, ptr %i.g, align 8, !noalias !2630
  store i64 -1, ptr %i.a, align 8, !noalias !2630
  %i.p = call { ptr, ptr } @_RNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema22recursive_record_types(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2634 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2630
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.r = load i64, ptr %i.q, align 8, !range !24, !alias.scope !2633, !noalias !2634, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.r, -1              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2633, !noalias !2634, !nonnull !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !2633, !noalias !2634
  %.sroa.54.0.i.i.i = select i1 %.not.i.i.i, i64 undef, i64 %i.v ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, ptr null, ptr %i.t ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2635)
  call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  call void @llvm.experimental.noalias.scope.decl(metadata !2640)
  %i.y = load i64, ptr %3, align 8, !range !2643, !alias.scope !2644, !noalias !2645, !noundef !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, -4
  br i1 %i.z, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionINtNtB6_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemTINtNtB2N_6borrow3CoweEINtNtBa_6option6OptionRSNtB12_10ColumnTypeEEEL_EINtNtNtB8_7sources4once4OnceB3W_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB3X_B4F_EENCNvNtNtB16_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE13iter_try_fold7flattenB2o_uB5E_NCINvNvXsi_B7D_B7Q_B3i_8try_fold7flattenB2o_uB5E_NCINvNvB3i_8find_map5checkB3W_B6j_QNCB6w_s_0E0E0E0E0B16_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2652, !noalias !2645, !noundef !4 ; 4 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !2652, !noalias !2645 ; 6 uses
  %i.aa = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i) ]
  %i.ab = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !invariant.load !4, !noalias !2653 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.ab(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.f unwind label %bb.h, !noalias !2653

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !37, !invariant.load !4, !noalias !2653 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !38, !invariant.load !4, !noalias !2653
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #33, !noalias !2653
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !37, !invariant.load !4, !noalias !2653 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.body.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !38, !invariant.load !4, !noalias !2653
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #33, !noalias !2653
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources4once4OnceTINtNtCs40k4W9msRzi_5alloc6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEEEB2l_(ptr noalias noundef nonnull align 8 dereferenceable(56) %3) #30
          to label %.body.i.i.i.i unwind label %bb.m, !noalias !2654

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.c
  %i.an = icmp ugt i64 %i.y, -4
  br i1 %i.an, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionINtNtB6_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemTINtNtB2N_6borrow3CoweEINtNtBa_6option6OptionRSNtB12_10ColumnTypeEEEL_EINtNtNtB8_7sources4once4OnceB3W_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB3X_B4F_EENCNvNtNtB16_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE13iter_try_fold7flattenB2o_uB5E_NCINvNvXsi_B7D_B7Q_B3i_8try_fold7flattenB2o_uB5E_NCINvNvB3i_8find_map5checkB3W_B6j_QNCB6w_s_0E0E0E0E0B16_.exit.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit.i.i.i.i.i.i
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(56) %3)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.k, !noalias !2654

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(56) %3)
          to label %.body.i.i.i.i unwind label %bb.l, !noalias !2654

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !2654
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(56) %3)
          to label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionINtNtB6_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemTINtNtB2N_6borrow3CoweEINtNtBa_6option6OptionRSNtB12_10ColumnTypeEEEL_EINtNtNtB8_7sources4once4OnceB3W_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB3X_B4F_EENCNvNtNtB16_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE13iter_try_fold7flattenB2o_uB5E_NCINvNvXsi_B7D_B7Q_B3i_8try_fold7flattenB2o_uB5E_NCINvNvB3i_8find_map5checkB3W_B6j_QNCB6w_s_0E0E0E0E0B16_.exit.i unwind label %bb.n, !noalias !2654

bb.m:                                             ; preds = %.body.i.i.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !2654
  unreachable

bb.n:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.n, %bb.k, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %i.ao, %bb.k ], [ %i.ah, %.body.i.i.i.i.i.i ]
  store i64 -1, ptr %3, align 8, !alias.scope !2655, !noalias !2656
  store ptr %i.m, ptr %.sroa.53.0..8.val.sroa_idx4.i.i, align 8, !alias.scope !2655, !noalias !2656
  store i64 %i.o, ptr %.sroa.66.0..8.val.sroa_idx7.i.i, align 8, !alias.scope !2655, !noalias !2656
  store ptr %.sroa.0.0.i.i.i, ptr %.sroa.79.0..8.val.sroa_idx10.i.i, align 8, !alias.scope !2655, !noalias !2656
  store i64 %.sroa.54.0.i.i.i, ptr %.sroa.812.0..8.val.sroa_idx13.i.i, align 8, !alias.scope !2655, !noalias !2656
  store ptr %i.x, ptr %i.h, align 8, !alias.scope !2655, !noalias !2656
  store ptr %i.w, ptr %i.i, align 8, !alias.scope !2655, !noalias !2656
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionINtNtB6_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemTINtNtB2N_6borrow3CoweEINtNtBa_6option6OptionRSNtB12_10ColumnTypeEEEL_EINtNtNtB8_7sources4once4OnceB3W_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB3X_B4F_EENCNvNtNtB16_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE13iter_try_fold7flattenB2o_uB5E_NCINvNvXsi_B7D_B7Q_B3i_8try_fold7flattenB2o_uB5E_NCINvNvB3i_8find_map5checkB3W_B6j_QNCB6w_s_0E0E0E0E0B16_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit.i.i.i.i.i.i, %bb.b
  store i64 -1, ptr %3, align 8, !alias.scope !2655, !noalias !2656
  store ptr %i.m, ptr %.sroa.53.0..8.val.sroa_idx4.i.i, align 8, !alias.scope !2655, !noalias !2656
  store i64 %i.o, ptr %.sroa.66.0..8.val.sroa_idx7.i.i, align 8, !alias.scope !2655, !noalias !2656
  store ptr %.sroa.0.0.i.i.i, ptr %.sroa.79.0..8.val.sroa_idx10.i.i, align 8, !alias.scope !2655, !noalias !2656
  store i64 %.sroa.54.0.i.i.i, ptr %.sroa.812.0..8.val.sroa_idx13.i.i, align 8, !alias.scope !2655, !noalias !2656
  store ptr %i.x, ptr %i.h, align 8, !alias.scope !2655, !noalias !2656
  store ptr %i.w, ptr %i.i, align 8, !alias.scope !2655, !noalias !2656
  call void @_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB5_5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB15_6borrow3CoweEINtNtBb_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB2e_EEB1A_8try_folduQNCINvNvB1A_8find_map5checkB2e_TB2f_B2X_EQNCNvNtNtB35_10migrations11diff_schema20collect_record_typess_0E0INtNtNtBb_3ops12control_flow11ControlFlowB5E_EEB35_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !2657
  %i.as = load i64, ptr %i.b, align 8, !range !1752, !alias.scope !2658, !noalias !2661, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.as, -2
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionINtNtB6_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemTINtNtB2N_6borrow3CoweEINtNtBa_6option6OptionRSNtB12_10ColumnTypeEEEL_EINtNtNtB8_7sources4once4OnceB3W_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB3X_B4F_EENCNvNtNtB16_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE13iter_try_fold7flattenB2o_uB5E_NCINvNvXsi_B7D_B7Q_B3i_8try_fold7flattenB2o_uB5E_NCINvNvB3i_8find_map5checkB3W_B6j_QNCB6w_s_0E0E0E0E0B16_.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx2.i, i64 32, i1 false), !noalias !2618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2623
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2e_8adapters3map12map_try_foldRBJ_INtNtB34_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDB28_p4ItemTINtNtB45_6borrow3CoweEINtNtBa_6option6OptionRSNtBL_10ColumnTypeEEEL_EINtNtNtB2e_7sources4once4OnceB4K_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB4L_B5t_EENCNvNtNtBP_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB34_7flattenINtB8q_13FlattenCompatppE13iter_try_fold7flattenB3F_uB6s_NCINvNvXsi_B8q_B8E_B28_8try_fold7flattenB3F_uB6s_NCINvNvB28_8find_map5checkB4K_B77_QNCB7k_s_0E0E0E0E0B6s_EBP_.exit

bb.p:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionINtNtB6_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemTINtNtB2N_6borrow3CoweEINtNtBa_6option6OptionRSNtB12_10ColumnTypeEEEL_EINtNtNtB8_7sources4once4OnceB3W_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB3X_B4F_EENCNvNtNtB16_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE13iter_try_fold7flattenB2o_uB5E_NCINvNvXsi_B7D_B7Q_B3i_8try_fold7flattenB2o_uB5E_NCINvNvB3i_8find_map5checkB3W_B6j_QNCB6w_s_0E0E0E0E0B16_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2623
  %i.at = icmp eq ptr %i.k, %i.d
  br i1 %i.at, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2e_8adapters3map12map_try_foldRBJ_INtNtB34_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDB28_p4ItemTINtNtB45_6borrow3CoweEINtNtBa_6option6OptionRSNtBL_10ColumnTypeEEEL_EINtNtNtB2e_7sources4once4OnceB4K_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB4L_B5t_EENCNvNtNtBP_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB34_7flattenINtB8q_13FlattenCompatppE13iter_try_fold7flattenB3F_uB6s_NCINvNvXsi_B8q_B8E_B28_8try_fold7flattenB3F_uB6s_NCINvNvB28_8find_map5checkB4K_B77_QNCB7k_s_0E0E0E0E0B6s_EBP_.exit, label %bb.b

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2e_8adapters3map12map_try_foldRBJ_INtNtB34_5chain5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDB28_p4ItemTINtNtB45_6borrow3CoweEINtNtBa_6option6OptionRSNtBL_10ColumnTypeEEEL_EINtNtNtB2e_7sources4once4OnceB4K_EEuINtNtNtBa_3ops12control_flow11ControlFlowTB4L_B5t_EENCNvNtNtBP_10migrations11diff_schema20collect_record_types0NCINvNvMsg_NtB34_7flattenINtB8q_13FlattenCompatppE13iter_try_fold7flattenB3F_uB6s_NCINvNvXsi_B8q_B8E_B28_8try_fold7flattenB3F_uB6s_NCINvNvB28_8find_map5checkB4K_B77_QNCB7k_s_0E0E0E0E0B6s_EBP_.exit: ; preds = %bb.p, %bb.a, %bb.o
  %storemerge.i = phi i64 [ %i.as, %bb.o ], [ -2, %bb.a ], [ -2, %bb.p ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2615, !noalias !2618
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENCINvMNtNtB1t_10migrations11diff_schemaNtB2W_10SchemaDiff17generate_down_sqlNtNtNtCsjRvGck33osM_6diesel2pg7backend2PgNtNtB48_13query_builder14PgQueryBuilderE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5p_8for_each4callTNtNtCs40k4W9msRzi_5alloc6string6StringB6t_B6t_ENCINvMsj_NtB6x_3vecINtB7n_3VecB6s_E14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2p_8adapters3map8map_foldRBQ_TNtNtCs40k4W9msRzi_5alloc6string6StringB3I_B3I_EuNCINvMNtNtBW_10migrations11diff_schemaNtB4A_10SchemaDiff17generate_down_sqlNtNtNtCsjRvGck33osM_6diesel2pg7backend2PgNtNtB5L_13query_builder14PgQueryBuilderE0NCINvNvB2j_8for_each4callB3H_NCINvMsj_NtB3M_3vecINtB7D_3VecB3H_E14extend_trustedINtB39_3MapBF_B4u_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 216
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %bb.n, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.y, %bb.n ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.n ] ; 2 uses
  %i.m = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %.sroa.01.0.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2669
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %.noexc.i unwind label %bb.c, !noalias !2674

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2669
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !2675, !noalias !2676, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !2675, !noalias !2676, !nonnull !4, !noundef !4
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.i unwind label %.loopexit.i, !noalias !2676

bb.f:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #31
          to label %bb.h unwind label %.loopexit.split-lp.i, !noalias !2676

bb.g:                                             ; preds = %bb.l, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi20.i, %bb.l ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %bb.o unwind label %bb.m, !noalias !2676

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_RINvXs_NtCskzDgqFjc8lf_13toml_datetime2deINtB5_20DatetimeDeserializerNtNtNtCsjgZ4NMfOQZW_4toml2de5error5ErrorENtNtCseMV7gzmhUlG_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsbhNHOhwu1VQ_5serde7private2de7content14ContentVisitorECs2bNgeUs5Jlc_6diesel:bb.a
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema41extract_record_types_from_changed_columns0EIB11_IB1h_TNtNtNtB2G_22infer_schema_internals15data_structures16ColumnDefinitionB1G_EENCB2A_s_0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvXB7_INtB7_12GenericShuntBO_INtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtB2G_6errors5ErrorEEB5I_8try_folduNCINvNvB5I_12try_for_each4callB4k_INtNtNtBb_3ops12control_flow11ControlFlowB4k_ENcNtB8S_5Break0E0B8S_E0IB8T_B8S_EEB2G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef nonnull %2, ptr noalias noundef align 8 dereferenceable(88) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.sroa.0.i.i.i = alloca [160 x i8], align 8 ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i.i = alloca [16 x i8], align 8  ; 5 uses
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.sroa.5.i.i.i = alloca [72 x i8], align 8 ; 7 uses
  %.sroa.4.i.i.i = alloca [88 x i8], align 8      ; 7 uses
  %.sroa.9.i.i = alloca [16 x i8], align 8        ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.07.i.sroa.5.i.i.i = alloca [72 x i8], align 8 ; 6 uses
  %i.g = alloca [120 x i8], align 8               ; 7 uses
  %.sroa.6.i.i.i.i = alloca [88 x i8], align 8    ; 6 uses
  %i.h = alloca [120 x i8], align 8               ; 6 uses
  %.sroa.5.i.i.i = alloca [88 x i8], align 8      ; 5 uses
  %i.i = alloca [192 x i8], align 8               ; 7 uses
  %i.j = alloca [192 x i8], align 8               ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %3, ptr %i.m, align 8
  %i.n = load ptr, ptr %1, align 8, !noundef !4   ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2988)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2991)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2994
  store ptr %i.l, ptr %i.k, align 8, !noalias !2997
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.p, align 8, !noalias !2997
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3001, !noalias !3004, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = icmp eq ptr %i.n, %i.r
  br i1 %i.s, label %.loopexit38, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.511.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.07.i.sroa.5.120..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.i.sroa.5.i.i.i, i64 24
  %.sroa.07.i.sroa.5.144..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.i.sroa.5.i.i.i, i64 48
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.sroa.63.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.u = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.v, %bb.l ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 168 ; 3 uses
  store ptr %i.v, ptr %1, align 8, !alias.scope !3001, !noalias !3004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2997
  call void @llvm.experimental.noalias.scope.decl(metadata !3005)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3008
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3014
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3014
  call void @_RNvMNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structuresNtB2_10ColumnType14for_column_def(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.u), !noalias !3016
  %i.w = load i64, ptr %i.g, align 8, !range !360, !noalias !3014, !noundef !4 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 88, i1 false), !noalias !3014
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.i.i.i.i, i64 88, i1 false), !noalias !3017
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefINtNtBa_6result6ResultNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtNtB2j_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Z_B2d_EENCNvNtNtB2j_10migrations11diff_schema41extract_record_types_from_changed_columns0QNCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4O_EIB6W_IB76_TB2d_B10_EENCB4Q_s_0EEIB1S_NtNtBa_7convert10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8N_12try_for_each4callB2d_B4D_NcNtB4D_5Break0E0B4D_E0E0B2j_.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !3014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.i.i.i.i, i64 88, i1 false), !noalias !3014
  store i64 %i.w, ptr %i.h, align 8, !noalias !3014
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3014
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3018, !noalias !3016, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !3018, !noalias !3016, !noundef !4
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc3stre12to_lowercase(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab)
          to label %bb.h unwind label %bb.g, !noalias !3016

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.ac, %bb.g ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEBH_(ptr noalias noundef align 8 dereferenceable(120) %i.h) #30
          to label %common.resume unwind label %bb.k, !noalias !3016

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3014
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.j unwind label %bb.i, !noalias !3016

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #30
          to label %bb.f unwind label %bb.k, !noalias !3016

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i.i.i, i64 88, i1 false), !noalias !3017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !3008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i.sroa.5.120..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i.sroa.5.144..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3014
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefINtNtBa_6result6ResultNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtNtB2j_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Z_B2d_EENCNvNtNtB2j_10migrations11diff_schema41extract_record_types_from_changed_columns0QNCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4O_EIB6W_IB76_TB2d_B10_EENCB4Q_s_0EEIB1S_NtNtBa_7convert10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8N_12try_for_each4callB2d_B4D_NcNtB4D_5Break0E0B4D_E0E0B2j_.exit.i.i

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !3016
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.ac, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.f ], [ %i.az, %bb.ac ], [ %.pn.pn.i.i.i.i.i, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefINtNtBa_6result6ResultNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtNtB2j_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Z_B2d_EENCNvNtNtB2j_10migrations11diff_schema41extract_record_types_from_changed_columns0QNCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4O_EIB6W_IB76_TB2d_B10_EENCB4Q_s_0EEIB1S_NtNtBa_7convert10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8N_12try_for_each4callB2d_B4D_NcNtB4D_5Break0E0B4D_E0E0B2j_.exit.i.i: ; preds = %bb.j, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3014
  store i64 %i.w, ptr %i.i, align 8, !noalias !3008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i.i.i, i64 88, i1 false), !noalias !3008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.07.i.sroa.5.i.i.i, i64 72, i1 false), !noalias !3008
  store i64 -1, ptr %.sroa.63.0..sroa_idx.i.i.i, align 8, !noalias !3008
  call void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvXNtNtBb_4iter8adaptersINtBU_12GenericShuntINtNtBU_5chain5ChainINtNtBU_3map3MapINtNtNtBb_5slice4iter4IterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefENCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema41extract_record_types_from_changed_columns0EIB1U_IB2a_TNtNtNtB3z_22infer_schema_internals15data_structures16ColumnDefinitionB2z_EENCB3t_s_0EEINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtB3z_6errors5ErrorEENtNtNtBW_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB5d_INtNtB9_12control_flow11ControlFlowB5d_ENcNtB91_5Break0E0B91_E0INtB7_5FnMutTuIB6C_B5d_B7o_EEE8call_mutB3z_(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.i), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3008
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.sroa.5.i.i.i)
  %i.ag = load i64, ptr %i.j, align 8, !range !3020, !alias.scope !3021, !noalias !3024, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ag, -2
  br i1 %.not.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefINtNtBa_6result6ResultNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtNtB2j_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Z_B2d_EENCNvNtNtB2j_10migrations11diff_schema41extract_record_types_from_changed_columns0QNCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4O_EIB6W_IB76_TB2d_B10_EENCB4Q_s_0EEIB1S_NtNtBa_7convert10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8N_12try_for_each4callB2d_B4D_NcNtB4D_5Break0E0B4D_E0E0B2j_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2997
  %i.ah = icmp eq ptr %i.v, %i.r
  br i1 %i.ah, label %.loopexit38, label %bb.c

bb.m:                                             ; preds = %.loopexit38, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !noundef !4 ; 3 uses
  %.not4 = icmp eq ptr %i.aj, null
  br i1 %.not4, label %bb.ae, label %bb.p

bb.n:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefINtNtBa_6result6ResultNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtNtB2j_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Z_B2d_EENCNvNtNtB2j_10migrations11diff_schema41extract_record_types_from_changed_columns0QNCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4O_EIB6W_IB76_TB2d_B10_EENCB4Q_s_0EEIB1S_NtNtBa_7convert10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8N_12try_for_each4callB2d_B4D_NcNtB4D_5Break0E0B4D_E0E0B2j_.exit.i.i
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7.0..sroa_idx6.i.i, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2994
  store i64 %i.ag, ptr %0, align 8, !alias.scope !3026
  br label %bb.o

.loopexit38:                                      ; preds = %bb.l, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2994
  store ptr null, ptr %1, align 8
  br label %bb.m

bb.o:                                             ; preds = %bb.ae, %.loopexit37, %.loopexit, %bb.n
  ret void

bb.p:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.m, align 8, !nonnull !4, !align !36, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  call void @llvm.experimental.noalias.scope.decl(metadata !3033)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.sroa.0.i.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !3036, !noalias !3039, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = icmp eq ptr %i.aj, %i.am
  br i1 %i.an, label %.loopexit37, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %bb.p
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.i.sroa.5.120..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.5.i.i.i, i64 24
  %.sroa.0.i.sroa.5.144..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.5.i.i.i, i64 48
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.i.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.410.i.sroa.0.88..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.sroa.0.i.i.i, i64 88
  br label %bb.q

bb.q:                                             ; preds = %bb.ad, %.lr.ph.i.i7
  %i.ao = phi ptr [ %i.aj, %.lr.ph.i.i7 ], [ %i.ap, %bb.ad ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 3 uses
  store ptr %i.ap, ptr %i.ai, align 8, !alias.scope !3036, !noalias !3039
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3043)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  call void @llvm.experimental.noalias.scope.decl(metadata !3049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3052
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq), !noalias !3056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3052
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %bb.t unwind label %bb.s, !noalias !3056

bb.r:                                             ; preds = %bb.u, %bb.s
  %.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %bb.u ], [ %i.as, %bb.s ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #30
          to label %common.resume unwind label %bb.aa, !noalias !3056

bb.s:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3052
  invoke fastcc void @_RNvXsa_NtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structuresNtB5_10ColumnTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %i.ao)
          to label %bb.w unwind label %bb.v, !noalias !3056

bb.u:                                             ; preds = %bb.y, %bb.v
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.aw, %bb.y ], [ %i.at, %bb.v ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %bb.r unwind label %bb.aa, !noalias !3056

bb.v:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 168 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !24, !alias.scope !3057, !noalias !3056, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %i.av, -1
  br i1 %.not.i.i.i.i.i, label %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema41extract_record_types_from_changed_columnss_0B7_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3052
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %bb.z unwind label %bb.y, !noalias !3056

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEBH_(ptr noalias noundef align 8 dereferenceable(120) %i.b) #30
          to label %bb.u unwind label %bb.aa, !noalias !3056

bb.z:                                             ; preds = %bb.x
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !3052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i.i, i64 16, i1 false), !noalias !3058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3052
  br label %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema41extract_record_types_from_changed_columnss_0B7_.exit.i.i.i

bb.aa:                                            ; preds = %bb.y, %bb.u, %bb.r
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !3056
  unreachable

_RNCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema41extract_record_types_from_changed_columnss_0B7_.exit.i.i.i: ; preds = %bb.z, %bb.w
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i, %bb.z ], [ -1, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.5.120..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.5.144..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3058
  %.sroa.0.i.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 8, !noalias !3059 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.sroa.4.0..sroa_idx.i.i.i, i64 88, i1 false), !noalias !3058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.5.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !3058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3052
  %i.ay = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i.i, -1
  br i1 %i.ay, label %bb.ab, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEINtNtBa_6result6ResultB11_NtNtB17_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB45_B11_EENCNvNtNtB17_10migrations11diff_schema41extract_record_types_from_changed_columnss_0NCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB2p_ENCB4W_0EIB73_IB7d_B10_EB4U_EEIB3i_NtNtBa_7convert10InfallibleB3H_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8M_12try_for_each4callB11_B4J_NcNtB4J_5Break0E0B4J_E0E0B17_.exit.i.i

bb.ab:                                            ; preds = %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema41extract_record_types_from_changed_columnss_0B7_.exit.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs2bNgeUs5Jlc_6diesel6errors5ErrorEEEB1O_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ak)
          to label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEINtNtBa_6result6ResultB11_NtNtB17_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB45_B11_EENCNvNtNtB17_10migrations11diff_schema41extract_record_types_from_changed_columnss_0NCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB2p_ENCB4W_0EIB73_IB7d_B10_EB4U_EEIB3i_NtNtBa_7convert10InfallibleB3H_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8M_12try_for_each4callB11_B4J_NcNtB4J_5Break0E0B4J_E0E0B17_.exit.thread.i.i unwind label %bb.ac, !noalias !3060

bb.ac:                                            ; preds = %bb.ab
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i.i.i, i64 88, i1 false), !noalias !3064
  br label %common.resume

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEINtNtBa_6result6ResultB11_NtNtB17_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB45_B11_EENCNvNtNtB17_10migrations11diff_schema41extract_record_types_from_changed_columnss_0NCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB2p_ENCB4W_0EIB73_IB7d_B10_EB4U_EEIB3i_NtNtBa_7convert10InfallibleB3H_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8M_12try_for_each4callB11_B4J_NcNtB4J_5Break0E0B4J_E0E0B17_.exit.thread.i.i: ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i.i.i, i64 88, i1 false), !noalias !3064
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.5.i.i.i)
  br label %.loopexit

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEINtNtBa_6result6ResultB11_NtNtB17_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB45_B11_EENCNvNtNtB17_10migrations11diff_schema41extract_record_types_from_changed_columnss_0NCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB2p_ENCB4W_0EIB73_IB7d_B10_EB4U_EEIB3i_NtNtBa_7convert10InfallibleB3H_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8M_12try_for_each4callB11_B4J_NcNtB4J_5Break0E0B4J_E0E0B17_.exit.i.i: ; preds = %_RNCNvNtNtCs2bNgeUs5Jlc_6diesel10migrations11diff_schema41extract_record_types_from_changed_columnss_0B7_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.410.i.sroa.0.88..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.sroa.5.i.i.i, i64 72, i1 false), !noalias !3065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !noalias !3066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.410.i.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i.i.i, i64 88, i1 false), !noalias !3065
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.5.i.i.i)
  %.not.i.i.i8 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i.i, -2
  br i1 %.not.i.i.i8, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEINtNtBa_6result6ResultB11_NtNtB17_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB45_B11_EENCNvNtNtB17_10migrations11diff_schema41extract_record_types_from_changed_columnss_0NCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB2p_ENCB4W_0EIB73_IB7d_B10_EB4U_EEIB3i_NtNtBa_7convert10InfallibleB3H_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8M_12try_for_each4callB11_B4J_NcNtB4J_5Break0E0B4J_E0E0B17_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  %i.ba = icmp eq ptr %i.ap, %i.am
  br i1 %i.ba, label %.loopexit37, label %bb.q

bb.ae:                                            ; preds = %bb.m
  store i64 -2, ptr %0, align 8, !alias.scope !3067
  br label %bb.o

.loopexit:                                        ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEINtNtBa_6result6ResultB11_NtNtB17_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB45_B11_EENCNvNtNtB17_10migrations11diff_schema41extract_record_types_from_changed_columnss_0NCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB2p_ENCB4W_0EIB73_IB7d_B10_EB4U_EEIB3i_NtNtBa_7convert10InfallibleB3H_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8M_12try_for_each4callB11_B4J_NcNtB4J_5Break0E0B4J_E0E0B17_.exit.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEINtNtBa_6result6ResultB11_NtNtB17_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB45_B11_EENCNvNtNtB17_10migrations11diff_schema41extract_record_types_from_changed_columnss_0NCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB2p_ENCB4W_0EIB73_IB7d_B10_EB4U_EEIB3i_NtNtBa_7convert10InfallibleB3H_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8M_12try_for_each4callB11_B4J_NcNtB4J_5Break0E0B4J_E0E0B17_.exit.thread.i.i
  %.sroa.8.113.i.i = phi i64 [ undef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEINtNtBa_6result6ResultB11_NtNtB17_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB45_B11_EENCNvNtNtB17_10migrations11diff_schema41extract_record_types_from_changed_columnss_0NCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB2p_ENCB4W_0EIB73_IB7d_B10_EB4U_EEIB3i_NtNtBa_7convert10InfallibleB3H_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8M_12try_for_each4callB11_B4J_NcNtB4J_5Break0E0B4J_E0E0B17_.exit.thread.i.i ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRTNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefEINtNtBa_6result6ResultB11_NtNtB17_6errors5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB45_B11_EENCNvNtNtB17_10migrations11diff_schema41extract_record_types_from_changed_columnss_0NCINvXB6_INtB6_12GenericShuntINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterB2p_ENCB4W_0EIB73_IB7d_B10_EB4U_EEIB3i_NtNtBa_7convert10InfallibleB3H_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8M_12try_for_each4callB11_B4J_NcNtB4J_5Break0E0B4J_E0E0B17_.exit.i.i ]
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.410.i.sroa.0.i.i.i, i64 160, i1 false)
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.626.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.sroa.0.i.i.i)
  store i64 %.sroa.0.i.sroa.0.0.copyload.i.i.i, ptr %0, align 8, !alias.scope !3070
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.8.113.i.i, ptr %.sroa.525.0..sroa_idx, align 8, !alias.scope !3070
  br label %bb.o

.loopexit37:                                      ; preds = %bb.ad, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.sroa.0.i.i.i)
  store i64 -2, ptr %0, align 8, !alias.scope !3074
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB5_5ChainINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemTINtNtB15_6borrow3CoweEINtNtBb_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EINtNtNtB9_7sources4once4OnceB2e_EEB1A_8try_folduQNCINvNvB1A_8find_map5checkB2e_TB2f_B2X_EQNCNvNtNtB35_10migrations11diff_schema20collect_record_typess_0E0INtNtNtBb_3ops12control_flow11ControlFlowB5E_EEB35_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !noundef !4
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8, !noalias !3077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3077
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemTINtNtB6_6borrow3CoweEINtNtBU_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EBM_4nextB2D_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i), !noalias !3082
  %i.k = load i64, ptr %i.f, align 8, !range !1752, !noalias !3077, !noundef !4
  %.not8.i = icmp eq i64 %i.k, -2
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !3077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3077
  call void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkTINtNtCs40k4W9msRzi_5alloc6borrow3CoweEINtNtBb_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEETB1R_B2P_EQNCNvNtNtB2X_10migrations11diff_schema20collect_record_typess_0E0INtB7_5FnMutTuB1Q_EE8call_mutB2X_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d), !noalias !3082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3077
  %i.l = load i64, ptr %i.e, align 8, !range !1752, !alias.scope !3083, !noalias !3086, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, -2
  br i1 %.not.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3077
  call void @_RNvXNtNtCs40k4W9msRzi_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iteratorp4ItemTINtNtB6_6borrow3CoweEINtNtBU_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EBM_4nextB2D_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i), !noalias !3082
  %i.m = load i64, ptr %i.f, align 8, !range !1752, !noalias !3077, !noundef !4
  %.not.i = icmp eq i64 %i.m, -2
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit, %bb.a
  %i.n = load i64, ptr %1, align 8, !range !119, !noundef !4 ; 3 uses
  %.not4 = icmp eq i64 %i.n, -3
  br i1 %.not4, label %bb.l, label %bb.m

bb.e:                                             ; preds = %.lr.ph.i
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx4.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.l

.loopexit:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val = load ptr, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val7 = load ptr, ptr %i.o, align 8            ; 6 uses
  %i.p = icmp eq ptr %.val, null
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  %i.q = load ptr, ptr %.val7, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i.i9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.q(ptr noundef nonnull %.val)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !37, !invariant.load !4 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !38, !invariant.load !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #33
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit

bb.j:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !37, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !38, !invariant.load !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #33
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k
  store ptr null, ptr %i.i, align 8
  resume { ptr, i32 } %i.w

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTINtNtB12_6borrow3CoweEIBC_RSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEL_EEEB2R_.exit: ; preds = %bb.i, %bb.h, %.loopexit
  store ptr null, ptr %i.i, align 8
  br label %bb.d

bb.l:                                             ; preds = %bb.d, %bb.o, %bb.n, %bb.e
  %.sink = phi i64 [ %i.l, %bb.e ], [ -2, %bb.o ], [ %i.ad, %bb.n ], [ -2, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.m:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.h, align 8, !nonnull !4, !align !36, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !3088)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ac, ptr %i.c, align 8, !noalias !3091
  store i64 -2, ptr %1, align 8, !alias.scope !3094, !noalias !3097
  %.not14.i = icmp eq i64 %i.n, -2
  br i1 %.not14.i, label %bb.o, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.m
  %.sroa.7.0..sroa_idx4.i10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx4.i10, i64 32, i1 false), !noalias !3099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3091
  store i64 %i.n, ptr %i.a, align 8, !noalias !3091
  call void @_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkTINtNtCs40k4W9msRzi_5alloc6borrow3CoweEINtNtBb_6option6OptionRSNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEETB1Q_B2O_EQNCNvNtNtB2W_10migrations11diff_schema20collect_record_typess_0E0INtB7_5FnMutTuB1P_EE8call_mutB2W_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !3100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3091
  %i.ad = load i64, ptr %i.b, align 8, !range !1752, !alias.scope !3101, !noalias !3104, !noundef !4 ; 2 uses
  %.not.i.us.i = icmp eq i64 %i.ad, -2
  br i1 %.not.i.us.i, label %._crit_edge.split.us.i, label %bb.n

._crit_edge.split.us.i:                           ; preds = %.lr.ph.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3091
  store i64 -2, ptr %1, align 8, !alias.scope !3094, !noalias !3106
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us.i
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.78.0..sroa_idx9.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.o:                                             ; preds = %bb.m, %._crit_edge.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB5_5ChainNtNtBb_4char11ToUppercaseNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1O_8for_each4callcNCINvXsd_NtCs40k4W9msRzi_5alloc6stringNtB31_6StringINtNtB1S_7collect6ExtendcE6extendBO_E0E0ECs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load i64, ptr %0, align 8, !range !517, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvXsu_NtCscI6d9CVNmLh_4core4charNtB6_11ToUppercaseNtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvBO_8for_each4callcNCINvXsd_NtCs40k4W9msRzi_5alloc6stringNtB28_6StringINtNtBS_7collect6ExtendcE6extendINtNtNtBU_8adapters5chain5ChainBw_NtNtNtB8_3str4iter5CharsEE0E0ECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_RINvYNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator4folduNCINvNvBH_8for_each4callcNCINvXsd_NtCs40k4W9msRzi_5alloc6stringNtB20_6StringINtNtBL_7collect6ExtendcE6extendINtNtNtBN_8adapters5chain5ChainNtNtB9_4char11ToUppercaseB3_EE0E0ECs2bNgeUs5Jlc_6diesel.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.i = load ptr, ptr %i.a, align 8, !nonnull !4, !align !36, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3108)
  %.not.i15.i = icmp eq ptr %i.f, %i.h
end_hunk_4
