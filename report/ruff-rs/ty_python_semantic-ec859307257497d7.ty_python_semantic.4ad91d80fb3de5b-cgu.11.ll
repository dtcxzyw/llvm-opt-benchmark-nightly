Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.11?download=true
inline.NumInlined: 8904
inline.NumDeleted: 4915
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B6_NtB6_20TypeInferenceBuilder18infer_region_scopes_0EBc_:bb.a

bb.yc:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit
  %i.bko = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB8_20BoundTypeVarInstance7typevarDNtNtBc_2db2DbEL_EBc_(i32 noundef %.sroa.01523.0.copyload, i32 noundef %.sroa.61524.0.copyload, ptr noundef nonnull %.val723, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val724)
          to label %bb.yd unwind label %.loopexit.split-lp1957.loopexit.split-lp.loopexit ; 2 uses

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit, %bb.yk, %bb.yb
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1y_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.mu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEEB1t_.exit933 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEEB1t_.exit933: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mw)
  br label %bb.yr

bb.yd:                                            ; preds = %bb.yc
  %i.bkp = extractvalue { i32, i32 } %i.bko, 0    ; 2 uses
  %i.bkq = extractvalue { i32, i32 } %i.bko, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mt)
  store ptr %i.bki, ptr %i.mt, align 8
  store i64 %i.bkk, ptr %.sroa.21491.0..sroa_idx, align 8
  store i32 %i.bin, ptr %.sroa.31492.0..sroa_idx, align 8
  store ptr %.val723, ptr %.sroa.41494.0..sroa_idx, align 8
  store ptr %.val724, ptr %.sroa.51495.0..sroa_idx, align 8
  store ptr %3, ptr %.sroa.61496.0..sroa_idx, align 8
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yq, %bb.yd
  %i.bkr = phi ptr [ %.pre3363, %bb.yq ], [ %i.bki, %bb.yd ]
  %i.bks = phi i64 [ %.pre3362, %bb.yq ], [ %i.bkk, %bb.yd ] ; 2 uses
  %.promoted.i938 = phi i32 [ %.promoted.i938.pre, %bb.yq ], [ %i.bin, %bb.yd ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm)
  store ptr %.sroa.41494.0..sroa_idx, ptr %i.hm, align 8, !noalias !1911
  br label %bb.yf

bb.yf:                                            ; preds = %.noexc945, %bb.ye
  %i.bkt = phi i32 [ %i.bkz, %.noexc945 ], [ %.promoted.i938, %bb.ye ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  %.not.i.i939 = icmp eq i32 %i.bkt, 0
  br i1 %.not.i.i939, label %bb.yk, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.bku = add i32 %i.bkt, -1
  %i.bkv = zext i32 %i.bku to i64                 ; 3 uses
  %i.bkw = icmp ugt i64 %i.bks, %i.bkv
  br i1 %i.bkw, label %bb.yi, label %bb.yh

bb.yh:                                            ; preds = %bb.yg
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bkv, i64 noundef %i.bks, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1096) #40
          to label %.noexc944 unwind label %.loopexit.split-lp1957.loopexit.split-lp.loopexit.split-lp

.noexc944:                                        ; preds = %bb.yh
  unreachable

bb.yi:                                            ; preds = %bb.yg
  %i.bkx = getelementptr inbounds nuw [20 x i8], ptr %i.bkr, i64 %i.bkv ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkx, i64 16
  %i.bkz = load i32, ptr %i.bky, align 4, !noalias !1913, !noundef !3 ; 2 uses
  store i32 %i.bkz, ptr %.sroa.31492.0..sroa_idx, align 8, !alias.scope !1913, !noalias !1914
  %i.bla = invoke { i32, i32 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics26enclosing_generic_contexts0INtB7_5FnMutTTNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdRNtB2r_5ScopeEEE8call_mutBW_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hm, i32 noundef range(i32 1, 0) %i.bkt, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.bkx)
          to label %.noexc945 unwind label %.loopexit1956 ; 2 uses

.noexc945:                                        ; preds = %bb.yi
  %i.blb = extractvalue { i32, i32 } %i.bla, 0    ; 2 uses
  %.not11.i940 = icmp eq i32 %i.blb, 0
  br i1 %.not11.i940, label %bb.yf, label %bb.yj

bb.yj:                                            ; preds = %.noexc945
  %i.blc = extractvalue { i32, i32 } %i.bla, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm)
  %i.bld = invoke { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext13binds_typevar(i32 noundef %i.blb, i32 noundef %i.blc, ptr noundef nonnull %.val723, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val724, i32 noundef %i.bkp, i32 noundef %i.bkq)
          to label %bb.yl unwind label %.loopexit.split-lp1957.loopexit ; 2 uses

bb.yk:                                            ; preds = %bb.yf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mt)
  %i.ble = load ptr, ptr %i.bkc, align 8, !alias.scope !1915, !noalias !1908, !nonnull !3, !noundef !3
  %i.blf = load ptr, ptr %i.bkd, align 8, !alias.scope !1915, !noalias !1908, !nonnull !3, !noundef !3 ; 2 uses
  %i.blg = icmp eq ptr %i.blf, %i.ble
  br i1 %i.blg, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1y_.exit

bb.yl:                                            ; preds = %bb.yj
  %i.blh = extractvalue { i32, i32 } %i.bld, 0    ; 2 uses
  %i.bli = extractvalue { i32, i32 } %i.bld, 1
  %.not664 = icmp eq i32 %i.blh, 0
  br i1 %.not664, label %bb.yq, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  %i.blj = invoke noundef nonnull align 8 ptr @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance4name(i32 noundef %i.bkp, i32 noundef %i.bkq, ptr noundef nonnull %.val723, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val724)
          to label %bb.yn unwind label %.loopexit.split-lp1957.loopexit

bb.yn:                                            ; preds = %bb.ym
  %i.blk = invoke { i32, i32 } @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral12header_range(i32 noundef %i.wp, i32 noundef %i.wr, ptr noundef nonnull %.val723, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val724)
          to label %bb.yo unwind label %.loopexit.split-lp1957.loopexit ; 2 uses

bb.yo:                                            ; preds = %bb.yn
  %i.bll = invoke noundef i8 @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance4kind(i32 noundef %.sroa.01523.0.copyload, i32 noundef %.sroa.61524.0.copyload, ptr noundef nonnull %.val723, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val724)
          to label %bb.yp unwind label %.loopexit.split-lp1957.loopexit

bb.yp:                                            ; preds = %bb.yo
  %i.blm = extractvalue { i32, i32 } %i.blk, 1
  %i.bln = extractvalue { i32, i32 } %i.blk, 0
  invoke void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic29report_shadowed_type_variable(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.blj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bkl, i32 noundef %i.bln, i32 noundef %i.blm, i8 noundef %i.bll, i32 noundef %i.blh, i32 noundef %i.bli)
          to label %bb.yq unwind label %.loopexit.split-lp1957.loopexit

bb.yq:                                            ; preds = %bb.yp, %bb.yl
  %.promoted.i938.pre = load i32, ptr %.sroa.31492.0..sroa_idx, align 8, !alias.scope !1913, !noalias !1914
  %.pre3362 = load i64, ptr %.sroa.21491.0..sroa_idx, align 8, !alias.scope !1910, !noalias !1914
  %.pre3363 = load ptr, ptr %i.mt, align 8, !alias.scope !1910, !noalias !1914
  br label %bb.ye

bb.yr:                                            ; preds = %bb.un, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter8IntoIterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarInstanceEEB1t_.exit933, %bb.xh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ms)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mr)
  %i.blo = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store i32 %i.wp, ptr %i.blo, align 4, !alias.scope !1916
  %i.blp = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i32 %i.wr, ptr %i.blp, align 4, !alias.scope !1916
  store i32 0, ptr %i.mr, align 4, !alias.scope !1916
  invoke void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.ms, ptr noundef nonnull %.val723, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val724, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.mr)
          to label %bb.ys unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ys:                                            ; preds = %bb.yr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mr)
  %i.blq = load i32, ptr %i.ms, align 4, !range !27, !noundef !3
  %i.blr = icmp eq i32 %i.blq, 0
  br i1 %i.blr, label %bb.yt, label %bb.aax

bb.yt:                                            ; preds = %bb.ys
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mq, ptr noundef nonnull align 4 dereferenceable(12) %i.ms, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ma)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ma, ptr noundef nonnull align 4 dereferenceable(12) %i.ms, i64 12, i1 false)
  %i.bls = invoke noundef zeroext i1 @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral19has_dataclass_param(i32 noundef %i.wp, i32 noundef %i.wr, ptr noundef nonnull %.val723, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val724, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.ma, i16 noundef 1)
          to label %bb.yu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.yu:                                            ; preds = %bb.yt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ma)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lz, ptr noundef nonnull align 4 dereferenceable(12) %i.ms, i64 12, i1 false)
  %i.blt = invoke noundef nonnull align 8 ptr @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral10own_fields(i32 noundef %i.wp, i32 noundef %i.wr, ptr noundef nonnull %.val723, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val724, i32 noundef 0, i32 undef, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.lz)
          to label %bb.yv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.yv:                                            ; preds = %bb.yu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mo)
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 8
  %i.blv = load ptr, ptr %i.blu, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blt, i64 16
  %i.blx = load i64, ptr %i.blw, align 8, !noundef !3
  %i.bly = getelementptr inbounds nuw [120 x i8], ptr %i.blv, i64 %i.blx
  store ptr %i.blv, ptr %i.mo, align 8
  %i.blz = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store ptr %i.bly, ptr %i.blz, align 8
  %i.bma = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store ptr %.val723, ptr %i.bma, align 8
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  store ptr %.val724, ptr %i.bmb, align 8
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterBU_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCINvNtNtNtNtB3S_5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B4T_NtB4T_20TypeInferenceBuilder18infer_region_scopes_0Esb_0EE9from_iterB3U_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.mp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.mo)
          to label %bb.yw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.yw:                                            ; preds = %bb.yv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mn)
  store i64 0, ptr %i.mn, align 8
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bmc, align 8
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.mn, i64 16 ; 5 uses
  store i64 0, ptr %i.bmd, align 8
  %i.bme = invoke noundef nonnull align 8 ptr @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral6fields(i32 noundef %i.wp, i32 noundef %i.wr, ptr noundef nonnull %.val723, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val724, i32 noundef 0, i32 undef, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.mq)
          to label %bb.yy unwind label %.thread1816.loopexit.split-lp ; 2 uses

.thread1816.loopexit.split-lp:                    ; preds = %.invoke4237, %bb.yw, %bb.zh, %bb.zk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.aak, %bb.aal
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1805

bb.yx:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldBW_B1G_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1N_.exit.thread
  %lpad.thr_comm.split-lp1815 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1809

bb.yy:                                            ; preds = %bb.yw
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bme, i64 8
  %i.bmg = load ptr, ptr %i.bmf, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bme, i64 16
  %i.bmi = load i64, ptr %i.bmh, align 8, !noundef !3 ; 2 uses
  %.idx2728 = mul nuw nsw i64 %i.bmi, 120
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmg, i64 %.idx2728 ; 2 uses
  %i.bmk = icmp ne i64 %i.bmi, 0
  %brmerge.not = and i1 %i.bmk, %i.bls
  br i1 %brmerge.not, label %.lr.ph2712.us, label %.outer._crit_edge

.lr.ph2712.us:                                    ; preds = %bb.yy, %.outer.us
  %.sroa.0247.0.ph2719.us = phi ptr [ %.sroa.0247.1.us, %.outer.us ], [ null, %bb.yy ] ; 3 uses
  %.sroa.6249.0.ph2718.us = phi ptr [ %.sroa.6249.1.us, %.outer.us ], [ undef, %bb.yy ] ; 4 uses
  %.sroa.01497.0.ph2717.us = phi ptr [ %i.bml, %.outer.us ], [ %i.bmg, %bb.yy ]
  br label %bb.yz

bb.yz:                                            ; preds = %.lr.ph2712.us, %5
  %.sroa.01497.02711.us2720 = phi ptr [ %.sroa.01497.0.ph2717.us, %.lr.ph2712.us ], [ %i.bml, %5 ] ; 7 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %.sroa.01497.02711.us2720, i64 120 ; 4 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %.sroa.01497.02711.us2720, i64 16
  %i.bmn = load i32, ptr %i.bmm, align 8, !range !21, !noundef !3 ; 3 uses
  %i.bmo = icmp ne i32 %i.bmn, 38
  call void @llvm.assume(i1 %i.bmo)
  %i.bmp = icmp slt i32 %i.bmn, 37
  br i1 %i.bmp, label %bb.za, label %5

bb.za:                                            ; preds = %bb.yz
  %i.bmq = getelementptr inbounds nuw i8, ptr %.sroa.01497.02711.us2720, i64 81
  %i.bmr = load i8, ptr %i.bmq, align 1, !range !19, !noundef !3
  %i.bms = trunc nuw i8 %i.bmr to i1
  br i1 %i.bms, label %bb.zb, label %5

bb.zb:                                            ; preds = %bb.za
  %i.bmt = getelementptr inbounds nuw i8, ptr %.sroa.01497.02711.us2720, i64 82
  %i.bmu = load i8, ptr %i.bmt, align 2, !range !20, !noundef !3
  %i.bmv = icmp eq i8 %i.bmu, 1
  br i1 %i.bmv, label %5, label %bb.zc

bb.zc:                                            ; preds = %bb.zb
  %i.bmw = getelementptr inbounds nuw i8, ptr %.sroa.01497.02711.us2720, i64 96 ; 2 uses
  %.not658.us = icmp eq i32 %i.bmn, -1
  br i1 %.not658.us, label %bb.zd, label %.outer.us

bb.zd:                                            ; preds = %bb.zc
  %.not659.us = icmp eq ptr %.sroa.0247.0.ph2719.us, null
  br i1 %.not659.us, label %.outer.us, label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6249.0.ph2718.us) ]
  %i.bmx = load i64, ptr %i.bmd, align 8, !alias.scope !1917, !noalias !1918, !noundef !3 ; 3 uses
  %i.bmy = load i64, ptr %i.mn, align 8, !range !31, !alias.scope !1917, !noalias !1918, !noundef !3
  %i.bmz = icmp eq i64 %i.bmx, %i.bmy
  br i1 %i.bmz, label %bb.zf, label %bb.zg

bb.zf:                                            ; preds = %bb.ze
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldBM_B1w_EE8grow_oneB1D_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mn)
          to label %bb.zg unwind label %.thread1816.loopexit.split.us

bb.zg:                                            ; preds = %bb.zf, %bb.ze
  %i.bna = load ptr, ptr %i.bmc, align 8, !alias.scope !1917, !noalias !1918, !nonnull !3, !noundef !3
  %i.bnb = getelementptr inbounds nuw [32 x i8], ptr %i.bna, i64 %i.bmx ; 4 uses
  store ptr %.sroa.0247.0.ph2719.us, ptr %i.bnb, align 8
  %.sroa.41500.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bnb, i64 8
  store ptr %.sroa.6249.0.ph2718.us, ptr %.sroa.41500.0..sroa_idx.us, align 8
  %.sroa.51501.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bnb, i64 16
  store ptr %i.bmw, ptr %.sroa.51501.0..sroa_idx.us, align 8
  %.sroa.61502.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bnb, i64 24
  store ptr %.sroa.01497.02711.us2720, ptr %.sroa.61502.0..sroa_idx.us, align 8
  %i.bnc = add i64 %i.bmx, 1
  store i64 %i.bnc, ptr %i.bmd, align 8, !alias.scope !1917, !noalias !1918
  br label %.outer.us

.outer.us:                                        ; preds = %bb.zg, %bb.zd, %bb.zc
  %.sroa.6249.1.us = phi ptr [ %.sroa.6249.0.ph2718.us, %bb.zd ], [ %.sroa.6249.0.ph2718.us, %bb.zg ], [ %.sroa.01497.02711.us2720, %bb.zc ]
  %.sroa.0247.1.us = phi ptr [ null, %bb.zd ], [ %.sroa.0247.0.ph2719.us, %bb.zg ], [ %i.bmw, %bb.zc ]
  %i.bnd = icmp eq ptr %i.bml, %i.bmj
  br i1 %i.bnd, label %.outer._crit_edge, label %.lr.ph2712.us

5:                                                ; preds = %bb.zb, %bb.za, %bb.yz
  %6 = icmp eq ptr %i.bml, %i.bmj
  br i1 %6, label %.outer._crit_edge, label %bb.yz

.thread1816.loopexit.split.us:                    ; preds = %bb.zf
  %lpad.loopexit1954.us = landingpad { ptr, i32 }
          cleanup
  br label %.thread1805

.outer._crit_edge:                                ; preds = %.outer.us, %5, %bb.yy
  %i.bne = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  %i.bnf = load i64, ptr %i.bne, align 8, !noundef !3 ; 2 uses
  %i.bng = icmp ult i64 %i.bnf, 1152921504606846976
  call void @llvm.assume(i1 %i.bng)
  %i.bnh = icmp samesign ugt i64 %i.bnf, 1
  br i1 %i.bnh, label %bb.zh, label %bb.zi

bb.zh:                                            ; preds = %.outer._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mm)
  %i.bni = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.mm, ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17DUPLICATE_KW_ONLY, ptr noundef nonnull align 8 %i.bni)
          to label %bb.zj unwind label %.thread1816.loopexit.split-lp

.sink.split4240:                                  ; preds = %bb.zj, %bb.aaj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mm)
  br label %bb.zi

bb.zi:                                            ; preds = %.sink.split4240, %.outer._crit_edge
  %i.bnj = load i64, ptr %i.bmd, align 8, !noundef !3 ; 2 uses
  %i.bnk = icmp ult i64 %i.bnj, 288230376151711744
  call void @llvm.assume(i1 %i.bnk)
  %i.bnl = icmp eq i64 %i.bnj, 0
  br i1 %i.bnl, label %.critedge, label %bb.aak

bb.zj:                                            ; preds = %bb.zh
  %i.bnm = load i64, ptr %i.mm, align 8, !range !5, !noundef !3
  %.not651 = icmp eq i64 %i.bnm, -2
  br i1 %.not651, label %.sink.split4240, label %bb.zk

bb.zk:                                            ; preds = %bb.zj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ml)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ml, ptr noundef nonnull align 8 dereferenceable(80) %i.mm, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mk)
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.mk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.ml, ptr noundef nonnull @195, ptr noundef nonnull inttoptr (i64 117 to ptr))
          to label %bb.zl unwind label %.thread1816.loopexit.split-lp

bb.zl:                                            ; preds = %bb.zk
  %i.bnn = invoke noundef nonnull align 8 ptr @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_19LintDiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.mk)
          to label %bb.zn unwind label %bb.zm

.body962:                                         ; preds = %bb.aah, %bb.zo, %bb.zz, %bb.zm, %bb.aae
  %.pn652 = phi { ptr, i32 } [ %i.box, %bb.aae ], [ %.pn.i950, %bb.zo ], [ %i.bno, %bb.zm ], [ %i.bot, %bb.zz ], [ %i.boy, %bb.aah ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.mk) #43
          to label %.thread1805 unwind label %bb.i

bb.zm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsoTR8nlGN3X_18ty_python_semantic.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B2g_NtB2g_20TypeInferenceBuilder18infer_region_scopes_0Ese_0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.i, %bb.zl
  %i.bno = landingpad { ptr, i32 }
          cleanup
  br label %.body962

bb.zn:                                            ; preds = %bb.zl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mj)
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.bnq = load ptr, ptr %i.bnp, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.bnr = load i64, ptr %i.bne, align 8, !noundef !3 ; 3 uses
  %.idx1910 = shl nuw nsw i64 %i.bnr, 3           ; 2 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnq, i64 %.idx1910
  call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl), !noalias !1920
  %i.bnt = icmp eq i64 %i.bnr, 0
  br i1 %i.bnt, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B2g_NtB2g_20TypeInferenceBuilder18infer_region_scopes_0Ese_0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.thread.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B2g_NtB2g_20TypeInferenceBuilder18infer_region_scopes_0Ese_0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.i

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B2g_NtB2g_20TypeInferenceBuilder18infer_region_scopes_0Ese_0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.i: ; preds = %bb.zn
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg), !noalias !1921
  store ptr %i.bnq, ptr %i.hg, align 8, !noalias !1922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf), !noalias !1922
  store ptr %i.hg, ptr %i.hf, align 8, !noalias !1922
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1922
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hl, ptr noundef nonnull @223, ptr noundef nonnull %i.hf)
          to label %.noexc961 unwind label %bb.zm

.noexc961:                                        ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B2g_NtB2g_20TypeInferenceBuilder18infer_region_scopes_0Ese_0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !noalias !1922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg), !noalias !1921
  %.pr.i = load i64, ptr %i.hl, align 8, !noalias !1920
  %.not.i949 = icmp eq i64 %.pr.i, -1
  br i1 %.not.i949, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B2g_NtB2g_20TypeInferenceBuilder18infer_region_scopes_0Ese_0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.thread.i, label %bb.zq

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B2g_NtB2g_20TypeInferenceBuilder18infer_region_scopes_0Ese_0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.thread.i: ; preds = %.noexc961, %bb.zn
  store i64 0, ptr %i.mj, align 8, !alias.scope !1919, !noalias !1923
  %.sroa.4.0..sroa_idx.i959 = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i959, align 8, !alias.scope !1919, !noalias !1923
  %.sroa.5.0..sroa_idx.i960 = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i960, align 8, !alias.scope !1919, !noalias !1923
  br label %bb.aad

bb.zo:                                            ; preds = %.body.i955, %bb.zp
  %.pn.i950 = phi { ptr, i32 } [ %i.bnv, %bb.zp ], [ %eh.lpad-body.i, %.body.i955 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hk) #43
          to label %.body962 unwind label %bb.aab, !noalias !1920

bb.zp:                                            ; preds = %bb.zs, %bb.zq
  %i.bnv = landingpad { ptr, i32 }
          cleanup
  br label %bb.zo

bb.zq:                                            ; preds = %.noexc961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk), !noalias !1920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i64 24, i1 false), !noalias !1920
  %gepdiff = add nsw i64 %.idx1910, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj), !noalias !1920
  %i.bnw = lshr exact i64 %gepdiff, 2             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hh), !noalias !1920
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hh, i64 noundef %i.bnw, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.zr unwind label %bb.zp, !noalias !1920

bb.zr:                                            ; preds = %bb.zq
  %i.bnx = load i64, ptr %i.hh, align 8, !range !18, !noalias !1920, !noundef !3
  %i.bny = trunc nuw i64 %i.bnx to i1
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.boa = load i64, ptr %i.bnz, align 8, !range !36, !noalias !1920, !noundef !3 ; 3 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  br i1 %i.bny, label %bb.zs, label %bb.zt, !prof !11

bb.zs:                                            ; preds = %bb.zr
  %i.boc = load i64, ptr %i.bob, align 8, !noalias !1920
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.boa, i64 %i.boc) #40
          to label %bb.aac unwind label %bb.zp, !noalias !1920

bb.zt:                                            ; preds = %bb.zr
  %i.bod = load ptr, ptr %i.bob, align 8, !noalias !1920, !nonnull !3, !noundef !3
  %i.boe = icmp samesign ule i64 %i.bnw, %i.boa
  call void @llvm.assume(i1 %i.boe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hh), !noalias !1920
  store i64 %i.boa, ptr %i.hj, align 8, !noalias !1920
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  store ptr %i.bod, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1920
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !1920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hi), !noalias !1920
  store ptr %i.hk, ptr %i.hi, align 8, !noalias !1920
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !1920
  %i.bof = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.hj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @266, ptr noundef nonnull @265, ptr noundef nonnull %i.hi)
          to label %bb.zu unwind label %.loopexit.split-lp.i953, !noalias !1920

.loopexit.i956:                                   ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCscdodAO9FK5_5alloc6string6StringuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B3e_NtB3e_20TypeInferenceBuilder18infer_region_scopes_0Ese_0NCINvMB2p_B2m_10wrap_mut_2uB1K_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1K_NCNvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB35_ENtCs6Wt4yPw39th_9itertools9Itertools4join0E0E0E0B3k_.exit.i.i.i.i, %.lr.ph.i.split.i.i.i
  %lpad.loopexit.i957 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i955

.loopexit.split-lp.i953:                          ; preds = %bb.zv, %bb.zt
  %lpad.loopexit.split-lp.i954 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i955

.body.i955:                                       ; preds = %.split3.i.i.i, %.loopexit.i.i.i.i, %.loopexit.split-lp.i953, %.loopexit.i956
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.bop, %.split3.i.i.i ], [ %lpad.loopexit.i957, %.loopexit.i956 ], [ %lpad.loopexit.split-lp.i954, %.loopexit.split-lp.i953 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hj) #43
          to label %bb.zo unwind label %bb.aab, !noalias !1920

bb.zu:                                            ; preds = %bb.zt
  br i1 %i.bof, label %bb.zv, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !11

bb.zv:                                            ; preds = %bb.zu
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @270, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @269, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1125) #40
          to label %.noexc.i958 unwind label %.loopexit.split-lp.i953, !noalias !1920

.noexc.i958:                                      ; preds = %bb.zv
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.zu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi), !noalias !1920
  call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  %i.bog = icmp eq i64 %i.bnr, 1
  br i1 %i.bog, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCINvNtNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder14post_inference12static_class30check_static_class_definitionsNCNvMs_B2C_NtB2C_20TypeInferenceBuilder18infer_region_scopes_0Ese_0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCNvYBR_NtCs6Wt4yPw39th_9itertools9Itertools4join0E0EB2I_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  br label %.lr.ph.i.split.i.i.i

.lr.ph.i.split.i.i.i:                             ; preds = %.noexc29.i, %.lr.ph.i.i.i.i
  %i.boh = phi ptr [ %i.boi, %.noexc29.i ], [ %i.bnu, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he), !noalias !1926
  store ptr %i.boh, ptr %i.he, align 8, !noalias !1927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd), !noalias !1927
  store ptr %i.he, ptr %i.hd, align 8, !noalias !1927
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc), !noalias !1928
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hc, ptr noundef nonnull @223, ptr noundef nonnull %i.hd)
          to label %.noexc28.i unwind label %.loopexit.i956, !noalias !1920

.noexc28.i:                                       ; preds = %.lr.ph.i.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd), !noalias !1927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !noalias !1926
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hj, i64 noundef 2)
          to label %.noexc19.i.i.i.i.i.i.i.i unwind label %.loopexit.i.split.i.i.i, !noalias !1929

.noexc19.i.i.i.i.i.i.i.i:                         ; preds = %.noexc28.i
end_hunk_0
