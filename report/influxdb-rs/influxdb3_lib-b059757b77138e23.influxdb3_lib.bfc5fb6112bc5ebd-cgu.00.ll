Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.00?download=true
inline.NumInlined: 16580
inline.NumDeleted: 4810
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB4_14WalObjectStore3new0CsgsNUVCRJO2f_13influxdb3_lib:bb.a

bb.vv:                                            ; preds = %bb.vu
  %i.bgx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bgw)
          to label %.body85 unwind label %bb.vx

bb.vw:                                            ; preds = %bb.vu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bgw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsgsNUVCRJO2f_13influxdb3_lib.exit93 unwind label %bb.vo

bb.vx:                                            ; preds = %bb.vv
  %i.bgy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsgsNUVCRJO2f_13influxdb3_lib.exit93
  store i8 0, ptr %i.ur, align 1
  %i.bgz = getelementptr inbounds nuw i8, ptr %1, i64 368
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsigIpOYTm7sT_18influxdb3_shutdown13ShutdownTokenECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.bgz)
          to label %bb.wd unwind label %bb.wc

bb.vy:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECsgsNUVCRJO2f_13influxdb3_lib.exit93
  %i.bha = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bha)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.bhb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bha)
          to label %.body94 unwind label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.bhc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.vy
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bha)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.e

bb.wb:                                            ; preds = %bb.wo, %bb.wc, %.body94
  %.pn29 = phi { ptr, i32 } [ %i.bhh, %bb.wc ], [ %.pn27, %bb.wo ], [ %.pn27, %.body94 ] ; 3 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %1, i64 909
  store i8 0, ptr %i.bhd, align 1
  %i.bhe = getelementptr inbounds nuw i8, ptr %1, i64 906
  %i.bhf = load i8, ptr %i.bhe, align 2, !range !17, !noundef !15
  %i.bhg = trunc nuw i8 %i.bhf to i1
  br i1 %i.bhg, label %bb.wp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit106

bb.wc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.bhh = landingpad { ptr, i32 }
          cleanup
  br label %bb.wb

bb.wd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.bhi = getelementptr inbounds nuw i8, ptr %1, i64 909
  store i8 0, ptr %i.bhi, align 1
  %i.bhj = getelementptr inbounds nuw i8, ptr %1, i64 906 ; 2 uses
  %i.bhk = load i8, ptr %i.bhj, align 2, !range !17, !noundef !15
  %i.bhl = trunc nuw i8 %i.bhk to i1
  br i1 %i.bhl, label %bb.we, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit98

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit98: ; preds = %bb.we, %bb.wf, %bb.wd
  store i8 0, ptr %i.bhj, align 2
  %i.bhm = getelementptr inbounds nuw i8, ptr %1, i64 907 ; 2 uses
  %i.bhn = load i8, ptr %i.bhm, align 1, !range !17, !noundef !15
  %i.bho = trunc nuw i8 %i.bhn to i1
  br i1 %i.bho, label %bb.wi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit102

bb.we:                                            ; preds = %bb.wd
  %i.bhp = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17873)
  call void @llvm.experimental.noalias.scope.decl(metadata !17874)
  %i.bhq = load ptr, ptr %i.bhp, align 8, !alias.scope !17875, !nonnull !15, !noundef !15
  %i.bhr = atomicrmw sub ptr %i.bhq, i64 1 release, align 8, !noalias !17875
  %i.bhs = icmp eq i64 %i.bhr, 1
  br i1 %i.bhs, label %bb.wf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit98

bb.wf:                                            ; preds = %bb.we
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bhp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit98 unwind label %bb.wg

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit106: ; preds = %bb.wp, %bb.wq, %bb.wg, %bb.wb
  %.pn31 = phi { ptr, i32 } [ %i.bhx, %bb.wg ], [ %.pn29, %bb.wb ], [ %.pn29, %bb.wq ], [ %.pn29, %bb.wp ] ; 3 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %1, i64 906
  store i8 0, ptr %i.bht, align 2
  %i.bhu = getelementptr inbounds nuw i8, ptr %1, i64 907
  %i.bhv = load i8, ptr %i.bhu, align 1, !range !17, !noundef !15
  %i.bhw = trunc nuw i8 %i.bhv to i1
  br i1 %i.bhw, label %bb.wr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit108

bb.wg:                                            ; preds = %bb.wf
  %i.bhx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit106

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit102: ; preds = %bb.wi, %bb.wj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit98
  store i8 0, ptr %i.bhm, align 1
  %i.bhy = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17876)
  call void @llvm.experimental.noalias.scope.decl(metadata !17877)
  %i.bhz = load ptr, ptr %i.bhy, align 8, !alias.scope !17878, !nonnull !15, !noundef !15
  %i.bia = atomicrmw sub ptr %i.bhz, i64 1 release, align 8, !noalias !17878
  %i.bib = icmp eq i64 %i.bia, 1
  br i1 %i.bib, label %bb.wh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit100

bb.wh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit102
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_E9drop_slowCs1fnGVdejPSq_15trace_exporters(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bhy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit100 unwind label %bb.vq

bb.wi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit98
  %i.bic = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17879)
  call void @llvm.experimental.noalias.scope.decl(metadata !17880)
  %i.bid = load ptr, ptr %i.bic, align 8, !alias.scope !17881, !nonnull !15, !noundef !15
  %i.bie = atomicrmw sub ptr %i.bid, i64 1 release, align 8, !noalias !17881
  %i.bif = icmp eq i64 %i.bie, 1
  br i1 %i.bif, label %bb.wj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit102

bb.wj:                                            ; preds = %bb.wi
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bic)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit102 unwind label %bb.wl

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit108: ; preds = %bb.wr, %bb.ws, %bb.wl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit106
  %.pn33 = phi { ptr, i32 } [ %i.bil, %bb.wl ], [ %.pn31, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit106 ], [ %.pn31, %bb.ws ], [ %.pn31, %bb.wr ] ; 2 uses
  %i.big = getelementptr inbounds nuw i8, ptr %1, i64 907
  store i8 0, ptr %i.big, align 1
  %i.bih = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17882)
  call void @llvm.experimental.noalias.scope.decl(metadata !17883)
  %i.bii = load ptr, ptr %i.bih, align 8, !alias.scope !17884, !nonnull !15, !noundef !15
  %i.bij = atomicrmw sub ptr %i.bii, i64 1 release, align 8, !noalias !17884
  %i.bik = icmp eq i64 %i.bij, 1
  br i1 %i.bik, label %bb.wk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit104

bb.wk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit108
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_E9drop_slowCs1fnGVdejPSq_15trace_exporters(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bih)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit104 unwind label %bb.k

bb.wl:                                            ; preds = %bb.wj
  %i.bil = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit108

bb.wm:                                            ; preds = %bb.vr
  %i.bim = getelementptr inbounds nuw i8, ptr %1, i64 512
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store14WalObjectStoreECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.bim) #30
          to label %bb.fp unwind label %bb.k

bb.wn:                                            ; preds = %.body85
  %i.bin = getelementptr inbounds nuw i8, ptr %1, i64 448
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bin) #30
          to label %.body94 unwind label %bb.k

bb.wo:                                            ; preds = %.body94
  %i.bio = getelementptr inbounds nuw i8, ptr %1, i64 368
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsigIpOYTm7sT_18influxdb3_shutdown13ShutdownTokenECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.bio) #30
          to label %bb.wb unwind label %bb.k

bb.wp:                                            ; preds = %bb.wb
  %i.bip = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17885)
  call void @llvm.experimental.noalias.scope.decl(metadata !17886)
  %i.biq = load ptr, ptr %i.bip, align 8, !alias.scope !17887, !nonnull !15, !noundef !15
  %i.bir = atomicrmw sub ptr %i.biq, i64 1 release, align 8, !noalias !17887
  %i.bis = icmp eq i64 %i.bir, 1
  br i1 %i.bis, label %bb.wq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit106

bb.wq:                                            ; preds = %bb.wp
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bip)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit106 unwind label %bb.k

bb.wr:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit106
  %i.bit = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17888)
  call void @llvm.experimental.noalias.scope.decl(metadata !17889)
  %i.biu = load ptr, ptr %i.bit, align 8, !alias.scope !17890, !nonnull !15, !noundef !15
  %i.biv = atomicrmw sub ptr %i.biu, i64 1 release, align 8, !noalias !17890
  %i.biw = icmp eq i64 %i.biv, 1
  br i1 %i.biw, label %bb.ws, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit108

bb.ws:                                            ; preds = %bb.wr
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bit)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit108 unwind label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB4_15WriteBufferImpl3new0CsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [280 x i8], align 8               ; 14 uses
  %i.c = alloca [120 x i8], align 8               ; 6 uses
  %i.d = alloca [120 x i8], align 8               ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [120 x i8], align 8               ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [48 x i8], align 8                ; 10 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.5120.i = alloca [40 x i8], align 8       ; 7 uses
  %i.w = alloca [72 x i8], align 8                ; 10 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [48 x i8], align 8                ; 10 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 10 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [56 x i8], align 8               ; 4 uses
  %i.ah = alloca [56 x i8], align 8               ; 4 uses
  %i.ai = alloca [56 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.4.i = alloca [40 x i8], align 8          ; 7 uses
  %i.ao = alloca [8 x i8], align 8                ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 6 uses
  %i.aq = alloca [32 x i8], align 8               ; 8 uses
  %i.ar = alloca [32 x i8], align 8               ; 8 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [32 x i8], align 8               ; 8 uses
  %i.aw = alloca [32 x i8], align 8               ; 9 uses
  %i.ax = alloca [208 x i8], align 8              ; 14 uses
  %.sroa.3.sroa.3.i = alloca [40 x i8], align 8   ; 9 uses
  %.sroa.3.sroa.4.i = alloca [128 x i8], align 8  ; 7 uses
  %i.ay = alloca [208 x i8], align 8              ; 12 uses
  %i.az = alloca [152 x i8], align 8              ; 10 uses
  %i.ba = alloca [96 x i8], align 8               ; 9 uses
  %.sroa.8148.i = alloca [88 x i8], align 8       ; 7 uses
  %i.bb = alloca [32 x i8], align 8               ; 9 uses
  %i.bc = alloca [40 x i8], align 8               ; 5 uses
  %i.bd = alloca [8 x i8], align 8                ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [32 x i8], align 8               ; 8 uses
  %i.bh = alloca [24 x i8], align 8               ; 8 uses
  %i.bi = alloca [8 x i8], align 8                ; 5 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [32 x i8], align 8               ; 8 uses
  %i.bl = alloca [32 x i8], align 8               ; 9 uses
  %i.bm = alloca [24 x i8], align 8               ; 7 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [40 x i8], align 8               ; 8 uses
  %i.bp = alloca [8 x i8], align 8                ; 5 uses
  %i.bq = alloca [64 x i8], align 8               ; 4 uses
  %i.br = alloca [32 x i8], align 8               ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 7 uses
  %i.bt = alloca [24 x i8], align 8               ; 8 uses
  %i.bu = alloca [24 x i8], align 8               ; 8 uses
  %i.bv = alloca [48 x i8], align 8               ; 4 uses
  %i.bw = alloca [24 x i8], align 8               ; 7 uses
  %i.bx = alloca [24 x i8], align 8               ; 4 uses
  %i.by = alloca [24 x i8], align 8               ; 4 uses
  %i.bz = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.618.i = alloca [40 x i8], align 8        ; 8 uses
  %i.ca = alloca [8 x i8], align 8                ; 5 uses
  %i.cb = alloca [16 x i8], align 8               ; 6 uses
  %i.cc = alloca [32 x i8], align 8               ; 8 uses
  %i.cd = alloca [32 x i8], align 8               ; 8 uses
  %i.ce = alloca [24 x i8], align 8               ; 8 uses
  %i.cf = alloca [8 x i8], align 8                ; 5 uses
  %i.cg = alloca [16 x i8], align 8               ; 6 uses
  %i.ch = alloca [32 x i8], align 8               ; 8 uses
  %i.ci = alloca [32 x i8], align 8               ; 9 uses
  %i.cj = alloca [24 x i8], align 8               ; 10 uses
  %i.ck = alloca [8 x i8], align 8                ; 5 uses
  %i.cl = alloca [16 x i8], align 8               ; 6 uses
  %i.cm = alloca [48 x i8], align 8               ; 10 uses
  %i.cn = alloca [32 x i8], align 8               ; 8 uses
  %i.co = alloca [24 x i8], align 8               ; 8 uses
  %i.cp = alloca [8 x i8], align 8                ; 5 uses
  %i.cq = alloca [16 x i8], align 8               ; 6 uses
  %i.cr = alloca [48 x i8], align 8               ; 10 uses
  %i.cs = alloca [32 x i8], align 8               ; 8 uses
  %i.ct = alloca [24 x i8], align 8               ; 6 uses
  %i.cu = alloca [24 x i8], align 8               ; 11 uses
  %i.cv = alloca [8 x i8], align 8                ; 7 uses
  %i.cw = alloca [64 x i8], align 8               ; 5 uses
  %i.cx = alloca [24 x i8], align 8               ; 13 uses
  %i.cy = alloca [16 x i8], align 8               ; 6 uses
  %i.cz = alloca [16 x i8], align 8               ; 6 uses
  %i.da = alloca [32 x i8], align 8               ; 8 uses
  %i.db = alloca [24 x i8], align 8               ; 8 uses
  %i.dc = alloca [16 x i8], align 8               ; 6 uses
  %i.dd = alloca [16 x i8], align 8               ; 6 uses
  %i.de = alloca [32 x i8], align 8               ; 8 uses
  %i.df = alloca [24 x i8], align 8               ; 14 uses
  %i.dg = alloca [72 x i8], align 8               ; 12 uses
  %i.dh = alloca [96 x i8], align 8               ; 6 uses
  %i.di = alloca [96 x i8], align 8               ; 9 uses
  %.sroa.3.i = alloca [88 x i8], align 8          ; 8 uses
  %i.dj = alloca [96 x i8], align 8               ; 7 uses
  %i.dk = alloca [8 x i8], align 8                ; 5 uses
  %i.dl = alloca [8 x i8], align 8                ; 5 uses
  %i.dm = alloca [16 x i8], align 8               ; 6 uses
  %i.dn = alloca [48 x i8], align 8               ; 10 uses
  %i.do = alloca [32 x i8], align 8               ; 8 uses
  %i.dp = alloca [24 x i8], align 8               ; 8 uses
  %i.dq = alloca [8 x i8], align 8                ; 5 uses
  %i.dr = alloca [8 x i8], align 8                ; 5 uses
  %i.ds = alloca [16 x i8], align 8               ; 6 uses
  %i.dt = alloca [48 x i8], align 8               ; 10 uses
  %i.du = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.518.i = alloca [40 x i8], align 8        ; 7 uses
  %i.dv = alloca [72 x i8], align 8               ; 10 uses
  %i.dw = alloca [24 x i8], align 8               ; 12 uses
  %i.dx = alloca [24 x i8], align 8               ; 4 uses
  %i.dy = alloca [24 x i8], align 8               ; 4 uses
  %i.dz = alloca [24 x i8], align 8               ; 4 uses
  %i.ea = alloca [24 x i8], align 8               ; 4 uses
  %i.eb = alloca [24 x i8], align 8               ; 4 uses
  %i.ec = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.11988.sroa.7 = alloca [40 x i8], align 8 ; 5 uses
  %i.ed = alloca [120 x i8], align 8              ; 5 uses
  %i.ee = alloca [8 x i8], align 8                ; 7 uses
  %i.ef = alloca [8 x i8], align 8                ; 7 uses
  %i.eg = alloca [8 x i8], align 8                ; 7 uses
  %i.eh = alloca [8 x i8], align 8                ; 7 uses
  %i.ei = alloca [16 x i8], align 16              ; 8 uses
  %i.ej = alloca [56 x i8], align 8               ; 5 uses
  %i.ek = alloca [8 x i8], align 8                ; 7 uses
  %i.el = alloca [16 x i8], align 16              ; 7 uses
  %i.em = alloca [8 x i8], align 8                ; 7 uses
  %.sroa.5965.sroa.3 = alloca [40 x i8], align 8  ; 2 uses
  %i.en = alloca [72 x i8], align 8               ; 10 uses
  %i.eo = alloca [8 x i8], align 8                ; 5 uses
  %i.ep = alloca [8 x i8], align 8                ; 5 uses
  %i.eq = alloca [16 x i8], align 8               ; 6 uses
  %i.er = alloca [48 x i8], align 8               ; 10 uses
  %i.es = alloca [32 x i8], align 8               ; 8 uses
  %i.et = alloca [24 x i8], align 8               ; 8 uses
  %i.eu = alloca [8 x i8], align 8                ; 5 uses
  %i.ev = alloca [8 x i8], align 8                ; 5 uses
  %i.ew = alloca [16 x i8], align 8               ; 6 uses
  %i.ex = alloca [48 x i8], align 8               ; 10 uses
  %i.ey = alloca [32 x i8], align 8               ; 8 uses
  %i.ez = alloca [72 x i8], align 8               ; 13 uses
  %i.fa = alloca [104 x i8], align 8              ; 5 uses
  %i.fb = alloca [104 x i8], align 8              ; 5 uses
  %i.fc = alloca [936 x i8], align 8              ; 9 uses
  %i.fd = alloca [8 x i8], align 8                ; 5 uses
  %i.fe = alloca [12 x i8], align 4               ; 5 uses
  %i.ff = alloca [8 x i8], align 8                ; 9 uses
  %.sroa.5911 = alloca [40 x i8], align 8         ; 2 uses
  %i.fg = alloca [72 x i8], align 8               ; 10 uses
  %i.fh = alloca [24 x i8], align 8               ; 8 uses
  %i.fi = alloca [16 x i8], align 8               ; 6 uses
  %i.fj = alloca [16 x i8], align 8               ; 6 uses
  %i.fk = alloca [32 x i8], align 8               ; 8 uses
  %i.fl = alloca [24 x i8], align 8               ; 8 uses
  %i.fm = alloca [16 x i8], align 8               ; 6 uses
  %i.fn = alloca [16 x i8], align 8               ; 6 uses
  %i.fo = alloca [32 x i8], align 8               ; 8 uses
  %i.fp = alloca [24 x i8], align 8               ; 5 uses
  %i.fq = alloca [24 x i8], align 8               ; 5 uses
  %i.fr = alloca [104 x i8], align 8              ; 5 uses
  %i.fs = alloca [8 x i8], align 8                ; 5 uses
  %i.ft = alloca [8 x i8], align 8                ; 5 uses
  %i.fu = alloca [8 x i8], align 8                ; 5 uses
  %i.fv = alloca [16 x i8], align 8               ; 6 uses
  %i.fw = alloca [48 x i8], align 8               ; 10 uses
  %i.fx = alloca [32 x i8], align 8               ; 8 uses
  %i.fy = alloca [24 x i8], align 8               ; 8 uses
  %i.fz = alloca [8 x i8], align 8                ; 5 uses
  %i.ga = alloca [8 x i8], align 8                ; 5 uses
  %i.gb = alloca [16 x i8], align 8               ; 6 uses
  %i.gc = alloca [48 x i8], align 8               ; 10 uses
  %i.gd = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.8847 = alloca [40 x i8], align 8         ; 3 uses
  %.sroa.11837 = alloca [40 x i8], align 8        ; 10 uses
  %i.ge = alloca [24 x i8], align 8               ; 17 uses
  %i.gf = alloca [208 x i8], align 16             ; 15 uses
  %i.gg = alloca [12 x i8], align 4               ; 5 uses
  %.sroa.6787 = alloca [40 x i8], align 8         ; 2 uses
  %.sroa.9784 = alloca [40 x i8], align 8         ; 8 uses
  %i.gh = alloca [8 x i8], align 8                ; 5 uses
  %i.gi = alloca [16 x i8], align 8               ; 6 uses
  %i.gj = alloca [32 x i8], align 8               ; 8 uses
  %i.gk = alloca [32 x i8], align 8               ; 8 uses
  %i.gl = alloca [24 x i8], align 8               ; 8 uses
  %i.gm = alloca [8 x i8], align 8                ; 5 uses
  %i.gn = alloca [16 x i8], align 8               ; 6 uses
  %i.go = alloca [32 x i8], align 8               ; 8 uses
  %i.gp = alloca [32 x i8], align 8               ; 8 uses
  %i.gq = alloca [8 x i8], align 8                ; 5 uses
  %i.gr = alloca [16 x i8], align 8               ; 6 uses
  %i.gs = alloca [32 x i8], align 8               ; 8 uses
  %i.gt = alloca [32 x i8], align 8               ; 8 uses
  %i.gu = alloca [24 x i8], align 8               ; 8 uses
  %i.gv = alloca [8 x i8], align 8                ; 5 uses
  %i.gw = alloca [16 x i8], align 8               ; 6 uses
  %i.gx = alloca [32 x i8], align 8               ; 8 uses
  %i.gy = alloca [32 x i8], align 8               ; 8 uses
  %i.gz = alloca [72 x i8], align 8               ; 12 uses
  %.sroa.416 = alloca [40 x i8], align 8          ; 2 uses
  %.sroa.11729 = alloca [40 x i8], align 8        ; 8 uses
  %i.ha = alloca [8 x i8], align 8                ; 5 uses
  %i.hb = alloca [16 x i8], align 8               ; 6 uses
  %i.hc = alloca [32 x i8], align 8               ; 8 uses
  %i.hd = alloca [32 x i8], align 8               ; 8 uses
  %i.he = alloca [24 x i8], align 8               ; 8 uses
  %i.hf = alloca [8 x i8], align 8                ; 5 uses
  %i.hg = alloca [16 x i8], align 8               ; 6 uses
  %i.hh = alloca [32 x i8], align 8               ; 8 uses
  %i.hi = alloca [32 x i8], align 8               ; 8 uses
  %i.hj = alloca [72 x i8], align 8               ; 12 uses
  %.sroa.6.sroa.2 = alloca [40 x i8], align 8     ; 3 uses
  %.sroa.13 = alloca [40 x i8], align 8           ; 10 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 3 uses
  %i.hl = load i8, ptr %i.hk, align 8, !range !55, !noundef !15
  switch i8 %i.hl, label %default.unreachable1254 [
    i8 0, label %.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.f
    i8 4, label %bb.be
    i8 5, label %bb.lq
    i8 6, label %bb.qr
    i8 7, label %bb.b
    i8 8, label %bb.yc
  ]

default.unreachable1254:                          ; preds = %bb.qr, %bb.lq, %bb.be, %bb.f, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  br label %bb.ux

.thread:                                          ; preds = %bb.a
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 547
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 539
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 543
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 538
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 537
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.hq, i8 0, i64 6, i1 false)
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.26.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.27.0..sroa_idx, align 8 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.30.0.copyload = load i64, ptr %.sroa.30.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.33.0.copyload = load i64, ptr %.sroa.33.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.34.0.copyload = load i64, ptr %.sroa.34.0..sroa_idx, align 8
  store i8 1, ptr %i.hm, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 256
  %3 = load <4 x ptr>, ptr %.sroa.20.0..sroa_idx, align 8 ; 5 uses
  %4 = extractelement <4 x ptr> %3, i64 0         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %5 = extractelement <4 x ptr> %3, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %i.hs = extractelement <4 x ptr> %3, i64 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hs) ]
  %i.ht = extractelement <4 x ptr> %3, i64 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ht) ]
  store <4 x ptr> %3, ptr %i.hr, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.hv = load <2 x ptr>, ptr %.sroa.21.0..sroa_idx, align 8 ; 3 uses
  %i.hw = extractelement <2 x ptr> %i.hv, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hw) ]
  %i.hx = extractelement <2 x ptr> %i.hv, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hx) ]
  store <2 x ptr> %i.hv, ptr %i.hu, align 8
  store i8 1, ptr %i.hn, align 1
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 304
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.26.0.copyload) ]
  store ptr %.sroa.26.0.copyload, ptr %6, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hy, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.19.0..sroa_idx, i64 56, i1 false)
  store <4 x i8> splat (i8 1), ptr %i.ho, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.ia = load <2 x ptr>, ptr %.sroa.31.0..sroa_idx, align 8
  store <2 x ptr> %i.ia, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.27.0.copyload) ]
  store ptr %.sroa.27.0.copyload, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i64 %.sroa.33.0.copyload, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ie = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.ie, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i64 %.sroa.28.0.copyload, ptr %i.if, align 8
  store i8 1, ptr %i.hp, align 2
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ig, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.29.0..sroa_idx, i64 72, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 496
  store i64 %.sroa.34.0.copyload, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i64 %.sroa.30.0.copyload, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 552
  store ptr %i.ij, ptr %i.ik, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 784
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i)
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 784
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #29
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #29
  unreachable

.body:                                            ; preds = %bb.i, %bb.j
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.iq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %cond.i = icmp eq i8 %.pr, 3
  br i1 %cond.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtBI_9Persister28get_latest_snapshot_sequence0ECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.e:                                             ; preds = %.body
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtBI_9Persister14load_snapshots0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.io)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtBI_9Persister28get_latest_snapshot_sequence0ECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.bc

bb.f:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 784
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !43, !noalias !18311
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i)
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 3 uses
  switch i8 %.pre, label %default.unreachable1254 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !18311
  br label %bb.l

bb.h:                                             ; preds = %.thread, %bb.f
  %i.ir = phi ptr [ %i.im, %.thread ], [ %i.iq, %bb.f ]
  %i.is = phi ptr [ %i.il, %.thread ], [ %i.ip, %bb.f ] ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !noalias !18311, !nonnull !15, !align !24, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !18311
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 560
  store i64 1, ptr %i.iu, align 8, !noalias !18311
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 632
  store ptr %i.it, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !18311
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 642
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 2, !noalias !18311
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #29
          to label %.noexc403 unwind label %.body

.noexc403:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #29
          to label %.noexc404 unwind label %.body

.noexc404:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !18311
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtBI_9Persister14load_snapshots0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.iy) #30
          to label %.body.thread unwind label %bb.x, !noalias !18312

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.iw = phi ptr [ %i.ir, %bb.h ], [ %i.iq, %bb.g ] ; 4 uses
  %i.ix = phi ptr [ %i.is, %bb.h ], [ %i.ip, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !18311
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  invoke fastcc void @_RNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB6_9Persister14load_snapshots0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.dv, ptr noundef nonnull align 8 %i.iy, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.k, !noalias !18312

bb.m:                                             ; preds = %bb.l
  %i.iz = load i64, ptr %i.dv, align 8, !range !107, !noalias !18311, !noundef !15 ; 3 uses
  %i.ja = icmp eq i64 %i.iz, -2
  br i1 %i.ja, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.3.sroa.0.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !18311 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %.sroa.3.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !18311 ; 3 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %.sroa.3.sroa.5.0.copyload.i = load i64, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !18311 ; 3 uses
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.518.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.518.0..sroa_idx.i, i64 40, i1 false), !noalias !18311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !18311
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtBI_9Persister14load_snapshots0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.iy)
          to label %bb.p unwind label %bb.o, !noalias !18312

bb.o:                                             ; preds = %bb.n
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.p:                                             ; preds = %bb.n
  %.not.i.i = icmp eq i64 %i.iz, -1
  br i1 %.not.i.i, label %bb.q, label %.noexc288

bb.q:                                             ; preds = %bb.p
  store i64 %.sroa.3.sroa.0.0.copyload.i, ptr %i.dw, align 8, !noalias !18311
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %.sroa.3.sroa.3.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !18311
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 %.sroa.3.sroa.5.0.copyload.i, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !18311
  %.not.i6.i.not = icmp eq i64 %.sroa.3.sroa.5.0.copyload.i, 0 ; 2 uses
  br i1 %.not.i6.i.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jc = inttoptr i64 %.sroa.3.sroa.3.0.copyload.i to ptr
  %i.jd = getelementptr i8, ptr %i.jc, i64 152
  %.val.i.i = load i64, ptr %i.jd, align 8, !alias.scope !18313, !noalias !18312, !noundef !15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.3.0.i.i = phi i64 [ %.val.i.i, %bb.r ], [ undef, %bb.q ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %bb.u unwind label %bb.t, !noalias !18312

bb.t:                                             ; preds = %bb.s
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %.body.thread unwind label %bb.v, !noalias !18312

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %bb.z unwind label %bb.w, !noalias !18312

bb.v:                                             ; preds = %bb.t
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !18312
  unreachable

.body.thread:                                     ; preds = %bb.t, %bb.w, %bb.o, %bb.k
  %.pn2.pn.i = phi { ptr, i32 } [ %i.jg, %bb.w ], [ %i.je, %bb.t ], [ %i.iv, %bb.k ], [ %i.jb, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !18311
  store i8 2, ptr %i.iw, align 8, !noalias !18311
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtBI_9Persister28get_latest_snapshot_sequence0ECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.w:                                             ; preds = %bb.u
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.x:                                             ; preds = %bb.k
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !18312
  unreachable

common.ret:                                       ; preds = %bb.yz, %bb.ye, %bb.uz, %bb.sy, %bb.pm, %bb.iq, %bb.y
  %.sink = phi i8 [ 1, %bb.yz ], [ 8, %bb.ye ], [ 7, %bb.uz ], [ 6, %bb.sy ], [ 5, %bb.pm ], [ 4, %bb.iq ], [ 3, %bb.y ]
  store i8 %.sink, ptr %i.hk, align 8
  ret void

bb.y:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !18311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !18311
  store i8 3, ptr %i.iw, align 8, !noalias !18311
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.z:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !18311
  store i8 1, ptr %i.iw, align 8, !noalias !18311
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br i1 %.not.i6.i.not, label %.thread1255, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.jj = load i64, ptr %i.ji, align 8, !range !83, !noundef !15
  %i.jk = call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 %.sroa.3.0.i.i, i64 range(i64 1, 0) %i.jj)
  br label %.thread1255

end_hunk_0
begin_hunk_1_@_RNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB4_15WriteBufferImpl3new0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %.pn177 = phi { ptr, i32 } [ %i.bbn, %bb.wa ], [ %i.bbs, %bb.wd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  br label %.body552

.body552:                                         ; preds = %bb.xv, %bb.xw, %bb.xu, %bb.vh
  %.pn177.pn.pn = phi { ptr, i32 } [ %i.bah, %bb.vh ], [ %.pn177, %bb.xu ], [ %.pn177.pn.ph, %bb.xv ], [ %.pn177.pn.ph, %bb.xw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  br label %bb.xx

bb.xv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs92BnbMq7p8c_15influxdb3_write9persister9PersisterEECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.vp, %bb.vz
  %.pn177.pn.ph = phi { ptr, i32 } [ %.pn168, %bb.vp ], [ %.pn170, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs92BnbMq7p8c_15influxdb3_write9persister9PersisterEECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.bbl, %bb.vz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18444)
  call void @llvm.experimental.noalias.scope.decl(metadata !18445)
  %i.bfz = load ptr, ptr %i.ff, align 8, !alias.scope !18446, !nonnull !15, !noundef !15
  %i.bga = atomicrmw sub ptr %i.bfz, i64 1 release, align 8, !noalias !18446
  %i.bgb = icmp eq i64 %i.bga, 1
  br i1 %i.bgb, label %bb.xw, label %.body552

bb.xw:                                            ; preds = %bb.xv
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtCs92BnbMq7p8c_15influxdb3_write17PersistedSnapshotEE9drop_slowBX_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ff)
          to label %.body552 unwind label %bb.bc

bb.xx:                                            ; preds = %bb.vb, %bb.uw, %bb.ve, %.body552
  %.pn220.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn, %.body552 ], [ %i.azv, %bb.uw ], [ %i.bac, %bb.ve ], [ %i.azz, %bb.vb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  br label %bb.ya

bb.xy:                                            ; preds = %bb.vc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11988.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5911, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  br label %bb.xz

bb.xz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs92BnbMq7p8c_15influxdb3_write27PersistedSnapshotCheckpointEECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.xy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit653
  %.sroa.0982.1 = phi i8 [ 18, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit653 ], [ 4, %bb.xy ], [ 4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs92BnbMq7p8c_15influxdb3_write27PersistedSnapshotCheckpointEECsgsNUVCRJO2f_13influxdb3_lib.exit ]
  %.sroa.10984.1.in = phi i64 [ %i.bgk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit653 ], [ %i.azx, %bb.xy ], [ %.sroa.10984.0.in, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs92BnbMq7p8c_15influxdb3_write27PersistedSnapshotCheckpointEECsgsNUVCRJO2f_13influxdb3_lib.exit ]
  %.sroa.11988.sroa.0.1 = phi i64 [ %i.bkb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit653 ], [ %.sroa.3910.sroa.0.0.copyload, %bb.xy ], [ %.sroa.11988.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs92BnbMq7p8c_15influxdb3_write27PersistedSnapshotCheckpointEECsgsNUVCRJO2f_13influxdb3_lib.exit ]
  %.sroa.11988.sroa.5.1 = phi ptr [ %.sroa.5965.sroa.0.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit653 ], [ %.sroa.3910.sroa.3.0.copyload, %bb.xy ], [ %.sroa.11988.sroa.5.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs92BnbMq7p8c_15influxdb3_write27PersistedSnapshotCheckpointEECsgsNUVCRJO2f_13influxdb3_lib.exit ]
  %.sroa.11988.sroa.6.1 = phi i64 [ %.sroa.5965.sroa.2.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit653 ], [ %.sroa.3910.sroa.5.0.copyload, %bb.xy ], [ %.sroa.11988.sroa.6.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs92BnbMq7p8c_15influxdb3_write27PersistedSnapshotCheckpointEECsgsNUVCRJO2f_13influxdb3_lib.exit ]
  %.sroa.10984.1 = inttoptr i64 %.sroa.10984.1.in to ptr
  %i.bgc = getelementptr inbounds nuw i8, ptr %1, i64 537 ; 2 uses
  %i.bgd = load i8, ptr %i.bgc, align 1, !range !17, !noundef !15
  %i.bge = trunc nuw i8 %i.bgd to i1
  br i1 %i.bge, label %bb.zn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit658

bb.ya:                                            ; preds = %bb.lk, %bb.kv, %bb.kx, %bb.kp, %bb.jz, %bb.kb, %.body538, %bb.xx, %bb.kr, %bb.lm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit682
  %.pn220.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn218, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit682 ], [ %.pn220.pn.pn.pn, %bb.xx ], [ %i.aek, %bb.lm ], [ %i.acx, %bb.kr ], [ %i.adg, %bb.kv ], [ %i.abn, %bb.jz ], [ %i.adi, %bb.kx ], [ %.pn90.pn.pn.pn, %bb.kp ], [ %.pn156.pn.pn, %bb.lk ], [ %i.abp, %bb.kb ], [ %.pn147.pn.pn.pn, %.body538 ] ; 2 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %1, i64 537
  %i.bgg = load i8, ptr %i.bgf, align 1, !range !17, !noundef !15
  %i.bgh = trunc nuw i8 %i.bgg to i1
  br i1 %i.bgh, label %bb.aar, label %.body634

bb.yb:                                            ; preds = %bb.yc
  %i.bgi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtBG_14WalObjectStore3new0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.bgj) #30
          to label %.body630 unwind label %bb.bc

bb.yc:                                            ; preds = %bb.a, %bb.xt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  %i.bgj = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  invoke fastcc void @_RNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB4_14WalObjectStore3new0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.en, ptr noundef nonnull align 8 %i.bgj, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.yd unwind label %bb.yb

bb.yd:                                            ; preds = %bb.yc
  %i.bgk = load i64, ptr %i.en, align 8, !range !18447, !noundef !15 ; 3 uses
  %i.bgl = icmp eq i64 %i.bgk, -2
  br i1 %i.bgl, label %bb.ye, label %bb.yf

bb.ye:                                            ; preds = %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.yf:                                            ; preds = %bb.yd
  %.sroa.3964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.3964.0.copyload = load ptr, ptr %.sroa.3964.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %.sroa.5965.sroa.0.0.copyload = load ptr, ptr %.sroa.5965.0..sroa_idx, align 8
  %.sroa.5965.sroa.2.0..sroa.5965.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %.sroa.5965.sroa.2.0.copyload = load i64, ptr %.sroa.5965.sroa.2.0..sroa.5965.0..sroa_idx.sroa_idx, align 8
  %.sroa.5965.sroa.3.0..sroa.5965.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5965.sroa.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5965.sroa.3.0..sroa.5965.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtBG_14WalObjectStore3new0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.bgj)
          to label %bb.yh unwind label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.bgm = landingpad { ptr, i32 }
          cleanup
  br label %.body630

bb.yh:                                            ; preds = %bb.yf
  %.not.i623 = icmp eq i64 %i.bgk, -1
  br i1 %.not.i623, label %bb.yk, label %bb.zi

bb.yi:                                            ; preds = %bb.yj
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_buffer15QueryableBufferE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_buffer15QueryableBufferEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.bc

bb.yj:                                            ; preds = %bb.yk
  %i.bgn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.experimental.noalias.scope.decl(metadata !18448)
  call void @llvm.experimental.noalias.scope.decl(metadata !18449)
  %i.bgo = load ptr, ptr %i.ee, align 8, !alias.scope !18450, !nonnull !15, !noundef !15
  %i.bgp = atomicrmw sub ptr %i.bgo, i64 1 release, align 8, !noalias !18450
  %i.bgq = icmp eq i64 %i.bgp, 1
  br i1 %i.bgq, label %bb.yi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_buffer15QueryableBufferEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.yk:                                            ; preds = %bb.yh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3964.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  %i.bgr = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bgs = load ptr, ptr %i.bgr, align 8, !nonnull !15, !noundef !15
  store ptr %i.bgs, ptr %i.em, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  %i.bgt = getelementptr inbounds nuw i8, ptr %1, i64 543 ; 2 uses
  %i.bgu = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bgv = load <2 x ptr>, ptr %i.bgu, align 8
  store <2 x ptr> %i.bgv, ptr %i.el, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  %i.bgw = getelementptr inbounds nuw i8, ptr %1, i64 547
  store i8 0, ptr %i.bgw, align 1
  %i.bgx = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bgy = load ptr, ptr %i.bgx, align 8, !nonnull !15, !noundef !15
  store ptr %i.bgy, ptr %i.ek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  %i.bgz = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ej, ptr noundef nonnull align 8 dereferenceable(56) %i.bgz, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  store ptr %.sroa.3964.0.copyload, ptr %i.ei, align 16
  %i.bha = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr @267, ptr %i.bha, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.bhb = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.bhc = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bhd = load ptr, ptr %i.bhc, align 8, !nonnull !15, !noundef !15
  store ptr %i.bhd, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  store <4 x i8> zeroinitializer, ptr %i.bgt, align 1
  %i.bhe = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bhf = load ptr, ptr %i.bhe, align 8, !nonnull !15, !noundef !15
  store ptr %i.bhf, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %i.bhg = getelementptr inbounds nuw i8, ptr %1, i64 541 ; 2 uses
  store i8 0, ptr %i.bhg, align 1
  %i.bhh = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.bhi = load ptr, ptr %i.bhh, align 8, !nonnull !15, !noundef !15
  store ptr %i.bhi, ptr %i.ef, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  %i.bhj = getelementptr inbounds nuw i8, ptr %1, i64 540 ; 2 uses
  store i8 0, ptr %i.bhj, align 4
  %i.bhk = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.bhl = load ptr, ptr %i.bhk, align 8, !nonnull !15, !noundef !15
  store ptr %i.bhl, ptr %i.ee, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  %i.bhm = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  %.val378 = load ptr, ptr %i.bhm, align 8, !nonnull !15, !noundef !15
  %i.bhn = getelementptr inbounds nuw i8, ptr %.val378, i64 16
  invoke void @_RNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer7metricsNtB2_12WriteMetrics3new(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ed, ptr noundef nonnull align 8 %i.bhn)
          to label %bb.yl unwind label %bb.yj

bb.yl:                                            ; preds = %bb.yk
  %i.bho = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bhp = load i64, ptr %i.bho, align 8, !range !16, !noundef !15
  %i.bhq = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bhr = load i64, ptr %i.bhq, align 8
  %i.bhs = trunc nuw i64 %i.bhp to i1
  %..i628 = select i1 %i.bhs, i64 %i.bhr, i64 432
  %i.bht = load ptr, ptr %i.em, align 8, !nonnull !15, !noundef !15
  %i.bhu = load ptr, ptr %i.ek, align 8, !nonnull !15, !noundef !15
  %i.bhv = load ptr, ptr %i.ef, align 8, !nonnull !15, !noundef !15
  %i.bhw = load ptr, ptr %i.ee, align 8, !nonnull !15, !noundef !15
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bhx, ptr noundef nonnull align 8 dereferenceable(56) %i.ej, i64 56, i1 false)
  %.sroa.11976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11976.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %i.ed, i64 120, i1 false)
  %i.bhy = load ptr, ptr %i.eh, align 8, !nonnull !15, !noundef !15
  %i.bhz = load ptr, ptr %i.eg, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  %i.bia = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5970.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.6971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.7972.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.8973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.9974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bib = load <2 x ptr>, ptr %i.ei, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  %.sroa.12977.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.bic = load <2 x ptr>, ptr %i.el, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  store i64 1, ptr %i.b, align 8, !noalias !18451
  store i64 1, ptr %i.bia, align 8, !noalias !18451
  store ptr %i.bht, ptr %.sroa.5970.0..sroa_idx, align 8
  store ptr %i.bhu, ptr %.sroa.6971.0..sroa_idx, align 8
  store ptr %i.bhv, ptr %.sroa.7972.0..sroa_idx, align 8
  store ptr %i.bhw, ptr %.sroa.8973.0..sroa_idx, align 8
  store <2 x ptr> %i.bib, ptr %.sroa.9974.0..sroa_idx, align 8
  %7 = insertelement <4 x ptr> poison, ptr %i.bhy, i64 0
  %8 = insertelement <4 x ptr> %7, ptr %i.bhz, i64 1
  %9 = shufflevector <2 x ptr> %i.bic, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x ptr> %8, <4 x ptr> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %10, ptr %.sroa.12977.0..sroa_idx, align 8
  %.sroa.16981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store i64 %..i628, ptr %.sroa.16981.0..sroa_idx, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !18452
  %i.bid = call noundef align 8 dereferenceable_or_null(280) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 6961) 280, i64 noundef range(i64 1, 17) 8) #32, !noalias !18452 ; 3 uses
  %i.bie = icmp eq ptr %i.bid, null
  br i1 %i.bie, label %bb.ym, label %bb.yp, !prof !92

bb.ym:                                            ; preds = %bb.yl
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #29
          to label %.noexc.i629 unwind label %bb.yn, !noalias !18451

.noexc.i629:                                      ; preds = %bb.ym
  unreachable

bb.yn:                                            ; preds = %bb.ym
  %i.bif = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15WriteBufferImplECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.bhx)
          to label %.body630 unwind label %bb.yo, !noalias !18451

bb.yo:                                            ; preds = %bb.yn
  %i.big = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !18451
  unreachable

bb.yp:                                            ; preds = %bb.yl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.bid, ptr noundef nonnull align 8 dereferenceable(280) %i.b, i64 280, i1 false), !noalias !18451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18451
  store i8 0, ptr %i.bhj, align 4
  store i8 0, ptr %i.bhg, align 1
  %i.bih = getelementptr inbounds nuw i8, ptr %1, i64 537 ; 2 uses
  %i.bii = load i8, ptr %i.bih, align 1, !range !17, !noundef !15
  %i.bij = trunc nuw i8 %i.bii to i1
  br i1 %i.bij, label %bb.yr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.yt, %bb.yp
  store i8 0, ptr %i.bih, align 1
  %i.bik = getelementptr inbounds nuw i8, ptr %1, i64 538
  store i8 0, ptr %i.bik, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !18453)
  call void @llvm.experimental.noalias.scope.decl(metadata !18454)
  %i.bil = load ptr, ptr %i.bhm, align 8, !alias.scope !18455, !nonnull !15, !noundef !15
  %i.bim = atomicrmw sub ptr %i.bil, i64 1 release, align 8, !noalias !18455
  %i.bin = icmp eq i64 %i.bim, 1
  br i1 %i.bin, label %bb.yq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsamjPIc071P4_6metric8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.yq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsamjPIc071P4_6metric8RegistryE9drop_slowCs4lw9sX6UwIr_8executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bhm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsamjPIc071P4_6metric8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.yw

bb.yr:                                            ; preds = %bb.yp
  %i.bio = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs1LivM9IBWqb_12object_store10ObjectMetaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bio)
          to label %bb.yt unwind label %bb.ys

bb.ys:                                            ; preds = %bb.yr
  %i.bip = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs1LivM9IBWqb_12object_store10ObjectMetaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bio)
          to label %.body634 unwind label %bb.yu

bb.yt:                                            ; preds = %bb.yr
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs1LivM9IBWqb_12object_store10ObjectMetaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bio)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.yv

bb.yu:                                            ; preds = %bb.ys
  %i.biq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.yv:                                            ; preds = %bb.zp, %bb.yt
  %i.bir = landingpad { ptr, i32 }
          cleanup
  br label %.body634

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsamjPIc071P4_6metric8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit662: ; preds = %bb.zu, %bb.zv, %bb.yw
  %.pn232 = phi { ptr, i32 } [ %i.biv, %bb.yw ], [ %.pn230, %bb.zv ], [ %.pn230, %bb.zu ] ; 4 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %1, i64 543
  %i.bit = load i8, ptr %i.bis, align 1, !range !17, !noundef !15
  %i.biu = trunc nuw i8 %i.bit to i1
  br i1 %i.biu, label %bb.aat, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsidB8gjke19X_15influxdb3_cache13parquet_cache18ParquetCacheOracleEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit684

bb.yw:                                            ; preds = %bb.zs, %bb.yq
  %i.biv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsamjPIc071P4_6metric8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit662

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsamjPIc071P4_6metric8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.yq
  store i8 0, ptr %i.bgt, align 1
  %i.biw = getelementptr inbounds nuw i8, ptr %1, i64 539
  store i8 0, ptr %i.biw, align 1
  %i.bix = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18456)
  call void @llvm.experimental.noalias.scope.decl(metadata !18457)
  %i.biy = load ptr, ptr %i.bix, align 8, !alias.scope !18458, !nonnull !15, !noundef !15
  %i.biz = atomicrmw sub ptr %i.biy, i64 1 release, align 8, !noalias !18458
  %i.bja = icmp eq i64 %i.biz, 1
  br i1 %i.bja, label %bb.yx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit637

bb.yx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsamjPIc071P4_6metric8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_E9drop_slowCs1fnGVdejPSq_15trace_exporters(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bix)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit637 unwind label %bb.yy

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit670: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs7q2UDKzmthI_9iox_query4exec8ExecutorEECsgsNUVCRJO2f_13influxdb3_lib.exit686, %bb.aad, %bb.yy
  %.pn238 = phi { ptr, i32 } [ %i.bje, %bb.yy ], [ %.pn236, %bb.aad ], [ %.pn236, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs7q2UDKzmthI_9iox_query4exec8ExecutorEECsgsNUVCRJO2f_13influxdb3_lib.exit686 ] ; 3 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.bjc = load i8, ptr %i.bjb, align 8, !range !17, !noundef !15
  %i.bjd = trunc nuw i8 %i.bjc to i1
  br i1 %i.bjd, label %bb.aay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache8provider21DistinctCacheProviderEECsgsNUVCRJO2f_13influxdb3_lib.exit688

bb.yy:                                            ; preds = %bb.aaa, %bb.yx
  %i.bje = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit670

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit637: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsamjPIc071P4_6metric8RegistryEECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.yx
  store i32 0, ptr %i.bhb, align 8
  br label %bb.yz

bb.yz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs92BnbMq7p8c_15influxdb3_write9persister9PersisterEECsgsNUVCRJO2f_13influxdb3_lib.exit678, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit637
  %.sroa.0982.2 = phi i8 [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit637 ], [ %.sroa.0982.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs92BnbMq7p8c_15influxdb3_write9persister9PersisterEECsgsNUVCRJO2f_13influxdb3_lib.exit678 ]
  %.sroa.10984.2 = phi ptr [ %i.bid, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit637 ], [ %.sroa.10984.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs92BnbMq7p8c_15influxdb3_write9persister9PersisterEECsgsNUVCRJO2f_13influxdb3_lib.exit678 ]
  %.sroa.11988.sroa.0.2 = phi i64 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit637 ], [ %.sroa.11988.sroa.0.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs92BnbMq7p8c_15influxdb3_write9persister9PersisterEECsgsNUVCRJO2f_13influxdb3_lib.exit678 ]
  %.sroa.11988.sroa.5.2 = phi ptr [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit637 ], [ %.sroa.11988.sroa.5.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs92BnbMq7p8c_15influxdb3_write9persister9PersisterEECsgsNUVCRJO2f_13influxdb3_lib.exit678 ]
  %.sroa.11988.sroa.6.2 = phi i64 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit637 ], [ %.sroa.11988.sroa.6.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs92BnbMq7p8c_15influxdb3_write9persister9PersisterEECsgsNUVCRJO2f_13influxdb3_lib.exit678 ]
  store i8 %.sroa.0982.2, ptr %0, align 8
  %.sroa.10984.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10984.2, ptr %.sroa.10984.0..sroa_idx, align 8
  %.sroa.11988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11988.sroa.0.2, ptr %.sroa.11988.0..sroa_idx, align 8
  %.sroa.11988.sroa.5.0..sroa.11988.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.11988.sroa.5.2, ptr %.sroa.11988.sroa.5.0..sroa.11988.0..sroa_idx.sroa_idx, align 8
  %.sroa.11988.sroa.6.0..sroa.11988.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.11988.sroa.6.2, ptr %.sroa.11988.sroa.6.0..sroa.11988.0..sroa_idx.sroa_idx, align 8
  %.sroa.11988.sroa.7.0..sroa.11988.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11988.sroa.7.0..sroa.11988.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11988.sroa.7, i64 40, i1 false)
  br label %common.ret

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_buffer15QueryableBufferEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.yj, %bb.yi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @llvm.experimental.noalias.scope.decl(metadata !18459)
  call void @llvm.experimental.noalias.scope.decl(metadata !18460)
  %i.bjf = load ptr, ptr %i.ef, align 8, !alias.scope !18461, !nonnull !15, !noundef !15
  %i.bjg = atomicrmw sub ptr %i.bjf, i64 1 release, align 8, !noalias !18461
  %i.bjh = icmp eq i64 %i.bjg, 1
  br i1 %i.bjh, label %bb.za, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit639

bb.za:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_buffer15QueryableBufferEECsgsNUVCRJO2f_13influxdb3_lib.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ef)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit639 unwind label %bb.bc

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit639: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_buffer15QueryableBufferEECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.za
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  call void @llvm.experimental.noalias.scope.decl(metadata !18462)
  call void @llvm.experimental.noalias.scope.decl(metadata !18463)
  %i.bji = load ptr, ptr %i.eg, align 8, !alias.scope !18464, !nonnull !15, !noundef !15
  %i.bjj = atomicrmw sub ptr %i.bji, i64 1 release, align 8, !noalias !18464
  %i.bjk = icmp eq i64 %i.bjj, 1
  br i1 %i.bjk, label %bb.zb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache8provider17LastCacheProviderEECsgsNUVCRJO2f_13influxdb3_lib.exit641

bb.zb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit639
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache8provider17LastCacheProviderE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache8provider17LastCacheProviderEECsgsNUVCRJO2f_13influxdb3_lib.exit641 unwind label %bb.bc

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache8provider17LastCacheProviderEECsgsNUVCRJO2f_13influxdb3_lib.exit641: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer15persisted_files14PersistedFilesEECsgsNUVCRJO2f_13influxdb3_lib.exit639, %bb.zb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.experimental.noalias.scope.decl(metadata !18465)
  call void @llvm.experimental.noalias.scope.decl(metadata !18466)
  %i.bjl = load ptr, ptr %i.eh, align 8, !alias.scope !18467, !nonnull !15, !noundef !15
  %i.bjm = atomicrmw sub ptr %i.bjl, i64 1 release, align 8, !noalias !18467
  %i.bjn = icmp eq i64 %i.bjm, 1
  br i1 %i.bjn, label %bb.zc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache8provider21DistinctCacheProviderEECsgsNUVCRJO2f_13influxdb3_lib.exit643

bb.zc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache8provider17LastCacheProviderEECsgsNUVCRJO2f_13influxdb3_lib.exit641
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache8provider21DistinctCacheProviderE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache8provider21DistinctCacheProviderEECsgsNUVCRJO2f_13influxdb3_lib.exit643 unwind label %bb.bc

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache8provider21DistinctCacheProviderEECsgsNUVCRJO2f_13influxdb3_lib.exit643: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache8provider17LastCacheProviderEECsgsNUVCRJO2f_13influxdb3_lib.exit641, %bb.zc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.experimental.noalias.scope.decl(metadata !18468)
  call void @llvm.experimental.noalias.scope.decl(metadata !18469)
  %i.bjo = load ptr, ptr %i.ei, align 16, !alias.scope !18470, !nonnull !15, !noundef !15
  %i.bjp = atomicrmw sub ptr %i.bjo, i64 1 release, align 8, !noalias !18470
  %i.bjq = icmp eq i64 %i.bjp, 1
  br i1 %i.bjq, label %bb.zd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal3WalEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.zd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache8provider21DistinctCacheProviderEECsgsNUVCRJO2f_13influxdb3_lib.exit643
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal3WalEL_E9drop_slowCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ei)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal3WalEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.bc

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal3WalEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache8provider21DistinctCacheProviderEECsgsNUVCRJO2f_13influxdb3_lib.exit643, %bb.zd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
end_hunk_1
