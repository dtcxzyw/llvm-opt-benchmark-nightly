Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.09?download=true
inline.NumInlined: 13234
inline.NumDeleted: 6507
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsE13new_uninit_inBM_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4asof11AsOfOptionsE13new_uninit_inCsfcROwRM8ZtH_11polars_plan() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !131143 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !131152
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(176) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 2, 641) 176, i64 noundef range(i64 1, 17) 16) #31, !dbg !131153 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !131154
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !131155, !prof !2700

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 176) #30, !dbg !131156
  unreachable, !dbg !131156

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !131157
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxTINtNtB6_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB11_5field5FieldEEE13new_uninit_inCsfcROwRM8ZtH_11polars_plan() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !131158 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !131167
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 2, 641) 48, i64 noundef range(i64 1, 17) 8) #31, !dbg !131168 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !131169
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !131170, !prof !2700

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #30, !dbg !131171
  unreachable, !dbg !131171

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !131172
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan3dsl11builder_dslNtB4_10DslBuilder10drop_nulls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 16 captures(none) dereferenceable(368) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(368) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !131173 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [144 x i8], align 16              ; 4 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 4 uses
  %i.e = alloca [368 x i8], align 16              ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [144 x i8], align 16              ; 5 uses
  %i.i = alloca [144 x i8], align 16              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !131199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !131199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !131200
  store i64 36, ptr %i.f, align 8, !dbg !131200
  %i.j = load i64, ptr %2, align 8, !dbg !131201, !range !2824, !noundef !2617
  %.not = icmp eq i64 %i.j, 38, !dbg !131201
  br i1 %.not, label %bb.c, label %bb.b, !dbg !131202

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !131203
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.d unwind label %bb.m, !dbg !131204

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !131205
  br label %bb.d, !dbg !131205

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !131206
  call void @llvm.experimental.noalias.scope.decl(metadata !131190), !dbg !131207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !131208, !alias.scope !131191
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112, !dbg !131208
  store i64 -9223372036854775805, ptr %i.k, align 16, !dbg !131208, !alias.scope !131192, !noalias !131190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !131209
  invoke void @_RNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB2_4expr4Expr11is_not_null(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.h)
          to label %bb.e unwind label %bb.m, !dbg !131210

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !131211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !131212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.e, ptr noundef nonnull align 16 dereferenceable(368) %1, i64 368, i1 false), !dbg !131212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !131213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !131213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !131214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.b, ptr noundef nonnull align 16 dereferenceable(144) %i.i, i64 144, i1 false), !dbg !131214
  invoke void @_RINvNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions10horizontal14all_horizontalANtNtB6_4expr4Exprj1_EB8_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.b)
          to label %bb.f unwind label %.body.thread12, !dbg !131213

.body.thread12:                                   ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread, !dbg !131215

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !131216
  call void @llvm.experimental.noalias.scope.decl(metadata !131193), !dbg !131217
  call void @llvm.experimental.noalias.scope.decl(metadata !131194), !dbg !131217
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !131218
  %i.n = load i64, ptr %i.m, align 16, !dbg !131218, !range !3066, !alias.scope !131194, !noalias !131195, !noundef !2617
  %i.o = icmp eq i64 %i.n, -9223372036854775780, !dbg !131218
  br i1 %i.o, label %bb.g, label %bb.k, !dbg !131219, !prof !2700

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !131220, !noalias !131196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(144) %i.c, i64 72, i1 false), !dbg !131220, !noalias !131195
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @249, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #30
          to label %bb.i unwind label %bb.h, !dbg !131221, !noalias !131197

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #29
          to label %.body.thread unwind label %bb.j, !dbg !131222, !noalias !131197

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !131223, !noalias !131197
  unreachable, !dbg !131223

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(144) %i.c, i64 144, i1 false), !dbg !131224, !alias.scope !131197, !noalias !131198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !131225
  call void @_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan3dsl11builder_dslNtB4_10DslBuilder6filter(ptr noalias noundef nonnull sret([368 x i8]) align 16 captures(none) dereferenceable(368) %0, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(368) %1, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.d), !dbg !131226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !131215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !131215
  ret void, !dbg !131227

.body.thread:                                     ; preds = %bb.h, %.body.thread12
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.l, %.body.thread12 ], [ %i.p, %bb.h ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl11builder_dsl10DslBuilderEBM_.exit4 unwind label %bb.l, !dbg !131228

bb.l:                                             ; preds = %bb.m, %.body.thread
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !131229
  unreachable, !dbg !131229

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl11builder_dsl10DslBuilderEBM_.exit4: ; preds = %.body.thread, %bb.m
  %.pn7 = phi { ptr, i32 } [ %i.s, %bb.m ], [ %eh.lpad-body11, %.body.thread ]
  resume { ptr, i32 } %.pn7, !dbg !131229

bb.m:                                             ; preds = %bb.d, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEBM_(ptr noalias noundef nonnull align 16 dereferenceable(368) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl11builder_dsl10DslBuilderEBM_.exit4 unwind label %bb.l, !dbg !131230
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan3dsl11builder_dslNtB4_10DslBuilder10map_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 16 captures(none) dereferenceable(368) %0, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(368) %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !131231 {
bb.a:
  %i.a = alloca [384 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %4, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !131276
  store i64 1, ptr %i.a, align 16, !dbg !131276
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !131276
  store i64 1, ptr %i.c, align 8, !dbg !131276
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !131276 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.d, ptr noundef nonnull align 16 dereferenceable(368) %1, i64 368, i1 false), !dbg !131276
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !131277, !noalias !131259
  %i.e = tail call noundef align 16 dereferenceable_or_null(384) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 2, 641) 384, i64 noundef range(i64 1, 17) 16) #31, !dbg !131278, !noalias !131259 ; 3 uses
  %i.f = icmp eq ptr %i.e, null, !dbg !131279
  br i1 %i.f, label %bb.b, label %bb.g, !dbg !131280, !prof !2700

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 384) #30
          to label %.noexc unwind label %bb.c, !dbg !131281

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !131281

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEBM_(ptr noalias noundef align 16 dereferenceable(368) %i.d)
          to label %.body unwind label %bb.d, !dbg !131282

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !131283
  unreachable, !dbg !131283

.body:                                            ; preds = %bb.c
  %i.i = icmp eq ptr %4, null, !dbg !131284
  br i1 %i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !131284

bb.e:                                             ; preds = %.body
  %i.j = atomicrmw sub ptr %4, i64 1 release, align 8, !dbg !131285, !noalias !131260
  %i.k = icmp eq i64 %i.j, 1, !dbg !131286
  br i1 %i.k, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !131286

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !131287
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.h, !dbg !131288

bb.g:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %i.e, ptr noundef nonnull align 16 dereferenceable(384) %i.a, i64 384, i1 false), !dbg !131289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !131290
  %i.l = trunc i32 %3 to i8, !dbg !131291
  %6 = lshr i32 %3, 2, !dbg !131292
  %7 = trunc i32 %6 to i8, !dbg !131292
  %i.m = and i8 %7, 1, !dbg !131292
  %i.n = and i8 %i.l, 1, !dbg !131292
  %i.o = lshr i32 %3, 11, !dbg !131292
  %i.p = trunc i32 %i.o to i8, !dbg !131292
  %i.q = and i8 %i.p, 1, !dbg !131292
  %i.r = zext i1 %5 to i8, !dbg !131292
  store i64 -9223372036854775786, ptr %0, align 16, !dbg !131293
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !131293
  store i64 13, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 16, !dbg !131293
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !131293
  store ptr %4, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !131293
  %.sroa.4.sroa.4.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !131293
  store ptr %2, ptr %.sroa.4.sroa.4.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 16, !dbg !131293
  %.sroa.4.sroa.4.sroa.5.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !131293
  store i8 %i.m, ptr %.sroa.4.sroa.4.sroa.5.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !131293
  %.sroa.4.sroa.4.sroa.6.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41, !dbg !131293
  store i8 %i.n, ptr %.sroa.4.sroa.4.sroa.6.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 1, !dbg !131293
  %.sroa.4.sroa.4.sroa.7.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42, !dbg !131293
  store i8 %i.q, ptr %.sroa.4.sroa.4.sroa.7.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !131293
  %.sroa.4.sroa.4.sroa.8.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 43, !dbg !131293
  store i8 %i.r, ptr %.sroa.4.sroa.4.sroa.8.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 1, !dbg !131293
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !131293
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !131293
  ret void, !dbg !131294

bb.h:                                             ; preds = %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !131295
  unreachable, !dbg !131295

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.e, %.body, %bb.f
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectECsfcROwRM8ZtH_11polars_plan(ptr nonnull %2) #29
          to label %bb.i unwind label %bb.h, !dbg !131296

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit
  resume { ptr, i32 } %i.g, !dbg !131295
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan3dsl11builder_dslNtB4_10DslBuilder10scan_lines(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 16 captures(none) dereferenceable(368) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(376) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !131297 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !131331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !131331
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !131332, !noalias !131328
  %i.c = tail call noundef align 8 dereferenceable_or_null(376) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 2, 641) 376, i64 noundef range(i64 1, 17) 8) #31, !dbg !131333, !noalias !131328 ; 4 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !131334     ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !131335, !prof !2700

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 376) #30
          to label %.noexc unwind label %bb.c, !dbg !131336

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !131336

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEBM_(ptr noalias noundef nonnull align 8 dereferenceable(376) %2) #29
          to label %.body12 unwind label %bb.d, !dbg !131337

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !131338
  unreachable, !dbg !131338

.body12:                                          ; preds = %bb.c, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.e, %bb.c ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.b) #29
          to label %bb.m unwind label %bb.l, !dbg !131339

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.c, ptr noundef nonnull align 8 dereferenceable(376) %2, i64 376, i1 false), !dbg !131340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !131341
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !131341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !131342
  store i64 7, ptr %i.a, align 8, !dbg !131341
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !131343, !noalias !131329
  %i.h = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 2, 641) 72, i64 noundef range(i64 1, 17) 8) #31, !dbg !131344, !noalias !131329 ; 4 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !131345
  br i1 %i.i, label %bb.f, label %bb.i, !dbg !131346, !prof !2700

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #30
          to label %.noexc15 unwind label %bb.g, !dbg !131347

.noexc15:                                         ; preds = %bb.f
  unreachable, !dbg !131347

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEBM_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #29
          to label %.body unwind label %bb.h, !dbg !131348

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !131349
  unreachable, !dbg !131349

.body:                                            ; preds = %bb.g, %bb.j
  %.pn = phi { ptr, i32 } [ %i.m, %bb.j ], [ %i.j, %bb.g ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan15UnifiedScanArgsEEB1l_(ptr %i.c) #29
          to label %.body12 unwind label %bb.l, !dbg !131339

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !131350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !131351
  %i.l = invoke noundef nonnull ptr @_RNvXsX_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREEENtNtB1A_7default7Default7defaultB2d_()
          to label %bb.k unwind label %bb.j, !dbg !131352

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan11FileScanDslEEB1l_(ptr %i.h) #29
          to label %.body unwind label %bb.l, !dbg !131339

bb.k:                                             ; preds = %bb.i
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !131353
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !131354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !131339
  store i64 -9223372036854775799, ptr %0, align 16, !dbg !131353
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !131353
  store ptr %i.c, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !131353
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !131353
  store ptr %i.h, ptr %.sroa.64.0..sroa_idx, align 16, !dbg !131353
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !131353
  store ptr %i.l, ptr %.sroa.75.0..sroa_idx, align 8, !dbg !131353
  ret void, !dbg !131355

bb.l:                                             ; preds = %bb.o, %bb.j, %.body, %.body12
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !131356
  unreachable, !dbg !131356

bb.m:                                             ; preds = %.body12
  br i1 %i.d, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit, !dbg !131357

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.n, %bb.o, %bb.m
  resume { ptr, i32 } %.pn.pn, !dbg !131356

bb.n:                                             ; preds = %bb.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 23, !dbg !131358
  %i.p = load i8, ptr %i.o, align 1, !dbg !131358, !range !2790, !alias.scope !131330, !noundef !2617
  %i.q = icmp eq i8 %i.p, -40, !dbg !131359
  br i1 %i.q, label %bb.o, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit, !dbg !131359, !prof !2700

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.l, !dbg !131360
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsfcROwRM8ZtH_11polars_plan3dsl11builder_dslNtB4_10DslBuilder11map_private(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 16 captures(none) dereferenceable(368) %0, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(368) %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(208) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !131361 {
bb.a:
  %i.a = alloca [384 x i8], align 16              ; 6 uses
  %.sroa.4 = alloca [216 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !131379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !131380
  store i64 1, ptr %i.a, align 16, !dbg !131380
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !131380
  store i64 1, ptr %i.b, align 8, !dbg !131380
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !131380 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.c, ptr noundef nonnull align 16 dereferenceable(368) %1, i64 368, i1 false), !dbg !131380
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !131381, !noalias !131375
  %i.d = tail call noundef align 16 dereferenceable_or_null(384) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 2, 641) 384, i64 noundef range(i64 1, 17) 16) #31, !dbg !131382, !noalias !131375 ; 3 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !131383
  br i1 %i.e, label %bb.b, label %bb.e, !dbg !131384, !prof !2700

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 384) #30
          to label %.noexc unwind label %bb.c, !dbg !131385

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !131385

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanEBM_(ptr noalias noundef align 16 dereferenceable(368) %i.c)
          to label %.body unwind label %bb.d, !dbg !131386

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !131387
  unreachable, !dbg !131387

.body:                                            ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dsl11DslFunctionEBO_(ptr noalias noundef align 16 dereferenceable(208) %2) #29
          to label %bb.g unwind label %bb.f, !dbg !131388

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %i.d, ptr noundef nonnull align 16 dereferenceable(384) %i.a, i64 384, i1 false), !dbg !131389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !131390
end_hunk_0
