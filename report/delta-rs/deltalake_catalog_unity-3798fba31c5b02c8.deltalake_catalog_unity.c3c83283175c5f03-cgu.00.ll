Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.00?download=true
inline.NumInlined: 1642
inline.NumDeleted: 746
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvXs7_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_19UnitySchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table0B9_:bb.a
  %.pre.i.i181 = load i64, ptr %.phi.trans.insert.i.i180, align 8, !noalias !2834
  br label %bb.rx

bb.rv:                                            ; preds = %bb.ru
  %i.ayr = extractvalue { i64, i64 } %i.ayo, 1    ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %1, i64 1352 ; 2 uses
  %i.ayt = load i64, ptr %i.ays, align 8, !noalias !2834, !noundef !13 ; 2 uses
  %i.ayu = icmp eq i64 %i.ayt, -1
  %.sroa.0.0.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.ayr, i64 range(i64 0, -1) %i.ayt)
  %storemerge.i42.i = select i1 %i.ayu, i64 %i.ayr, i64 %.sroa.0.0.i.i.i.i ; 2 uses
  store i64 %storemerge.i42.i, ptr %i.ays, align 8, !noalias !2834
  br label %bb.rx

bb.rw:                                            ; preds = %bb.rt
  %i.ayv = landingpad { ptr, i32 }
          cleanup
  br label %bb.sj

bb.rx:                                            ; preds = %bb.rv, %._crit_edge.i.i
  %i.ayw = phi i64 [ %.pre.i.i181, %._crit_edge.i.i ], [ %storemerge.i42.i, %bb.rv ]
  %i.ayx = icmp eq i64 %i.ayw, 0
  br i1 %i.ayx, label %bb.ry, label %bb.sb

bb.ry:                                            ; preds = %bb.rx
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i79.i.i unwind label %bb.rz, !noalias !2835

bb.rz:                                            ; preds = %bb.ry
  %i.ayy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i.i178 unwind label %bb.sa, !noalias !2835

bb.sa:                                            ; preds = %bb.rz
  %i.ayz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !2835
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i79.i.i: ; preds = %bb.ry
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit83.i.i unwind label %bb.se, !noalias !2835

bb.sb:                                            ; preds = %bb.rx
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i85.i.i unwind label %bb.sc, !noalias !2835

bb.sc:                                            ; preds = %bb.sb
  %i.aza = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i.i178 unwind label %bb.sd, !noalias !2835

bb.sd:                                            ; preds = %bb.sc
  %i.azb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !2835
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i85.i.i: ; preds = %bb.sb
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit89.i.i unwind label %bb.se, !noalias !2835

.body.i.i178:                                     ; preds = %bb.sj, %bb.se, %bb.sc, %bb.rz, %bb.rr
  %.pn35.i.i = phi { ptr, i32 } [ %.pn16.pn.i.i, %bb.sj ], [ %i.aym, %bb.rr ], [ %i.ayy, %bb.rz ], [ %i.azc, %bb.se ], [ %i.aza, %bb.sc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2834
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(96) %i.n) #31
          to label %bb.sf unwind label %bb.sm, !noalias !2835

bb.se:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i85.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i79.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, %bb.rj
  %i.azc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i178

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit83.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i79.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2834
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(96) %i.n)
          to label %bb.sh unwind label %bb.sg, !noalias !2835

bb.sf:                                            ; preds = %bb.sg, %.body.i.i178
  %.pn37.i.i = phi { ptr, i32 } [ %.pn35.i.i, %.body.i.i178 ], [ %i.azd, %bb.sg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2834
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable12load_version0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.sg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit89.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit83.i.i
  %i.azd = landingpad { ptr, i32 }
          cleanup
  br label %bb.sf

bb.sh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit83.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2834
  br label %bb.su

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit89.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i85.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2834
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(96) %i.n)
          to label %bb.si unwind label %bb.sg, !noalias !2835

bb.si:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit89.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2834
  br label %bb.sl

bb.sj:                                            ; preds = %bb.rw, %bb.ro
  %.pn16.pn.i.i = phi { ptr, i32 } [ %.pn14.i.i, %bb.ro ], [ %i.ayv, %bb.rw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.m) #31
          to label %.body.i.i178 unwind label %bb.sm, !noalias !2835

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2834
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(96) %i.n)
          to label %bb.sk unwind label %bb.sg, !noalias !2835

bb.sk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2834
  br label %bb.sl

bb.sl:                                            ; preds = %bb.sk, %bb.si, %bb.qz
  %i.aze = phi ptr [ %i.axx, %bb.sk ], [ %i.axx, %bb.si ], [ %i.aux, %bb.qz ]
  %i.azf = phi ptr [ %i.axy, %bb.sk ], [ %i.axy, %bb.si ], [ %i.auy, %bb.qz ]
  %i.azg = phi ptr [ %i.axz, %bb.sk ], [ %i.axz, %bb.si ], [ %i.ava, %bb.qz ]
  %i.azh = phi ptr [ %i.aya, %bb.sk ], [ %i.aya, %bb.si ], [ %i.avb, %bb.qz ]
  %i.azi = getelementptr inbounds nuw i8, ptr %1, i64 1424
  %i.azj = getelementptr inbounds nuw i8, ptr %1, i64 1504
  store ptr %i.azi, ptr %i.azj, align 8, !noalias !2834
  br label %bb.re

bb.sm:                                            ; preds = %bb.wi, %.body107.i.i, %bb.tv, %.body97.i.i, %bb.sy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable12load_version0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.sj, %.body.i.i178, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.ra, %bb.qt
  %i.azk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !2835
  unreachable

bb.sn:                                            ; preds = %bb.ri
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9185.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.sroa.2.i.i, i64 64, i1 false), !noalias !2834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2834
  br label %bb.so

bb.so:                                            ; preds = %bb.vy, %bb.ty, %bb.sn
  %i.azl = phi ptr [ %i.bkt, %bb.vy ], [ %i.bbl, %bb.ty ], [ %i.axx, %bb.sn ] ; 8 uses
  %i.azm = phi ptr [ %i.bku, %bb.vy ], [ %i.bbm, %bb.ty ], [ %i.axy, %bb.sn ] ; 8 uses
  %i.azn = phi ptr [ %i.bkv, %bb.vy ], [ %i.bbn, %bb.ty ], [ %i.axz, %bb.sn ] ; 8 uses
  %i.azo = phi ptr [ %i.bkw, %bb.vy ], [ %i.bbo, %bb.ty ], [ %i.aya, %bb.sn ] ; 8 uses
  %.sroa.0176.0.i.i = phi i64 [ %.sroa.041.0.i.i.i, %bb.vy ], [ %.sroa.0176.1202.i.i, %bb.ty ], [ -9223372036854775743, %bb.sn ] ; 2 uses
  %.sroa.6179.0.i.i = phi i64 [ %.sroa.442.0.i.i.i, %bb.vy ], [ %.sroa.6179.1203.i.i, %bb.ty ], [ %.sroa.3.sroa.0.0.copyload.i.i, %bb.sn ] ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %1, i64 1424
  %.val55.i.i = load ptr, ptr %i.azp, align 8, !noalias !2834 ; 5 uses
  %i.azq = getelementptr i8, ptr %1, i64 1432
  %.val56.i.i = load ptr, ptr %i.azq, align 8, !noalias !2834, !nonnull !13, !align !18, !noundef !13 ; 5 uses
  %i.azr = load ptr, ptr %.val56.i.i, align 8, !invariant.load !13, !noalias !2835 ; 2 uses
  %.not.i.i.i.i171 = icmp eq ptr %i.azr, null
  br i1 %.not.i.i.i.i171, label %bb.sq, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val55.i.i) ]
  invoke void %i.azr(ptr noundef nonnull %.val55.i.i)
          to label %bb.sq unwind label %bb.ss, !noalias !2835

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %i.azs = getelementptr inbounds nuw i8, ptr %.val56.i.i, i64 8
  %i.azt = load i64, ptr %i.azs, align 8, !range !15, !invariant.load !13, !noalias !2835 ; 2 uses
  %i.azu = icmp eq i64 %i.azt, 0
  br i1 %i.azu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.azv = getelementptr inbounds nuw i8, ptr %.val56.i.i, i64 16
  %i.azw = load i64, ptr %i.azv, align 8, !range !16, !invariant.load !13, !noalias !2835
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val55.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55.i.i, i64 noundef range(i64 1, 0) %i.azt, i64 noundef range(i64 1, 536870913) %i.azw) #24, !noalias !2835
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.ss:                                            ; preds = %bb.sp
  %i.azx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %.val56.i.i, i64 8
  %i.azz = load i64, ptr %i.azy, align 8, !range !15, !invariant.load !13, !noalias !2835 ; 2 uses
  %i.baa = icmp eq i64 %i.azz, 0
  br i1 %i.baa, label %.body90.i.i, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.bab = getelementptr inbounds nuw i8, ptr %.val56.i.i, i64 16
  %i.bac = load i64, ptr %i.bab, align 8, !range !16, !invariant.load !13, !noalias !2835
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55.i.i, i64 noundef range(i64 1, 0) %i.azz, i64 noundef range(i64 1, 536870913) %i.bac) #24, !noalias !2835
  br label %.body90.i.i

bb.su:                                            ; preds = %bb.sh, %bb.rh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2834
  %i.bad = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %i.bae = load ptr, ptr %i.bad, align 8, !noalias !2834, !nonnull !13, !align !18, !noundef !13 ; 4 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 104
  %.val59.i.i = load ptr, ptr %i.baf, align 8, !noalias !2835, !nonnull !13, !noundef !13
  %i.bag = getelementptr i8, ptr %i.bae, i64 112
  %.val60.i.i = load ptr, ptr %i.bag, align 8, !noalias !2835, !nonnull !13, !align !18, !noundef !13 ; 2 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %.val60.i.i, i64 16
  %i.bai = load i64, ptr %i.bah, align 8, !range !16, !invariant.load !13, !noalias !2835
  %i.baj = add nsw i64 %i.bai, -1
  %i.bak = and i64 %i.baj, -16
  %i.bal = getelementptr inbounds nuw i8, ptr %.val59.i.i, i64 %i.bak
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 16
  %i.ban = getelementptr i8, ptr %i.bae, i64 72
  %.val67.i.i = load i64, ptr %i.ban, align 8, !range !21, !noalias !2835, !noundef !13
  %.not.i92.not.i.i = icmp eq i64 %.val67.i.i, -9223372036854775808
  br i1 %.not.i92.not.i.i, label %3, label %bb.sv

3:                                                ; preds = %bb.su
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 1352
  br label %bb.sw

bb.sv:                                            ; preds = %bb.su
  %i.bao = getelementptr i8, ptr %i.bae, i64 96
  %.val68.i.i = load ptr, ptr %i.bao, align 8, !noalias !2835, !nonnull !13, !noundef !13
  %i.bap = getelementptr inbounds nuw i8, ptr %.val68.i.i, i64 88
  %i.baq = load ptr, ptr %i.bap, align 8, !noalias !2835, !nonnull !13, !noundef !13
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 1224
  br label %bb.sw

bb.sw:                                            ; preds = %bb.sv, %3
  %.in.i.i = phi ptr [ %i.bar, %bb.sv ], [ %4, %3 ]
  %i.bas = load i64, ptr %.in.i.i, align 8, !noalias !2835, !noundef !13
  %i.bat = getelementptr inbounds nuw i8, ptr %.val60.i.i, i64 104
  %i.bau = load ptr, ptr %i.bat, align 8, !invariant.load !13, !noalias !2835, !nonnull !13
  %i.bav = invoke { ptr, ptr } %i.bau(ptr noundef nonnull %i.bam, i64 noundef %i.bas)
          to label %bb.sx unwind label %bb.ti, !noalias !2835 ; 2 uses

bb.sx:                                            ; preds = %bb.sw
  %i.baw = extractvalue { ptr, ptr } %i.bav, 0
  %i.bax = extractvalue { ptr, ptr } %i.bav, 1
  store ptr %i.baw, ptr %i.ayb, align 8, !noalias !2834
  %i.bay = getelementptr inbounds nuw i8, ptr %1, i64 1512
  store ptr %i.bax, ptr %i.bay, align 8, !noalias !2834
  br label %bb.sz

.body94.i.i:                                      ; preds = %bb.tv, %.body101.i.i, %bb.ti, %bb.th, %bb.tg, %bb.sy
  %i.baz = phi ptr [ %i.bbl, %bb.sy ], [ %i.bbl, %bb.tg ], [ %i.bcf, %bb.ti ], [ %i.bbl, %bb.th ], [ %i.bbl, %bb.tv ], [ %i.bbl, %.body101.i.i ]
  %i.bba = phi ptr [ %i.bbm, %bb.sy ], [ %i.bbm, %bb.tg ], [ %i.bcg, %bb.ti ], [ %i.bbm, %bb.th ], [ %i.bbm, %bb.tv ], [ %i.bbm, %.body101.i.i ]
  %i.bbb = phi ptr [ %i.bbn, %bb.sy ], [ %i.bbn, %bb.tg ], [ %i.bch, %bb.ti ], [ %i.bbn, %bb.th ], [ %i.bbn, %bb.tv ], [ %i.bbn, %.body101.i.i ]
  %i.bbc = phi ptr [ %i.bbo, %bb.sy ], [ %i.bbo, %bb.tg ], [ %i.bci, %bb.ti ], [ %i.bbo, %bb.th ], [ %i.bbo, %bb.tv ], [ %i.bbo, %.body101.i.i ]
  %.pn33.i.i = phi { ptr, i32 } [ %i.bbj, %bb.sy ], [ %i.bbz, %bb.tg ], [ %i.bcj, %bb.ti ], [ %i.bbz, %bb.th ], [ %.pn31.i.i, %bb.tv ], [ %.pn31.i.i, %.body101.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2834
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable12load_version0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable12load_version0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.wp, %bb.wi, %bb.wh, %bb.wg, %.body107.i.i, %.body94.i.i, %bb.sf, %bb.rd
  %i.bbd = phi ptr [ %i.axx, %bb.sf ], [ %i.baz, %.body94.i.i ], [ %i.axx, %bb.rd ], [ %i.bng, %bb.wg ], [ %i.bns, %bb.wp ], [ %i.bng, %bb.wh ], [ %i.bng, %bb.wi ], [ %i.beu, %.body107.i.i ]
  %i.bbe = phi ptr [ %i.axy, %bb.sf ], [ %i.bba, %.body94.i.i ], [ %i.axy, %bb.rd ], [ %i.bnh, %bb.wg ], [ %i.bnt, %bb.wp ], [ %i.bnh, %bb.wh ], [ %i.bnh, %bb.wi ], [ %i.bev, %.body107.i.i ]
  %i.bbf = phi ptr [ %i.axz, %bb.sf ], [ %i.bbb, %.body94.i.i ], [ %i.axz, %bb.rd ], [ %i.bni, %bb.wg ], [ %i.bnu, %bb.wp ], [ %i.bni, %bb.wh ], [ %i.bni, %bb.wi ], [ %i.bew, %.body107.i.i ]
  %i.bbg = phi ptr [ %i.aya, %bb.sf ], [ %i.bbc, %.body94.i.i ], [ %i.aya, %bb.rd ], [ %i.bnj, %bb.wg ], [ %i.bnv, %bb.wp ], [ %i.bnj, %bb.wh ], [ %i.bnj, %bb.wi ], [ %i.bex, %.body107.i.i ]
  %.pn37.pn.i.i = phi { ptr, i32 } [ %.pn37.i.i, %bb.sf ], [ %.pn33.i.i, %.body94.i.i ], [ %i.axw, %bb.rd ], [ %i.bna, %bb.wg ], [ %i.bnw, %bb.wp ], [ %i.bna, %bb.wh ], [ %i.bna, %bb.wi ], [ %eh.lpad-body108.i.i, %.body107.i.i ]
  %i.bbh = getelementptr inbounds nuw i8, ptr %1, i64 1424
  %.val53.i.i = load ptr, ptr %i.bbh, align 8, !noalias !2834
  %i.bbi = getelementptr i8, ptr %1, i64 1432
  %.val54.i.i = load ptr, ptr %i.bbi, align 8, !noalias !2834, !nonnull !13, !align !18, !noundef !13
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val53.i.i, ptr nonnull %.val54.i.i) #31
          to label %.body90.i.i unwind label %bb.sm, !noalias !2835

bb.sy:                                            ; preds = %bb.sz
  %i.bbj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2834
  %.val49.i.i = load ptr, ptr %i.bbp, align 8, !noalias !2834
  %i.bbk = getelementptr i8, ptr %1, i64 1512
  %.val50.i.i = load ptr, ptr %i.bbk, align 8, !noalias !2834, !nonnull !13, !align !18, !noundef !13
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val49.i.i, ptr nonnull %.val50.i.i) #31
          to label %.body94.i.i unwind label %bb.sm, !noalias !2835

bb.sz:                                            ; preds = %bb.sx, %bb.qr
  %i.bbl = phi ptr [ %i.axx, %bb.sx ], [ %i.aru, %bb.qr ] ; 9 uses
  %i.bbm = phi ptr [ %i.axy, %bb.sx ], [ %i.art, %bb.qr ] ; 8 uses
  %i.bbn = phi ptr [ %i.axz, %bb.sx ], [ %.phi.trans.insert.i162, %bb.qr ] ; 9 uses
  %i.bbo = phi ptr [ %i.aya, %bb.sx ], [ %i.auw, %bb.qr ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2834
  %i.bbp = getelementptr inbounds nuw i8, ptr %1, i64 1504 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bbp, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ta unwind label %bb.sy, !noalias !2835

bb.ta:                                            ; preds = %bb.sz
  %i.bbq = load i64, ptr %i.i, align 16, !range !49, !noalias !2834, !noundef !13
  %i.bbr = icmp eq i64 %i.bbq, -9223372036854775710
  br i1 %i.bbr, label %bb.tb, label %bb.tc

bb.tb:                                            ; preds = %bb.ta
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2834
  br label %bb.wz

bb.tc:                                            ; preds = %bb.ta
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 16 dereferenceable(96) %i.i, i64 96, i1 false), !noalias !2834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2834
  %.val.i.i174 = load ptr, ptr %i.bbp, align 8, !noalias !2834 ; 5 uses
  %i.bbs = getelementptr i8, ptr %1, i64 1512
  %.val48.i.i = load ptr, ptr %i.bbs, align 8, !noalias !2834, !nonnull !13, !align !18, !noundef !13 ; 5 uses
  %i.bbt = load ptr, ptr %.val48.i.i, align 8, !invariant.load !13, !noalias !2835 ; 2 uses
  %.not.i.i93.i.i = icmp eq ptr %i.bbt, null
  br i1 %.not.i.i93.i.i, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i174) ]
  invoke void %i.bbt(ptr noundef nonnull %.val.i.i174)
          to label %bb.te unwind label %bb.tg, !noalias !2835

bb.te:                                            ; preds = %bb.td, %bb.tc
  %i.bbu = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 8
  %i.bbv = load i64, ptr %i.bbu, align 8, !range !15, !invariant.load !13, !noalias !2835 ; 2 uses
  %i.bbw = icmp eq i64 %i.bbv, 0
  br i1 %i.bbw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.bbx = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 16
  %i.bby = load i64, ptr %i.bbx, align 8, !range !16, !invariant.load !13, !noalias !2835
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i174) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i174, i64 noundef range(i64 1, 0) %i.bbv, i64 noundef range(i64 1, 536870913) %i.bby) #24, !noalias !2835
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.tg:                                            ; preds = %bb.td
  %i.bbz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 8
  %i.bcb = load i64, ptr %i.bca, align 8, !range !15, !invariant.load !13, !noalias !2835 ; 2 uses
  %i.bcc = icmp eq i64 %i.bcb, 0
  br i1 %i.bcc, label %.body94.i.i, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.bcd = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 16
  %i.bce = load i64, ptr %i.bcd, align 8, !range !16, !invariant.load !13, !noalias !2835
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i174, i64 noundef range(i64 1, 0) %i.bcb, i64 noundef range(i64 1, 536870913) %i.bce) #24, !noalias !2835
  br label %.body94.i.i

bb.ti:                                            ; preds = %bb.tz, %bb.sw
  %i.bcf = phi ptr [ %i.bbl, %bb.tz ], [ %i.axx, %bb.sw ]
  %i.bcg = phi ptr [ %i.bbm, %bb.tz ], [ %i.axy, %bb.sw ]
  %i.bch = phi ptr [ %i.bbn, %bb.tz ], [ %i.axz, %bb.sw ]
  %i.bci = phi ptr [ %i.bbo, %bb.tz ], [ %i.aya, %bb.sw ]
  %i.bcj = landingpad { ptr, i32 }
          cleanup
  br label %.body94.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.tf, %bb.te
  %i.bck = load i64, ptr %i.j, align 16, !range !2806, !noalias !2834, !noundef !13 ; 2 uses
  switch i64 %i.bck, label %.thread.i.i176 [
    i64 -9223372036854775711, label %bb.tj
    i64 -9223372036854775738, label %bb.tn
  ]

bb.tj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bcm = load i64, ptr %i.bcl, align 8, !noalias !2834, !noundef !13 ; 2 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %1, i64 1440
  store i64 %i.bcm, ptr %i.bcn, align 8, !noalias !2834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2834
  %i.bco = getelementptr inbounds nuw i8, ptr %1, i64 1448
  %i.bcp = getelementptr inbounds nuw i8, ptr %1, i64 1352
  %i.bcq = load i64, ptr %i.bcp, align 8, !noalias !2834, !noundef !13 ; 3 uses
  store i64 %i.bcq, ptr %i.bco, align 8, !noalias !2834
  %i.bcr = getelementptr inbounds nuw i8, ptr %1, i64 1456
  store i64 %i.bcq, ptr %i.bcr, align 8, !noalias !2834
  %i.bcs = getelementptr inbounds nuw i8, ptr %1, i64 1484
  %i.bct = load i32, ptr %i.bcs, align 4, !range !2847, !alias.scope !2848, !noalias !2834, !noundef !13 ; 2 uses
  %i.bcu = ashr i32 %i.bct, 13                    ; 3 uses
  %i.bcv = add nsw i32 %i.bcu, -1                 ; 2 uses
  %i.bcw = icmp slt i32 %i.bcu, 1
  br i1 %i.bcw, label %bb.tk, label %bb.tl

bb.tk:                                            ; preds = %bb.tj
  %i.bcx = sub nsw i32 1, %i.bcu
  %i.bcy = udiv i32 %i.bcx, 400
  %i.bcz = add nuw nsw i32 %i.bcy, 1              ; 2 uses
  %i.bda = mul nuw nsw i32 %i.bcz, 400
  %i.bdb = add nsw i32 %i.bda, %i.bcv
  %.neg.i.i.i.i = mul nsw i32 %i.bcz, -146097
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tk, %bb.tj
  %.sroa.05.0.i.i.i.i = phi i32 [ %.neg.i.i.i.i, %bb.tk ], [ 0, %bb.tj ]
  %.sroa.0.0.i.i96.i.i = phi i32 [ %i.bdb, %bb.tk ], [ %i.bcv, %bb.tj ] ; 2 uses
  %i.bdc = sdiv i32 %.sroa.0.0.i.i96.i.i, 100     ; 2 uses
  %i.bdd = mul nsw i32 %.sroa.0.0.i.i96.i.i, 1461
  %i.bde = ashr i32 %i.bdd, 2
  %i.bdf = ashr i32 %i.bdc, 2
  %i.bdg = lshr i32 %i.bct, 4
  %i.bdh = and i32 %i.bdg, 511
  %i.bdi = getelementptr inbounds nuw i8, ptr %1, i64 1488
  %i.bdj = load i32, ptr %i.bdi, align 8, !alias.scope !2848, !noalias !2834, !noundef !13
  %i.bdk = zext i32 %i.bdj to i64
  %i.bdl = add nuw nsw i32 %i.bdh, -719163
  %i.bdm = add nsw i32 %i.bdl, %.sroa.05.0.i.i.i.i
  %i.bdn = sub nsw i32 %i.bdm, %i.bdc
  %i.bdo = add nsw i32 %i.bdn, %i.bde
  %narrow.i.i.i = add nsw i32 %i.bdo, %i.bdf
  %i.bdp = sext i32 %narrow.i.i.i to i64
  %i.bdq = mul nsw i64 %i.bdp, 86400
  %i.bdr = add nsw i64 %i.bdq, %i.bdk
  %i.bds = mul nsw i64 %i.bdr, 1000
  %i.bdt = getelementptr inbounds nuw i8, ptr %1, i64 1492
  %i.bdu = load i32, ptr %i.bdt, align 4, !alias.scope !2848, !noalias !2834, !noundef !13
  %i.bdv = udiv i32 %i.bdu, 1000000
  %i.bdw = zext nneg i32 %i.bdv to i64
  %i.bdx = add nsw i64 %i.bds, %i.bdw
  %i.bdy = getelementptr inbounds nuw i8, ptr %1, i64 1464
  store i64 %i.bdx, ptr %i.bdy, align 8, !noalias !2834
  br label %bb.tm

bb.tm:                                            ; preds = %bb.vt, %bb.vu, %bb.tl
  %i.bdz = phi ptr [ %i.bbl, %bb.tl ], [ %i.bkt, %bb.vu ], [ %i.bkt, %bb.vt ] ; 2 uses
  %i.bea = phi ptr [ %i.bbm, %bb.tl ], [ %i.bku, %bb.vu ], [ %i.bku, %bb.vt ] ; 2 uses
  %i.beb = phi ptr [ %i.bbn, %bb.tl ], [ %i.bkv, %bb.vu ], [ %i.bkv, %bb.vt ] ; 2 uses
  %i.bec = phi ptr [ %i.bbo, %bb.tl ], [ %i.bkw, %bb.vu ], [ %i.bkw, %bb.vt ] ; 2 uses
  %i.bed = phi i64 [ %i.bcm, %bb.tl ], [ %i.bli, %bb.vu ], [ %.pre215.pre.i.i, %bb.vt ] ; 2 uses
  %i.bee = phi i64 [ %i.bcq, %bb.tl ], [ %.pre213.pre.i.i, %bb.vu ], [ %i.ble, %bb.vt ] ; 2 uses
  %.not20.i.i = icmp sgt i64 %i.bee, %i.bed
  br i1 %.not20.i.i, label %bb.vv, label %.thread241.i.i

bb.tn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2834
  %i.bef = getelementptr inbounds nuw i8, ptr %1, i64 1360
  invoke void @_RNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtBD_11LogStoreExt14table_root_urlCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bef)
          to label %bb.to unwind label %bb.tw, !noalias !2835

.thread.i.i176:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %.sroa.2196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2196.0.copyload.i.i = load i64, ptr %.sroa.2196.0..sroa_idx.i.i, align 8, !noalias !2834
  %.sroa.3.0..sroa_idx197.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.9185.i.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.3.0..sroa_idx197.i.i, i64 80, i1 false), !noalias !2834
  br label %bb.ty
end_hunk_0
