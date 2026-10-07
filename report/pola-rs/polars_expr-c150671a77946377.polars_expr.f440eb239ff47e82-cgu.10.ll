Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.10?download=true
inline.NumInlined: 10796
inline.NumDeleted: 4618
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdayCskY9G75ZWc4U_11polars_expr:bb.a
  br label %bb.x, !dbg !136841

bb.e:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !136842
  %i.au = load ptr, ptr %i.at, align 8, !dbg !136842, !nonnull !2618, !align !3138, !noundef !2618 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !136784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !136843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !136843
  %i.av = getelementptr i8, ptr %i.au, i64 88, !dbg !136843
  %.val.i = load i64, ptr %i.av, align 8, !dbg !136843, !noalias !136785, !noundef !2618 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.au, i64 80, !dbg !136844
  %.val3.i = load i64, ptr %i.aw, align 16, !dbg !136844, !noalias !136785, !noundef !2618
  %i.ax = icmp eq i64 %.val.i, %.val3.i, !dbg !136845
  br i1 %i.ax, label %bb.k, label %bb.f, !dbg !136845

common.resume:                                    ; preds = %.body.i.i, %bb.av, %.body.i, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.v ], [ %lpad.thr_comm.i.i, %bb.av ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !136846

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr i8, ptr %i.au, i64 56, !dbg !136847
  %.val5.i = load ptr, ptr %i.ay, align 8, !dbg !136847, !noalias !136785, !nonnull !2618, !noundef !2618 ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 64, !dbg !136847
  %.val6.i = load i64, ptr %i.az, align 16, !dbg !136847, !noalias !136785, !noundef !2618
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.val5.i, i64 %.val6.i, !dbg !136848
  store ptr %.val5.i, ptr %i.r, align 8, !dbg !136849, !noalias !136785
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !136849
  store ptr %i.ba, ptr %i.bb, align 8, !dbg !136849, !noalias !136785
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !136849
  store ptr %i.a, ptr %i.bc, align 8, !dbg !136849, !noalias !136785
  %i.bd = getelementptr i8, ptr %i.au, i64 72, !dbg !136850
  %.val7.i = load ptr, ptr %i.bd, align 8, !dbg !136850, !noalias !136785, !nonnull !2618, !noundef !2618 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val7.i, i64 64, !dbg !136851 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val7.i, i64 87, !dbg !136852
  %i.bg = load i8, ptr %i.bf, align 1, !dbg !136852, !range !2670, !noalias !136785, !noundef !2618
  %i.bh = icmp eq i8 %i.bg, -40, !dbg !136853
  br i1 %i.bh, label %bb.g, label %bb.h, !dbg !136853

bb.g:                                             ; preds = %bb.f
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be), !dbg !136854, !noalias !136785
  br label %bb.i, !dbg !136854

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !dbg !136855, !noalias !136785
  br label %bb.i, !dbg !136856

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_RINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB7_12ChunkedArrayNtNtB9_9datatypes8Int8TypeE15from_chunk_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1X_INtNtNtB25_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtB7_3ops8downcastIBV_NtB1g_9Int32TypeE13downcast_iter0ENCINvNtB4M_5arity24unary_elementwise_valuesB58_B1e_NCNCNvYNtNtB9_6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekday00E0EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !dbg !136857
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity24unary_elementwise_valuesNtNtB8_9datatypes9Int32TypeNtB1q_8Int8TypeNCNCNvYNtNtB8_6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekday00ECskY9G75ZWc4U_11polars_expr.exit, !dbg !136858

bb.j:                                             ; preds = %bb.p, %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !136859

.body.i:                                          ; preds = %bb.m, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %i.bk, %bb.m ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(48) %i.u) #42
          to label %common.resume unwind label %bb.w, !dbg !136859, !noalias !136785

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !136860, !noalias !136785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !136861, !noalias !136785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !136861, !noalias !136785
  store i8 6, ptr %i.u, align 16, !dbg !136862, !alias.scope !136790, !noalias !136785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !136863, !noalias !136792
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.u, i16 noundef 1) #46
          to label %.noexc.i unwind label %bb.j, !dbg !136864, !noalias !136785

.noexc.i:                                         ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !136793), !dbg !136865
  call void @llvm.experimental.noalias.scope.decl(metadata !136794), !dbg !136865
  %i.bj = load i64, ptr %i.o, align 8, !dbg !136866, !range !2697, !alias.scope !136794, !noalias !136795, !noundef !2618
  %.not.i.i.i = icmp eq i64 %i.bj, 18, !dbg !136866
  br i1 %.not.i.i.i, label %bb.p, label %bb.l, !dbg !136867, !prof !2645

bb.l:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !136868, !noalias !136796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !136868, !noalias !136795
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 43, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #45
          to label %bb.n unwind label %bb.m, !dbg !136869, !noalias !136797

bb.m:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.n) #42
          to label %.body.i unwind label %bb.o, !dbg !136870, !noalias !136797

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !136871, !noalias !136797
  unreachable, !dbg !136871

bb.p:                                             ; preds = %.noexc.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !136872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !dbg !136872, !alias.scope !136798, !noalias !136799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !136873, !noalias !136792
  invoke void @_RNvXNtNtCs8774dFTUdNv_12polars_arrow5array12static_arrayINtNtB4_9primitive14PrimitiveArrayaENtB2_11StaticArray9full_nullCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.w, i64 noundef %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.v)
          to label %bb.q unwind label %bb.j, !dbg !136874, !noalias !136785

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !136875, !noalias !136785
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(48) %i.u)
          to label %bb.r unwind label %bb.v, !dbg !136859, !noalias !136785

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !136859, !noalias !136785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !136876, !noalias !136785
  %i.bn = getelementptr i8, ptr %i.au, i64 72, !dbg !136877
  %.val8.i = load ptr, ptr %i.bn, align 8, !dbg !136877, !noalias !136785, !nonnull !2618, !noundef !2618 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val8.i, i64 64, !dbg !136878 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !136879, !noalias !136785
  %i.bp = getelementptr inbounds nuw i8, ptr %.val8.i, i64 87, !dbg !136880
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !136880, !range !2670, !noalias !136785, !noundef !2618
  %i.br = icmp eq i8 %i.bq, -40, !dbg !136881
  br i1 %i.br, label %bb.s, label %bb.t, !dbg !136881

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %bb.u unwind label %bb.v, !dbg !136882, !noalias !136785

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !dbg !136883, !noalias !136785
  br label %bb.u, !dbg !136884

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !136885, !noalias !136785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !136886, !noalias !136785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !136887, !noalias !136785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false), !dbg !136887, !noalias !136785
  call void @_RINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB7_12ChunkedArrayNtNtB9_9datatypes8Int8TypeE10with_chunkINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.y, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.s), !dbg !136888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !136889, !noalias !136785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !136889, !noalias !136785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !136890, !noalias !136785
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity24unary_elementwise_valuesNtNtB8_9datatypes9Int32TypeNtB1q_8Int8TypeNCNCNvYNtNtB8_6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekday00ECskY9G75ZWc4U_11polars_expr.exit, !dbg !136858

bb.v:                                             ; preds = %bb.s, %bb.q
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(88) %i.w) #42
          to label %common.resume unwind label %bb.w, !dbg !136890, !noalias !136785

bb.w:                                             ; preds = %bb.v, %.body.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !136891, !noalias !136785
  unreachable, !dbg !136891

_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity24unary_elementwise_valuesNtNtB8_9datatypes9Int32TypeNtB1q_8Int8TypeNCNCNvYNtNtB8_6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekday00ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !136892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !136892
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !136893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 56, i1 false), !dbg !136893
  store i64 18, ptr %0, align 8, !dbg !136893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !136894
  br label %bb.x, !dbg !136895

bb.x:                                             ; preds = %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity24unary_elementwise_valuesNtNtB8_9datatypes9Int32TypeNtB1q_8Int8TypeNCNCNvYNtNtB8_6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekday00ECskY9G75ZWc4U_11polars_expr.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !136896
  br label %bb.ay, !dbg !136896

bb.y:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false), !dbg !136897
  br label %bb.ax, !dbg !136898

bb.z:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !136899 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ap, i64 1, !dbg !136900
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !136901
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !136901, !nonnull !2618, !align !3138, !noundef !2618 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !136902
  %.val8 = load i8, ptr %i.bv, align 1, !dbg !136902
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136800), !dbg !136902
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 31, !dbg !136903
  %i.bz = load i8, ptr %i.by, align 1, !dbg !136903, !range !2890, !alias.scope !136800, !noalias !136801, !noundef !2618 ; 3 uses
  %.not.i = icmp eq i8 %i.bz, -38, !dbg !136903
  br i1 %.not.i, label %switch.lookup, label %bb.aa, !dbg !136904

bb.aa:                                            ; preds = %bb.z
  %i.ca = icmp ugt i8 %i.bz, -41, !dbg !136905
  br i1 %i.ca, label %bb.ac, label %bb.ab, !dbg !136905

bb.ab:                                            ; preds = %bb.aa
  %i.cb = add i8 %i.bz, 64, !dbg !136906
  %i.cc = tail call i8 @llvm.umin.i8(i8 %i.cb, i8 24), !dbg !136907
  %.sroa.0.0.i.i.i = zext nneg i8 %i.cc to i64, !dbg !136907
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !136908

bb.ac:                                            ; preds = %bb.aa
  %i.cd = load ptr, ptr %i.bu, align 8, !dbg !136909, !alias.scope !136804, !noalias !136801, !noundef !2618
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !136910
  %i.cf = load i64, ptr %i.ce, align 16, !dbg !136910, !alias.scope !136804, !noalias !136801, !noundef !2618
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !136911

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %bb.ac, %bb.ab
  %.sroa.01.0.i.i = phi i64 [ %i.cf, %bb.ac ], [ %.sroa.0.0.i.i.i, %bb.ab ], !dbg !136912
  %.sroa.0.0.i.i = phi ptr [ %i.cd, %bb.ac ], [ %i.bu, %bb.ab ], !dbg !136913 ; 3 uses
  %i.cg = icmp eq i64 %.sroa.01.0.i.i, 3, !dbg !136914
  br i1 %i.cg, label %bb.ad, label %bb.ae, !dbg !136914

switch.lookup:                                    ; preds = %bb.ad, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !136915, !noalias !136805
  %i.ch = zext nneg i8 %.val8 to i64, !dbg !136916
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdayCskY9G75ZWc4U_11polars_expr, i64 %i.ch, !dbg !136916
  %switch.load = load i64, ptr %switch.gep, align 8, !dbg !136916
  store i64 %switch.load, ptr %i.m, align 8, !dbg !136917, !noalias !136805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !136805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !136805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !136805
  store ptr %i.m, ptr %i.l, align 8, !noalias !136806
  %i.ci = getelementptr i8, ptr %i.bx, i64 88, !dbg !136918
  %.val.i.i = load i64, ptr %i.ci, align 8, !dbg !136918, !noalias !136806, !noundef !2618 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bx, i64 80, !dbg !136919
  %.val3.i.i = load i64, ptr %i.cj, align 16, !dbg !136919, !noalias !136806, !noundef !2618
  %i.ck = icmp eq i64 %.val.i.i, %.val3.i.i, !dbg !136920
  br i1 %i.ck, label %bb.ak, label %bb.af, !dbg !136920

bb.ad:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  %i.cl = load i16, ptr %.sroa.0.0.i.i, align 1, !dbg !136921
  %i.cm = xor i16 %i.cl, 21589, !dbg !136921
  %i.cn = getelementptr i8, ptr %.sroa.0.0.i.i, i64 2, !dbg !136921
  %i.co = load i8, ptr %i.cn, align 1, !dbg !136921
  %i.cp = zext i8 %i.co to i16, !dbg !136921
  %i.cq = xor i16 %i.cp, 67, !dbg !136921
  %i.cr = or i16 %i.cm, %i.cq, !dbg !136921
  %i.cs = icmp ne i16 %i.cr, 0, !dbg !136921
  %i.ct = zext i1 %i.cs to i32, !dbg !136921
  %i.cu = icmp eq i32 %i.ct, 0, !dbg !136921
  br i1 %i.cu, label %switch.lookup, label %bb.ae, !dbg !136922

bb.ae:                                            ; preds = %bb.ad, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  call void @_RINvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray8datetime14cast_and_applyNvNtNtCs8774dFTUdNv_12polars_arrow7compute8temporal7weekdayNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8Int8TypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.x, ptr noundef nonnull align 16 %i.bx), !dbg !136923, !noalias !136800
  br label %_RNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0CskY9G75ZWc4U_11polars_expr.exit, !dbg !136923

bb.af:                                            ; preds = %switch.lookup
  %i.cv = getelementptr i8, ptr %i.bx, i64 56, !dbg !136924
  %.val5.i.i = load ptr, ptr %i.cv, align 8, !dbg !136924, !noalias !136806, !nonnull !2618, !noundef !2618 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.bx, i64 64, !dbg !136924
  %.val6.i.i = load i64, ptr %i.cw, align 16, !dbg !136924, !noalias !136806, !noundef !2618
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %.val5.i.i, i64 %.val6.i.i, !dbg !136925
  store ptr %.val5.i.i, ptr %i.f, align 8, !dbg !136926, !noalias !136806
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !136926
  store ptr %i.cx, ptr %i.cy, align 8, !dbg !136926, !noalias !136806
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !136926
  store ptr %i.l, ptr %i.cz, align 8, !dbg !136926, !noalias !136806
  %i.da = getelementptr i8, ptr %i.bx, i64 72, !dbg !136927
  %.val7.i.i = load ptr, ptr %i.da, align 8, !dbg !136927, !noalias !136806, !nonnull !2618, !noundef !2618 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 64, !dbg !136928 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 87, !dbg !136929
  %i.dd = load i8, ptr %i.dc, align 1, !dbg !136929, !range !2670, !noalias !136811, !noundef !2618
  %i.de = icmp eq i8 %i.dd, -40, !dbg !136930
  br i1 %i.de, label %bb.ag, label %bb.ah, !dbg !136930

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db), !dbg !136931, !noalias !136811
  br label %bb.ai, !dbg !136931

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !dbg !136932, !noalias !136811
  br label %bb.ai, !dbg !136933

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @_RINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB7_12ChunkedArrayNtNtB9_9datatypes8Int8TypeE15from_chunk_iterINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1X_INtNtNtB25_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtB7_3ops8downcastIBV_NtB1g_9Int64TypeE13downcast_iter0ENCINvNtB4M_5arity24unary_elementwise_valuesB58_B1e_NCNCNvYNtNtB9_6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0E0EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !dbg !136934, !noalias !136800
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity24unary_elementwise_valuesNtNtB8_9datatypes9Int64TypeNtB1q_8Int8TypeNCNCNvYNtNtB8_6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !136935

bb.aj:                                            ; preds = %bb.ap, %bb.ak
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !136936

.body.i.i:                                        ; preds = %bb.am, %bb.aj
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.df, %bb.aj ], [ %i.dh, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(48) %i.i) #42
          to label %common.resume unwind label %bb.aw, !dbg !136936, !noalias !136811

bb.ak:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !136937, !noalias !136806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !136938, !noalias !136806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !136938, !noalias !136806
  store i8 6, ptr %i.i, align 16, !dbg !136939, !alias.scope !136812, !noalias !136806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !136940, !noalias !136813
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.i, i16 noundef 1) #46
          to label %.noexc.i.i unwind label %bb.aj, !dbg !136941, !noalias !136811

.noexc.i.i:                                       ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !136814), !dbg !136942
  call void @llvm.experimental.noalias.scope.decl(metadata !136815), !dbg !136942
  %i.dg = load i64, ptr %i.c, align 8, !dbg !136943, !range !2697, !alias.scope !136815, !noalias !136816, !noundef !2618
  %.not.i.i.i.i = icmp eq i64 %i.dg, 18, !dbg !136943
  br i1 %.not.i.i.i.i, label %bb.ap, label %bb.al, !dbg !136944, !prof !2645

bb.al:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !136945, !noalias !136817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !136945, !noalias !136816
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #45
          to label %bb.an unwind label %bb.am, !dbg !136946, !noalias !136818

bb.am:                                            ; preds = %bb.al
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #42
          to label %.body.i.i unwind label %bb.ao, !dbg !136947, !noalias !136818

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !136948, !noalias !136818
  unreachable, !dbg !136948

bb.ap:                                            ; preds = %.noexc.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !136949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dj, i64 32, i1 false), !dbg !136949, !alias.scope !136819, !noalias !136820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !136950, !noalias !136813
  invoke void @_RNvXNtNtCs8774dFTUdNv_12polars_arrow5array12static_arrayINtNtB4_9primitive14PrimitiveArrayaENtB2_11StaticArray9full_nullCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.k, i64 noundef %.val.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.aq unwind label %bb.aj, !dbg !136951, !noalias !136811

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !136952, !noalias !136806
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(48) %i.i)
          to label %bb.ar unwind label %bb.av, !dbg !136936, !noalias !136811

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !136936, !noalias !136806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !136953, !noalias !136806
  %i.dk = getelementptr i8, ptr %i.bx, i64 72, !dbg !136954
  %.val8.i.i = load ptr, ptr %i.dk, align 8, !dbg !136954, !noalias !136806, !nonnull !2618, !noundef !2618 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 64, !dbg !136955 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !136956, !noalias !136806
  %i.dm = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 87, !dbg !136957
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !136957, !range !2670, !noalias !136811, !noundef !2618
  %i.do = icmp eq i8 %i.dn, -40, !dbg !136958
  br i1 %i.do, label %bb.as, label %bb.at, !dbg !136958

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl)
          to label %bb.au unwind label %bb.av, !dbg !136959, !noalias !136811

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false), !dbg !136960, !noalias !136811
  br label %bb.au, !dbg !136961

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !136962, !noalias !136806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !136963, !noalias !136806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !136964, !noalias !136806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !dbg !136964, !noalias !136806
  call void @_RINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB7_12ChunkedArrayNtNtB9_9datatypes8Int8TypeE10with_chunkINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.x, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.g), !dbg !136965, !noalias !136800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !136966, !noalias !136806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !136966, !noalias !136806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !136967, !noalias !136806
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity24unary_elementwise_valuesNtNtB8_9datatypes9Int64TypeNtB1q_8Int8TypeNCNCNvYNtNtB8_6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !136935

bb.av:                                            ; preds = %bb.as, %bb.aq
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(88) %i.k) #42
          to label %common.resume unwind label %bb.aw, !dbg !136967, !noalias !136811

bb.aw:                                            ; preds = %bb.av, %.body.i.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !136968, !noalias !136811
  unreachable, !dbg !136968

_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity24unary_elementwise_valuesNtNtB8_9datatypes9Int64TypeNtB1q_8Int8TypeNCNCNvYNtNtB8_6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.au, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !136969, !noalias !136805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !136969, !noalias !136805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !136969, !noalias !136805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !136970, !noalias !136805
  br label %_RNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0CskY9G75ZWc4U_11polars_expr.exit, !dbg !136970

_RNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ae, %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity24unary_elementwise_valuesNtNtB8_9datatypes9Int64TypeNtB1q_8Int8TypeNCNCNvYNtNtB8_6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0s_0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !136971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dq, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false), !dbg !136971
  store i64 18, ptr %0, align 8, !dbg !136971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !136972
  br label %bb.ax, !dbg !136973

bb.ax:                                            ; preds = %_RNCNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods7weekdays_0CskY9G75ZWc4U_11polars_expr.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !136974
  br label %bb.ay, !dbg !136975

bb.ay:                                            ; preds = %bb.x, %bb.ax, %.split
  ret void, !dbg !136831
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesNtNtCs2Aa799EbAFJ_11polars_time6series15TemporalMethods8iso_yearCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !136976 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !dbg !137016, !nonnull !2618, !noundef !2618
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !137016
  %i.h = load ptr, ptr %i.g, align 8, !dbg !137016, !nonnull !2618, !align !2672, !noundef !2618 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !137017
  %i.j = load i64, ptr %i.i, align 8, !dbg !137017, !range !2695, !invariant.load !2618
  %i.k = add nsw i64 %i.j, -1, !dbg !137017
  %i.l = and i64 %i.k, -16, !dbg !137017
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l, !dbg !137017
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !137017
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 304, !dbg !136998
  %i.p = load ptr, ptr %i.o, align 8, !dbg !136998, !invariant.load !2618, !nonnull !2618
  %i.q = tail call noundef nonnull align 16 ptr %i.p(ptr noundef nonnull %i.n) #46, !dbg !137018 ; 2 uses
  %i.r = load i8, ptr %i.q, align 16, !dbg !136998, !range !2696, !noundef !2618
  switch i8 %i.r, label %.split [
    i8 18, label %bb.b
    i8 19, label %bb.c
  ], !dbg !137019, !prof !3577

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !137020
  store ptr %i.q, ptr %i.c, align 8, !dbg !137020
end_hunk_0
