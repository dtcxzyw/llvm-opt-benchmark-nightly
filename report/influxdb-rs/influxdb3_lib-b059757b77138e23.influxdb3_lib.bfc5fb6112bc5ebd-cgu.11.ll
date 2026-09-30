Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.11?download=true
inline.NumInlined: 7373
inline.NumDeleted: 3041
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBb_13V1HttpHandler13execute_query0s2_00CsgsNUVCRJO2f_13influxdb3_lib:bb.a
_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit166: ; preds = %bb.q, %bb.p
  invoke void @_RNvMCs8dx9gOL6MFw_26iox_query_influxql_rewriteINtB2_9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementE12resolve_dbrpCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %bb.t unwind label %bb.aq

bb.t:                                             ; preds = %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit166
  %.sroa.0357.0.copyload = load i64, ptr %i.cu, align 8 ; 3 uses
  %.sroa.6359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %.sroa.7361.24.copyload = load i64, ptr %i.ct, align 8 ; 5 uses
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !16566
  store i64 %.sroa.0357.0.copyload, ptr %i.bs, align 8, !noalias !16567
  %.sroa.6359.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6359.0..sroa_idx360, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6359.0..sroa_idx, i64 16, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 %.sroa.7361.24.copyload, ptr %i.eu, align 8, !noalias !16568
  %.sroa.11.24..sroa_idx363 = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.24..sroa_idx363, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.24..sroa_idx, i64 16, i1 false)
  %.not.i167 = icmp eq i64 %.sroa.0357.0.copyload, -1
  %.not1.i = icmp eq i64 %.sroa.7361.24.copyload, -1 ; 2 uses
  br i1 %.not.i167, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not1.i, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  br i1 %.not1.i, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10353, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.24..sroa_idx, i64 16, i1 false)
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10353, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6359.0..sroa_idx, i64 16, i1 false)
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10353, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.24..sroa_idx, i64 16, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %bb.ab unwind label %bb.z, !noalias !16566

bb.z:                                             ; preds = %bb.y
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !16569, !noalias !16566 ; 2 uses
  %i.ew = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ew, label %bb.r, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val3.i.i.i = load ptr, ptr %.sroa.6359.0..sroa_idx360, align 8, !alias.scope !16570, !noalias !16566, !nonnull !8, !noundef !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !16571
  br label %bb.r

bb.ab:                                            ; preds = %bb.y
  %.val.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !16569, !noalias !16566 ; 2 uses
  %i.ex = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ex, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val1.i.i.i = load ptr, ptr %.sroa.6359.0..sroa_idx360, align 8, !alias.scope !16570, !noalias !16566, !nonnull !8, !noundef !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !16572
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.w, %bb.x, %bb.ab
  %.sroa.0349.0.ph = phi i64 [ %.sroa.7361.24.copyload, %bb.ab ], [ %.sroa.0357.0.copyload, %bb.x ], [ %.sroa.7361.24.copyload, %bb.w ], [ %.sroa.7361.24.copyload, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !16566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  store i8 1, ptr %i.di, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store i64 %.sroa.0349.0.ph, ptr %i.ey, align 16
  %.sroa.10353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10353.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10353, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.ez = load ptr, ptr %i.el, align 16, !nonnull !8, !align !12, !noundef !8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fc = load ptr, ptr %i.fb, align 16, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16573)
  call void @llvm.experimental.noalias.scope.decl(metadata !16574)
  %i.fd = load i64, ptr %i.fc, align 8, !range !18, !alias.scope !16574, !noalias !16573, !noundef !8
  %.not.i168 = icmp eq i64 %i.fd, -1
  br i1 %.not.i168, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc)
          to label %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.ah

bb.af:                                            ; preds = %bb.ad
  store i64 -1, ptr %i.cr, align 8, !alias.scope !16573, !noalias !16574
  br label %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.ag:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !16566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  store i64 -9223372036854775797, ptr %i.cv, align 8
  %i.fe = invoke { ptr, ptr } @_RNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler15error_statement(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.cv)
          to label %bb.ap unwind label %bb.ao     ; 2 uses

bb.ah:                                            ; preds = %bb.ae
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ey)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.cr) #47
          to label %bb.an unwind label %bb.am

bb.aj:                                            ; preds = %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  store i64 0, ptr %i.fh, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i8 5, ptr %.sroa.513.0..sroa_idx, align 16
  %i.fi = invoke { ptr, ptr } @_RNvXNtCs21s4ZTvHFSd_5authz10authorizerINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB2_10AuthorizerEL_EEB1K_9authorizeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fh, i64 noundef 1)
          to label %bb.al unwind label %bb.ak     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %.body228

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %i.fk = extractvalue { ptr, ptr } %i.fi, 0
  %i.fl = extractvalue { ptr, ptr } %i.fi, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %i.fk, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %i.fl, ptr %i.fn, align 16
  br label %bb.es

.body228:                                         ; preds = %bb.er, %bb.ez, %bb.ey, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i225, %.body.i.i236, %bb.fh, %bb.ak
  %.pn89 = phi { ptr, i32 } [ %i.fj, %bb.ak ], [ %i.nx, %bb.fh ], [ %i.mw, %bb.er ], [ %i.ni, %bb.ey ], [ %i.ni, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i225 ], [ %i.no, %bb.ez ], [ %i.nt, %.body.i.i236 ]
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 224
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fo, i64 noundef 1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.ts, %.body228, %bb.du, %bb.fs, %bb.ct, %bb.er, %bb.ca, %bb.tx, %bb.tw, %bb.tv, %bb.tu, %bb.tt, %.body307, %bb.ij, %bb.ih, %bb.ig, %.body271, %.body267, %bb.gg, %bb.eq, %bb.ep, %.body201, %bb.dn, %bb.bw, %bb.aq, %bb.ai
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.an:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs21s4ZTvHFSd_5authz10permission10Permissionj1_ECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %.body228, %bb.an, %bb.fj, %bb.ah
  %.pn91 = phi { ptr, i32 } [ %i.nz, %bb.fj ], [ %i.ff, %bb.ah ], [ %i.fg, %bb.an ], [ %.pn89, %.body228 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %.body260

bb.ao:                                            ; preds = %bb.ag
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.bx

bb.ap:                                            ; preds = %bb.ag
  %i.fr = extractvalue { ptr, ptr } %i.fe, 0
  %i.fs = extractvalue { ptr, ptr } %i.fe, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.dt

bb.aq:                                            ; preds = %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit166
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.cu) #47
          to label %bb.r unwind label %bb.am

bb.ar:                                            ; preds = %bb.l
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %.body176

bb.as:                                            ; preds = %bb.l, %bb.m
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !range !18, !alias.scope !16575, !noundef !8
  %.not.i171 = icmp eq i64 %i.fw, -1              ; 2 uses
  %..i172 = select i1 %.not.i171, ptr null, ptr %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %..i172, ptr %i.fx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %i.fy = load i64, ptr %i.cl, align 8, !range !18, !noundef !8 ; 2 uses
  %.not49 = icmp ne i64 %i.fy, -1
  %or.cond123 = and i1 %.not.i171, %.not49
  br i1 %or.cond123, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not = icmp eq i64 %i.fy, -1
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.ay

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  invoke void @_RNvMCs8dx9gOL6MFw_26iox_query_influxql_rewriteINtB2_9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementE20set_retention_policyCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cj)
          to label %.thread500 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %.body176

.thread500:                                       ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit

.body176:                                         ; preds = %bb.ba, %bb.az, %bb.av, %bb.ar
  %.pn51 = phi { ptr, i32 } [ %i.fu, %bb.ar ], [ %i.fz, %bb.av ], [ %i.gd, %bb.az ], [ %i.gd, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br label %bb.bx

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.bc, %bb.bb, %.thread500, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gb = load ptr, ptr %i.ga, align 16, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16576)
  call void @llvm.experimental.noalias.scope.decl(metadata !16577)
  %i.gc = load i64, ptr %i.gb, align 8, !range !18, !alias.scope !16577, !noalias !16576, !noundef !8
  %.not.i173 = icmp eq i64 %i.gc, -1
  br i1 %.not.i173, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb)
          to label %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit175 unwind label %bb.be

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit
  store i64 -1, ptr %i.ch, align 8, !alias.scope !16576, !noalias !16577
  br label %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit175

bb.ay:                                            ; preds = %bb.at
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %bb.bb unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.cl, align 8, !alias.scope !16578 ; 2 uses
  %i.ge = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ge, label %.body176, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.val3.i.i = load ptr, ptr %i.gf, align 8, !alias.scope !16579, !nonnull !8, !noundef !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !16580
  br label %.body176

bb.bb:                                            ; preds = %bb.ay
  %.val.i.i = load i64, ptr %i.cl, align 8, !alias.scope !16578 ; 2 uses
  %i.gg = icmp eq i64 %.val.i.i, 0
  br i1 %i.gg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.val1.i.i = load ptr, ptr %i.gh, align 8, !alias.scope !16579, !nonnull !8, !noundef !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !16581
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.bd:                                            ; preds = %bb.bl, %bb.bm, %bb.bw, %bb.be
  %.pn53.pn = phi { ptr, i32 } [ %i.hc, %bb.bw ], [ %i.gi, %bb.be ], [ %i.gk, %bb.bm ], [ %i.gk, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10383)
  br label %bb.bx

bb.be:                                            ; preds = %bb.aw
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit175: ; preds = %bb.ax, %bb.aw
  invoke void @_RNvMCs8dx9gOL6MFw_26iox_query_influxql_rewriteINtB2_9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementE12resolve_dbrpCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %bb.bf unwind label %bb.bw

bb.bf:                                            ; preds = %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtNtB7_5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit175
  %.sroa.0387.0.copyload = load i64, ptr %i.ch, align 8 ; 3 uses
  %.sroa.6389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %.sroa.7391.24.copyload = load i64, ptr %i.cg, align 8 ; 5 uses
  %.sroa.11393.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !16582
  store i64 %.sroa.0387.0.copyload, ptr %i.br, align 8, !noalias !16583
  %.sroa.6389.0..sroa_idx390 = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6389.0..sroa_idx390, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6389.0..sroa_idx, i64 16, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 %.sroa.7391.24.copyload, ptr %i.gj, align 8, !noalias !16584
  %.sroa.11393.24..sroa_idx394 = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11393.24..sroa_idx394, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11393.24..sroa_idx, i64 16, i1 false)
  %.not.i178 = icmp eq i64 %.sroa.0387.0.copyload, -1
  %.not1.i179 = icmp eq i64 %.sroa.7391.24.copyload, -1 ; 2 uses
  br i1 %.not.i178, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not1.i179, label %bb.bj, label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  br i1 %.not1.i179, label %bb.bs, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10383, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11393.24..sroa_idx, i64 16, i1 false)
  br label %bb.bp

bb.bj:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10383, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6389.0..sroa_idx, i64 16, i1 false)
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10383, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11393.24..sroa_idx, i64 16, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %bb.bn unwind label %bb.bl, !noalias !16582

bb.bl:                                            ; preds = %bb.bk
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i180 = load i64, ptr %i.br, align 8, !alias.scope !16585, !noalias !16582 ; 2 uses
  %i.gl = icmp eq i64 %.val2.i.i.i180, 0
  br i1 %i.gl, label %bb.bd, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val3.i.i.i181 = load ptr, ptr %.sroa.6389.0..sroa_idx390, align 8, !alias.scope !16586, !noalias !16582, !nonnull !8, !noundef !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i181, i64 noundef %.val2.i.i.i180, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !16587
  br label %bb.bd

bb.bn:                                            ; preds = %bb.bk
  %.val.i.i.i183 = load i64, ptr %i.br, align 8, !alias.scope !16585, !noalias !16582 ; 2 uses
  %i.gm = icmp eq i64 %.val.i.i.i183, 0
  br i1 %i.gm, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.val1.i.i.i184 = load ptr, ptr %.sroa.6389.0..sroa_idx390, align 8, !alias.scope !16586, !noalias !16582, !nonnull !8, !noundef !8
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i184, i64 noundef %.val.i.i.i183, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !16588
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bi, %bb.bj, %bb.bn
  %.sroa.0379.0.ph = phi i64 [ %.sroa.7391.24.copyload, %bb.bn ], [ %.sroa.0387.0.copyload, %bb.bj ], [ %.sroa.7391.24.copyload, %bb.bi ], [ %.sroa.7391.24.copyload, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !16582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  store i8 1, ptr %i.dj, align 2
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %.sroa.0379.0.ph, ptr %i.gn, align 8
  %.sroa.10383.0..sroa_idx = getelementptr i8, ptr %1, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10383.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10383, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gp = load ptr, ptr %i.go, align 16, !nonnull !8, !align !12, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gr = load ptr, ptr %i.gq, align 16, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16589)
  call void @llvm.experimental.noalias.scope.decl(metadata !16590)
  %i.gs = load i64, ptr %i.gr, align 8, !range !18, !alias.scope !16590, !noalias !16589, !noundef !8
  %.not.i188 = icmp eq i64 %i.gs, -1
  br i1 %.not.i188, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gr)
          to label %.thread669 unwind label %bb.bt

bb.br:                                            ; preds = %bb.bp
  store i64 -1, ptr %i.ce, align 8, !alias.scope !16589, !noalias !16590
  br label %.thread669

bb.bs:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !16582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  store i64 -9223372036854775797, ptr %i.ci, align 8
  %i.gt = invoke { ptr, ptr } @_RNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler15error_statement(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ci)
          to label %bb.bv unwind label %bb.bu     ; 2 uses

bb.bt:                                            ; preds = %bb.bq
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.iw

.thread669:                                       ; preds = %bb.br, %bb.bq
  %.val149 = load ptr, ptr %.sroa.10383.0..sroa_idx, align 16, !nonnull !8, !noundef !8
  %i.gv = getelementptr i8, ptr %1, i64 200
  %.val150 = load i64, ptr %i.gv, align 8, !noundef !8
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.gw, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %.sroa.8406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.gp, ptr %.sroa.8406.0..sroa_idx, align 8
  %.sroa.9407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %.val149, ptr %.sroa.9407.0..sroa_idx, align 16
  %.sroa.10408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
end_hunk_0
