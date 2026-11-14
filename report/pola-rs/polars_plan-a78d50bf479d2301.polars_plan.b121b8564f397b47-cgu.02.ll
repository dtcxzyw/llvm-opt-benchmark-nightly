Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.02?download=true
inline.NumInlined: 11832
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir9functions17convert_functions:bb.a
bb.wk:                                            ; preds = %bb.do
  %i.aqm = load i64, ptr %i.ab, align 8, !dbg !161413, !range !5137, !noundef !4700 ; 2 uses
  %.not1120 = icmp eq i64 %i.aqm, 18, !dbg !161413
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !161414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6718, ptr noundef nonnull align 8 dereferenceable(24) %i.aqn, i64 24, i1 false), !dbg !161414
  br i1 %.not1120, label %bb.wm, label %bb.wl, !dbg !161415

bb.wl:                                            ; preds = %bb.wk
  %.sroa.61064.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32, !dbg !161416
  %.sroa.31067.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !161417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.31067.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61064.0..sroa_idx, i64 40, i1 false), !dbg !161416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !161418
  %.sroa.21066.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21066.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6718, i64 24, i1 false), !dbg !161418
  store i64 %i.aqm, ptr %0, align 8, !dbg !161417
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6718), !dbg !161412
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr10row_encode18RowEncodingVariantEBQ_(ptr noalias noundef align 8 dereferenceable(56) %i.ac)
          to label %bb.xi unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !161412

bb.wm:                                            ; preds = %bb.wk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !161418
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.em, i64 64, !dbg !161419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aqo, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6718, i64 24, i1 false), !dbg !160021
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.em, i64 8, !dbg !161419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aqp, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !dbg !161420
  store i8 110, ptr %i.em, align 16, !dbg !161419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6718), !dbg !161412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !161412
  br label %bb.ek, !dbg !161412

bb.wn:                                            ; preds = %bb.ek
  %.sroa.01492.0.extract.trunc1493 = trunc i48 %i.rk to i16, !dbg !161140
  %.sroa.61494.0.extract.shift1495 = lshr i48 %i.rk, 16, !dbg !161140
  %.sroa.61494.0.extract.trunc1496 = trunc i48 %.sroa.61494.0.extract.shift1495 to i16, !dbg !161140
  %.sroa.81497.0.extract.shift1498 = lshr i48 %i.rk, 32, !dbg !161140
  %.sroa.81497.0.extract.trunc1499 = trunc nuw i48 %.sroa.81497.0.extract.shift1498 to i16, !dbg !161140
  br label %bb.qc, !dbg !161141

bb.wo:                                            ; preds = %bb.qc
  %i.aqq = load i64, ptr %i.c, align 8, !dbg !161421, !range !5131, !noundef !4700 ; 2 uses
  %.not1175 = icmp eq i64 %i.aqq, 5, !dbg !161421
  br i1 %.not1175, label %.sink.split1921, label %bb.wp, !dbg !161422

bb.wp:                                            ; preds = %bb.wo
  %.sroa.61523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 31, !dbg !161423
  %.sroa.61523.0.copyload = load i8, ptr %.sroa.61523.0..sroa_idx, align 1, !dbg !161423 ; 2 uses
  %i.aqr = icmp eq i64 %i.aqq, 0, !dbg !161424
  br i1 %i.aqr, label %.sink.split1921, label %_RNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir9functions17convert_functionss5_0Bb_.exit, !dbg !161424

.sink.split1921:                                  ; preds = %bb.wp, %bb.wo, %_RNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir9functions17convert_functionss5_0Bb_.exit
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.eo, i64 16, !dbg !161425
  %i.aqt = load i64, ptr %i.aqs, align 8, !dbg !161425, !noundef !4700 ; 2 uses
  %i.aqu = icmp ult i64 %i.aqt, 82351536043346213, !dbg !161426
  call void @llvm.assume(i1 %i.aqu), !dbg !161427
  %i.aqv = icmp eq i64 %i.aqt, 0, !dbg !161428
  br i1 %i.aqv, label %bb.wr, label %bb.xa, !dbg !161428

_RNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir9functions17convert_functionss5_0Bb_.exit: ; preds = %bb.wp
  %.sroa.51522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !161423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.01500, ptr noundef nonnull align 8 dereferenceable(23) %.sroa.51522.0..sroa_idx, i64 23, i1 false), !dbg !161429
  %.not1176 = icmp eq i8 %.sroa.61523.0.copyload, -38, !dbg !161144
  br i1 %.not1176, label %.sink.split1921, label %bb.wq, !dbg !161430

bb.wq:                                            ; preds = %_RNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir9functions17convert_functionss5_0Bb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.z, ptr noundef nonnull align 8 dereferenceable(23) %.sroa.01500, i64 23, i1 false), !dbg !161431
  %.sroa.41511.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.z, i64 23, !dbg !161432
  store i8 %.sroa.61523.0.copyload, ptr %.sroa.41511.0..sroa_idx.a, align 1, !dbg !161432
  br label %bb.ww, !dbg !161433

bb.wr:                                            ; preds = %.sink.split1921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !161434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) @833, i64 24, i1 false), !dbg !161434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !161435
  store ptr %i.em, ptr %i.x, align 8, !dbg !161435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !161436
  store ptr %i.x, ptr %i.w, align 8, !dbg !161436
  %.sroa.41071.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !161436
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprNtB6_7Display3fmtBE_, ptr %.sroa.41071.0..sroa_idx, align 8, !dbg !161436
  %i.aqw = invoke noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull @920, ptr noundef nonnull %i.w)
          to label %bb.wu unwind label %bb.ws, !dbg !161437

bb.ws:                                            ; preds = %bb.wv, %bb.wr
  %i.aqx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.y, i64 23, !dbg !161438
  %i.aqz = load i8, ptr %i.aqy, align 1, !dbg !161438, !range !5133, !alias.scope !160033, !noundef !4700
  %i.ara = icmp eq i8 %i.aqz, -40, !dbg !161439
  br i1 %i.ara, label %bb.wt, label %bb.xh, !dbg !161439, !prof !4712

bb.wt:                                            ; preds = %bb.ws
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.xh unwind label %bb.ew, !dbg !161440

bb.wu:                                            ; preds = %bb.wr
  br i1 %i.aqw, label %bb.wv, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit, !dbg !161441, !prof !4712

bb.wv:                                            ; preds = %bb.wu
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @805, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @819, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @994) #46
          to label %.noexc unwind label %bb.ws, !dbg !161442

.noexc:                                           ; preds = %bb.wv
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.wu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !161443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !161443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !161443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !161434
  br label %bb.ww, !dbg !161434

bb.ww:                                            ; preds = %bb.xe, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit, %bb.wq
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01500), !dbg !161444
  %i.arb = getelementptr inbounds nuw i8, ptr %i.v, i64 112, !dbg !161445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.arb, ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i64 24, i1 false), !dbg !161446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.v, ptr noundef nonnull align 16 dereferenceable(112) %i.em, i64 112, i1 false), !dbg !161447
  %i.arc = getelementptr inbounds nuw i8, ptr %i.v, i64 136, !dbg !161445
  store i16 %.sroa.01492.0, ptr %i.arc, align 8, !dbg !161445
  %.sroa.41513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 138, !dbg !161445
  store i16 %.sroa.61494.0, ptr %.sroa.41513.0..sroa_idx, align 2, !dbg !161445
  %.sroa.51514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 140, !dbg !161445
  store i16 %.sroa.81497.0, ptr %.sroa.51514.0..sroa_idx, align 4, !dbg !161445
  %i.ard = getelementptr inbounds nuw i8, ptr %3, i64 64, !dbg !161448
  %i.are = load ptr, ptr %i.ard, align 8, !dbg !161448, !nonnull !4700, !align !4823, !noundef !4700 ; 4 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 16, !dbg !161449 ; 2 uses
  %i.arg = load i64, ptr %i.arf, align 8, !dbg !161449, !noundef !4700 ; 5 uses
  %i.arh = icmp ult i64 %i.arg, 64051194700380388, !dbg !161450
  call void @llvm.assume(i1 %i.arh), !dbg !161451
  %i.ari = load i64, ptr %i.are, align 8, !dbg !161452, !range !5084, !alias.scope !160037, !noundef !4700
  %i.arj = icmp eq i64 %i.arg, %i.ari, !dbg !161453
  br i1 %i.arj, label %bb.wx, label %bb.xg, !dbg !161453

bb.wx:                                            ; preds = %bb.ww
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.are)
          to label %bb.xg unwind label %bb.wy, !dbg !161454, !noalias !160040

bb.wy:                                            ; preds = %bb.wx
  %i.ark = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.v) #45
          to label %.body1285 unwind label %bb.wz, !dbg !161455

bb.wz:                                            ; preds = %bb.wy
  %i.arl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !161456
  unreachable, !dbg !161456

bb.xa:                                            ; preds = %.sink.split1921
  %i.arm = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !161457
  %i.arn = load ptr, ptr %i.arm, align 8, !dbg !161457, !nonnull !4700, !noundef !4700
  %i.aro = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIR11output_name(ptr noundef nonnull align 16 %i.arn)
          to label %bb.xb unwind label %bb.qa, !dbg !161458 ; 3 uses

bb.xb:                                            ; preds = %bb.xa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !161459
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 23, !dbg !161460
  %i.arq = load i8, ptr %i.arp, align 1, !dbg !161460, !range !5133, !noundef !4700
  %i.arr = icmp eq i8 %i.arq, -40, !dbg !161461
  br i1 %i.arr, label %bb.xc, label %bb.xd, !dbg !161461

bb.xc:                                            ; preds = %bb.xb
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aro)
          to label %bb.xe unwind label %bb.qa, !dbg !161462

bb.xd:                                            ; preds = %bb.xb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.aro, i64 24, i1 false), !dbg !161463
  br label %bb.xe, !dbg !161464

bb.xe:                                            ; preds = %bb.xc, %bb.xd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !161465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161466
  br label %bb.ww, !dbg !161467

.body1285:                                        ; preds = %bb.wy
  %i.ars = getelementptr inbounds nuw i8, ptr %i.z, i64 23, !dbg !161468
  %i.art = load i8, ptr %i.ars, align 1, !dbg !161468, !range !5133, !alias.scope !160064, !noundef !4700
  %i.aru = icmp eq i8 %i.art, -40, !dbg !161469
  br i1 %i.aru, label %bb.xf, label %.body, !dbg !161469, !prof !4712

bb.xf:                                            ; preds = %.body1285
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body unwind label %bb.ew, !dbg !161470

bb.xg:                                            ; preds = %bb.wx, %bb.ww
  %i.arv = getelementptr inbounds nuw i8, ptr %i.are, i64 8, !dbg !161471
  %i.arw = load ptr, ptr %i.arv, align 8, !dbg !161471, !alias.scope !160037, !nonnull !4700, !noundef !4700
  %i.arx = getelementptr inbounds nuw [144 x i8], ptr %i.arw, i64 %i.arg, !dbg !161472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.arx, ptr noundef nonnull align 16 dereferenceable(144) %i.v, i64 144, i1 false), !dbg !161473
  %i.ary = add nuw nsw i64 %i.arg, 1, !dbg !161474
  store i64 %i.ary, ptr %i.arf, align 8, !dbg !161474, !alias.scope !160037
  %.sroa.4732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4732.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !dbg !161476
  %i.arz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161475
  store i64 %i.arg, ptr %i.arz, align 8, !dbg !161475
  store i64 18, ptr %0, align 8, !dbg !161475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !161477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !dbg !160537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !dbg !160172
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit: ; preds = %bb.abz, %.thread1718, %bb.abw, %.thread1720.a, %bb.abt, %.thread1718.a, %bb.abq, %.thread1716.a, %bb.abm, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1325, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit.i1320, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan.exit1302, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionEBO_.exit, %bb.xv, %bb.aaq, %bb.aap, %bb.aao, %bb.aan, %bb.xr, %bb.xq, %bb.xp, %bb.xo, %bb.zi, %bb.zh, %bb.yu, %bb.yt, %bb.ys, %bb.yr, %bb.yq, %bb.yp, %bb.yo, %bb.yk, %bb.yj, %bb.yi, %bb.yh, %bb.yg, %bb.ye, %bb.yd, %bb.yc, %bb.yb, %bb.ya, %bb.xz, %bb.xx, %bb.xw, %.thread1720, %bb.aar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionEECsfcROwRM8ZtH_11polars_plan.exit, %bb.yn, %bb.ym, %bb.yl, %bb.yf, %bb.xu, %bb.xt, %bb.xs, %bb.xn, %bb.xm, %bb.xl, %bb.xk, %bb.xj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.xg, %bb.d
  ret void, !dbg !161478

bb.xh:                                            ; preds = %bb.qa, %bb.wt, %bb.ws
  %.sroa.0740.3.ph = phi i1 [ %.sroa.0740.4, %bb.qa ], [ %.sroa.0740.5, %bb.wt ], [ %.sroa.0740.5, %bb.ws ]
  %.sroa.0742.6.ph = phi i8 [ %.sroa.0742.7, %bb.qa ], [ %.sroa.0742.8, %bb.wt ], [ %.sroa.0742.8, %bb.ws ]
  %.sroa.0744.6.ph = phi i8 [ %.sroa.0744.7, %bb.qa ], [ %.sroa.0744.8, %bb.wt ], [ %.sroa.0744.8, %bb.ws ]
  %.sroa.0746.6.ph = phi i8 [ %.sroa.0746.7, %bb.qa ], [ %.sroa.0746.8, %bb.wt ], [ %.sroa.0746.8, %bb.ws ]
  %.sroa.0748.3.ph = phi i1 [ %.sroa.0748.4, %bb.qa ], [ %.sroa.0748.5, %bb.wt ], [ %.sroa.0748.5, %bb.ws ]
  %.sroa.0750.6.ph = phi i8 [ %.sroa.0750.7, %bb.qa ], [ %.sroa.0750.8, %bb.wt ], [ %.sroa.0750.8, %bb.ws ]
  %.sroa.0752.4.ph = phi i1 [ %.sroa.0752.5, %bb.qa ], [ %.sroa.0752.6, %bb.wt ], [ %.sroa.0752.6, %bb.ws ]
  %.sroa.0754.3.ph = phi i1 [ %.sroa.0754.4, %bb.qa ], [ %.sroa.0754.5, %bb.wt ], [ %.sroa.0754.5, %bb.ws ]
  %.sroa.0756.6.ph = phi i8 [ %.sroa.0756.7, %bb.qa ], [ %.sroa.0756.8, %bb.wt ], [ %.sroa.0756.8, %bb.ws ]
  %.sroa.0761.3.ph = phi i8 [ %.sroa.0761.4, %bb.qa ], [ %.sroa.0761.5, %bb.wt ], [ %.sroa.0761.5, %bb.ws ]
  %.sroa.0763.3.ph = phi i1 [ %.sroa.0763.4, %bb.qa ], [ %.sroa.0763.5, %bb.wt ], [ %.sroa.0763.5, %bb.ws ]
  %.sroa.0765.3.ph = phi i1 [ %.sroa.0765.4, %bb.qa ], [ %.sroa.0765.5, %bb.wt ], [ %.sroa.0765.5, %bb.ws ]
  %.sroa.0767.3.ph = phi i1 [ %.sroa.0767.4, %bb.qa ], [ %.sroa.0767.5, %bb.wt ], [ %.sroa.0767.5, %bb.ws ]
  %.sroa.0772.3.ph = phi i8 [ %.sroa.0772.4, %bb.qa ], [ %.sroa.0772.5, %bb.wt ], [ %.sroa.0772.5, %bb.ws ]
  %.sroa.0777.3.ph = phi i8 [ %.sroa.0777.4, %bb.qa ], [ %.sroa.0777.5, %bb.wt ], [ %.sroa.0777.5, %bb.ws ]
  %.sroa.0785.3.ph = phi i8 [ %.sroa.0785.4, %bb.qa ], [ %.sroa.0785.5, %bb.wt ], [ %.sroa.0785.5, %bb.ws ]
  %.sroa.0790.6.ph = phi i8 [ %.sroa.0790.7, %bb.qa ], [ %.sroa.0790.8, %bb.wt ], [ %.sroa.0790.8, %bb.ws ]
  %.sroa.0795.6.ph = phi i8 [ %.sroa.0795.7, %bb.qa ], [ %.sroa.0795.8, %bb.wt ], [ %.sroa.0795.8, %bb.ws ]
  %.sroa.0800.6.ph = phi i8 [ %.sroa.0800.7, %bb.qa ], [ %.sroa.0800.8, %bb.wt ], [ %.sroa.0800.8, %bb.ws ]
  %.sroa.0805.6.ph = phi i8 [ %.sroa.0805.7, %bb.qa ], [ %.sroa.0805.8, %bb.wt ], [ %.sroa.0805.8, %bb.ws ]
  %.sroa.0807.6.ph = phi i8 [ %.sroa.0807.7, %bb.qa ], [ %.sroa.0807.8, %bb.wt ], [ %.sroa.0807.8, %bb.ws ]
  %.sroa.0809.6.ph = phi i8 [ %.sroa.0809.7, %bb.qa ], [ %.sroa.0809.8, %bb.wt ], [ %.sroa.0809.8, %bb.ws ]
  %.sroa.0811.6.ph = phi i8 [ %.sroa.0811.7, %bb.qa ], [ %.sroa.0811.8, %bb.wt ], [ %.sroa.0811.8, %bb.ws ]
  %.sroa.0816.6.ph = phi i8 [ %.sroa.0816.7, %bb.qa ], [ %.sroa.0816.8, %bb.wt ], [ %.sroa.0816.8, %bb.ws ]
  %.pn1177.ph = phi { ptr, i32 } [ %i.aia, %bb.qa ], [ %i.aqx, %bb.wt ], [ %i.aqx, %bb.ws ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprEBO_(ptr noalias noundef align 16 dereferenceable(112) %i.em) #45
          to label %.loopexit.split-lp unwind label %bb.ew, !dbg !160537

bb.xi:                                            ; preds = %bb.wl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !161412
  br label %bb.ex, !dbg !160535

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit: ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !dbg !160172
  %i.asa = load i8, ptr %2, align 16, !dbg !160164, !range !5254, !noundef !4700
  switch i8 %i.asa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit [
    i8 0, label %bb.xw
    i8 1, label %bb.xj
    i8 2, label %bb.xk
    i8 3, label %bb.xl
    i8 4, label %bb.yi
    i8 5, label %bb.xm
    i8 6, label %bb.ym
    i8 7, label %bb.yn
    i8 20, label %bb.xn
    i8 26, label %bb.yv
    i8 38, label %bb.zb
    i8 53, label %bb.ze
    i8 60, label %bb.zh
    i8 84, label %bb.zj
    i8 85, label %bb.zn
    i8 91, label %bb.zr
    i8 92, label %bb.xo
    i8 93, label %bb.xp
    i8 94, label %bb.xq
    i8 95, label %bb.xr
    i8 107, label %bb.xs
    i8 109, label %bb.xt
    i8 111, label %bb.xu
    i8 112, label %bb.xv
  ], !dbg !160164

bb.xj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.asb = trunc nuw i8 %.sroa.0742.5 to i1, !dbg !160164
  br i1 %i.asb, label %bb.yd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.asc = trunc nuw i8 %.sroa.0744.5 to i1, !dbg !160164
  br i1 %i.asc, label %bb.yf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.asd = trunc nuw i8 %.sroa.0746.5 to i1, !dbg !160164
  br i1 %i.asd, label %bb.yg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xm:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.ase = trunc nuw i8 %.sroa.0750.4 to i1, !dbg !160164
  br i1 %i.ase, label %bb.yl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xn:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.asf = trunc nuw i8 %.sroa.0756.4 to i1, !dbg !160164
  br i1 %i.asf, label %bb.yo, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.asg = trunc nuw i8 %.sroa.0790.5 to i1, !dbg !160164
  br i1 %i.asg, label %bb.zt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.ash = trunc nuw i8 %.sroa.0795.5 to i1, !dbg !160164
  br i1 %i.ash, label %bb.zy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.asi = trunc nuw i8 %.sroa.0800.5 to i1, !dbg !160164
  br i1 %i.asi, label %bb.aad, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xr:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.asj = trunc nuw i8 %.sroa.0805.5 to i1, !dbg !160164
  br i1 %i.asj, label %bb.aai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.ask = trunc nuw i8 %.sroa.0807.5 to i1, !dbg !160164
  br i1 %i.ask, label %bb.aan, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.asl = trunc nuw i8 %.sroa.0809.5 to i1, !dbg !160164
  br i1 %i.asl, label %bb.aap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.asm = trunc nuw i8 %.sroa.0811.5 to i1, !dbg !160164
  br i1 %i.asm, label %bb.aar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit
  %i.asn = trunc nuw i8 %.sroa.0816.5 to i1, !dbg !160164
  br i1 %i.asn, label %bb.aas, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.xw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.d
  %i.aso = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  call void @llvm.experimental.noalias.scope.decl(metadata !160065), !dbg !160164
  %i.asp = load i64, ptr %i.aso, align 8, !dbg !161479, !range !5270, !alias.scope !160065, !noundef !4700 ; 2 uses
  %i.asq = icmp samesign ugt i64 %i.asp, 1, !dbg !161479
  br i1 %i.asq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.xx, !dbg !161479

bb.xx:                                            ; preds = %bb.xw
  call void @llvm.experimental.noalias.scope.decl(metadata !160066), !dbg !161479
  %i.asr = icmp eq i64 %i.asp, 0, !dbg !161480
  br i1 %i.asr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.xy, !dbg !161480

bb.xy:                                            ; preds = %bb.xx
  %i.ass = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !161480 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160067), !dbg !161480
  %i.ast = load ptr, ptr %i.ass, align 16, !dbg !161481, !alias.scope !160068, !noundef !4700 ; 2 uses
  %i.asu = icmp eq ptr %i.ast, null, !dbg !161481
  br i1 %i.asu, label %bb.xz, label %bb.yb, !dbg !161481

bb.xz:                                            ; preds = %bb.xy
  %i.asv = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !161481 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160069), !dbg !161481
  call void @llvm.experimental.noalias.scope.decl(metadata !160070), !dbg !161482
  call void @llvm.experimental.noalias.scope.decl(metadata !160071), !dbg !161483
  %i.asw = load ptr, ptr %i.asv, align 8, !dbg !161484, !alias.scope !160072, !nonnull !4700, !noundef !4700
  %i.asx = atomicrmw add ptr %i.asw, i64 -1 release, align 8, !dbg !161485, !noalias !160072
  %i.asy = icmp eq i64 %i.asx, 1, !dbg !161486
  br i1 %i.asy, label %bb.ya, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161486

bb.ya:                                            ; preds = %bb.xz
  fence acquire, !dbg !161487
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.asv) #51, !dbg !161488
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161488

bb.yb:                                            ; preds = %bb.xy
  %i.asz = atomicrmw add ptr %i.ast, i64 -1 release, align 8, !dbg !161489, !noalias !160073
  %i.ata = icmp eq i64 %i.asz, 1, !dbg !161490
  br i1 %i.ata, label %bb.yc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161490

bb.yc:                                            ; preds = %bb.yb
  fence acquire, !dbg !161491
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTjEEp6OutputINtNtBO_6result6ResultNtNtB7_6string6StringNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB30_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ass) #51, !dbg !161492
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161492

bb.yd:                                            ; preds = %bb.xj, %bb.d
  %i.atb = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164
  %i.atc = load i8, ptr %i.atb, align 16, !dbg !161493, !range !5255, !alias.scope !160074, !noundef !4700
  %i.atd = icmp eq i8 %i.atc, 8, !dbg !161493
  br i1 %i.atd, label %bb.ye, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161493

bb.ye:                                            ; preds = %bb.yd
  %i.ate = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !161493
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.ate), !dbg !161493, !inline_history !1947
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161493

bb.yf:                                            ; preds = %bb.xk, %bb.d
  %i.atf = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr3cat19CategoricalFunctionEBO_(ptr noalias noundef align 16 dereferenceable(64) %i.atf), !dbg !160164
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.yg:                                            ; preds = %bb.xl, %bb.d
  %i.atg = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164 ; 2 uses
  %i.ath = load i8, ptr %i.atg, align 16, !dbg !161494, !range !5256, !alias.scope !160075, !noundef !4700
  %.not.i = icmp eq i8 %i.ath, 39, !dbg !161494
  br i1 %.not.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.yh, !dbg !161494

bb.yh:                                            ; preds = %bb.yg
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.atg), !dbg !161494, !inline_history !1949
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161494

bb.yi:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.d
  %i.ati = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  call void @llvm.experimental.noalias.scope.decl(metadata !160076), !dbg !160164
  %i.atj = load i64, ptr %i.ati, align 8, !dbg !161495, !range !5257, !alias.scope !160076, !noundef !4700 ; 2 uses
  %i.atk = icmp ne i64 %i.atj, 5, !dbg !161495
  call void @llvm.assume(i1 %i.atk), !dbg !161495
  %switch.i1289.a = icmp samesign ult i64 %i.atj, 27, !dbg !161495
  br i1 %switch.i1289.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.yj, !dbg !161495

bb.yj:                                            ; preds = %bb.yi
  %i.atl = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !161495 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160077), !dbg !161495
  call void @llvm.experimental.noalias.scope.decl(metadata !160078), !dbg !161496
  %i.atm = load ptr, ptr %i.atl, align 16, !dbg !161497, !alias.scope !160079, !nonnull !4700, !noundef !4700
  %i.atn = atomicrmw add ptr %i.atm, i64 -1 release, align 8, !dbg !161498, !noalias !160079
  %i.ato = icmp eq i64 %i.atn, 1, !dbg !161499
  br i1 %i.ato, label %bb.yk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161499

bb.yk:                                            ; preds = %bb.yj
  fence acquire, !dbg !161500
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.atl) #51, !dbg !161501
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161501

bb.yl:                                            ; preds = %bb.xm, %bb.d
  %i.atp = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7strings14StringFunctionEBO_(ptr noalias noundef align 16 dereferenceable(96) %i.atp), !dbg !160164
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.ym:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.d
  %i.atq = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7struct_14StructFunctionEBO_(ptr noalias noundef align 8 dereferenceable(32) %i.atq), !dbg !160164
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.yn:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.d
  %i.atr = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr8datetime16TemporalFunctionEBO_(ptr noalias noundef align 8 dereferenceable(32) %i.atr), !dbg !160164
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.yo:                                            ; preds = %bb.xn, %bb.d
  %i.ats = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164
  %i.att = load i8, ptr %i.ats, align 16, !dbg !161502, !range !5105, !alias.scope !160080, !noundef !4700
  switch i8 %i.att, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit [
    i8 0, label %bb.yp
    i8 1, label %bb.yq
    i8 6, label %bb.yr
    i8 7, label %bb.yt
  ], !dbg !161502

bb.yp:                                            ; preds = %bb.yo
  %i.atu = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !161502
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.atu) #52, !dbg !161502, !inline_history !160081
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161502

bb.yq:                                            ; preds = %bb.yo
  %i.atv = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !161502
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.atv) #52, !dbg !161502, !inline_history !160081
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161502

bb.yr:                                            ; preds = %bb.yo
  %i.atw = getelementptr inbounds nuw i8, ptr %2, i64 47, !dbg !161503
  %i.atx = load i8, ptr %i.atw, align 1, !dbg !161503, !range !5062, !alias.scope !160082, !noundef !4700
  %cond.i.i1290 = icmp eq i8 %i.atx, -40, !dbg !161503
  br i1 %cond.i.i1290, label %bb.ys, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161503, !prof !5166

bb.ys:                                            ; preds = %bb.yr
  %i.aty = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !161502
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aty), !dbg !161504, !inline_history !160081
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161504

bb.yt:                                            ; preds = %bb.yo
  %i.atz = getelementptr inbounds nuw i8, ptr %2, i64 47, !dbg !161505
  %i.aua = load i8, ptr %i.atz, align 1, !dbg !161505, !range !5062, !alias.scope !160083, !noundef !4700
  %cond.i1.i = icmp eq i8 %i.aua, -40, !dbg !161505
  br i1 %cond.i1.i, label %bb.yu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161505, !prof !5166

bb.yu:                                            ; preds = %bb.yt
  %i.aub = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !161502
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aub), !dbg !161506, !inline_history !160081
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161506

bb.yv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.d
  %i.auc = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  call void @llvm.experimental.noalias.scope.decl(metadata !160084), !dbg !160164
  %i.aud = load i8, ptr %i.auc, align 8, !dbg !161507, !range !5271, !alias.scope !160084, !noundef !4700
  %switch.i1291 = icmp samesign ult i8 %i.aud, 11, !dbg !161507
  br i1 %switch.i1291, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionEBO_.exit, label %bb.yw, !dbg !161507

bb.yw:                                            ; preds = %bb.yv
  %i.aue = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !161507 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160085), !dbg !161507
  %i.auf = load ptr, ptr %i.aue, align 16, !dbg !161508, !alias.scope !160086, !noundef !4700 ; 2 uses
  %i.aug = icmp eq ptr %i.auf, null, !dbg !161508
  br i1 %i.aug, label %bb.yx, label %bb.yz, !dbg !161508

bb.yx:                                            ; preds = %bb.yw
  %i.auh = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !161508 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160087), !dbg !161508
  call void @llvm.experimental.noalias.scope.decl(metadata !160088), !dbg !161509
  call void @llvm.experimental.noalias.scope.decl(metadata !160089), !dbg !161510
  %i.aui = load ptr, ptr %i.auh, align 8, !dbg !161511, !alias.scope !160090, !nonnull !4700, !noundef !4700
  %i.auj = atomicrmw add ptr %i.aui, i64 -1 release, align 8, !dbg !161512, !noalias !160090
  %i.auk = icmp eq i64 %i.auj, 1, !dbg !161513
  br i1 %i.auk, label %bb.yy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionEBO_.exit, !dbg !161513

bb.yy:                                            ; preds = %bb.yx
  fence acquire, !dbg !161514
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.auh) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionEBO_.exit unwind label %bb.aaw, !dbg !161515

bb.yz:                                            ; preds = %bb.yw
  %i.aul = atomicrmw add ptr %i.auf, i64 -1 release, align 8, !dbg !161516, !noalias !160091
  %i.aum = icmp eq i64 %i.aul, 1, !dbg !161517
  br i1 %i.aum, label %bb.za, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionEBO_.exit, !dbg !161517

bb.za:                                            ; preds = %bb.yz
  fence acquire, !dbg !161518
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEp6OutputINtNtBO_6result6ResultB1o_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3r_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aue) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionEBO_.exit unwind label %bb.aaw, !dbg !161519

bb.zb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.d
  %i.aun = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aun)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.zc, !dbg !161520

bb.zc:                                            ; preds = %bb.zb
  %i.auo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aun)
          to label %common.resume unwind label %bb.zd, !dbg !161521

bb.zd:                                            ; preds = %bb.zc
  %i.aup = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !161520
  unreachable, !dbg !161520

common.resume:                                    ; preds = %.invoke1902, %.invoke1901, %.invoke1900.a, %.body, %bb.aaw, %.body1296, %.body1300, %.body1317, %bb.aca, %bb.acb, %bb.acc, %bb.acd, %bb.ace, %bb.acf, %bb.acg, %bb.ach, %bb.aci, %bb.ack, %bb.acl, %bb.acm, %bb.acu, %bb.acv, %bb.acw, %bb.acy, %bb.adb, %bb.adg, %bb.adh, %bb.adi, %bb.adj, %bb.adl, %bb.adm, %bb.adn, %bb.acj, %bb.acn, %bb.aco, %bb.acp, %bb.acq, %bb.acr, %bb.acs, %bb.act, %bb.acx, %bb.abn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1323, %bb.abp, %bb.abo, %bb.abs, %bb.abr, %bb.abv, %bb.abu, %bb.aby, %bb.abx, %bb.acz, %bb.adc, %bb.adf, %bb.add, %bb.ade, %bb.adp, %bb.ado, %bb.adt, %.noexc1352, %bb.adv, %bb.adx, %bb.adz, %bb.aeb, %bb.aec, %bb.aee, %bb.aed, %bb.abg, %bb.abc, %bb.aay, %bb.zf, %bb.zc
  %common.resume.op = phi { ptr, i32 } [ %i.axn, %bb.abc ], [ %i.auo, %bb.zc ], [ %i.aur, %bb.zf ], [ %i.axu, %bb.abg ], [ %i.axg, %bb.aay ], [ %i.axb, %bb.aaw ], [ %.pn1177.pn.pn, %bb.aed ], [ %eh.lpad-body1297, %.body1296 ], [ %.pn1177.pn.pn, %.invoke1901 ], [ %eh.lpad-body1301, %.body1300 ], [ %.pn1177.pn.pn, %bb.acw ], [ %.pn1177.pn.pn, %bb.acx ], [ %i.ayo, %bb.abp ], [ %.pn1181, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1323 ], [ %.pn1177.pn.pn, %bb.adz ], [ %i.ayo, %bb.abo ], [ %.pn1177.pn.pn, %bb.aeb ], [ %i.ayv, %bb.abr ], [ %.pn1177.pn.pn, %bb.acu ], [ %i.azc, %bb.abu ], [ %.pn1177.pn.pn, %bb.aec ], [ %eh.lpad-body1318, %.body1317 ], [ %.pn1177.pn.pn, %bb.acv ], [ %.pn1177.pn.pn, %.body ], [ %.pn1177.pn.pn, %bb.acy ], [ %.pn1177.pn.pn, %bb.aca ], [ %i.azj, %bb.abx ], [ %.pn1177.pn.pn, %bb.acb ], [ %.pn1177.pn.pn, %bb.adb ], [ %.pn1177.pn.pn, %bb.acc ], [ %.pn1177.pn.pn, %bb.acz ], [ %.pn1177.pn.pn, %bb.acd ], [ %.pn1177.pn.pn, %bb.adc ], [ %.pn1177.pn.pn, %bb.ace ], [ %.pn1177.pn.pn, %bb.adg ], [ %.pn1177.pn.pn, %bb.acf ], [ %.pn1177.pn.pn, %bb.adh ], [ %.pn1177.pn.pn, %bb.acg ], [ %.pn1177.pn.pn, %bb.adi ], [ %.pn1177.pn.pn, %bb.ach ], [ %.pn1177.pn.pn, %bb.adj ], [ %.pn1177.pn.pn, %bb.aci ], [ %.pn1177.pn.pn, %bb.adl ], [ %.pn1177.pn.pn, %bb.ade ], [ %.pn1177.pn.pn, %bb.adm ], [ %.pn1177.pn.pn, %bb.ack ], [ %.pn1177.pn.pn, %bb.adn ], [ %.pn1177.pn.pn, %bb.acl ], [ %.pn1177.pn.pn, %bb.add ], [ %.pn1177.pn.pn, %bb.acm ], [ %.pn1181, %bb.abn ], [ %.pn1177.pn.pn, %bb.ado ], [ %.pn1177.pn.pn, %.invoke1902 ], [ %.pn1177.pn.pn, %bb.adp ], [ %i.ayv, %bb.abs ], [ %i.azc, %bb.abv ], [ %.pn1177.pn.pn, %bb.adt ], [ %.pn1177.pn.pn, %.noexc1352 ], [ %i.azj, %bb.aby ], [ %.pn1177.pn.pn, %bb.adv ], [ %.pn1177.pn.pn, %bb.aee ], [ %.pn1177.pn.pn, %bb.adx ], [ %.pn1177.pn.pn, %.invoke1900.a ], [ %.pn1177.pn.pn, %bb.acj ], [ %.pn1177.pn.pn, %bb.acn ], [ %.pn1177.pn.pn, %bb.aco ], [ %.pn1177.pn.pn, %bb.adf ], [ %.pn1177.pn.pn, %bb.acp ], [ %.pn1177.pn.pn, %bb.acq ], [ %.pn1177.pn.pn, %bb.acr ], [ %.pn1177.pn.pn, %bb.acs ], [ %.pn1177.pn.pn, %bb.act ]
  resume { ptr, i32 } %common.resume.op, !dbg !160162

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.zb
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aun), !dbg !161522
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.ze:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.d
  %i.auq = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.auq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.zf, !dbg !161523

bb.zf:                                            ; preds = %bb.ze
  %i.aur = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecbENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.auq)
          to label %common.resume unwind label %bb.zg, !dbg !161524

bb.zg:                                            ; preds = %bb.zf
  %i.aus = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !161523
  unreachable, !dbg !161523

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.ze
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecbENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.auq), !dbg !161525
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.zh:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.d
  %i.aut = getelementptr inbounds nuw i8, ptr %2, i64 31, !dbg !161526
  %i.auu = load i8, ptr %i.aut, align 1, !dbg !161526, !range !5133, !alias.scope !160092, !noundef !4700
  %i.auv = icmp eq i8 %i.auu, -40, !dbg !161527
  br i1 %i.auv, label %bb.zi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161527, !prof !4712

bb.zi:                                            ; preds = %bb.zh
  %i.auw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.auw), !dbg !161528
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161528

bb.zj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.d
  %i.aux = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aux)
          to label %bb.zl unwind label %bb.zk, !dbg !161529

bb.zk:                                            ; preds = %bb.zj
  %i.auy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aux)
          to label %.body1296 unwind label %bb.zm, !dbg !161530

bb.zl:                                            ; preds = %bb.zj
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aux)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.aba, !dbg !161531

bb.zm:                                            ; preds = %bb.zk
  %i.auz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !161529
  unreachable, !dbg !161529

bb.zn:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.d
  %i.ava = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ava)
          to label %bb.zp unwind label %bb.zo, !dbg !161532

bb.zo:                                            ; preds = %bb.zn
  %i.avb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ava)
          to label %.body1300 unwind label %bb.zq, !dbg !161533

bb.zp:                                            ; preds = %bb.zn
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ava)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan.exit1302 unwind label %bb.abe, !dbg !161534

bb.zq:                                            ; preds = %bb.zo
  %i.avc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !161532
  unreachable, !dbg !161532

bb.zr:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_.exit, %bb.d
  %i.avd = getelementptr inbounds nuw i8, ptr %2, i64 47, !dbg !161535
  %i.ave = load i8, ptr %i.avd, align 1, !dbg !161535, !range !5133, !alias.scope !160093, !noundef !4700
  %i.avf = icmp eq i8 %i.ave, -40, !dbg !161536
  br i1 %i.avf, label %bb.zs, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1304, !dbg !161536, !prof !4712

bb.zs:                                            ; preds = %bb.zr
  %i.avg = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !160164
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1304 unwind label %bb.abi, !dbg !161537

bb.zt:                                            ; preds = %bb.xo, %bb.d
  %i.avh = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160094), !dbg !160164
  %i.avi = load ptr, ptr %i.avh, align 8, !dbg !161538, !alias.scope !160094, !noundef !4700 ; 2 uses
  %i.avj = icmp eq ptr %i.avi, null, !dbg !161538
  br i1 %i.avj, label %bb.zu, label %bb.zw, !dbg !161538

bb.zu:                                            ; preds = %bb.zt
  %i.avk = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !161538 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160095), !dbg !161538
  call void @llvm.experimental.noalias.scope.decl(metadata !160096), !dbg !161539
  call void @llvm.experimental.noalias.scope.decl(metadata !160097), !dbg !161540
  %i.avl = load ptr, ptr %i.avk, align 16, !dbg !161541, !alias.scope !160098, !nonnull !4700, !noundef !4700
  %i.avm = atomicrmw add ptr %i.avl, i64 -1 release, align 8, !dbg !161542, !noalias !160098
  %i.avn = icmp eq i64 %i.avm, 1, !dbg !161543
  br i1 %i.avn, label %bb.zv, label %.thread1716.a, !dbg !161543

bb.zv:                                            ; preds = %bb.zu
  fence acquire, !dbg !161544
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.avk) #51
          to label %.thread1716.a unwind label %bb.abo, !dbg !161545

bb.zw:                                            ; preds = %bb.zt
  %i.avo = atomicrmw add ptr %i.avi, i64 -1 release, align 8, !dbg !161546, !noalias !160099
  %i.avp = icmp eq i64 %i.avo, 1, !dbg !161547
  br i1 %i.avp, label %bb.zx, label %.thread1716.a, !dbg !161547

bb.zx:                                            ; preds = %bb.zw
  fence acquire, !dbg !161548
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTTNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1p_EEEp6OutputINtNtBO_6result6ResultB1p_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3x_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.avh) #51
          to label %.thread1716.a unwind label %bb.abo, !dbg !161549

bb.zy:                                            ; preds = %bb.xp, %bb.d
  %i.avq = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160100), !dbg !160164
  %i.avr = load ptr, ptr %i.avq, align 8, !dbg !161550, !alias.scope !160100, !noundef !4700 ; 2 uses
  %i.avs = icmp eq ptr %i.avr, null, !dbg !161550
  br i1 %i.avs, label %bb.zz, label %bb.aab, !dbg !161550

bb.zz:                                            ; preds = %bb.zy
  %i.avt = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !161550 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160101), !dbg !161550
  call void @llvm.experimental.noalias.scope.decl(metadata !160102), !dbg !161551
  call void @llvm.experimental.noalias.scope.decl(metadata !160103), !dbg !161552
  %i.avu = load ptr, ptr %i.avt, align 16, !dbg !161553, !alias.scope !160104, !nonnull !4700, !noundef !4700
  %i.avv = atomicrmw add ptr %i.avu, i64 -1 release, align 8, !dbg !161554, !noalias !160104
  %i.avw = icmp eq i64 %i.avv, 1, !dbg !161555
  br i1 %i.avw, label %bb.aaa, label %.thread1718.a, !dbg !161555

bb.aaa:                                           ; preds = %bb.zz
  fence acquire, !dbg !161556
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.avt) #51
          to label %.thread1718.a unwind label %bb.abr, !dbg !161557

bb.aab:                                           ; preds = %bb.zy
  %i.avx = atomicrmw add ptr %i.avr, i64 -1 release, align 8, !dbg !161558, !noalias !160105
  %i.avy = icmp eq i64 %i.avx, 1, !dbg !161559
  br i1 %i.avy, label %bb.aac, label %.thread1718.a, !dbg !161559

bb.aac:                                           ; preds = %bb.aab
  fence acquire, !dbg !161560
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTTNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1p_EEEp6OutputINtNtBO_6result6ResultB1p_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3x_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.avq) #51
          to label %.thread1718.a unwind label %bb.abr, !dbg !161561

bb.aad:                                           ; preds = %bb.xq, %bb.d
  %i.avz = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160106), !dbg !160164
  %i.awa = load ptr, ptr %i.avz, align 8, !dbg !161562, !alias.scope !160106, !noundef !4700 ; 2 uses
  %i.awb = icmp eq ptr %i.awa, null, !dbg !161562
  br i1 %i.awb, label %bb.aae, label %bb.aag, !dbg !161562

bb.aae:                                           ; preds = %bb.aad
  %i.awc = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !161562 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160107), !dbg !161562
  call void @llvm.experimental.noalias.scope.decl(metadata !160108), !dbg !161563
  call void @llvm.experimental.noalias.scope.decl(metadata !160109), !dbg !161564
  %i.awd = load ptr, ptr %i.awc, align 16, !dbg !161565, !alias.scope !160110, !nonnull !4700, !noundef !4700
  %i.awe = atomicrmw add ptr %i.awd, i64 -1 release, align 8, !dbg !161566, !noalias !160110
  %i.awf = icmp eq i64 %i.awe, 1, !dbg !161567
  br i1 %i.awf, label %bb.aaf, label %.thread1720.a, !dbg !161567

bb.aaf:                                           ; preds = %bb.aae
  fence acquire, !dbg !161568
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.awc) #51
          to label %.thread1720.a unwind label %bb.abu, !dbg !161569

bb.aag:                                           ; preds = %bb.aad
  %i.awg = atomicrmw add ptr %i.awa, i64 -1 release, align 8, !dbg !161570, !noalias !160111
  %i.awh = icmp eq i64 %i.awg, 1, !dbg !161571
  br i1 %i.awh, label %bb.aah, label %.thread1720.a, !dbg !161571

bb.aah:                                           ; preds = %bb.aag
  fence acquire, !dbg !161572
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTTNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1p_EEEp6OutputINtNtBO_6result6ResultB1p_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3x_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.avz) #51
          to label %.thread1720.a unwind label %bb.abu, !dbg !161573

bb.aai:                                           ; preds = %bb.xr, %bb.d
  %i.awi = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160112), !dbg !160164
  %i.awj = load ptr, ptr %i.awi, align 8, !dbg !161574, !alias.scope !160112, !noundef !4700 ; 2 uses
  %i.awk = icmp eq ptr %i.awj, null, !dbg !161574
  br i1 %i.awk, label %bb.aaj, label %bb.aal, !dbg !161574

bb.aaj:                                           ; preds = %bb.aai
  %i.awl = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !161574 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160113), !dbg !161574
  call void @llvm.experimental.noalias.scope.decl(metadata !160114), !dbg !161575
  call void @llvm.experimental.noalias.scope.decl(metadata !160115), !dbg !161576
  %i.awm = load ptr, ptr %i.awl, align 16, !dbg !161577, !alias.scope !160116, !nonnull !4700, !noundef !4700
  %i.awn = atomicrmw add ptr %i.awm, i64 -1 release, align 8, !dbg !161578, !noalias !160116
  %i.awo = icmp eq i64 %i.awn, 1, !dbg !161579
  br i1 %i.awo, label %bb.aak, label %.thread1718, !dbg !161579

bb.aak:                                           ; preds = %bb.aaj
  fence acquire, !dbg !161580
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.awl) #51
          to label %.thread1718 unwind label %bb.abx, !dbg !161581

bb.aal:                                           ; preds = %bb.aai
  %i.awp = atomicrmw add ptr %i.awj, i64 -1 release, align 8, !dbg !161582, !noalias !160117
  %i.awq = icmp eq i64 %i.awp, 1, !dbg !161583
  br i1 %i.awq, label %bb.aam, label %.thread1718, !dbg !161583

bb.aam:                                           ; preds = %bb.aal
  fence acquire, !dbg !161584
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTTNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1p_EEEp6OutputINtNtBO_6result6ResultB1p_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3x_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.awi) #51
          to label %.thread1718 unwind label %bb.abx, !dbg !161585

bb.aan:                                           ; preds = %bb.xs, %bb.d
  %i.awr = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164 ; 2 uses
  %i.aws = load i8, ptr %i.awr, align 16, !dbg !161586, !range !5256, !alias.scope !160118, !noundef !4700
  %i.awt = icmp eq i8 %i.aws, 39, !dbg !161586
  br i1 %i.awt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.aao, !dbg !161586

bb.aao:                                           ; preds = %bb.aan
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.awr), !dbg !161586, !inline_history !1954
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161586

bb.aap:                                           ; preds = %bb.xt, %bb.d
  %i.awu = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164 ; 2 uses
  %i.awv = load i8, ptr %i.awu, align 16, !dbg !161587, !range !5258, !alias.scope !160119, !noundef !4700
  %i.aww = icmp eq i8 %i.awv, 31, !dbg !161587
  br i1 %i.aww, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.aaq, !dbg !161587

bb.aaq:                                           ; preds = %bb.aap
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.awu), !dbg !161587
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161587

bb.aar:                                           ; preds = %bb.xu, %bb.d
  %i.awx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr10row_encode18RowEncodingVariantEBQ_(ptr noalias noundef align 8 dereferenceable(56) %i.awx), !dbg !160164
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.aas:                                           ; preds = %bb.xv, %bb.d
  %i.awy = getelementptr inbounds nuw i8, ptr %2, i64 64, !dbg !160164 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1B_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.awy)
          to label %bb.aau unwind label %bb.aat, !dbg !161588

bb.aat:                                           ; preds = %bb.aas
  %i.awz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.awy)
          to label %.body1317 unwind label %bb.aav, !dbg !161589

bb.aau:                                           ; preds = %bb.aas
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.awy)
          to label %.thread1720 unwind label %.thread1722, !dbg !161590

bb.aav:                                           ; preds = %bb.aat
  %i.axa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !161588
  unreachable, !dbg !161588

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.xh, %bb.er, %bb.fn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit, %bb.ie, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit, %bb.in, %bb.im, %bb.im, %bb.im, %bb.im, %bb.im, %bb.lh, %bb.md, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.pr, %bb.pp, %bb.pl, %bb.sd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a, %bb.su, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278, %bb.sz, %bb.te, %bb.tj, %bb.to, %bb.vv, %bb.ua, %bb.we, %bb.wj, %bb.hk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread, %bb.jd, %bb.jc, %bb.jx, %bb.jw, %bb.nm, %bb.ob, %.thread1595, %.thread1692, %.thread1700.thread
  %.sroa.0740.2.ph = phi i1 [ true, %bb.wj ], [ true, %bb.we ], [ true, %bb.ua ], [ true, %bb.vv ], [ true, %bb.to ], [ true, %bb.tj ], [ true, %bb.te ], [ true, %bb.sz ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ true, %bb.su ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ true, %bb.sd ], [ true, %bb.pl ], [ true, %bb.pp ], [ true, %bb.pr ], [ true, %bb.nm ], [ true, %bb.jw ], [ true, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.md ], [ true, %bb.lh ], [ true, %bb.jc ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.in ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ true, %bb.ie ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0740.3.ph, %bb.xh ], [ true, %bb.fn ], [ true, %bb.er ], [ true, %.thread1692 ], [ true, %bb.hk ], [ true, %.thread1700.thread ], [ true, %bb.jd ], [ true, %bb.jx ], [ true, %bb.ob ], [ true, %.thread1595 ], [ true, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0742.3.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0742.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 0, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0742.4.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0744.3.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0744.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0744.4.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0746.3.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0746.6.ph, %bb.xh ], [ 0, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0746.4.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0748.2.ph = phi i1 [ true, %bb.wj ], [ true, %bb.we ], [ true, %bb.ua ], [ true, %bb.vv ], [ true, %bb.to ], [ true, %bb.tj ], [ true, %bb.te ], [ true, %bb.sz ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ true, %bb.su ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ true, %bb.sd ], [ true, %bb.pl ], [ true, %bb.pp ], [ true, %bb.pr ], [ true, %bb.nm ], [ true, %bb.jw ], [ true, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.md ], [ true, %bb.lh ], [ true, %bb.jc ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.in ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ true, %bb.ie ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0748.3.ph, %bb.xh ], [ true, %bb.fn ], [ true, %bb.er ], [ true, %.thread1692 ], [ true, %bb.hk ], [ true, %.thread1700.thread ], [ true, %bb.jd ], [ true, %bb.jx ], [ true, %bb.ob ], [ true, %.thread1595 ], [ true, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0750.2.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 0, %bb.ie ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0750.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 0, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0750.3.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0752.2.ph = phi i1 [ true, %bb.wj ], [ true, %bb.we ], [ true, %bb.ua ], [ true, %bb.vv ], [ true, %bb.to ], [ true, %bb.tj ], [ true, %bb.te ], [ true, %bb.sz ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ true, %bb.su ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ true, %bb.sd ], [ true, %bb.pl ], [ true, %bb.pp ], [ true, %bb.pr ], [ true, %bb.nm ], [ true, %bb.jw ], [ true, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.md ], [ true, %bb.lh ], [ true, %bb.jc ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ false, %bb.im ], [ false, %bb.im ], [ false, %bb.im ], [ false, %bb.im ], [ false, %bb.im ], [ false, %bb.in ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ true, %bb.ie ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0752.4.ph, %bb.xh ], [ true, %bb.fn ], [ true, %bb.er ], [ true, %.thread1692 ], [ true, %bb.hk ], [ true, %.thread1700.thread ], [ true, %bb.jd ], [ true, %bb.jx ], [ true, %bb.ob ], [ true, %.thread1595 ], [ %.sroa.0752.3.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0754.2.ph = phi i1 [ true, %bb.wj ], [ true, %bb.we ], [ true, %bb.ua ], [ true, %bb.vv ], [ true, %bb.to ], [ true, %bb.tj ], [ true, %bb.te ], [ true, %bb.sz ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ true, %bb.su ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ true, %bb.sd ], [ true, %bb.pl ], [ true, %bb.pp ], [ true, %bb.pr ], [ true, %bb.nm ], [ true, %bb.jw ], [ true, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.md ], [ true, %bb.lh ], [ true, %bb.jc ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.in ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ true, %bb.ie ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0754.3.ph, %bb.xh ], [ true, %bb.fn ], [ true, %bb.er ], [ true, %.thread1692 ], [ true, %bb.hk ], [ true, %.thread1700.thread ], [ true, %bb.jd ], [ true, %bb.jx ], [ true, %bb.ob ], [ true, %.thread1595 ], [ true, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0756.2.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 0, %bb.nm ], [ 1, %bb.jw ], [ 0, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 0, %bb.md ], [ 0, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0756.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 0, %bb.ob ], [ 0, %.thread1595 ], [ %.sroa.0756.3.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0761.2.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0761.3.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ 1, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0763.2.ph = phi i1 [ true, %bb.wj ], [ true, %bb.we ], [ true, %bb.ua ], [ true, %bb.vv ], [ true, %bb.to ], [ true, %bb.tj ], [ true, %bb.te ], [ true, %bb.sz ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ true, %bb.su ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ true, %bb.sd ], [ true, %bb.pl ], [ true, %bb.pp ], [ true, %bb.pr ], [ true, %bb.nm ], [ true, %bb.jw ], [ true, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.md ], [ true, %bb.lh ], [ true, %bb.jc ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.in ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ true, %bb.ie ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0763.3.ph, %bb.xh ], [ true, %bb.fn ], [ true, %bb.er ], [ true, %.thread1692 ], [ true, %bb.hk ], [ true, %.thread1700.thread ], [ true, %bb.jd ], [ true, %bb.jx ], [ true, %bb.ob ], [ true, %.thread1595 ], [ true, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0765.2.ph = phi i1 [ true, %bb.wj ], [ true, %bb.we ], [ true, %bb.ua ], [ true, %bb.vv ], [ true, %bb.to ], [ true, %bb.tj ], [ true, %bb.te ], [ true, %bb.sz ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ true, %bb.su ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ true, %bb.sd ], [ true, %bb.pl ], [ true, %bb.pp ], [ true, %bb.pr ], [ true, %bb.nm ], [ true, %bb.jw ], [ true, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.md ], [ true, %bb.lh ], [ true, %bb.jc ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.in ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ true, %bb.ie ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0765.3.ph, %bb.xh ], [ true, %bb.fn ], [ true, %bb.er ], [ true, %.thread1692 ], [ true, %bb.hk ], [ true, %.thread1700.thread ], [ true, %bb.jd ], [ true, %bb.jx ], [ true, %bb.ob ], [ true, %.thread1595 ], [ true, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0767.2.ph = phi i1 [ true, %bb.wj ], [ true, %bb.we ], [ true, %bb.ua ], [ true, %bb.vv ], [ true, %bb.to ], [ true, %bb.tj ], [ true, %bb.te ], [ true, %bb.sz ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ true, %bb.su ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ true, %bb.sd ], [ true, %bb.pl ], [ true, %bb.pp ], [ true, %bb.pr ], [ true, %bb.nm ], [ true, %bb.jw ], [ true, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.md ], [ true, %bb.lh ], [ true, %bb.jc ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.im ], [ true, %bb.in ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ true, %bb.ie ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0767.3.ph, %bb.xh ], [ true, %bb.fn ], [ true, %bb.er ], [ true, %.thread1692 ], [ true, %bb.hk ], [ true, %.thread1700.thread ], [ true, %bb.jd ], [ true, %bb.jx ], [ true, %bb.ob ], [ true, %.thread1595 ], [ true, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0772.2.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0772.3.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ 1, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0777.2.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0777.3.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ 1, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0785.2.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0785.3.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ 1, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0790.3.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 0, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0790.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0790.4.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0795.3.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 0, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0795.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0795.4.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0800.3.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 0, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0800.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0800.4.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0805.3.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 0, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0805.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0805.4.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0807.3.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0807.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0807.4.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0809.3.ph = phi i8 [ 1, %bb.wj ], [ 1, %bb.we ], [ 0, %bb.ua ], [ 0, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0809.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 0, %.thread1692 ], [ 1, %bb.hk ], [ 0, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0809.4.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0811.3.ph = phi i8 [ 1, %bb.wj ], [ 0, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0811.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0811.4.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0816.3.ph = phi i8 [ 0, %bb.wj ], [ 1, %bb.we ], [ 1, %bb.ua ], [ 1, %bb.vv ], [ 1, %bb.to ], [ 1, %bb.tj ], [ 1, %bb.te ], [ 1, %bb.sz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ 1, %bb.su ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ 1, %bb.sd ], [ 1, %bb.pl ], [ 1, %bb.pp ], [ 1, %bb.pr ], [ 1, %bb.nm ], [ 1, %bb.jw ], [ 1, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.md ], [ 1, %bb.lh ], [ 1, %bb.jc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ 1, %bb.ie ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.0816.6.ph, %bb.xh ], [ 1, %bb.fn ], [ 1, %bb.er ], [ 1, %.thread1692 ], [ 1, %bb.hk ], [ 1, %.thread1700.thread ], [ 1, %bb.jd ], [ 1, %bb.jx ], [ 1, %bb.ob ], [ 1, %.thread1595 ], [ %.sroa.0816.4.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn1177.pn.ph = phi { ptr, i32 } [ %i.aql, %bb.wj ], [ %i.aqg, %bb.we ], [ %i.aog, %bb.ua ], [ %i.aog, %bb.vv ], [ %i.ank, %bb.to ], [ %i.anc, %bb.tj ], [ %i.amu, %bb.te ], [ %i.amm, %bb.sz ], [ %.pn11391679, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1278 ], [ %i.amf, %bb.su ], [ %.pn11421667, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1274.a ], [ %i.alc, %bb.sd ], [ %i.ahj, %bb.pl ], [ %i.ahn, %bb.pp ], [ %.pn1151.pn.pn, %bb.pr ], [ %lpad.thr_comm.split-lp, %bb.nm ], [ %i.yg, %bb.jw ], [ %lpad.loopexit.split-lp1978, %.loopexit.split-lp1733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.abk, %bb.md ], [ %i.aaj, %bb.lh ], [ %i.ww, %bb.jc ], [ %i.ve, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit.thread ], [ %i.vv, %bb.im ], [ %i.vv, %bb.im ], [ %i.vv, %bb.im ], [ %i.vv, %bb.im ], [ %i.vv, %bb.im ], [ %i.vv, %bb.in ], [ %.pn1168, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15StrptimeOptionsEBM_.exit ], [ %.pn1168, %bb.ie ], [ %.pn1172, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEECsfcROwRM8ZtH_11polars_plan.exit ], [ %.pn1177.ph, %bb.xh ], [ %i.ss, %bb.fn ], [ %i.ru, %bb.er ], [ %i.app, %.thread1692 ], [ %.pn1172, %bb.hk ], [ %.pn.pn, %.thread1700.thread ], [ %i.ww, %bb.jd ], [ %i.yg, %bb.jx ], [ %.pn11581598, %bb.ob ], [ %.pn11581598, %.thread1595 ], [ %lpad.loopexit.split-lp1730, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1975, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.eo) #45
          to label %.body unwind label %bb.ew, !dbg !160172

bb.aaw:                                           ; preds = %bb.za, %bb.yy
  %i.axb = landingpad { ptr, i32 }
          cleanup
  %i.axc = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops14rolling_window25RollingOptionsFixedWindowECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(72) %i.axc) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionEBO_.exit: ; preds = %bb.yz, %bb.yx, %bb.yv, %bb.yy, %bb.za
  %i.axd = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !161591 ; 4 uses
  %i.axe = load i64, ptr %i.axd, align 8, !dbg !161592, !range !4743, !alias.scope !160120, !noundef !4700
  %i.axf = icmp eq i64 %i.axe, -9223372036854775808, !dbg !161592
  br i1 %i.axf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.aax, !dbg !161592

bb.aax:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionEBO_.exit
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axd)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan.exit.i.i unwind label %bb.aay, !dbg !161593

bb.aay:                                           ; preds = %bb.aax
  %i.axg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axd)
          to label %common.resume unwind label %bb.aaz, !dbg !161594

bb.aaz:                                           ; preds = %bb.aay
  %i.axh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !161593
  unreachable, !dbg !161593

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.aax
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecdENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axd), !dbg !161595
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161592

bb.aba:                                           ; preds = %bb.zl
  %i.axi = landingpad { ptr, i32 }
          cleanup
  br label %.body1296

.body1296:                                        ; preds = %bb.zk, %bb.aba
  %eh.lpad-body1297 = phi { ptr, i32 } [ %i.axi, %bb.aba ], [ %i.auy, %bb.zk ]
  %i.axj = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.axj) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.zl
  %i.axk = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164 ; 4 uses
  %i.axl = load i64, ptr %i.axk, align 8, !dbg !161596, !range !4743, !alias.scope !160121, !noundef !4700
  %i.axm = icmp eq i64 %i.axl, -9223372036854775808, !dbg !161596
  br i1 %i.axm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.abb, !dbg !161596

bb.abb:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axk)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.abc, !dbg !161597

bb.abc:                                           ; preds = %bb.abb
  %i.axn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axk)
          to label %common.resume unwind label %bb.abd, !dbg !161598

bb.abd:                                           ; preds = %bb.abc
  %i.axo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !161597
  unreachable, !dbg !161597

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.abb
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axk), !dbg !161599
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161596

bb.abe:                                           ; preds = %bb.zp
  %i.axp = landingpad { ptr, i32 }
          cleanup
  br label %.body1300

.body1300:                                        ; preds = %bb.zo, %bb.abe
  %eh.lpad-body1301 = phi { ptr, i32 } [ %i.axp, %bb.abe ], [ %i.avb, %bb.zo ]
  %i.axq = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.axq) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan.exit1302: ; preds = %bb.zp
  %i.axr = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164 ; 4 uses
  %i.axs = load i64, ptr %i.axr, align 8, !dbg !161600, !range !4743, !alias.scope !160122, !noundef !4700
  %i.axt = icmp eq i64 %i.axs, -9223372036854775808, !dbg !161600
  br i1 %i.axt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.abf, !dbg !161600

bb.abf:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan.exit1302
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axr)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit.i1320 unwind label %bb.abg, !dbg !161601

bb.abg:                                           ; preds = %bb.abf
  %i.axu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axr)
          to label %common.resume unwind label %bb.abh, !dbg !161602

bb.abh:                                           ; preds = %bb.abg
  %i.axv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !161601
  unreachable, !dbg !161601

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit.i1320: ; preds = %bb.abf
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.axr), !dbg !161603
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161600

bb.abi:                                           ; preds = %bb.zs
  %i.axw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %2, i64 71, !dbg !161604
  %i.axy = load i8, ptr %i.axx, align 1, !dbg !161604, !range !5133, !alias.scope !160123, !noundef !4700
  %i.axz = icmp eq i8 %i.axy, -40, !dbg !161605
  br i1 %i.axz, label %bb.abj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1323, !dbg !161605, !prof !4712

bb.abj:                                           ; preds = %bb.abi
  %i.aya = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !160164
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aya)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1323 unwind label %bb.ew, !dbg !161606

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1304: ; preds = %bb.zr, %bb.zs
  %i.ayb = getelementptr inbounds nuw i8, ptr %2, i64 71, !dbg !161607
  %i.ayc = load i8, ptr %i.ayb, align 1, !dbg !161607, !range !5133, !alias.scope !160124, !noundef !4700
  %i.ayd = icmp eq i8 %i.ayc, -40, !dbg !161608
  br i1 %i.ayd, label %bb.abk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1325, !dbg !161608, !prof !4712

bb.abk:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1304
  %i.aye = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !160164
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aye)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1325 unwind label %bb.abl, !dbg !161609

bb.abl:                                           ; preds = %bb.abk
  %i.ayf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1323

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1325: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1304, %bb.abk
  %i.ayg = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160125), !dbg !160164
  call void @llvm.experimental.noalias.scope.decl(metadata !160126), !dbg !161610
  %i.ayh = load ptr, ptr %i.ayg, align 8, !dbg !161611, !alias.scope !160127, !nonnull !4700, !noundef !4700
  %i.ayi = atomicrmw add ptr %i.ayh, i64 -1 release, align 8, !dbg !161612, !noalias !160127
  %i.ayj = icmp eq i64 %i.ayi, 1, !dbg !161613
  br i1 %i.ayj, label %bb.abm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161613

bb.abm:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1325
  fence acquire, !dbg !161614
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcShE9drop_slowCsbm5zPlkZccl_4pyo3(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ayg) #51, !dbg !161615
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161615

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1323: ; preds = %bb.abi, %bb.abj, %bb.abl
  %.pn1181 = phi { ptr, i32 } [ %i.ayf, %bb.abl ], [ %i.axw, %bb.abj ], [ %i.axw, %bb.abi ] ; 2 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160128), !dbg !160164
  call void @llvm.experimental.noalias.scope.decl(metadata !160129), !dbg !161616
  %i.ayl = load ptr, ptr %i.ayk, align 8, !dbg !161617, !alias.scope !160130, !nonnull !4700, !noundef !4700
  %i.aym = atomicrmw add ptr %i.ayl, i64 -1 release, align 8, !dbg !161618, !noalias !160130
  %i.ayn = icmp eq i64 %i.aym, 1, !dbg !161619
  br i1 %i.ayn, label %bb.abn, label %common.resume, !dbg !161619

bb.abn:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit1323
  fence acquire, !dbg !161620
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcShE9drop_slowCsbm5zPlkZccl_4pyo3(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ayk) #51
          to label %common.resume unwind label %bb.ew, !dbg !161621

bb.abo:                                           ; preds = %bb.zx, %bb.zv
  %i.ayo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164 ; 2 uses
  %i.ayq = load i8, ptr %i.ayp, align 16, !dbg !161622, !range !5256, !alias.scope !160131, !noundef !4700
  %i.ayr = icmp eq i8 %i.ayq, 39, !dbg !161622
  br i1 %i.ayr, label %common.resume, label %bb.abp, !dbg !161622

bb.abp:                                           ; preds = %bb.abo
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.ayp)
          to label %common.resume unwind label %bb.ew, !dbg !161622, !inline_history !1954

.thread1716.a:                                    ; preds = %bb.zx, %bb.zv, %bb.zu, %bb.zw
  %i.ays = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164 ; 2 uses
  %i.ayt = load i8, ptr %i.ays, align 16, !dbg !161623, !range !5256, !alias.scope !160132, !noundef !4700
  %i.ayu = icmp eq i8 %i.ayt, 39, !dbg !161623
  br i1 %i.ayu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.abq, !dbg !161623

bb.abq:                                           ; preds = %.thread1716.a
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.ays), !dbg !161623, !inline_history !1954
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161623

bb.abr:                                           ; preds = %bb.aac, %bb.aaa
  %i.ayv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164 ; 2 uses
  %i.ayx = load i8, ptr %i.ayw, align 16, !dbg !161624, !range !5256, !alias.scope !160133, !noundef !4700
  %i.ayy = icmp eq i8 %i.ayx, 39, !dbg !161624
  br i1 %i.ayy, label %common.resume, label %bb.abs, !dbg !161624

bb.abs:                                           ; preds = %bb.abr
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.ayw)
          to label %common.resume unwind label %bb.ew, !dbg !161624, !inline_history !1954

.thread1718.a:                                    ; preds = %bb.aac, %bb.aaa, %bb.zz, %bb.aab
  %i.ayz = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164 ; 2 uses
  %i.aza = load i8, ptr %i.ayz, align 16, !dbg !161625, !range !5256, !alias.scope !160134, !noundef !4700
  %i.azb = icmp eq i8 %i.aza, 39, !dbg !161625
  br i1 %i.azb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.abt, !dbg !161625

bb.abt:                                           ; preds = %.thread1718.a
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.ayz), !dbg !161625, !inline_history !1954
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161625

bb.abu:                                           ; preds = %bb.aah, %bb.aaf
  %i.azc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164 ; 2 uses
  %i.aze = load i8, ptr %i.azd, align 16, !dbg !161626, !range !5256, !alias.scope !160135, !noundef !4700
  %i.azf = icmp eq i8 %i.aze, 39, !dbg !161626
  br i1 %i.azf, label %common.resume, label %bb.abv, !dbg !161626

bb.abv:                                           ; preds = %bb.abu
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.azd)
          to label %common.resume unwind label %bb.ew, !dbg !161626, !inline_history !1954

.thread1720.a:                                    ; preds = %bb.aah, %bb.aaf, %bb.aae, %bb.aag
  %i.azg = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164 ; 2 uses
  %i.azh = load i8, ptr %i.azg, align 16, !dbg !161627, !range !5256, !alias.scope !160136, !noundef !4700
  %i.azi = icmp eq i8 %i.azh, 39, !dbg !161627
  br i1 %i.azi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.abw, !dbg !161627

bb.abw:                                           ; preds = %.thread1720.a
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.azg), !dbg !161627, !inline_history !1954
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161627

bb.abx:                                           ; preds = %bb.aam, %bb.aak
  %i.azj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164 ; 2 uses
  %i.azl = load i8, ptr %i.azk, align 16, !dbg !161628, !range !5256, !alias.scope !160137, !noundef !4700
  %i.azm = icmp eq i8 %i.azl, 39, !dbg !161628
  br i1 %i.azm, label %common.resume, label %bb.aby, !dbg !161628

bb.aby:                                           ; preds = %bb.abx
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.azk)
          to label %common.resume unwind label %bb.ew, !dbg !161628, !inline_history !1954

.thread1718:                                      ; preds = %bb.aam, %bb.aak, %bb.aaj, %bb.aal
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164 ; 2 uses
  %5 = load i8, ptr %4, align 16, !dbg !161629, !range !5256, !alias.scope !160138, !noundef !4700
  %6 = icmp eq i8 %5, 39, !dbg !161629
  br i1 %6, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, label %bb.abz, !dbg !161629

bb.abz:                                           ; preds = %.thread1718
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(48) %4), !dbg !161629, !inline_history !1954
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !161629

.thread1722:                                      ; preds = %bb.aau
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %.body1317

.body1317:                                        ; preds = %bb.aat, %.thread1722
  %eh.lpad-body1318 = phi { ptr, i32 } [ %7, %.thread1722 ], [ %i.awz, %bb.aat ]
  %i.azn = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr10row_encode18RowEncodingVariantEBQ_(ptr noalias noundef align 8 dereferenceable(56) %i.azn) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

.thread1720:                                      ; preds = %bb.aau
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr10row_encode18RowEncodingVariantEBQ_(ptr noalias noundef align 8 dereferenceable(56) %8), !dbg !160164
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_.exit, !dbg !160164

bb.aca:                                           ; preds = %.body
  br i1 %.sroa.0740.0, label %bb.acy, label %common.resume, !dbg !160164

bb.acb:                                           ; preds = %.body
  %i.azo = trunc nuw i8 %.sroa.0742.0 to i1, !dbg !160164
  br i1 %i.azo, label %bb.acz, label %common.resume, !dbg !160164

bb.acc:                                           ; preds = %.body
  %i.azp = trunc nuw i8 %.sroa.0744.0 to i1, !dbg !160164
  br i1 %i.azp, label %bb.adb, label %common.resume, !dbg !160164

bb.acd:                                           ; preds = %.body
  %i.azq = trunc nuw i8 %.sroa.0746.0 to i1, !dbg !160164
  br i1 %i.azq, label %bb.adc, label %common.resume, !dbg !160164

bb.ace:                                           ; preds = %.body
  br i1 %.sroa.0748.0, label %bb.add, label %common.resume, !dbg !160164

bb.acf:                                           ; preds = %.body
  %i.azr = trunc nuw i8 %.sroa.0750.0 to i1, !dbg !160164
  br i1 %i.azr, label %bb.adg, label %common.resume, !dbg !160164

bb.acg:                                           ; preds = %.body
  br i1 %.sroa.0752.0, label %bb.adh, label %common.resume, !dbg !160164

bb.ach:                                           ; preds = %.body
  br i1 %.sroa.0754.0, label %bb.adi, label %common.resume, !dbg !160164

bb.aci:                                           ; preds = %.body
  %i.azs = trunc nuw i8 %.sroa.0756.0 to i1, !dbg !160164
  br i1 %i.azs, label %bb.adj, label %common.resume, !dbg !160164

bb.acj:                                           ; preds = %.body
  %cond = icmp eq i8 %.sroa.0761.0, 0, !dbg !160164
  br i1 %cond, label %common.resume, label %bb.adk, !dbg !160164

bb.ack:                                           ; preds = %.body
  br i1 %.sroa.0763.0, label %bb.adm, label %common.resume, !dbg !160164

bb.acl:                                           ; preds = %.body
  br i1 %.sroa.0765.0, label %bb.adn, label %common.resume, !dbg !160164

bb.acm:                                           ; preds = %.body
  br i1 %.sroa.0767.0, label %bb.ado, label %common.resume, !dbg !160164

bb.acn:                                           ; preds = %.body
  %cond1185.a = icmp eq i8 %.sroa.0772.0, 0, !dbg !160164
  br i1 %cond1185.a, label %common.resume, label %.invoke1925, !dbg !160164

bb.aco:                                           ; preds = %.body
  %cond1186.a = icmp eq i8 %.sroa.0777.0, 0, !dbg !160164
  br i1 %cond1186.a, label %common.resume, label %.invoke1925, !dbg !160164

bb.acp:                                           ; preds = %.body
  %cond1187.a = icmp eq i8 %.sroa.0785.0, 0, !dbg !160164
  br i1 %cond1187.a, label %common.resume, label %bb.adq, !dbg !160164

bb.acq:                                           ; preds = %.body
  %cond1188.a = icmp eq i8 %.sroa.0790.0, 0, !dbg !160164
  br i1 %cond1188.a, label %common.resume, label %bb.adu, !dbg !160164

bb.acr:                                           ; preds = %.body
  %cond1189.a = icmp eq i8 %.sroa.0795.0, 0, !dbg !160164
  br i1 %cond1189.a, label %common.resume, label %bb.adw, !dbg !160164

bb.acs:                                           ; preds = %.body
  %cond1190.a = icmp eq i8 %.sroa.0800.0, 0, !dbg !160164
  br i1 %cond1190.a, label %common.resume, label %bb.ady, !dbg !160164

bb.act:                                           ; preds = %.body
  %cond1191 = icmp eq i8 %.sroa.0805.0, 0, !dbg !160164
  br i1 %cond1191, label %common.resume, label %bb.aea, !dbg !160164

bb.acu:                                           ; preds = %.body
  %i.azt = trunc nuw i8 %.sroa.0807.0 to i1, !dbg !160164
  br i1 %i.azt, label %bb.aec, label %common.resume, !dbg !160164

bb.acv:                                           ; preds = %.body
  %i.azu = trunc nuw i8 %.sroa.0809.0 to i1, !dbg !160164
  br i1 %i.azu, label %bb.aed, label %common.resume, !dbg !160164

bb.acw:                                           ; preds = %.body
  %i.azv = trunc nuw i8 %.sroa.0811.0 to i1, !dbg !160164
  br i1 %i.azv, label %.invoke1901, label %common.resume, !dbg !160164

bb.acx:                                           ; preds = %.body
  %cond1192 = icmp eq i8 %.sroa.0816.0, 0, !dbg !160164
  br i1 %cond1192, label %common.resume, label %bb.aef, !dbg !160164

bb.acy:                                           ; preds = %bb.aca
  %i.azw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionEBO_(ptr noalias noundef align 8 dereferenceable(24) %i.azw) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

bb.acz:                                           ; preds = %bb.acb
  %i.azx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164
  %i.azy = load i8, ptr %i.azx, align 16, !dbg !161630, !range !5255, !alias.scope !160139, !noundef !4700
  %i.azz = icmp eq i8 %i.azy, 8, !dbg !161630
  br i1 %i.azz, label %bb.ada, label %common.resume, !dbg !161630

bb.ada:                                           ; preds = %bb.acz
  %i.baa = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !161630
  br label %.invoke1900.a, !dbg !161630

bb.adb:                                           ; preds = %bb.acc
  %i.bab = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr3cat19CategoricalFunctionEBO_(ptr noalias noundef align 16 dereferenceable(64) %i.bab) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

bb.adc:                                           ; preds = %bb.acd
  %i.bac = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164 ; 2 uses
  %i.bad = load i8, ptr %i.bac, align 16, !dbg !161631, !range !5256, !alias.scope !160140, !noundef !4700
  %.not.i1342 = icmp eq i8 %i.bad, 39, !dbg !161631
  br i1 %.not.i1342, label %common.resume, label %.invoke1900.a, !dbg !161631

bb.add:                                           ; preds = %bb.ace
  %i.bae = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  call void @llvm.experimental.noalias.scope.decl(metadata !160141), !dbg !160164
  %i.baf = load i64, ptr %i.bae, align 8, !dbg !161632, !range !5257, !alias.scope !160141, !noundef !4700 ; 2 uses
  %i.bag = icmp ne i64 %i.baf, 5, !dbg !161632
  call void @llvm.assume(i1 %i.bag), !dbg !161632
  %switch.i1345 = icmp samesign ult i64 %i.baf, 27, !dbg !161632
  br i1 %switch.i1345, label %common.resume, label %bb.ade, !dbg !161632

bb.ade:                                           ; preds = %bb.add
  %i.bah = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !161632 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160142), !dbg !161632
  call void @llvm.experimental.noalias.scope.decl(metadata !160143), !dbg !161633
  %i.bai = load ptr, ptr %i.bah, align 16, !dbg !161634, !alias.scope !160144, !nonnull !4700, !noundef !4700
  %i.baj = atomicrmw add ptr %i.bai, i64 -1 release, align 8, !dbg !161635, !noalias !160144
  %i.bak = icmp eq i64 %i.baj, 1, !dbg !161636
  br i1 %i.bak, label %bb.adf, label %common.resume, !dbg !161636

bb.adf:                                           ; preds = %bb.ade
  fence acquire, !dbg !161637
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bah) #51
          to label %common.resume unwind label %bb.ew, !dbg !161638

bb.adg:                                           ; preds = %bb.acf
  %i.bal = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7strings14StringFunctionEBO_(ptr noalias noundef align 16 dereferenceable(96) %i.bal) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

bb.adh:                                           ; preds = %bb.acg
  %i.bam = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7struct_14StructFunctionEBO_(ptr noalias noundef align 8 dereferenceable(32) %i.bam) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

bb.adi:                                           ; preds = %bb.ach
  %i.ban = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr8datetime16TemporalFunctionEBO_(ptr noalias noundef align 8 dereferenceable(32) %i.ban) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

bb.adj:                                           ; preds = %bb.aci
  %i.bao = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5range13RangeFunctionEBO_(ptr noalias noundef align 16 dereferenceable(80) %i.bao) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

bb.adk:                                           ; preds = %bb.acj
  %i.bap = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionEBO_(ptr noalias noundef align 8 dereferenceable(24) %i.bap) #45
          to label %bb.adl unwind label %bb.ew, !dbg !160164

bb.adl:                                           ; preds = %bb.adk
  %i.baq = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops14rolling_window25RollingOptionsFixedWindowECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(72) %i.baq) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

bb.adm:                                           ; preds = %bb.ack
  %i.bar = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes7reshape16ReshapeDimensionEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.bar) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

bb.adn:                                           ; preds = %bb.acl
  %i.bas = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.bas) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

bb.ado:                                           ; preds = %bb.acm
  %i.bat = getelementptr inbounds nuw i8, ptr %2, i64 31, !dbg !161639
  %i.bau = load i8, ptr %i.bat, align 1, !dbg !161639, !range !5133, !alias.scope !160145, !noundef !4700
  %i.bav = icmp eq i8 %i.bau, -40, !dbg !161640
  br i1 %i.bav, label %bb.adp, label %common.resume, !dbg !161640, !prof !4712

bb.adp:                                           ; preds = %bb.ado
  %i.baw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.baw)
          to label %common.resume unwind label %bb.ew, !dbg !161641

.invoke1925:                                      ; preds = %bb.aco, %bb.acn
  %i.bax = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.bax) #45
          to label %.invoke1902 unwind label %bb.ew, !dbg !160164

.invoke1902:                                      ; preds = %.invoke1925
  %i.bay = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !160164
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.bay) #45
          to label %common.resume unwind label %bb.ew, !dbg !160164

bb.adq:                                           ; preds = %bb.acp
end_hunk_0
