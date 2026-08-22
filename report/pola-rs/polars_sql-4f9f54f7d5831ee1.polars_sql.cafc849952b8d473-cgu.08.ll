Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.08?download=true
inline.NumInlined: 3478
inline.NumDeleted: 1045
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql:bb.a
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit8 unwind label %bb.e, !dbg !10341

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit8: ; preds = %bb.d, %.lr.ph12
  %i.o = icmp eq i64 %i.k, %1, !dbg !10305
  br i1 %i.o, label %._crit_edge13, label %.lr.ph12, !dbg !10305

._crit_edge13:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit8, %bb.c
  resume { ptr, i32 } %i.h, !dbg !10305

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10305
  unreachable, !dbg !10305
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10342 {
bb.a:
  %i.a = icmp eq i64 %1, 0, !dbg !10343
  br i1 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit._crit_edge, label %.lr.ph, !dbg !10343

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit: ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1, !dbg !10343
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit._crit_edge, label %.lr.ph, !dbg !10343

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.08 = phi i64 [ %i.d, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.08, !dbg !10343
  %i.d = add i64 %.sroa.0.08, 1, !dbg !10343      ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit unwind label %bb.b, !dbg !10344

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit._crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit, %bb.a
  ret void, !dbg !10343

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit7: ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.19, 1, !dbg !10343      ; 2 uses
  %i.f = icmp eq i64 %i.e, %1, !dbg !10343
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit7._crit_edge, label %.lr.ph10, !dbg !10343

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1, !dbg !10343
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit7._crit_edge, label %.lr.ph10, !dbg !10343

.lr.ph10:                                         ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit7
  %.sroa.0.19 = phi i64 [ %i.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit7 ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.19, !dbg !10343
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit7 unwind label %bb.c, !dbg !10346

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit7._crit_edge: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit7, %bb.b
  resume { ptr, i32 } %i.g, !dbg !10343

bb.c:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10343
  unreachable, !dbg !10343
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10348 {
bb.a:
  %i.a = icmp eq i64 %1, 0, !dbg !10349
  br i1 %i.a, label %._crit_edge, label %.lr.ph, !dbg !10349

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1, !dbg !10349
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !dbg !10349

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.07 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.0.07, !dbg !10349
  %i.d = add i64 %.sroa.0.07, 1, !dbg !10349      ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.c)
          to label %bb.b unwind label %bb.d, !dbg !10349

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !10349

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.18, 1, !dbg !10349      ; 2 uses
  %i.f = icmp eq i64 %i.e, %1, !dbg !10349
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10, !dbg !10349

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1, !dbg !10349
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10, !dbg !10349

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.0.18, !dbg !10349
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.i) #31
          to label %bb.c unwind label %bb.e, !dbg !10349

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g, !dbg !10349

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10349
  unreachable, !dbg !10349
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils21expressions_to_schemaNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB16_10SQLContext16process_group_by0EB18_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 16 %1, i64 noundef range(i64 0, 64051194700380388) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10350 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10354
  %i.d = shl nuw nsw i64 %2, 2, !dbg !10355
  call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE13with_capacityCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef %i.d), !dbg !10356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10357
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %2, !dbg !10359
  store ptr %1, ptr %i.b, align 8, !dbg !10374
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10374
  store ptr %i.e, ptr %i.f, align 8, !dbg !10374
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10374
  store ptr %3, ptr %i.g, align 8, !dbg !10374
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !10374
  store ptr %i.c, ptr %i.h, align 8, !dbg !10374
  invoke void @_RINvMs0_NtCshe0pyuXM1S4_13polars_schema6schemaINtB6_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE30try_from_iter_check_duplicatesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCINvNtB3K_5utils21expressions_to_schemaNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5c_10SQLContext16process_group_by0E0ENtNtBZ_5field5FieldNCB4s_s_0EB5e_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !10384

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i, !dbg !10385

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils5arena5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %i.c) #31
          to label %bb.b unwind label %bb.e, !dbg !10386

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10387
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils5arena5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %i.c), !dbg !10386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10386
  ret void, !dbg !10388

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10385
  unreachable, !dbg !10385
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils21expressions_to_schemaNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB16_10SQLContext16process_group_bys2_0EB18_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 16 %1, i64 noundef range(i64 0, 64051194700380388) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10389 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10390
  %i.d = shl nuw nsw i64 %2, 2, !dbg !10391
  call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils5arenaINtB5_5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprE13with_capacityCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef %i.d), !dbg !10392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10393
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %2, !dbg !10395
  store ptr %1, ptr %i.b, align 8, !dbg !10404
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10404
  store ptr %i.e, ptr %i.f, align 8, !dbg !10404
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10404
  store ptr %3, ptr %i.g, align 8, !dbg !10404
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !10404
  store ptr %i.c, ptr %i.h, align 8, !dbg !10404
  invoke void @_RINvMs0_NtCshe0pyuXM1S4_13polars_schema6schemaINtB6_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE30try_from_iter_check_duplicatesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCINvNtB3K_5utils21expressions_to_schemaNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5c_10SQLContext16process_group_bys2_0E0ENtNtBZ_5field5FieldNCB4s_s_0EB5e_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !10409

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i, !dbg !10410

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils5arena5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %i.c) #31
          to label %bb.b unwind label %bb.e, !dbg !10411

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10412
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils5arena5ArenaNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %i.c), !dbg !10411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10411
  ret void, !dbg !10413

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10410
  unreachable, !dbg !10410
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils8has_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBU_10SQLContext14execute_selects5_00EBW_(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10414 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10415
  store ptr %0, ptr %i.a, align 8, !dbg !10416
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10416
  store i32 1, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !10416
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !10416
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !10416
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext14execute_selects5_00E0B29_.exit.i, !dbg !10424

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext14execute_selects5_00E0B29_.exit.i: ; preds = %bb.b, %bb.a
  %i.b = invoke noundef align 16 ptr @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB2_8ExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.c, !dbg !10430 ; 2 uses

.noexc:                                           ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext14execute_selects5_00E0B29_.exit.i
  %.not.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.b, null, !dbg !10432 ; 2 uses
  br i1 %.not.not.not.not.i.not.not.not.not.not, label %bb.b, label %bb.d, !dbg !10433

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr i8, ptr %i.b, i64 112, !dbg !10434
  %.val.i = load i64, ptr %i.c, align 16, !dbg !10434, !range !7579, !noundef !13 ; 3 uses
  %i.d = icmp ne i64 %.val.i, -9223372036854775795, !dbg !10435
  call void @llvm.assume(i1 %i.d), !dbg !10435
  %i.e = xor i64 %.val.i, -9223372036854775808, !dbg !10435
  %i.f = icmp slt i64 %.val.i, 0, !dbg !10435
  %i.g = select i1 %i.f, i64 %i.e, i64 13, !dbg !10435
  switch i64 %i.g, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext14execute_selects5_00E0B29_.exit.i [
    i64 11, label %bb.d
    i64 20, label %bb.d
    i64 16, label %bb.d
    i64 17, label %bb.d
  ], !dbg !10451

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext14execute_selects5_00E0B29_.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit unwind label %bb.e, !dbg !10452

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.b, %bb.b, %bb.b
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !10457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10460
  ret i1 %.not.not.not.not.i.not.not.not.not.not, !dbg !10461

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10462
  unreachable, !dbg !10462

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.h, !dbg !10462
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils8has_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBU_10SQLContext16process_group_bys3_00EBW_(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10463 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10464
  store ptr %0, ptr %i.a, align 8, !dbg !10465
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10465
  store i32 1, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !10465
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !10465
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !10465
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext16process_group_bys3_00E0B29_.exit.i, !dbg !10469

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext16process_group_bys3_00E0B29_.exit.i: ; preds = %bb.b, %bb.a
  %i.b = invoke noundef align 16 ptr @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB2_8ExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.c, !dbg !10475 ; 2 uses

.noexc:                                           ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext16process_group_bys3_00E0B29_.exit.i
  %.not.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.b, null, !dbg !10477 ; 2 uses
  br i1 %.not.not.not.not.i.not.not.not.not.not, label %bb.b, label %bb.d, !dbg !10478

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr i8, ptr %i.b, i64 112, !dbg !10479
  %.val.i = load i64, ptr %i.c, align 16, !dbg !10479, !range !7579, !noundef !13 ; 3 uses
  %i.d = icmp ne i64 %.val.i, -9223372036854775795, !dbg !10480
  call void @llvm.assume(i1 %i.d), !dbg !10480
  %i.e = xor i64 %.val.i, -9223372036854775808, !dbg !10480
  %i.f = icmp slt i64 %.val.i, 0, !dbg !10480
  %i.g = select i1 %i.f, i64 %i.e, i64 13, !dbg !10480
  switch i64 %i.g, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext16process_group_bys3_00E0B29_.exit.i [
    i64 11, label %bb.d
    i64 16, label %bb.d
    i64 20, label %bb.d
  ], !dbg !10489

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext16process_group_bys3_00E0B29_.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit unwind label %bb.e, !dbg !10490

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.b, %bb.b
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !10493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10496
  ret i1 %.not.not.not.not.i.not.not.not.not.not, !dbg !10497

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10498
  unreachable, !dbg !10498

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.h, !dbg !10498
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils8has_exprNCNCNvNtCshquuC4dCYVj_10polars_sql7context18expr_reduces_group00EBS_(ptr noundef nonnull align 16 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10499 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10500
  store ptr %0, ptr %i.a, align 8, !dbg !10501
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10501
  store i32 1, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !10501
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !10501
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !10501
  %i.b = invoke noundef align 16 ptr @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB2_8ExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !10505 ; 2 uses

.noexc:                                           ; preds = %bb.a
  %.not6.not.i = icmp eq ptr %i.b, null, !dbg !10512
  br i1 %.not6.not.i, label %.loopexit6, label %.lr.ph.i, !dbg !10513

.lr.ph.i:                                         ; preds = %.noexc, %.noexc4
  %i.c = phi ptr [ %i.q, %.noexc4 ], [ %i.b, %.noexc ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !10514
  %i.e = load i64, ptr %i.d, align 16, !dbg !10514, !range !7579, !noundef !13 ; 2 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775795, !dbg !10514
  call void @llvm.assume(i1 %i.f), !dbg !10514
  %i.g = icmp eq i64 %i.e, -9223372036854775806, !dbg !10523
  br i1 %i.g, label %bb.b, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvNtCshquuC4dCYVj_10polars_sql7context18expr_reduces_group00E0B25_.exit.backedge.i, !dbg !10523

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !10524
  %i.i = load i8, ptr %i.h, align 1, !dbg !10524, !range !1837, !alias.scope !10546, !noundef !13 ; 2 uses
  %i.j = icmp ugt i8 %i.i, -41, !dbg !10549
  br i1 %i.j, label %bb.d, label %bb.c, !dbg !10549

bb.c:                                             ; preds = %bb.b
  %i.k = add i8 %i.i, 64, !dbg !10550
  %i.l = call i8 @llvm.umin.i8(i8 %i.k, i8 24), !dbg !10554
  %.sroa.0.0.i.i.i.i.i = zext nneg i8 %i.l to i64, !dbg !10554
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i, !dbg !10560

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.c, align 16, !dbg !10563, !alias.scope !10546, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10564
  %i.o = load i64, ptr %i.n, align 8, !dbg !10564, !alias.scope !10546, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i, !dbg !10565

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.o, %bb.d ], [ %.sroa.0.0.i.i.i.i.i, %bb.c ], !dbg !10566
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.c, %bb.c ], !dbg !10567
  %i.p = invoke noundef zeroext i1 @_RNvMs1_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE8containsCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.01.0.i.i.i.i)
          to label %.noexc3 unwind label %.loopexit, !dbg !10568

.noexc3:                                          ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i
  br i1 %i.p, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvNtCshquuC4dCYVj_10polars_sql7context18expr_reduces_group00E0B25_.exit.backedge.i, label %.loopexit6, !dbg !10569

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvNtCshquuC4dCYVj_10polars_sql7context18expr_reduces_group00E0B25_.exit.backedge.i: ; preds = %.noexc3, %.lr.ph.i
  %i.q = invoke noundef align 16 ptr @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB2_8ExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc4 unwind label %.loopexit, !dbg !10505 ; 2 uses

.noexc4:                                          ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvNtCshquuC4dCYVj_10polars_sql7context18expr_reduces_group00E0B25_.exit.backedge.i
  %.not.not.i = icmp eq ptr %i.q, null, !dbg !10512
  br i1 %.not.not.i, label %.loopexit6, label %.lr.ph.i, !dbg !10513

.loopexit:                                        ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNCNCNvNtCshquuC4dCYVj_10polars_sql7context18expr_reduces_group00E0B25_.exit.backedge.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !10570

.loopexit6:                                       ; preds = %.noexc3, %.noexc4, %.noexc
  %.not.lcssa.i = phi i1 [ false, %.noexc ], [ false, %.noexc4 ], [ true, %.noexc3 ], !dbg !10512
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !10573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10576
  ret i1 %.not.lcssa.i, !dbg !10577

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10578
  unreachable, !dbg !10578

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e
  resume { ptr, i32 } %lpad.phi, !dbg !10578
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils8has_exprNCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtBR_7context10SQLContext25try_parse_inner_only_expr0EBR_(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10579 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10580
  store ptr %0, ptr %i.a, align 8, !dbg !10581
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10581
  store i32 1, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !10581
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !10581
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !10581
  br label %bb.b, !dbg !10585

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = invoke noundef align 16 ptr @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB2_8ExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.d, !dbg !10591 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.b, null, !dbg !10593 ; 2 uses
  br i1 %.not.not.not.not.i.not.not.not.not.not, label %bb.c, label %bb.e, !dbg !10594

bb.c:                                             ; preds = %.noexc
  %i.c = getelementptr i8, ptr %i.b, i64 112, !dbg !10595
  %.val.i = load i64, ptr %i.c, align 16, !dbg !10595, !range !7579, !noundef !13 ; 2 uses
  %i.d = icmp ne i64 %.val.i, -9223372036854775795, !dbg !10596
  call void @llvm.assume(i1 %i.d), !dbg !10596
  %i.e = icmp eq i64 %.val.i, -9223372036854775783, !dbg !10607
  br i1 %i.e, label %bb.e, label %bb.b, !dbg !10595

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !10608

bb.e:                                             ; preds = %.noexc, %bb.c
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !10611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10614
  ret i1 %.not.not.not.not.i.not.not.not.not.not, !dbg !10615

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10616
  unreachable, !dbg !10616

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.f, !dbg !10616
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils8has_exprNCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtBR_7context10SQLContext31try_rewrite_in_subquery_as_join0EBR_(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10617 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10618
  store ptr %0, ptr %i.a, align 8, !dbg !10619
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10619
  store i32 1, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !10619
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !10619
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !10619
  br label %bb.b, !dbg !10623

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = invoke noundef align 16 ptr @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB2_8ExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.d, !dbg !10629 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.b, null, !dbg !10631 ; 2 uses
  br i1 %.not.not.not.not.i.not.not.not.not.not, label %bb.c, label %bb.e, !dbg !10632

bb.c:                                             ; preds = %.noexc
  %i.c = getelementptr i8, ptr %i.b, i64 112, !dbg !10633
  %.val.i = load i64, ptr %i.c, align 16, !dbg !10633, !range !7579, !noundef !13 ; 2 uses
  %i.d = icmp ne i64 %.val.i, -9223372036854775795, !dbg !10634
  call void @llvm.assume(i1 %i.d), !dbg !10634
  %i.e = icmp eq i64 %.val.i, -9223372036854775783, !dbg !10642
  br i1 %i.e, label %bb.e, label %bb.b, !dbg !10633

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !10643

bb.e:                                             ; preds = %.noexc, %bb.c
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !10646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10649
  ret i1 %.not.not.not.not.i.not.not.not.not.not, !dbg !10650

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10651
  unreachable, !dbg !10651

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.f, !dbg !10651
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils8has_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBS_10SQLContext14execute_selects2_0EBU_(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10652 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10653
  store ptr %0, ptr %i.a, align 8, !dbg !10654
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10654
  store i32 1, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !10654
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !10654
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !10654
  br label %bb.b, !dbg !10658

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = invoke noundef align 16 ptr @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB2_8ExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.d, !dbg !10664 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.b, null, !dbg !10666 ; 2 uses
  br i1 %.not.not.not.not.i.not.not.not.not.not, label %bb.c, label %bb.e, !dbg !10667

bb.c:                                             ; preds = %.noexc
  %i.c = getelementptr i8, ptr %i.b, i64 112, !dbg !10668
  %.val.i = load i64, ptr %i.c, align 16, !dbg !10668, !range !7579, !noundef !13 ; 3 uses
  %i.d = icmp ne i64 %.val.i, -9223372036854775795, !dbg !10669
  call void @llvm.assume(i1 %i.d), !dbg !10669
  %i.e = xor i64 %.val.i, -9223372036854775808, !dbg !10669
  %i.f = icmp slt i64 %.val.i, 0, !dbg !10669
  %i.g = select i1 %i.f, i64 %i.e, i64 13, !dbg !10669
  switch i64 %i.g, label %bb.b [
    i64 20, label %bb.e
    i64 11, label %bb.e
  ], !dbg !10668

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !10676

bb.e:                                             ; preds = %.noexc, %bb.c, %bb.c
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !10679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10682
  ret i1 %.not.not.not.not.i.not.not.not.not.not, !dbg !10683

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10684
  unreachable, !dbg !10684

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.h, !dbg !10684
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils8has_exprNCNvNtCshquuC4dCYVj_10polars_sql7context18expr_reduces_group0EBQ_(ptr noundef nonnull align 16 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10685 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10686
  store ptr %0, ptr %i.a, align 8, !dbg !10687
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10687
  store i32 1, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !10687
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !10687
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !10687
  %i.b = invoke noundef align 16 ptr @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB2_8ExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !10691 ; 2 uses

.noexc:                                           ; preds = %bb.a
  %.not9.not.i = icmp eq ptr %i.b, null, !dbg !10698
  br i1 %.not9.not.i, label %.loopexit, label %.lr.ph.i, !dbg !10699

.lr.ph.i:                                         ; preds = %.noexc, %.noexc3
  %i.c = phi ptr [ %i.n, %.noexc3 ], [ %i.b, %.noexc ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !10700
  %i.e = load i64, ptr %i.d, align 16, !dbg !10700, !range !7579, !noundef !13 ; 3 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775795, !dbg !10700
  call void @llvm.assume(i1 %i.f), !dbg !10700
  %i.g = xor i64 %i.e, -9223372036854775808, !dbg !10700
  %i.h = icmp slt i64 %i.e, 0, !dbg !10700
  %i.i = select i1 %i.h, i64 %i.g, i64 13, !dbg !10700
  switch i64 %i.i, label %.backedge.i [
    i64 11, label %.loopexit
    i64 13, label %bb.b
    i64 16, label %.loopexit
    i64 17, label %.loopexit
    i64 20, label %.loopexit
    i64 22, label %.split.i
  ], !dbg !10705

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = load i8, ptr %i.c, align 16, !dbg !10706, !range !7336, !noundef !13
  %i.k = icmp eq i8 %i.j, 6, !dbg !10709
  br i1 %i.k, label %.backedge.i, label %.split7.i, !dbg !10709

.split.i:                                         ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %i.c, i64 106, !dbg !10710
  %.val.i.i.i = load i16, ptr %i.l, align 2, !dbg !10710, !noundef !13
  %i.m = and i16 %.val.i.i.i, 8, !dbg !10712
  %.not8.i = icmp eq i16 %i.m, 0, !dbg !10712
  br i1 %.not8.i, label %.backedge.i, label %.loopexit, !dbg !10730

.backedge.i:                                      ; preds = %.noexc4, %.split.i, %bb.b, %.lr.ph.i
  %i.n = invoke noundef align 16 ptr @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB2_8ExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc3 unwind label %.loopexit6, !dbg !10691 ; 2 uses

.noexc3:                                          ; preds = %.backedge.i
  %.not.not.i = icmp eq ptr %i.n, null, !dbg !10698
  br i1 %.not.not.i, label %.loopexit, label %.lr.ph.i, !dbg !10699

.split7.i:                                        ; preds = %bb.b
  %i.o = invoke noundef zeroext i1 @_RINvNtCsfcROwRM8ZtH_11polars_plan5utils8has_exprNCNCNvNtCshquuC4dCYVj_10polars_sql7context18expr_reduces_group00EBS_(ptr noundef nonnull align 16 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %.noexc4 unwind label %.loopexit6, !dbg !10731

.noexc4:                                          ; preds = %.split7.i
  br i1 %i.o, label %.loopexit, label %.backedge.i, !dbg !10730

.loopexit6:                                       ; preds = %.backedge.i, %.split7.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit6
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit6 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit unwind label %bb.d, !dbg !10733

.loopexit:                                        ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.split.i, %.noexc3, %.noexc4, %.noexc
  %.not.lcssa.i = phi i1 [ false, %.noexc ], [ false, %.noexc3 ], [ true, %.noexc4 ], [ true, %.split.i ], [ true, %.lr.ph.i ], [ true, %.lr.ph.i ], [ true, %.lr.ph.i ], [ true, %.lr.ph.i ], !dbg !10698
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !10736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10739
  ret i1 %.not.lcssa.i, !dbg !10740

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !10741
  unreachable, !dbg !10741

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator8ExprIterECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c
  resume { ptr, i32 } %lpad.phi, !dbg !10741
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvNtNtCs8774dFTUdNv_12polars_arrow5array9primitive5checklECshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef range(i64 0, 2) %4, i64 %5) unnamed_addr #0 !dbg !10742 {
bb.a:
  %i.a = trunc nuw i64 %4 to i1, !dbg !10747
  %i.b = icmp ne i64 %5, %3
  %or.cond = select i1 %i.a, i1 %i.b, i1 false, !dbg !10747
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !10747

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i8, i8 } @_RNvMs_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB4_13ArrowDataType16to_physical_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !dbg !10750 ; 2 uses
  %i.d = extractvalue { i8, i8 } %i.c, 0, !dbg !10750
  %i.e = extractvalue { i8, i8 } %i.c, 1, !dbg !10750
  %i.f = icmp eq i8 %i.d, 2, !dbg !10751
  %.not = icmp eq i8 %i.e, 2
  %or.cond8 = select i1 %i.f, i1 %.not, i1 false, !dbg !10751
  br i1 %or.cond8, label %bb.e, label %bb.d, !dbg !10751

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @7, i64 72, i1 false), !dbg !10763
  br label %bb.f, !dbg !10764

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @5, i64 72, i1 false), !dbg !10766
  br label %bb.f, !dbg !10764

bb.e:                                             ; preds = %bb.b
  store i64 18, ptr %0, align 8, !dbg !10767
  br label %bb.f, !dbg !10768

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void, !dbg !10768
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvNtNtCs8774dFTUdNv_12polars_arrow5array9primitive5checkxECshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef range(i64 0, 2) %4, i64 %5) unnamed_addr #0 !dbg !10769 {
bb.a:
  %i.a = trunc nuw i64 %4 to i1, !dbg !10770
  %i.b = icmp ne i64 %5, %3
  %or.cond = select i1 %i.a, i1 %i.b, i1 false, !dbg !10770
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !10770

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i8, i8 } @_RNvMs_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB4_13ArrowDataType16to_physical_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !dbg !10773 ; 2 uses
  %i.d = extractvalue { i8, i8 } %i.c, 0, !dbg !10773
  %i.e = extractvalue { i8, i8 } %i.c, 1, !dbg !10773
  %i.f = icmp eq i8 %i.d, 2, !dbg !10774
  %.not = icmp eq i8 %i.e, 3
  %or.cond8 = select i1 %i.f, i1 %.not, i1 false, !dbg !10774
  br i1 %or.cond8, label %bb.e, label %bb.d, !dbg !10774

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @7, i64 72, i1 false), !dbg !10781
  br label %bb.f, !dbg !10782

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @5, i64 72, i1 false), !dbg !10784
  br label %bb.f, !dbg !10782

bb.e:                                             ; preds = %bb.b
  store i64 18, ptr %0, align 8, !dbg !10785
  br label %bb.f, !dbg !10786

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void, !dbg !10786
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(none) uwtable
define noundef zeroext i1 @_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect13needs_reallocINtCse4dvU5uQ85g_8indexmap6BucketNtNtB6_6string6StringuEB1y_ECshquuC4dCYVj_10polars_sql(i64 noundef %0, i64 noundef %1) unnamed_addr #1 !dbg !10787 {
bb.a:
  %.not = icmp ne i64 %0, 0, !dbg !10790
  %i.a = shl i64 %0, 5, !dbg !10790
  %i.b = mul i64 %1, 24, !dbg !10790
  %i.c = icmp ne i64 %i.a, %i.b, !dbg !10790
  %.sroa.0.0 = and i1 %.not, %i.c, !dbg !10790
  ret i1 %.sroa.0.0, !dbg !10791
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(none) uwtable
define noundef zeroext i1 @_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect13needs_reallocNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB11_ECshquuC4dCYVj_10polars_sql(i64 noundef %0, i64 noundef %1) unnamed_addr #1 !dbg !10792 {
bb.a:
  ret i1 false, !dbg !10793
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(none) uwtable
define noundef zeroext i1 @_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect13needs_reallocNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprB11_ECshquuC4dCYVj_10polars_sql(i64 noundef %0, i64 noundef %1) unnamed_addr #1 !dbg !10794 {
bb.a:
  ret i1 false, !dbg !10795
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCINvXNtNtNtB2M_5plans7visitor4exprB2G_NtNtB3A_8visitors10TreeWalker12map_childrenNCNCINvYB2G_B45_7rewriteINtNtB3C_8iterator10ExprMapperNCINvMs0_B5d_B2G_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB6e_10SQLContext14execute_selects3_00E0EE00E0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB2G_EB6g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10796 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10797
  %i.c = load i64, ptr %i.b, align 8, !dbg !10797, !noundef !13 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !dbg !10799, !nonnull !13, !noundef !13 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10800
  %i.f = load ptr, ptr %i.e, align 8, !dbg !10800, !noundef !13
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCINvXNtNtNtB28_5plans7visitor4exprB22_NtNtB2W_8visitors10TreeWalker12map_childrenNCNCINvYB22_B3r_7rewriteINtNtB2Y_8iterator10ExprMapperNCINvMs0_B4z_B22_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5A_10SQLContext14execute_selects3_00E0EE00E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB22_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB22_E0IB6X_B99_zEEB5C_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c, !dbg !10801

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCINvXNtNtNtB2s_5plans7visitor4exprB2m_NtNtB3g_8visitors10TreeWalker12map_childrenNCNCINvYB2m_B3L_7rewriteINtNtB3i_8iterator10ExprMapperNCINvMs0_B4T_B2m_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5U_10SQLContext14execute_selects3_00E0EE00E0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB5W_.exit unwind label %bb.g, !dbg !10807

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1, !dbg !10801
  %i.j = ptrtoint ptr %i.i to i64, !dbg !10814
  %i.k = ptrtoint ptr %i.d to i64, !dbg !10814
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !10814
  %i.m = udiv exact i64 %i.l, 144, !dbg !10814    ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11OrderByExprE16as_raw_mut_sliceCshquuC4dCYVj_10polars_sql:bb.a
  %i.e = ptrtoint ptr %i.b to i64, !dbg !22536
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !22536
  %i.g = udiv exact i64 %i.f, 1320, !dbg !22536
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !22546
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !22546
  ret { ptr, i64 } %i.i, !dbg !22546
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE16as_raw_mut_sliceCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 !dbg !22547 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22548
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22548, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22549
  %.val3 = load ptr, ptr %i.c, align 8, !dbg !22549, !nonnull !13, !noundef !13
  %i.d = ptrtoint ptr %.val3 to i64, !dbg !22554
  %i.e = ptrtoint ptr %i.b to i64, !dbg !22554
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !22554
  %i.g = udiv exact i64 %i.f, 144, !dbg !22554
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !22564
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !22564
  ret { ptr, i64 } %i.i, !dbg !22564
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE32forget_allocation_drop_remainingCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 !dbg !22565 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22566 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !22566, !alias.scope !22568, !nonnull !13, !noundef !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22571 ; 2 uses
  %.val3.i = load ptr, ptr %i.d, align 8, !dbg !22571, !alias.scope !22568, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val3.i to i64, !dbg !22574
  %i.f = ptrtoint ptr %i.c to i64, !dbg !22574
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !22574
  %i.h = udiv exact i64 %i.g, 144, !dbg !22574
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22579
  store i64 0, ptr %i.i, align 8, !dbg !22579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22581
  store i64 0, ptr %i.a, align 8, !dbg !22582
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22582
  store ptr inttoptr (i64 16 to ptr), ptr %i.j, align 8, !dbg !22582
  store ptr inttoptr (i64 16 to ptr), ptr %0, align 8, !dbg !22586
  call void @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef 16, i64 noundef 144), !dbg !22587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22590
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8, !dbg !22591
  store ptr inttoptr (i64 16 to ptr), ptr %i.d, align 8, !dbg !22592
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 %i.c, i64 noundef %i.h), !dbg !22593
  ret void, !dbg !22594
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE8as_sliceCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 !dbg !22595 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22596
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22596, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22597
  %.val3 = load ptr, ptr %i.c, align 8, !dbg !22597, !nonnull !13, !noundef !13
  %i.d = ptrtoint ptr %.val3 to i64, !dbg !22600
  %i.e = ptrtoint ptr %i.b to i64, !dbg !22600
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !22600
  %i.g = udiv exact i64 %i.f, 144, !dbg !22600
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !22605
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !22605
  ret { ptr, i64 } %i.i, !dbg !22605
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterQNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE16as_raw_mut_sliceCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 !dbg !22606 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22607
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22607, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22608
  %.val3 = load ptr, ptr %i.c, align 8, !dbg !22608, !nonnull !13, !noundef !13
  %i.d = ptrtoint ptr %.val3 to i64, !dbg !22613
  %i.e = ptrtoint ptr %i.b to i64, !dbg !22613
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !22613
  %i.g = lshr exact i64 %i.f, 3, !dbg !22613
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !22623
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !22623
  ret { ptr, i64 } %i.i, !dbg !22623
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE16as_raw_mut_sliceCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 !dbg !22624 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22625
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22625, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22626
  %.val3 = load ptr, ptr %i.c, align 8, !dbg !22626, !nonnull !13, !noundef !13
  %i.d = ptrtoint ptr %.val3 to i64, !dbg !22631
  %i.e = ptrtoint ptr %i.b to i64, !dbg !22631
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !22631
  %i.g = lshr exact i64 %i.f, 3, !dbg !22631
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !22641
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !22641
  ret { ptr, i64 } %i.i, !dbg !22641
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprE16as_raw_mut_sliceCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 !dbg !22642 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22643
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22643, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22644
  %.val3 = load ptr, ptr %i.c, align 8, !dbg !22644, !nonnull !13, !noundef !13
  %i.d = ptrtoint ptr %.val3 to i64, !dbg !22649
  %i.e = ptrtoint ptr %i.b to i64, !dbg !22649
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !22649
  %i.g = lshr exact i64 %i.f, 3, !dbg !22649
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !22659
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !22659
  ret { ptr, i64 } %i.i, !dbg !22659
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprE16as_raw_mut_sliceCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 !dbg !22660 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22661
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22661, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22662
  %.val3 = load ptr, ptr %i.c, align 8, !dbg !22662, !nonnull !13, !noundef !13
  %i.d = ptrtoint ptr %.val3 to i64, !dbg !22667
  %i.e = ptrtoint ptr %i.b to i64, !dbg !22667
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !22667
  %i.g = lshr exact i64 %i.f, 3, !dbg !22667
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !22677
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !22677
  ret { ptr, i64 } %i.i, !dbg !22677
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprE8as_sliceCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 !dbg !22678 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22679
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22679, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22680
  %.val3 = load ptr, ptr %i.c, align 8, !dbg !22680, !nonnull !13, !noundef !13
  %i.d = ptrtoint ptr %.val3 to i64, !dbg !22683
  %i.e = ptrtoint ptr %i.b to i64, !dbg !22683
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !22683
  %i.g = lshr exact i64 %i.f, 3, !dbg !22683
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !22688
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1, !dbg !22688
  ret { ptr, i64 } %i.i, !dbg !22688
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterbE16as_raw_mut_sliceCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 !dbg !22689 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22690
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22690, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22691
  %.val3 = load ptr, ptr %i.c, align 8, !dbg !22691, !nonnull !13, !noundef !13
  %i.d = ptrtoint ptr %.val3 to i64, !dbg !22696
  %i.e = ptrtoint ptr %i.b to i64, !dbg !22696
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !22696
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !22706
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.f, 1, !dbg !22706
  ret { ptr, i64 } %i.h, !dbg !22706
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterbE8as_sliceCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 !dbg !22707 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22708
  %i.b = load ptr, ptr %i.a, align 8, !dbg !22708, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22709
  %.val3 = load ptr, ptr %i.c, align 8, !dbg !22709, !nonnull !13, !noundef !13
  %i.d = ptrtoint ptr %.val3 to i64, !dbg !22712
  %i.e = ptrtoint ptr %i.b to i64, !dbg !22712
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !22712
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.b, 0, !dbg !22717
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.f, 1, !dbg !22717
  ret { ptr, i64 } %i.h, !dbg !22717
}

; Function Attrs: nounwind nonlazybind optsize uwtable
define void @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_11RawVecInnerRNtNtB7_5alloc6GlobalE10deallocateCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) unnamed_addr #6 !dbg !22718 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !22719  ; 2 uses
  %i.a = icmp eq i64 %2, 0, !dbg !22721
  %i.b = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.a, i1 true, i1 %i.b, !dbg !22721
  br i1 %or.cond.i, label %_RNvXs0_NtCscgRAwXFJnXP_4core5allocRNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !22721

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22719
  %.val1 = load ptr, ptr %i.c, align 8, !dbg !22719, !nonnull !13, !noundef !13
  %i.d = mul nuw i64 %.val, %2, !dbg !22724
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1) #32, !dbg !22727
  br label %_RNvXs0_NtCscgRAwXFJnXP_4core5allocRNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCshquuC4dCYVj_10polars_sql.exit, !dbg !22736

_RNvXs0_NtCscgRAwXFJnXP_4core5allocRNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !22737
}

; Function Attrs: nonlazybind optsize uwtable
define { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 !dbg !22738 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0, !dbg !22739
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !22739, !prof !20658

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1, !dbg !22740              ; 4 uses
  %i.d = icmp ult i64 %i.c, %1, !dbg !22740
  br i1 %i.d, label %bb.c, label %bb.d, !dbg !22743

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.f
  %.sroa.5.0 = phi i64 [ undef, %bb.f ], [ undef, %bb.a ], [ %7, %bb.e ], [ undef, %bb.b ], !dbg !22746
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.f ], [ 0, %bb.a ], [ %5, %bb.e ], [ 0, %bb.b ], !dbg !22746
  %i.e = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !22747
  %i.f = insertvalue { i64, i64 } %i.e, i64 %.sroa.5.0, 1, !dbg !22747
  ret { i64, i64 } %i.f, !dbg !22747

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22748
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i64 noundef %i.c, i64 noundef %3, i64 noundef %4), !dbg !22750
  %i.g = load i64, ptr %i.a, align 8, !dbg !22751, !range !71, !noundef !13
  %i.h = trunc nuw i64 %i.g to i1, !dbg !22753
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22754 ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f, !dbg !22753

bb.e:                                             ; preds = %bb.d
  %5 = load i64, ptr %i.i, align 8, !dbg !22755, !range !74, !noundef !13
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22755
  %7 = load i64, ptr %6, align 8, !dbg !22755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22756
  br label %bb.c, !dbg !22757

bb.f:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !dbg !22759, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22756
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22760
  store ptr %i.j, ptr %i.k, align 8, !dbg !22760
  %i.l = icmp sgt i64 %i.c, -1, !dbg !22764
  tail call void @llvm.assume(i1 %i.l), !dbg !22764
  store i64 %i.c, ptr %0, align 8, !dbg !22770
  br label %bb.c, !dbg !22747
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 !dbg !22771 {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4), !dbg !22772 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0, !dbg !22772 ; 2 uses
  %.not = icmp eq i64 %i.b, -9223372036854775807, !dbg !22774
  br i1 %.not, label %bb.c, label %bb.b, !dbg !22775, !prof !20658

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.a, 1, !dbg !22772
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.b, i64 %i.c) #29, !dbg !22776
  unreachable, !dbg !22776

bb.c:                                             ; preds = %bb.a
  ret void, !dbg !22777
}

; Function Attrs: nounwind nonlazybind optsize uwtable
define { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #6 !dbg !22778 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !22779  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22779 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8, !dbg !22779 ; 3 uses
  %i.b = icmp eq i64 %3, 0, !dbg !22780
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c, !dbg !22780
  br i1 %or.cond.i, label %bb.e, label %bb.b, !dbg !22780

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3, !dbg !22783       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0, !dbg !22786
  br i1 %i.e, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit, !dbg !22786

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #32, !dbg !22788
  %i.f = inttoptr i64 %2 to ptr, !dbg !22793
  store ptr %i.f, ptr %i.a, align 8, !dbg !22801
  br label %bb.c, !dbg !22802

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8, !dbg !22803
  br label %bb.e, !dbg !22804

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1, !dbg !22805          ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d, !dbg !22808
  tail call void @llvm.assume(i1 %i.h), !dbg !22816
  %i.i = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #32, !dbg !22818 ; 2 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !22820
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !22823

bb.d:                                             ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8, !dbg !22824
  %i.k = icmp sgt i64 %1, -1, !dbg !22828
  tail call void @llvm.assume(i1 %i.k), !dbg !22828
  br label %bb.c, !dbg !22802

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ], !dbg !22831
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.c ], [ %2, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit ], [ -9223372036854775807, %bb.a ], !dbg !22831
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !22804
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1, !dbg !22804
  ret { i64, i64 } %i.m, !dbg !22804
}

; Function Attrs: nonlazybind optsize uwtable
define { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 !dbg !22832 {
bb.a:
  %i.a = icmp eq i64 %4, 0, !dbg !22833           ; 2 uses
  %i.b = load i64, ptr %0, align 8, !dbg !22833, !range !1761
  %.sroa.05.0 = select i1 %i.a, i64 -1, i64 %i.b, !dbg !22833
  %i.c = sub i64 %.sroa.05.0, %1, !dbg !22838
  %i.d = icmp ugt i64 %2, %i.c, !dbg !22841
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !22842

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4), !dbg !22843 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0, !dbg !22843 ; 2 uses
  %.not = icmp eq i64 %i.f, -9223372036854775807, !dbg !22844
  br i1 %.not, label %bb.c, label %bb.d, !dbg !22847

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %i.a, label %bb.f, label %bb.e, !dbg !22848

bb.d:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i64 } %i.e, 1, !dbg !22843
  br label %bb.g, !dbg !22852

bb.e:                                             ; preds = %bb.c
  %i.h = load i64, ptr %0, align 8, !dbg !22853, !range !1761, !noundef !13
  br label %bb.f, !dbg !22854

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.06.0 = phi i64 [ %i.h, %bb.e ], [ -1, %bb.c ], !dbg !22855
  %i.i = sub i64 %.sroa.06.0, %1, !dbg !22856
  %i.j = icmp ule i64 %2, %i.i, !dbg !22858
  tail call void @llvm.assume(i1 %i.j), !dbg !22859
  br label %bb.g, !dbg !22852

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sroa.3.0 = phi i64 [ %i.g, %bb.d ], [ undef, %bb.f ], !dbg !22862
  %.sroa.0.0 = phi i64 [ %i.f, %bb.d ], [ -9223372036854775807, %bb.f ], !dbg !22862
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !22852
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.3.0, 1, !dbg !22852
  ret { i64, i64 } %i.l, !dbg !22852
}

; Function Attrs: noinline nonlazybind optsize uwtable
define void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtB7_6string6StringuEE8grow_oneCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #2 !dbg !22863 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !22864, !range !1761, !noundef !13
  %i.b = tail call { i64, i64 } @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 1, i64 noundef 8, i64 noundef 32), !dbg !22868 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0, !dbg !22868 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775807, !dbg !22869
  br i1 %.not, label %bb.c, label %bb.b, !dbg !22870, !prof !20658

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1, !dbg !22868
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #29, !dbg !22871
  unreachable, !dbg !22871

bb.c:                                             ; preds = %bb.a
  ret void, !dbg !22872
}

; Function Attrs: noinline nonlazybind optsize uwtable
define void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameE8grow_oneCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #2 !dbg !22873 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !22874, !range !1761, !noundef !13
  %i.b = tail call { i64, i64 } @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 1, i64 noundef 16, i64 noundef 384), !dbg !22878 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0, !dbg !22878 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775807, !dbg !22879
  br i1 %.not, label %bb.c, label %bb.b, !dbg !22880, !prof !20658

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1, !dbg !22878
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #29, !dbg !22881
  unreachable, !dbg !22881

bb.c:                                             ; preds = %bb.a
  ret void, !dbg !22882
}

; Function Attrs: noinline nonlazybind optsize uwtable
define void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCshquuC4dCYVj_10polars_sql7context14ProjectionItemE8grow_oneBQ_(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #2 !dbg !22883 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !22884, !range !1761, !noundef !13
  %i.b = tail call { i64, i64 } @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 1, i64 noundef 8, i64 noundef 48), !dbg !22888 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0, !dbg !22888 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775807, !dbg !22889
  br i1 %.not, label %bb.c, label %bb.b, !dbg !22890, !prof !20658

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1, !dbg !22888
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #29, !dbg !22891
  unreachable, !dbg !22891

bb.c:                                             ; preds = %bb.a
  ret void, !dbg !22892
}

; Function Attrs: noinline nonlazybind optsize uwtable
define void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprE8grow_oneCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #2 !dbg !22893 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !22894, !range !1761, !noundef !13
  %i.b = tail call { i64, i64 } @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 1, i64 noundef 8, i64 noundef 8), !dbg !22898 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0, !dbg !22898 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775807, !dbg !22899
  br i1 %.not, label %bb.c, label %bb.b, !dbg !22900, !prof !20658

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1, !dbg !22898
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #29, !dbg !22901
  unreachable, !dbg !22901

bb.c:                                             ; preds = %bb.a
  ret void, !dbg !22902
}

; Function Attrs: nonlazybind optsize uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE13new_uninit_inCshquuC4dCYVj_10polars_sql() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22903 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !dbg !22905
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 24, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !dbg !22916 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !22917
end_hunk_1
