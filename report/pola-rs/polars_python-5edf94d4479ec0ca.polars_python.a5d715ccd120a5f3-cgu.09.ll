Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.09?download=true
inline.NumInlined: 10559
inline.NumDeleted: 3096
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame15match_to_schema:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !167022
  unreachable, !dbg !167022

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan20MissingColumnsPolicyEECseeLknQCOKOd_13polars_python.exit75: ; preds = %bb.bj, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !166914
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema26MissingColumnsPolicyOrExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.bm unwind label %bb.bl, !dbg !167025

bb.bl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan20MissingColumnsPolicyEECseeLknQCOKOd_13polars_python.exit75
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema26MissingColumnsPolicyOrExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body61.thread unwind label %bb.bn, !dbg !167026

bb.bm:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan20MissingColumnsPolicyEECseeLknQCOKOd_13polars_python.exit75
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema26MissingColumnsPolicyOrExprENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema26MissingColumnsPolicyOrExprEECseeLknQCOKOd_13polars_python.exit81 unwind label %.split.thread, !dbg !167027

bb.bn:                                            ; preds = %bb.bl
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !167025
  unreachable, !dbg !167025

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema26MissingColumnsPolicyOrExprEECseeLknQCOKOd_13polars_python.exit81: ; preds = %bb.bm, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !166892
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !167028
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !167029
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.df, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dg, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECseeLknQCOKOd_13polars_python.exit.i.i.i.i unwind label %bb.bo, !dbg !167030

bb.bo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema26MissingColumnsPolicyOrExprEECseeLknQCOKOd_13polars_python.exit81
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(64) %2) #54
          to label %common.resume unwind label %bb.br, !dbg !167028

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl15match_to_schema26MissingColumnsPolicyOrExprEECseeLknQCOKOd_13polars_python.exit81
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(64) %2)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCseeLknQCOKOd_13polars_python10conversion4WrapINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEBL_.exit unwind label %bb.bp, !dbg !167031

bb.bp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(64) %2)
          to label %common.resume unwind label %bb.bq, !dbg !167032

bb.bq:                                            ; preds = %bb.bp
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !167031
  unreachable, !dbg !167031

common.resume:                                    ; preds = %.body61, %.body61.thread, %bb.ay, %bb.bo, %bb.bp
  %common.resume.op = phi { ptr, i32 } [ %i.dh, %bb.bo ], [ %i.di, %bb.bp ], [ %.pn30104, %.body61.thread ], [ %.pn28, %.body61 ], [ %i.cs, %bb.ay ]
  resume { ptr, i32 } %common.resume.op, !dbg !166903

bb.br:                                            ; preds = %bb.bo
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !167028
  unreachable, !dbg !167028

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCseeLknQCOKOd_13polars_python10conversion4WrapINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEBL_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECseeLknQCOKOd_13polars_python.exit.i.i.i.i
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(64) %2), !dbg !167033
  br label %bb.ba, !dbg !166892

.body61.thread:                                   ; preds = %.split.thread, %bb.bl, %.body61
  %.pn30104 = phi { ptr, i32 } [ %.pn28, %.body61 ], [ %i.dd, %bb.bl ], [ %lpad.thr_comm, %.split.thread ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(64) %2) #54
          to label %common.resume unwind label %bb.bc, !dbg !166892
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame15new_from_ndjson(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(416) %0, ptr noundef %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2, i64 noundef range(i64 0, 2) %3, i64 %4, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %5, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %6, i64 noundef %7, i64 noundef range(i64 0, 2) %8, i64 %9, i1 noundef zeroext %10, i1 noundef zeroext %11, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %12, i1 noundef zeroext %13, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %14, ptr noundef nonnull %15, ptr noundef %16) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !167034 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [80 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [288 x i8], align 8               ; 13 uses
  %i.m = alloca [288 x i8], align 8               ; 5 uses
  %i.n = alloca [288 x i8], align 8               ; 4 uses
  %i.o = alloca [288 x i8], align 8               ; 5 uses
  %i.p = alloca [288 x i8], align 8               ; 5 uses
  %i.q = alloca [288 x i8], align 8               ; 4 uses
  %i.r = alloca [384 x i8], align 16              ; 7 uses
  %.sroa.630 = alloca [72 x i8], align 8          ; 6 uses
  %.sroa.624 = alloca [72 x i8], align 8          ; 7 uses
  %i.s = alloca [288 x i8], align 8               ; 4 uses
  %i.t = alloca [288 x i8], align 8               ; 4 uses
  %i.u = alloca [144 x i8], align 8               ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [144 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 11 uses
  %i.y = alloca [288 x i8], align 8               ; 18 uses
  %i.z = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.10 = alloca [32 x i8], align 8           ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 16 uses
  %i.ac = alloca [32 x i8], align 8               ; 13 uses
  %i.ad = alloca [8 x i8], align 8                ; 2 uses
  store ptr %15, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !167488
  %i.ae = load i64, ptr %12, align 8, !dbg !167489, !range !2796, !noundef !2739
  %.not = icmp eq i64 %i.ae, -9223372036854775808, !dbg !167489
  br i1 %.not, label %bb.i, label %bb.b, !dbg !167490

bb.b:                                             ; preds = %bb.a
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24, !dbg !167491
  %.sroa.4229.0.copyload = load i32, ptr %.sroa.4229.0..sroa_idx, align 8, !dbg !167491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !167492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !dbg !167492, !noalias !167392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167393), !dbg !167493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !167494
  %i.af = load i64, ptr %i.e, align 8, !dbg !167494, !range !2757, !alias.scope !167393, !noalias !167394, !noundef !2739 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0, !dbg !167495
  br i1 %i.ag, label %bb.c, label %bb.f, !dbg !167495, !prof !2797

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.7.0.i = phi i64 [ %.16..16..16..16..16..sroa.7.0.copyload7.i, %bb.g ], [ -4611686018427387904, %bb.b ], !dbg !167496
  %.sroa.6.0.i = phi i64 [ %.8..8..8..8..8..sroa.6.0.copyload4.i, %bb.g ], [ 0, %bb.b ], !dbg !167496
  %.sroa.0.0.i = phi ptr [ %.0..0..0..0..0..sroa.0.0.copyload1.i, %bb.g ], [ null, %bb.b ], !dbg !167496
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i unwind label %bb.d, !dbg !167497, !noalias !167394

bb.d:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.thread unwind label %bb.e, !dbg !167498, !noalias !167394

bb.e:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !167497, !noalias !167394
  unreachable, !dbg !167497

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr11from_string.exit.i unwind label %bb.k, !dbg !167499

bb.f:                                             ; preds = %bb.b
  %i.aj = or i64 %i.af, -2882303761517117440, !dbg !167500
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !167501
  %i.al = load i64, ptr %i.ak, align 8, !dbg !167501, !alias.scope !167393, !noalias !167394, !noundef !2739 ; 5 uses
  %i.am = icmp sgt i64 %i.al, -1, !dbg !167502
  tail call void @llvm.assume(i1 %i.am), !dbg !167503
  %i.an = icmp samesign ult i64 %i.al, 25, !dbg !167504
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !167496
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !167496, !alias.scope !167393, !noalias !167394, !nonnull !2739, !noundef !2739 ; 2 uses
  br i1 %i.an, label %bb.g, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr11from_string.exit.i, !dbg !167504

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.d, i8 0, i64 23, i1 false), !dbg !167505, !noalias !167395
  %i.aq = trunc nuw nsw i64 %i.al to i8, !dbg !167506
  %i.ar = or disjoint i8 %i.aq, -64, !dbg !167507
  %.23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !167507
  store i8 %i.ar, ptr %.23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !167507, !noalias !167395
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 1 %i.ap, i64 %i.al, i1 false), !dbg !167508, !noalias !167395
  %.0..0..0..0..0..sroa.0.0.copyload1.i = load ptr, ptr %i.d, align 8, !dbg !167509, !noalias !167396
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !167509
  %.8..8..8..8..8..sroa.6.0.copyload4.i = load i64, ptr %.8..8..8..8..8..sroa_idx, align 8, !dbg !167509, !noalias !167396
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !167509
  %.16..16..16..16..16..sroa.7.0.copyload7.i = load i64, ptr %.16..16..16..16..16..sroa_idx, align 8, !dbg !167509, !noalias !167396
  br label %bb.c, !dbg !167510

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr11from_string.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i, %bb.f
  %.sroa.7.1.i = phi i64 [ %i.aj, %bb.f ], [ %.sroa.7.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !167496 ; 2 uses
  %.sroa.6.1.i = phi i64 [ %i.al, %bb.f ], [ %.sroa.6.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !167496
  %.sroa.0.1.i = phi ptr [ %i.ap, %bb.f ], [ %.sroa.0.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !167496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !167511
  %.sroa.7.23.extract.shift.mask.i = and i64 %.sroa.7.1.i, -72057594037927936, !dbg !167512
  %i.as = icmp eq i64 %.sroa.7.23.extract.shift.mask.i, -2738188573441261568, !dbg !167512
  br i1 %i.as, label %bb.h, label %bb.l, !dbg !167513, !prof !2797

bb.h:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr11from_string.exit.i
  invoke void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #57
          to label %.noexc164 unwind label %bb.k, !dbg !167514

.noexc164:                                        ; preds = %bb.h
  unreachable, !dbg !167514

bb.i:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 23, !dbg !167515
  store i8 -38, ptr %i.at, align 1, !dbg !167515
  br label %bb.j, !dbg !167516

bb.j:                                             ; preds = %bb.l, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !167517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !167518
  %.not131 = icmp eq ptr %1, null, !dbg !167519   ; 12 uses
  br i1 %.not131, label %bb.n, label %bb.m, !dbg !167520

.body:                                            ; preds = %bb.df, %bb.k, %bb.bu
  %.sroa.091.0 = phi i1 [ %.not131, %bb.bu ], [ %.not131, %bb.df ], [ %.sroa.091.1, %bb.k ], !dbg !167521 ; 2 uses
  %.sroa.090.0 = phi i1 [ false, %bb.bu ], [ false, %bb.df ], [ %.sroa.090.1, %bb.k ], !dbg !167518 ; 2 uses
  %.sroa.084.0 = phi i8 [ %.sroa.084.7, %bb.bu ], [ %.sroa.084.7, %bb.df ], [ 1, %bb.k ], !dbg !167488 ; 2 uses
  %.sroa.082.0 = phi i8 [ %.sroa.082.7, %bb.bu ], [ %.sroa.082.7, %bb.df ], [ 1, %bb.k ], !dbg !167488 ; 2 uses
  %.sroa.080.0 = phi i8 [ %.sroa.080.7, %bb.bu ], [ %.sroa.080.7, %bb.df ], [ 1, %bb.k ], !dbg !167488 ; 2 uses
  %.sroa.074.0 = phi i8 [ %.sroa.074.9, %bb.bu ], [ %.sroa.074.9, %bb.df ], [ %.sroa.074.1, %bb.k ], !dbg !167488
  %.pn143 = phi { ptr, i32 } [ %.pn141, %bb.bu ], [ %.pn141, %bb.df ], [ %i.av, %bb.k ] ; 2 uses
  %i.au = trunc nuw i8 %.sroa.074.0 to i1, !dbg !167522
  br i1 %i.au, label %.body.thread, label %bb.bz, !dbg !167522

bb.k:                                             ; preds = %bb.cl, %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i
  %.sroa.091.1 = phi i1 [ %.not131, %bb.cl ], [ true, %bb.h ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !167523
  %.sroa.090.1 = phi i1 [ false, %bb.cl ], [ true, %bb.h ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !167523
  %.sroa.074.1 = phi i8 [ %.sroa.074.12, %bb.cl ], [ 1, %bb.h ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !167488
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr11from_string.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !167524
  store ptr %.sroa.0.1.i, ptr %i.ac, align 8, !dbg !167525
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !167525
  store i64 %.sroa.6.1.i, ptr %.sroa.4226.0..sroa_idx, align 8, !dbg !167525
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !167525
  store i64 %.sroa.7.1.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !167525
  %.sroa.6227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !167525
  store i32 %.sroa.4229.0.copyload, ptr %.sroa.6227.0..sroa_idx, align 8, !dbg !167525
  br label %bb.j, !dbg !167526

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10), !dbg !167414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !167414
  invoke void @_RNvNtNtCseeLknQCOKOd_13polars_python9lazyframe7general39pyobject_to_first_path_and_scan_sources(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.z, ptr noundef nonnull %1)
          to label %bb.s unwind label %.thread, !dbg !167414

bb.n:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.ab, align 8, !dbg !167527, !range !2931, !noundef !2739
  %i.ax = icmp ne i64 %i.aw, 0, !dbg !167528
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.az = load i64, ptr %i.ay, align 8
  %.not132 = icmp eq i64 %i.az, 0
  %or.cond156 = select i1 %i.ax, i1 true, i1 %.not132, !dbg !167528
  br i1 %or.cond156, label %bb.q, label %bb.o, !dbg !167528

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 16, !dbg !167529
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !167529, !nonnull !2739, !noundef !2739 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !167530, !nonnull !2739, !noundef !2739 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !167530
  %i.be = load i64, ptr %i.bd, align 8, !dbg !167530, !noundef !2739
  %i.bf = atomicrmw add ptr %i.bc, i64 1 monotonic, align 8, !dbg !167531
  %i.bg = icmp slt i64 %i.bf, 0, !dbg !167532
  br i1 %i.bg, label %bb.p, label %bb.q, !dbg !167532

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap(), !dbg !167533
  unreachable, !dbg !167533

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.0127.0 = phi ptr [ null, %bb.n ], [ %i.bc, %bb.o ], !dbg !167534
  %.sroa.4128.0 = phi i64 [ undef, %bb.n ], [ %i.be, %bb.o ], !dbg !167534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !dbg !167535
  br label %bb.r, !dbg !167536

bb.r:                                             ; preds = %bb.z, %bb.q
  %.sroa.0127.1 = phi ptr [ %.sroa.099.0.copyload, %bb.z ], [ %.sroa.0127.0, %bb.q ], !dbg !167537 ; 4 uses
  %.sroa.4128.1 = phi i64 [ %.sroa.5100.0.copyload, %bb.z ], [ %.sroa.4128.0, %bb.q ], !dbg !167537 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !167538
  store ptr %.sroa.0127.1, ptr %i.aa, align 8, !dbg !167538
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !167538
  store i64 %.sroa.4128.1, ptr %i.bh, align 8, !dbg !167538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !167539
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 23, !dbg !167540
  store i8 -38, ptr %i.bi, align 1, !dbg !167540
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !167541 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !167541
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 248, !dbg !167541
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 280, !dbg !167541
  store i8 0, ptr %i.bl, align 8, !dbg !167541
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 281, !dbg !167541
  store i8 0, ptr %i.bm, align 1, !dbg !167541
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 256, !dbg !167541
  %.sroa.3108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 215, !dbg !167541
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false), !dbg !167541
  store i8 -38, ptr %.sroa.3108.0..sroa_idx, align 1, !dbg !167541
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 272, !dbg !167541
  store i64 100, ptr %i.bo, align 8, !dbg !167541
  store i64 0, ptr %i.y, align 8, !dbg !167541
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 282, !dbg !167541 ; 2 uses
  store i8 0, ptr %i.bp, align 2, !dbg !167541
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 224, !dbg !167541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !167541
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 48, !dbg !167541
  store i64 2, ptr %i.br, align 8, !dbg !167541
  %.not133 = icmp eq ptr %.sroa.0127.1, null, !dbg !167542
  br i1 %.not133, label %bb.ab, label %bb.aa, !dbg !167543

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit209: ; preds = %bb.cp, %bb.cq, %.thread264, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread
  %.sroa.084.2 = phi i8 [ 1, %.thread264 ], [ %.sroa.084.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.084.5, %bb.cq ], [ %.sroa.084.5, %bb.cp ], !dbg !167488 ; 2 uses
  %.sroa.082.2 = phi i8 [ 1, %.thread264 ], [ %.sroa.082.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.082.5, %bb.cq ], [ %.sroa.082.5, %bb.cp ], !dbg !167488 ; 2 uses
  %.sroa.080.2 = phi i8 [ 1, %.thread264 ], [ %.sroa.080.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.080.5, %bb.cq ], [ %.sroa.080.5, %bb.cp ], !dbg !167488 ; 2 uses
  %.sroa.078.0 = phi i8 [ 1, %.thread264 ], [ %.sroa.078.3, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.078.3, %bb.cq ], [ %.sroa.078.3, %bb.cp ], !dbg !167544 ; 2 uses
  %.sroa.074.2 = phi i8 [ 0, %.thread264 ], [ %.sroa.074.7, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread ], [ %.sroa.074.7, %bb.cq ], [ %.sroa.074.7, %bb.cp ], !dbg !167523 ; 2 uses
  %.pn138.pn = phi { ptr, i32 } [ %i.dd, %.thread264 ], [ %.pn138, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread ], [ %.pn138, %bb.cq ], [ %.pn138, %bb.cp ] ; 2 uses
  br i1 %.not131, label %bb.bu, label %bb.de, !dbg !167545

.thread:                                          ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.de, !dbg !167545

bb.s:                                             ; preds = %bb.m
  %i.bt = load i64, ptr %i.z, align 8, !dbg !167546, !range !2795, !noundef !2739
  %i.bu = trunc nuw i64 %i.bt to i1, !dbg !167547
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !167548
  %.sroa.099.0.copyload = load ptr, ptr %i.bv, align 8, !dbg !167548 ; 2 uses
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !167548
  %.sroa.5100.0.copyload = load i64, ptr %.sroa.5100.0..sroa_idx, align 8, !dbg !167548 ; 2 uses
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !167548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6101.0..sroa_idx, i64 32, i1 false), !dbg !167548
  br i1 %i.bu, label %bb.t, label %bb.z, !dbg !167547

bb.t:                                             ; preds = %bb.s
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 56, !dbg !167549
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !167550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4106.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7102.0..sroa_idx, i64 16, i1 false), !dbg !167549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !167551
  %.sroa.3105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !167550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3105.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false), !dbg !167551
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167550
  store ptr %.sroa.099.0.copyload, ptr %i.bw, align 8, !dbg !167550
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !167550
  store i64 %.sroa.5100.0.copyload, ptr %.sroa.2104.0..sroa_idx, align 16, !dbg !167550
  store i64 1, ptr %0, align 16, !dbg !167550
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10), !dbg !167552
  call void @llvm.experimental.noalias.scope.decl(metadata !167417), !dbg !167545
  %i.bx = load i64, ptr %i.ab, align 8, !dbg !167553, !range !2931, !alias.scope !167417, !noundef !2739
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !167553 ; 5 uses
  switch i64 %i.bx, label %bb.u [
    i64 0, label %bb.w
    i64 1, label %bb.x
  ], !dbg !167553

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !167418), !dbg !167553
  call void @llvm.experimental.noalias.scope.decl(metadata !167419), !dbg !167554
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !167555, !alias.scope !167420, !nonnull !2739, !noundef !2739
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !167556, !noalias !167420
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !167557
  br i1 %i.cb, label %bb.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit, !dbg !167557

bb.v:                                             ; preds = %bb.u
  fence acquire, !dbg !167558
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.by) #56
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit unwind label %bb.bv, !dbg !167559

bb.w:                                             ; preds = %bb.t
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit unwind label %bb.bv, !dbg !167560

bb.x:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !167421), !dbg !167553
  call void @llvm.experimental.noalias.scope.decl(metadata !167422), !dbg !167561
  %i.cc = load ptr, ptr %i.by, align 8, !dbg !167562, !alias.scope !167423, !nonnull !2739, !noundef !2739
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !dbg !167563, !noalias !167423
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !167564
  br i1 %i.ce, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit, !dbg !167564

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !167565
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.by) #56
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit unwind label %bb.bv, !dbg !167566

bb.z:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !167551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false), !dbg !167414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10), !dbg !167552
  br label %bb.r, !dbg !167552

bb.aa:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !167567
  store ptr %.sroa.0127.1, ptr %i.x, align 8, !dbg !167567
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !167567
  store i64 %.sroa.4128.1, ptr %i.cf, align 8, !dbg !167567
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0127.1, i64 16, !dbg !167568
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !167439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !167439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !167569
  invoke void @_RNvMsd_NtCs2mZqlW55729_12polars_utils7pl_pathNtB5_11CloudScheme9from_path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %.sroa.4128.1)
          to label %bb.ae unwind label %bb.ac, !dbg !167569

bb.ab:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit172, %bb.r
  %.sroa.074.3 = phi i8 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit172 ], [ 1, %bb.r ], !dbg !167523 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.624), !dbg !167466
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.630), !dbg !167466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !167466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !167466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !167466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !167466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !167466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !167466
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB7_11PyLazyFrame15new_from_ndjson:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !167653, !noalias !167455
  br label %bb.az, !dbg !167654

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !167651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !167655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !dbg !167655
  invoke void @_RNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjsonNtB2_18LazyJsonLineReader14with_row_index(ptr noalias noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(288) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.k)
          to label %bb.bc unwind label %bb.al, !dbg !167656

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !167657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !167657
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 282, !dbg !167658
  %i.du = zext i1 %13 to i8, !dbg !167658
  store i8 %i.du, ptr %i.dt, align 2, !dbg !167658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.p, ptr noundef nonnull align 8 dereferenceable(288) %i.o, i64 288, i1 false), !dbg !167659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !167660
  %.sroa.067.0.copyload = load i64, ptr %14, align 8, !dbg !167661 ; 4 uses
  %.not136 = icmp eq i64 %.sroa.067.0.copyload, -9223372036854775808, !dbg !167662
  br i1 %.not136, label %bb.bk, label %bb.bd, !dbg !167663

bb.bd:                                            ; preds = %bb.bc
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8, !dbg !167661
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !167664 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !167664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4120.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.569.0..sroa_idx, i64 16, i1 false), !dbg !167665
  store i64 %.sroa.067.0.copyload, ptr %i.i, align 8, !dbg !167664
  call void @llvm.experimental.noalias.scope.decl(metadata !167459), !dbg !167664
  call void @llvm.experimental.noalias.scope.decl(metadata !167460), !dbg !167666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !167667
  %i.dv = icmp eq i64 %.sroa.067.0.copyload, 0, !dbg !167668
  br i1 %i.dv, label %bb.be, label %bb.bh, !dbg !167668, !prof !2797

bb.be:                                            ; preds = %bb.bi, %bb.bd
  %.sroa.7.0.i189 = phi i64 [ %.16..16..16..16..16..sroa.7.0.copyload7.i188, %bb.bi ], [ -4611686018427387904, %bb.bd ], !dbg !167669
  %.sroa.6.0.i190 = phi i64 [ %.8..8..8..8..8..sroa.6.0.copyload4.i186, %bb.bi ], [ 0, %bb.bd ], !dbg !167669
  %.sroa.0.0.i191 = phi ptr [ %.0..0..0..0..0..sroa.0.0.copyload1.i184, %bb.bi ], [ null, %bb.bd ], !dbg !167669
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i193 unwind label %bb.bf, !dbg !167670, !noalias !167461

bb.bf:                                            ; preds = %bb.be
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body194.thread unwind label %bb.bg, !dbg !167671, !noalias !167461

bb.bg:                                            ; preds = %bb.bf
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !167670, !noalias !167461
  unreachable, !dbg !167670

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i193: ; preds = %bb.be
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr11from_string.exit.i178 unwind label %.body194.thread282, !dbg !167672

bb.bh:                                            ; preds = %bb.bd
  %i.dy = or i64 %.sroa.067.0.copyload, -2882303761517117440, !dbg !167673
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !167674
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !167674, !alias.scope !167462, !noalias !167461, !noundef !2739 ; 5 uses
  %i.eb = icmp sgt i64 %i.ea, -1, !dbg !167675
  call void @llvm.assume(i1 %i.eb), !dbg !167676
  %i.ec = icmp samesign ult i64 %i.ea, 25, !dbg !167677
  %i.ed = load ptr, ptr %.sroa.4120.0..sroa_idx, align 8, !dbg !167669, !alias.scope !167462, !noalias !167461, !nonnull !2739, !noundef !2739 ; 2 uses
  br i1 %i.ec, label %bb.bi, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr11from_string.exit.i178, !dbg !167677

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.a, i8 0, i64 23, i1 false), !dbg !167678, !noalias !167463
  %i.ee = trunc nuw nsw i64 %i.ea to i8, !dbg !167679
  %i.ef = or disjoint i8 %i.ee, -64, !dbg !167680
  %.23..23..23..23..23..23..23..23..sroa_idx347 = getelementptr inbounds nuw i8, ptr %i.a, i64 23, !dbg !167680
  store i8 %i.ef, ptr %.23..23..23..23..23..23..23..23..sroa_idx347, align 1, !dbg !167680, !noalias !167463
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 1 %i.ed, i64 %i.ea, i1 false), !dbg !167681, !noalias !167463
  %.0..0..0..0..0..sroa.0.0.copyload1.i184 = load ptr, ptr %i.a, align 8, !dbg !167682, !noalias !167464
  %.8..8..8..8..8..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167682
  %.8..8..8..8..8..sroa.6.0.copyload4.i186 = load i64, ptr %.8..8..8..8..8..sroa_idx345, align 8, !dbg !167682, !noalias !167464
  %.16..16..16..16..16..sroa_idx346 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167682
  %.16..16..16..16..16..sroa.7.0.copyload7.i188 = load i64, ptr %.16..16..16..16..16..sroa_idx346, align 8, !dbg !167682, !noalias !167464
  br label %bb.be, !dbg !167683

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr11from_string.exit.i178: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i193, %bb.bh
  %.sroa.7.1.i179 = phi i64 [ %i.dy, %bb.bh ], [ %.sroa.7.0.i189, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i193 ], !dbg !167669 ; 2 uses
  %.sroa.6.1.i180 = phi i64 [ %i.ea, %bb.bh ], [ %.sroa.6.0.i190, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i193 ], !dbg !167669
  %.sroa.0.1.i181 = phi ptr [ %i.ed, %bb.bh ], [ %.sroa.0.0.i191, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i193 ], !dbg !167669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167684
  %.sroa.7.23.extract.shift.mask.i182 = and i64 %.sroa.7.1.i179, -72057594037927936, !dbg !167685
  %i.eg = icmp eq i64 %.sroa.7.23.extract.shift.mask.i182, -2738188573441261568, !dbg !167685
  br i1 %i.eg, label %bb.bj, label %_RNCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB9_11PyLazyFrame15new_from_ndjsons1_0Bb_.exit, !dbg !167686, !prof !2797

bb.bj:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr11from_string.exit.i178
  invoke void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #57
          to label %.noexc197 unwind label %.body194.thread282, !dbg !167687

.noexc197:                                        ; preds = %bb.bj
  unreachable, !dbg !167687

bb.bk:                                            ; preds = %bb.bc, %_RNCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB9_11PyLazyFrame15new_from_ndjsons1_0Bb_.exit
  invoke void @_RNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjsonNtB2_18LazyJsonLineReader23with_include_file_paths(ptr noalias noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(288) %i.p, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %bb.bl unwind label %.body194, !dbg !167688

.body194.thread282:                               ; preds = %bb.bj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i193
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body194.thread, !dbg !167689

.body194:                                         ; preds = %bb.bk
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread, !dbg !167689

_RNCNvMs0_NtNtCseeLknQCOKOd_13polars_python9lazyframe7generalNtB9_11PyLazyFrame15new_from_ndjsons1_0Bb_.exit: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr11from_string.exit.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !167690
  store ptr %.sroa.0.1.i181, ptr %i.j, align 8, !dbg !167691
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !167691
  store i64 %.sroa.6.1.i180, ptr %.sroa.4236.0..sroa_idx, align 8, !dbg !167691
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !167691
  store i64 %.sroa.7.1.i179, ptr %.sroa.5237.0..sroa_idx, align 8, !dbg !167691
  br label %bb.bk, !dbg !167692

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !167689
  invoke void @_RNvXs_NtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjsonNtB4_18LazyJsonLineReaderNtNtB6_16file_list_reader18LazyFileListReader6finish(ptr noalias noundef nonnull sret([384 x i8]) align 16 captures(none) dereferenceable(384) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(288) %i.q)
          to label %bb.bm unwind label %bb.al, !dbg !167693

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !167694
  %i.eh = load i64, ptr %i.r, align 16, !dbg !167695, !range !3073, !noundef !2739 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, -9223372036854775778, !dbg !167695
  %i.ej = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !167696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.630, ptr noundef nonnull align 8 dereferenceable(72) %i.ej, i64 72, i1 false), !dbg !167696
  br i1 %i.ei, label %bb.cc, label %bb.bn, !dbg !167697

bb.bn:                                            ; preds = %bb.bm
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 80, !dbg !167698
  %.sroa.4224.sroa.6.0..sroa.4224.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !167699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.4224.sroa.6.0..sroa.4224.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.6123.0..sroa_idx, i64 304, i1 false), !dbg !167698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !167700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.624, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.630, i64 72, i1 false), !dbg !167701
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630), !dbg !167702
  %.sroa.4224.sroa.5.0..sroa.4224.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !167699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4224.sroa.5.0..sroa.4224.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.624, i64 72, i1 false), !dbg !167466
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624), !dbg !167703
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !167699
  store i64 0, ptr %i.ek, align 16, !dbg !167699
  %.sroa.4224.sroa.4.0..sroa.4224.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !167699
  store i64 %i.eh, ptr %.sroa.4224.sroa.4.0..sroa.4224.0..sroa_idx.sroa_idx, align 16, !dbg !167699
  store i64 0, ptr %0, align 16, !dbg !167699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !167618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !167620
  br i1 %.not131, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit201, label %bb.bo, !dbg !167545

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit201: ; preds = %bb.bs, %bb.bp, %bb.bq, %bb.br, %bb.bt, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !167545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !167522
  %i.el = trunc nuw i8 %.sroa.074.3 to i1, !dbg !167522
  %i.em = icmp ne ptr %16, null
  %or.cond323.not = and i1 %i.em, %i.el, !dbg !167522
  br i1 %or.cond323.not, label %bb.bw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB17_5types3any5PyAnyEEECseeLknQCOKOd_13polars_python.exit, !dbg !167522

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !167467), !dbg !167545
  %i.en = load i64, ptr %i.ab, align 8, !dbg !167704, !range !2931, !alias.scope !167467, !noundef !2739
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !167704 ; 5 uses
  switch i64 %i.en, label %bb.bp [
    i64 0, label %bb.br
    i64 1, label %bb.bs
  ], !dbg !167704

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !167468), !dbg !167704
  call void @llvm.experimental.noalias.scope.decl(metadata !167469), !dbg !167705
  %i.ep = load ptr, ptr %i.eo, align 8, !dbg !167706, !alias.scope !167470, !nonnull !2739, !noundef !2739
  %i.eq = atomicrmw sub ptr %i.ep, i64 1 release, align 8, !dbg !167707, !noalias !167470
  %i.er = icmp eq i64 %i.eq, 1, !dbg !167708
  br i1 %i.er, label %bb.bq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit201, !dbg !167708

bb.bq:                                            ; preds = %bb.bp
  fence acquire, !dbg !167709
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.eo) #56
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit201 unwind label %bb.bv, !dbg !167710

bb.br:                                            ; preds = %bb.bo
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit201 unwind label %bb.bv, !dbg !167711

bb.bs:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !167471), !dbg !167704
  call void @llvm.experimental.noalias.scope.decl(metadata !167472), !dbg !167712
  %i.es = load ptr, ptr %i.eo, align 8, !dbg !167713, !alias.scope !167473, !nonnull !2739, !noundef !2739
  %i.et = atomicrmw sub ptr %i.es, i64 1 release, align 8, !dbg !167714, !noalias !167473
  %i.eu = icmp eq i64 %i.et, 1, !dbg !167715
  br i1 %i.eu, label %bb.bt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit201, !dbg !167715

bb.bt:                                            ; preds = %bb.bs
  fence acquire, !dbg !167716
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.eo) #56
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit201 unwind label %bb.bv, !dbg !167717

bb.bu:                                            ; preds = %bb.de, %bb.bv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit209
  %.sroa.084.7 = phi i8 [ %.sroa.078.6, %bb.bv ], [ %.sroa.084.2250, %bb.de ], [ %.sroa.084.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit209 ], !dbg !167488 ; 2 uses
  %.sroa.082.7 = phi i8 [ %.sroa.078.6, %bb.bv ], [ %.sroa.082.2251, %bb.de ], [ %.sroa.082.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit209 ], !dbg !167488 ; 2 uses
  %.sroa.080.7 = phi i8 [ %.sroa.078.6, %bb.bv ], [ %.sroa.080.2252, %bb.de ], [ %.sroa.080.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit209 ], !dbg !167488 ; 2 uses
  %.sroa.078.5 = phi i8 [ %.sroa.078.6, %bb.bv ], [ %.sroa.078.0253, %bb.de ], [ %.sroa.078.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit209 ], !dbg !167544
  %.sroa.074.9 = phi i8 [ %.sroa.074.10, %bb.bv ], [ %.sroa.074.2254, %bb.de ], [ %.sroa.074.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit209 ], !dbg !167523 ; 2 uses
  %.pn141 = phi { ptr, i32 } [ %i.ey, %bb.bv ], [ %.pn138.pn255, %bb.de ], [ %.pn138.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit209 ] ; 2 uses
  %i.ev = trunc nuw i8 %.sroa.078.5 to i1, !dbg !167522
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ac, i64 23
  %i.ex = load i8, ptr %i.ew, align 1, !range !3023
  %cond.i216 = icmp eq i8 %i.ex, -40
  %or.cond329 = select i1 %i.ev, i1 %cond.i216, i1 false, !dbg !167522, !prof !167474
  br i1 %or.cond329, label %bb.df, label %.body, !dbg !167522, !prof !167474

bb.bv:                                            ; preds = %bb.cj, %bb.ch, %bb.cg, %bb.bt, %bb.br, %bb.bq, %bb.y, %bb.w, %bb.v
  %.sroa.078.6 = phi i8 [ 1, %bb.y ], [ %.sroa.078.4, %bb.cj ], [ 0, %bb.bt ], [ 1, %bb.v ], [ 1, %bb.w ], [ 0, %bb.bq ], [ 0, %bb.br ], [ %.sroa.078.4, %bb.cg ], [ %.sroa.078.4, %bb.ch ], !dbg !167523 ; 4 uses
  %.sroa.074.10 = phi i8 [ 1, %bb.y ], [ %.sroa.074.8, %bb.cj ], [ %.sroa.074.3, %bb.bt ], [ 1, %bb.v ], [ 1, %bb.w ], [ %.sroa.074.3, %bb.bq ], [ %.sroa.074.3, %bb.br ], [ %.sroa.074.8, %bb.cg ], [ %.sroa.074.8, %bb.ch ], !dbg !167523
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB17_5types3any5PyAnyEEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.by, %bb.bx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit201
  call void @_Py_DecRef(ptr noundef nonnull %15) #52, !dbg !167718
  br label %bb.cb, !dbg !167719

bb.bw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit201
  %i.ez = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !167720
  %.val.i.i.i.i.i = load i64, ptr %i.ez, align 8, !dbg !167721, !noundef !2739
  %i.fa = icmp sgt i64 %.val.i.i.i.i.i, 0, !dbg !167722
  br i1 %i.fa, label %bb.by, label %bb.bx, !dbg !167723, !prof !3064

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB17_5types3any5PyAnyEEECseeLknQCOKOd_13polars_python.exit unwind label %bb.ca, !dbg !167724

bb.by:                                            ; preds = %bb.bw
  call void @_Py_DecRef(ptr noundef nonnull %16) #52, !dbg !167725
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB17_5types3any5PyAnyEEECseeLknQCOKOd_13polars_python.exit, !dbg !167726

bb.bz:                                            ; preds = %.body.thread, %bb.ca, %.body
  %.sroa.091.6 = phi i1 [ %.not131, %bb.ca ], [ %.sroa.091.0316, %.body.thread ], [ %.sroa.091.0, %.body ], !dbg !167521 ; 2 uses
  %.sroa.090.2 = phi i1 [ false, %bb.ca ], [ %.sroa.090.0317, %.body.thread ], [ %.sroa.090.0, %.body ], !dbg !167518 ; 2 uses
  %.sroa.084.9 = phi i8 [ %.sroa.080.10, %bb.ca ], [ %.sroa.084.0318, %.body.thread ], [ %.sroa.084.0, %.body ], !dbg !167488 ; 2 uses
  %.sroa.082.9 = phi i8 [ %.sroa.080.10, %bb.ca ], [ %.sroa.082.0319, %.body.thread ], [ %.sroa.082.0, %.body ], !dbg !167488
  %.sroa.080.9 = phi i8 [ %.sroa.080.10, %bb.ca ], [ %.sroa.080.0320, %.body.thread ], [ %.sroa.080.0, %.body ], !dbg !167488
  %.pn145 = phi { ptr, i32 } [ %i.fc, %bb.ca ], [ %.pn143321, %.body.thread ], [ %.pn143, %.body ] ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %15) #52, !dbg !167727
  %i.fb = trunc nuw i8 %.sroa.080.9 to i1, !dbg !167522
  br i1 %i.fb, label %bb.dg, label %bb.cz, !dbg !167522

bb.ca:                                            ; preds = %bb.cs, %bb.bx
  %.sroa.080.10 = phi i8 [ %.sroa.080.13, %bb.cs ], [ 0, %bb.bx ], !dbg !167523 ; 3 uses
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.cb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB17_5types3any5PyAnyEEECseeLknQCOKOd_13polars_python.exit, %bb.cu, %bb.dc
  ret void, !dbg !167728

bb.cc:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !167700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.624, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.630, i64 72, i1 false), !dbg !167729
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630), !dbg !167702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !167730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.624, i64 72, i1 false), !dbg !167702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !167731
  invoke void @_RNvXs2_NtCseeLknQCOKOd_13polars_python5errorNtNtCsbm5zPlkZccl_4pyo33err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_11PyPolarsErrE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.h)
          to label %bb.cd unwind label %bb.al, !dbg !167731

bb.cd:                                            ; preds = %bb.cc
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fd, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !dbg !167732
  store i64 1, ptr %0, align 16, !dbg !167732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !167733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !167730
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624), !dbg !167703
  br label %bb.am, !dbg !167734

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206: ; preds = %bb.ci, %bb.cf, %bb.cg, %bb.ch, %bb.cj, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !167545
  %i.fe = trunc nuw i8 %.sroa.078.4 to i1, !dbg !167522
  br i1 %i.fe, label %bb.ck, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit, !dbg !167522

bb.ce:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !167478), !dbg !167545
  %i.ff = load i64, ptr %i.ab, align 8, !dbg !167735, !range !2931, !alias.scope !167478, !noundef !2739
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !167735 ; 5 uses
  switch i64 %i.ff, label %bb.cf [
    i64 0, label %bb.ch
    i64 1, label %bb.ci
  ], !dbg !167735

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !167479), !dbg !167735
  call void @llvm.experimental.noalias.scope.decl(metadata !167480), !dbg !167736
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !167737, !alias.scope !167481, !nonnull !2739, !noundef !2739
  %i.fi = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !dbg !167738, !noalias !167481
  %i.fj = icmp eq i64 %i.fi, 1, !dbg !167739
  br i1 %i.fj, label %bb.cg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206, !dbg !167739

bb.cg:                                            ; preds = %bb.cf
  fence acquire, !dbg !167740
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fg) #56
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206 unwind label %bb.bv, !dbg !167741

bb.ch:                                            ; preds = %bb.ce
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206 unwind label %bb.bv, !dbg !167742

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !167482), !dbg !167735
  call void @llvm.experimental.noalias.scope.decl(metadata !167483), !dbg !167743
  %i.fk = load ptr, ptr %i.fg, align 8, !dbg !167744, !alias.scope !167484, !nonnull !2739, !noundef !2739
  %i.fl = atomicrmw sub ptr %i.fk, i64 1 release, align 8, !dbg !167745, !noalias !167484
  %i.fm = icmp eq i64 %i.fl, 1, !dbg !167746
  br i1 %i.fm, label %bb.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206, !dbg !167746

bb.cj:                                            ; preds = %bb.ci
  fence acquire, !dbg !167747
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fg) #56
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206 unwind label %bb.bv, !dbg !167748

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.ck, %bb.cl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206
  %cond = phi i1 [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206 ], [ false, %bb.cl ], [ false, %bb.ck ], !dbg !167488
  %.sroa.080.13 = phi i8 [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206 ], [ 1, %bb.cl ], [ 1, %bb.ck ], !dbg !167488
  %.sroa.074.11 = phi i8 [ %.sroa.074.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206 ], [ %.sroa.074.12, %bb.cl ], [ %.sroa.074.12, %bb.ck ], !dbg !167523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !167522
  %i.fn = trunc nuw i8 %.sroa.074.11 to i1, !dbg !167522
  %i.fo = icmp ne ptr %16, null
  %or.cond325.not = and i1 %i.fo, %i.fn, !dbg !167522
  br i1 %or.cond325.not, label %bb.cr, label %bb.cu, !dbg !167522

bb.ck:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206
  %.sroa.074.12 = phi i8 [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit ], [ %.sroa.074.8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit206 ], !dbg !167523 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ac, i64 23, !dbg !167749
  %i.fq = load i8, ptr %i.fp, align 1, !dbg !167749, !range !3023, !alias.scope !167485, !noundef !2739
  %cond.i = icmp eq i8 %i.fq, -40, !dbg !167749
  br i1 %cond.i, label %bb.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit, !dbg !167749, !prof !3024

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit unwind label %bb.k, !dbg !167750

.body194.thread:                                  ; preds = %bb.bf, %.body194.thread282
  %eh.lpad-body195281 = phi { ptr, i32 } [ %lpad.thr_comm, %.body194.thread282 ], [ %i.dw, %bb.bf ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjson18LazyJsonLineReaderECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(288) %i.p) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread unwind label %bb.an, !dbg !167689

bb.cm:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjson18LazyJsonLineReaderECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(288) %i.m) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread unwind label %bb.an, !dbg !167651

bb.cn:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjson18LazyJsonLineReaderECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(288) %i.l) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread unwind label %bb.an, !dbg !167633

bb.co:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjson18LazyJsonLineReaderECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(288) %i.y) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread unwind label %bb.an, !dbg !167618

bb.cp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit.thread
  %i.fr = atomicrmw sub ptr %i.da, i64 1 release, align 8, !dbg !167751, !noalias !167486
  %i.fs = icmp eq i64 %i.fr, 1, !dbg !167752
  br i1 %i.fs, label %bb.cq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit209, !dbg !167752

bb.cq:                                            ; preds = %bb.cp
  fence acquire, !dbg !167753
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #56
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECseeLknQCOKOd_13polars_python.exit209 unwind label %bb.an, !dbg !167754

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.x, %bb.u, %bb.v, %bb.w, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !167545
  br label %bb.ck, !dbg !167522

bb.cr:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit
  %i.ft = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !167755
  %.val.i.i.i.i.i210 = load i64, ptr %i.ft, align 8, !dbg !167756, !noundef !2739
  %i.fu = icmp sgt i64 %.val.i.i.i.i.i210, 0, !dbg !167757
  br i1 %i.fu, label %bb.ct, label %bb.cs, !dbg !167758, !prof !3064

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %16)
          to label %bb.cu unwind label %bb.ca, !dbg !167759

bb.ct:                                            ; preds = %bb.cr
  call void @_Py_DecRef(ptr noundef nonnull %16) #52, !dbg !167760
  br label %bb.cu, !dbg !167761

bb.cu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECseeLknQCOKOd_13polars_python.exit, %bb.cs, %bb.ct
  call void @_Py_DecRef(ptr noundef nonnull %15) #52, !dbg !167762
  br i1 %cond, label %bb.cb, label %bb.cv, !dbg !167522

bb.cv:                                            ; preds = %bb.cu
  %i.fv = load i64, ptr %14, align 8, !dbg !167763, !range !2796, !alias.scope !167487, !noundef !2739
  %i.fw = icmp eq i64 %i.fv, -9223372036854775808, !dbg !167763
  br i1 %i.fw, label %.noexc215, label %bb.cw, !dbg !167763

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %14)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.cx, !dbg !167764

end_hunk_1
