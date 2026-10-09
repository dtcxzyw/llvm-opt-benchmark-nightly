Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNvMs4_NtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifestNtB5_22UpsertManifestMutation3new:bb.a
  br label %.body

bb.q:                                             ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest13ManifestEntryuNCINvNtBb_3map8map_foldTjB21_ETNtNtCs40k4W9msRzi_5alloc6string6StringjEuNCNvMs4_B24_NtB24_22UpsertManifestMutation3new0NCINvNvB1e_8for_each4callB3G_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5K_7HashMapB3H_jNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB3G_E6extendINtB3h_3MapIBX_INtNtNtBf_5slice4iter4IterB22_EEB4m_EE0E0E0E0B28_.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !213011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !213006
  %i.cl = icmp ult i64 %i.i, 115292150460684698
  call void @llvm.assume(i1 %i.cl)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !213036
  %i.cm = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 17) 1) #68, !noalias !213036 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.i) #72
          to label %.noexc12 unwind label %bb.s

.noexc12:                                         ; preds = %bb.r
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.u, %bb.v, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.co, %bb.s ], [ %i.cp, %bb.v ], [ %i.cp, %bb.u ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringjEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.e) #73
  br label %.body

bb.s:                                             ; preds = %bb.r
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.t:                                             ; preds = %bb.q, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringjEE7reserveNCINvNtB8_3map11make_hasherBQ_jNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.thread.thread
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringjEE7reserveNCINvNtB8_3map11make_hasherBQ_jNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.thread.thread ], [ %i.cm, %bb.q ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  invoke fastcc void @_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtNtCscI6d9CVNmLh_4core6option6OptionINtB5_3VecNtNtB7_6string6StringEENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.i)
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %bb.v
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.v:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !416 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 384307168202282326
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.cw, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.i, ptr %i.cx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sroa.10.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.i, ptr %.sroa.10.0..sroa_idx, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %3, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !213037)
  %i.cy = load i64, ptr %2, align 8, !range !421, !alias.scope !213037, !noundef !416 ; 3 uses
  %i.cz = icmp eq i64 %i.cy, -1
  br i1 %i.cz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !213038)
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.da, align 8, !alias.scope !213039, !nonnull !416, !noundef !416 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.db, align 8, !alias.scope !213039, !noundef !416 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213040)
  %i.dc = icmp eq i64 %.val1.i.i, 0
  br i1 %i.dc, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.de, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ 0, %bb.y ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.de = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213041)
  call void @llvm.experimental.noalias.scope.decl(metadata !213042)
  %.val.i.i.i.i.i.i = load i64, ptr %i.dd, align 8, !range !419, !alias.scope !213043, !noalias !213039, !noundef !416 ; 2 uses
  %i.df = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.df, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !213043, !noalias !213039, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !213044
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.z, %.lr.ph.i.i.i.i
  %i.dh = icmp eq i64 %i.de, %.val1.i.i
  br i1 %i.dh, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.y
  %i.di = icmp eq i64 %i.cy, 0
  br i1 %i.di, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.dj = mul nuw i64 %i.cy, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !213039
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.aa, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.x, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit21
  ret void

bb.ab:                                            ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !416, !noundef !416 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213045)
  %i.dm = load i64, ptr %i.dl, align 8, !range !421, !alias.scope !213045, !noundef !416 ; 3 uses
  %i.dn = icmp eq i64 %i.dm, -1
  br i1 %i.dn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit21, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !213046)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.val.i.i13 = load ptr, ptr %i.do, align 8, !alias.scope !213047, !nonnull !416, !noundef !416 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.val1.i.i14 = load i64, ptr %i.dp, align 8, !alias.scope !213047, !noundef !416 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213048)
  %i.dq = icmp eq i64 %.val1.i.i14, 0
  br i1 %i.dq, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i20, label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i19
  %.sroa.0.010.i.i.i.i16 = phi i64 [ %i.ds, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i19 ], [ 0, %bb.ac ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i13, i64 %.sroa.0.010.i.i.i.i16 ; 2 uses
  %i.ds = add nuw nsw i64 %.sroa.0.010.i.i.i.i16, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213049)
  call void @llvm.experimental.noalias.scope.decl(metadata !213050)
  %.val.i.i.i.i.i.i17 = load i64, ptr %i.dr, align 8, !range !419, !alias.scope !213051, !noalias !213047, !noundef !416 ; 2 uses
  %i.dt = icmp eq i64 %.val.i.i.i.i.i.i17, 0
  br i1 %i.dt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i19, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i15
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.val1.i.i.i.i.i.i18 = load ptr, ptr %i.du, align 8, !alias.scope !213051, !noalias !213047, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i18, i64 noundef %.val.i.i.i.i.i.i17, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !213052
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i19

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i19: ; preds = %bb.ad, %.lr.ph.i.i.i.i15
  %i.dv = icmp eq i64 %i.ds, %.val1.i.i14
  br i1 %i.dv, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i20, label %.lr.ph.i.i.i.i15

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i20: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i19, %bb.ac
  %i.dw = icmp eq i64 %i.dm, 0
  br i1 %i.dw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit21, label %bb.ae

bb.ae:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i20
  %i.dx = mul nuw i64 %i.dm, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !213047
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit21

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit21: ; preds = %bb.ae, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i20, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ea, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.i, ptr %i.eb, align 16
  %.sroa.8.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sroa.10.0.i, ptr %.sroa.8.0..sroa_idx30, align 8
  %.sroa.10.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.i, ptr %.sroa.10.0..sroa_idx32, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %3, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.af:                                            ; preds = %.body
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.ag:                                            ; preds = %.body
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #73
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsfR8GmIBoxTX_21lance_namespace_impls3dir8manifest13ManifestEntryEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %1) #73
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB5_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB13_16CachedReaderDataE20do_post_insert_stepsCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr captures(address, read_provenance) %.64.val, i64 noundef %1, ptr captures(address, read_provenance) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.64.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.64.val, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !noundef !416 ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.64.val, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !416, !align !417, !noundef !416
  %i.g = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %3, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.i, align 8
  %i.j = load i16, ptr %2, align 8, !range !475
  %i.k = trunc nuw i16 %i.j to i1
  br i1 %i.k, label %.thread3, label %bb.e

3:                                                ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.split.us.i.i, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load ptr, ptr %i.b, align 8, !alias.scope !213069 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213069)
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.thread3

.thread3:                                         ; preds = %bb.c, %.loopexit
  %i.m = phi ptr [ %.pr, %.loopexit ], [ %i.d, %bb.c ]
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !213070
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %.thread3
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1l_16CachedReaderDataENtNtCscI6d9CVNmLh_4core6marker4SyncNtB2z_4SendEL_E9drop_slowB1p_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !416, !noundef !416 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.64.val, i64 88
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val5 = load ptr, ptr %4, align 8              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213071)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !noalias !213072
  %i.s = invoke { i64, i32 } @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, i64 noundef %1)
          to label %.noexc5 unwind label %bb.f    ; 2 uses

.noexc5:                                          ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.v = extractvalue { i64, i32 } %i.s, 0
  %i.w = extractvalue { i64, i32 } %i.s, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.x = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !420, !invariant.load !416, !noalias !213072
  %i.z = add nsw i64 %i.y, -1
  %i.aa = and i64 %i.z, -16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !416, !noalias !213072, !nonnull !416
  %i.af = invoke { i64, i32 } %i.ae(ptr noundef nonnull %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t, i64 noundef %i.v, i32 noundef %i.w)
          to label %.noexc6 unwind label %bb.f, !inline_history !345 ; 2 uses

.noexc6:                                          ; preds = %.noexc5
  %i.ag = extractvalue { i64, i32 } %i.af, 1      ; 2 uses
  %.not.not.i = icmp eq i32 %i.ag, -1
  br i1 %.not.not.i, label %.split.i.preheader.i, label %.split.us.i.preheader.i

.split.us.i.preheader.i:                          ; preds = %.noexc6
  %i.ah = extractvalue { i64, i32 } %i.af, 0
  %i.ai = invoke noundef i64 @_RNvMNtNtNtCskTBvlRM5ILY_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, i64 noundef %i.ah, i32 noundef %i.ag)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %.split.us.i.preheader.i
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ai, i64 -4097)
  %i.ak = and i64 %i.aj, -4096
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !213071, !noalias !213073, !nonnull !416, !noundef !416
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  br label %.split.us.i.i

.split.i.preheader.i:                             ; preds = %.noexc6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !213071, !noalias !213073, !nonnull !416, !noundef !416
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  br label %.split.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i, %.noexc7
  %i.ar = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.as = add i64 %i.ar, 1
  %i.at = and i64 %i.as, 4095
  %i.au = or disjoint i64 %i.at, %i.ak
  %i.av = cmpxchg weak ptr %i.an, i64 %i.ar, i64 %i.au acq_rel acquire, align 8
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %.loopexit, label %.split.us.i.i

.split.i.i:                                       ; preds = %.split.i.i, %.split.i.preheader.i
  %i.ax = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.ay = add i64 %i.ax, 1
  %i.az = or i64 %i.ay, -4096
  %i.ba = cmpxchg weak ptr %i.aq, i64 %i.ax, i64 %i.az acq_rel acquire, align 8
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  br i1 %i.bb, label %.loopexit, label %.split.i.i

bb.f:                                             ; preds = %.split.us.i.preheader.i, %.noexc5, %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213074)
  %i.bd = load ptr, ptr %i.b, align 8, !alias.scope !213074, !noundef !416 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !213075
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit9

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1l_16CachedReaderDataENtNtCscI6d9CVNmLh_4core6marker4SyncNtB2z_4SendEL_E9drop_slowB1p_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit9 unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit9
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit9: ; preds = %bb.g, %bb.f, %bb.h, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %i.bc, %bb.h ], [ %i.bc, %bb.f ], [ %i.bc, %bb.g ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1u_16CachedReaderDataEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(40) %2) #73
          to label %bb.k unwind label %bb.i

bb.j:                                             ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit9

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a, %.thread3, %.loopexit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.bj, align 8
  ret void

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtCskTBvlRM5ILY_4moka6policy6ExpiryNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2a_16CachedReaderDataENtNtB4_6marker4SyncNtB3o_4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit9
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB1M_11UringReader4open000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !range !457, !noundef !416
  %i.d = invoke noundef i64 @_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.c)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213094)
  %i.f = load i32, ptr %i.e, align 8, !range !482, !alias.scope !213094, !noundef !416
  switch i32 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2g_11UringReader4open000EEECsfR8GmIBoxTX_21lance_namespace_impls.exit [
    i32 0, label %bb.c
    i32 1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213096)
  %i.h = load i64, ptr %i.g, align 8, !range !437, !alias.scope !213097, !noundef !416
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2g_11UringReader4open000EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213098)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213100)
  %.val.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !range !419, !alias.scope !213101, !noundef !416 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !213101, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !213101
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213104)
  %.val.i.i.i1.i.i.i.i = load i64, ptr %i.m, align 8, !range !419, !alias.scope !213105, !noundef !416 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i1.i.i.i.i, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2g_11UringReader4open000EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i.i2.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !213105, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2.i.i.i.i, i64 noundef %.val.i.i.i1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !213105
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2g_11UringReader4open000EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(56) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2g_11UringReader4open000EEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  invoke void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2g_11UringReader4open000EEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.c, %bb.b, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @_RNvXs3_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.h, %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

.thread:                                          ; preds = %bb.h, %bb.j
  %.pn8 = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.s, %bb.j ]
  resume { ptr, i32 } %.pn8

bb.j:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core5StageINtNtNtBI_8blocking4task12BlockingTaskNCNCNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB2g_11UringReader4open000EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(72) %1) #73
          to label %.thread unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMs_NtCsjjbR6Jfsbqw_8lance_io5localNtB1L_17LocalObjectReader17open_with_tracker000ENtNtB13_8schedule16BlockingScheduleE9set_stageCsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !range !457, !noundef !416
  %i.e = invoke noundef i64 @_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.d)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  store i64 %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213128)
end_hunk_0
