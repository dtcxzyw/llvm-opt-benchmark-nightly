inline.NumInlined: 6898
inline.NumDeleted: 3505
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers7parquet17row_group_encoderNtB2y_15RowGroupEncoder3run0000INtNtCscgRAwXFJnXP_4core6result6ResultIBJ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEINtNtNtNtB4z_4iter6traits7collect6ExtendBW_E6extendINtNtNtB7D_8adapters3map3MapIB8m_INtNtB8q_9enumerate9EnumerateINtNtB5d_9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEENCB2r_0ENCINvBZ_31parallelize_first_to_local_implB8N_B2n_B4u_E0EEB2I_:bb.a
bb.m:                                             ; preds = %thread-pre-split, %bb.k
  %i.bg = phi i32 [ %.pr, %thread-pre-split ], [ %i.be, %bb.k ], !dbg !44681
  %i.bh = icmp eq i32 %i.bg, 1, !dbg !44686
  br i1 %i.bh, label %bb.q, label %bb.o, !dbg !44686

bb.n:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ai, ptr %i.o, align 8, !dbg !44658
  store ptr %i.ah, ptr %i.m, align 8, !dbg !44659
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers7parquet17row_group_encoderNtB2i_15RowGroupEncoder3run0000INtNtB4_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB2s_(ptr noundef nonnull align 16 dereferenceable(304) %i.c) #54
          to label %.body unwind label %bb.p, !dbg !44687

bb.o:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %0, align 16, !dbg !44688, !noalias !44676, !noundef !14
  br label %bb.q, !dbg !44689

bb.p:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !44690
  unreachable, !dbg !44690

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapIBH_INtNtBL_9enumerate9EnumerateINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEENCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers7parquet17row_group_encoderNtB3A_15RowGroupEncoder3run000ENCINvNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future31parallelize_first_to_local_implB1e_NCNCB3t_00INtNtB4_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecINtB1P_3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0EEB3K_.exit7.sink.split: ; preds = %bb.q, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  %.lcssa64.sink = phi i64 [ %i.af, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %i.ai, %bb.q ]
  store i64 %.lcssa64.sink, ptr %i.o, align 8, !dbg !44658
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapIBH_INtNtBL_9enumerate9EnumerateINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEENCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers7parquet17row_group_encoderNtB3A_15RowGroupEncoder3run000ENCINvNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future31parallelize_first_to_local_implB1e_NCNCB3t_00INtNtB4_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecINtB1P_3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0EEB3K_.exit7, !dbg !44659

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapIBH_INtNtBL_9enumerate9EnumerateINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEENCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers7parquet17row_group_encoderNtB3A_15RowGroupEncoder3run000ENCINvNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future31parallelize_first_to_local_implB1e_NCNCB3t_00INtNtB4_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecINtB1P_3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0EEB3K_.exit7: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapIBH_INtNtBL_9enumerate9EnumerateINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEENCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers7parquet17row_group_encoderNtB3A_15RowGroupEncoder3run000ENCINvNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future31parallelize_first_to_local_implB1e_NCNCB3t_00INtNtB4_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecINtB1P_3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0EEB3K_.exit7.sink.split, %bb.b
  %i.bl = phi ptr [ %.promoted, %bb.b ], [ %i.ah, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapIBH_INtNtBL_9enumerate9EnumerateINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEENCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers7parquet17row_group_encoderNtB3A_15RowGroupEncoder3run000ENCINvNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future31parallelize_first_to_local_implB1e_NCNCB3t_00INtNtB4_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecINtB1P_3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0EEB3K_.exit7.sink.split ]
  store ptr %i.bl, ptr %i.m, align 8, !dbg !44659
  call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.d), !dbg !44691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !44660
  ret void, !dbg !44696

bb.q:                                             ; preds = %bb.o, %bb.m
  %.sroa.0.0.i = phi ptr [ %i.bj, %bb.o ], [ %0, %bb.m ], !dbg !44697
  %i.bm = load i32, ptr %i.ad, align 16, !dbg !44698, !noalias !44676, !noundef !14
  %i.bn = zext i32 %i.bm to i64, !dbg !44698
  %i.bo = getelementptr inbounds nuw [304 x i8], ptr %.sroa.0.0.i, i64 %i.bn, !dbg !44699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.bo, ptr noundef nonnull align 16 dereferenceable(304) %i.c, i64 304, i1 false), !dbg !44701
  %i.bp = load i32, ptr %i.ad, align 16, !dbg !44704, !noalias !44676, !noundef !14
  %i.bq = add i32 %i.bp, 1, !dbg !44704
  store i32 %i.bq, ptr %i.ad, align 16, !dbg !44704, !noalias !44676
  %i.br = icmp eq ptr %i.ah, %i.l, !dbg !44500
  br i1 %i.br, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapIBH_INtNtBL_9enumerate9EnumerateINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEENCNCNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers7parquet17row_group_encoderNtB3A_15RowGroupEncoder3run000ENCINvNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future31parallelize_first_to_local_implB1e_NCNCB3t_00INtNtB4_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecINtB1P_3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0EEB3K_.exit7.sink.split, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !44512

bb.r:                                             ; preds = %bb.s, %.body
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !44705
  unreachable, !dbg !44705

.thread:                                          ; preds = %bb.s, %.body
  %.pn15 = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn15, !dbg !44705

bb.s:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %1)
          to label %.thread unwind label %bb.r, !dbg !44706
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBW_E6extendABW_j2_EB2F_(ptr nofree noundef nonnull align 16 captures(none) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(384) %1) unnamed_addr #16 personality ptr @rust_eh_personality !dbg !44711 {
bb.a:
  %i.a = alloca [192 x i8], align 16              ; 4 uses
  %i.b = alloca [400 x i8], align 16              ; 11 uses
  %i.c = alloca [400 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !44712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44713), !dbg !44716
  store i64 0, ptr %i.c, align 16, !dbg !44717, !alias.scope !44722, !noalias !44713
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !44717
  store i64 2, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !44717, !alias.scope !44722, !noalias !44713
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !44717 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %.sroa.54.0..sroa_idx.i, ptr noundef nonnull readonly align 16 dereferenceable(384) %1, i64 384, i1 false), !dbg !44717, !alias.scope !44724
  invoke void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE7reserveB2E_(ptr noundef nonnull align 16 %0, i64 noundef 2)
          to label %bb.b unwind label %bb.j, !dbg !44725

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !44727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %i.b, ptr noundef nonnull align 16 dereferenceable(400) %i.c, i64 400, i1 false), !dbg !44727
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !44728, !noalias !44742, !noundef !14 ; 4 uses
  %i.f = load i64, ptr %i.b, align 16, !dbg !44747, !noalias !44742, !noundef !14 ; 4 uses
  %.not.i.i19 = icmp eq i64 %i.e, %i.f, !dbg !44748
  br i1 %.not.i.i19, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.thread, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.lr.ph, !dbg !44748

_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.lr.ph: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.j = add nuw nsw i64 %i.f, 1, !dbg !44749     ; 2 uses
  store i64 %i.j, ptr %i.b, align 16, !dbg !44755, !noalias !44742
  %i.k = getelementptr inbounds nuw [192 x i8], ptr %i.g, i64 %i.f, !dbg !44756
  %.sroa.06.0.copyload726 = load i64, ptr %i.k, align 16, !dbg !44766 ; 2 uses
  %.not27 = icmp eq i64 %.sroa.06.0.copyload726, 2, !dbg !44773
  br i1 %.not27, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.thread, label %.lr.ph, !dbg !44773

.body:                                            ; preds = %bb.e
  %i.l = load i64, ptr %i.b, align 16, !dbg !44774, !noundef !14
  %i.m = load i64, ptr %i.d, align 8, !dbg !44774, !noundef !14
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEEj2_NtB4_11PartialDrop12partial_dropB3f_(ptr noundef nonnull align 16 %i.g, i64 noundef %i.l, i64 noundef %i.m)
          to label %.thread unwind label %bb.i, !dbg !44787

_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit: ; preds = %bb.h
  %i.n = add nuw nsw i64 %i.ah, 1, !dbg !44749    ; 2 uses
  store i64 %i.n, ptr %i.b, align 16, !dbg !44755, !noalias !44742
  %i.o = getelementptr inbounds nuw [192 x i8], ptr %i.g, i64 %i.ah, !dbg !44756
  %.sroa.06.0.copyload7 = load i64, ptr %i.o, align 16, !dbg !44766 ; 2 uses
  %.not = icmp eq i64 %.sroa.06.0.copyload7, 2, !dbg !44773
  br i1 %.not, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.thread, label %.lr.ph, !dbg !44773

.lr.ph:                                           ; preds = %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.lr.ph, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit
  %.sroa.06.0.copyload728 = phi i64 [ %.sroa.06.0.copyload7, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit ], [ %.sroa.06.0.copyload726, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.lr.ph ]
  %i.p = phi i64 [ %i.ah, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit ], [ %i.f, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.lr.ph ]
  %i.q = getelementptr inbounds nuw [192 x i8], ptr %i.g, i64 %i.p, !dbg !44756
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !44766
  store i64 %.sroa.06.0.copyload728, ptr %i.a, align 16, !dbg !44788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7.0..sroa_idx8, i64 184, i1 false), !dbg !44788
  %i.r = load i32, ptr %i.h, align 16, !dbg !44789, !noalias !44793, !noundef !14
  %i.s = load i32, ptr %i.i, align 4, !dbg !44796, !range !22598, !noalias !44793, !noundef !14 ; 2 uses
  %i.t = icmp eq i32 %i.r, %i.s, !dbg !44789
  br i1 %i.t, label %bb.c, label %bb.d, !dbg !44789, !prof !103

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE7reserveB2E_(ptr noundef nonnull align 16 %0, i64 noundef 1)
          to label %thread-pre-split unwind label %bb.e, !dbg !44797, !noalias !44793

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i32, ptr %i.i, align 4, !dbg !44798, !noalias !44793
  br label %bb.d, !dbg !44805

bb.d:                                             ; preds = %thread-pre-split, %.lr.ph
  %i.u = phi i32 [ %.pr, %thread-pre-split ], [ %i.s, %.lr.ph ], !dbg !44798
  %i.v = icmp eq i32 %i.u, 1, !dbg !44806
  br i1 %i.v, label %bb.h, label %bb.f, !dbg !44806

bb.e:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEEB2p_(ptr noundef nonnull align 16 dereferenceable(192) %i.a) #54
          to label %.body unwind label %bb.g, !dbg !44807

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %0, align 16, !dbg !44808, !noalias !44793, !noundef !14
  br label %bb.h, !dbg !44809

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !44810
  unreachable, !dbg !44810

_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.thread: ; preds = %bb.h, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.lr.ph, %bb.b
  %i.z = phi i64 [ %i.e, %bb.b ], [ %i.j, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.lr.ph ], [ %i.n, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit ], [ %i.ag, %bb.h ], !dbg !44811
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.e, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.lr.ph ], [ %i.ag, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit ], [ %i.ag, %bb.h ], !dbg !44728
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !44818
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEEj2_NtB4_11PartialDrop12partial_dropB3f_(ptr noundef nonnull align 16 %i.aa, i64 noundef %i.z, i64 noundef %.lcssa), !dbg !44819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !44820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !44821
  ret void, !dbg !44822

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.x, %bb.f ], [ %0, %bb.d ], !dbg !44823
  %i.ab = load i32, ptr %i.h, align 16, !dbg !44824, !noalias !44793, !noundef !14
  %i.ac = zext i32 %i.ab to i64, !dbg !44824
  %i.ad = getelementptr inbounds nuw [192 x i8], ptr %.sroa.0.0.i, i64 %i.ac, !dbg !44825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.ad, ptr noundef nonnull align 16 dereferenceable(192) %i.a, i64 192, i1 false), !dbg !44828
  %i.ae = load i32, ptr %i.h, align 16, !dbg !44833, !noalias !44793, !noundef !14
  %i.af = add i32 %i.ae, 1, !dbg !44833
  store i32 %i.af, ptr %i.h, align 16, !dbg !44833, !noalias !44793
  %i.ag = load i64, ptr %i.d, align 8, !dbg !44728, !noalias !44742, !noundef !14 ; 4 uses
  %i.ah = load i64, ptr %i.b, align 16, !dbg !44747, !noalias !44742, !noundef !14 ; 4 uses
  %.not.i.i = icmp eq i64 %i.ag, %i.ah, !dbg !44748
  br i1 %.not.i.i, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit.thread, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2B_.exit, !dbg !44748

bb.i:                                             ; preds = %bb.j, %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !44834
  unreachable, !dbg !44834

.thread:                                          ; preds = %bb.j, %.body
  %.pn11 = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.w, %.body ]
  resume { ptr, i32 } %.pn11, !dbg !44834

bb.j:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEEj2_NtB4_11PartialDrop12partial_dropB3f_(ptr noundef nonnull align 16 %.sroa.54.0..sroa_idx.i, i64 noundef 0, i64 noundef 2)
          to label %.thread unwind label %bb.i, !dbg !44835
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBW_E6extendINtNtNtB53_8adapters3map3MapINtNtB65_10filter_map9FilterMapINtNtB65_9enumerate9EnumerateINtNtNtB55_5slice4iter7IterMutB42_EENCB2t_0ENCINvBZ_31parallelize_first_to_local_implB6s_B2n_B40_E0EEB2F_(ptr nofree noundef nonnull align 16 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality !dbg !44841 {
bb.a:
  %i.a = alloca [192 x i8], align 16              ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [176 x i8], align 16              ; 4 uses
  %i.d = alloca [192 x i8], align 16              ; 3 uses
  %i.e = alloca [192 x i8], align 16              ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload4 = load ptr, ptr %1, align 8, !dbg !44842, !alias.scope !44845, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !44842
  %.sroa.5.0.copyload6 = load ptr, ptr %.sroa.5.0..sroa_idx5, align 8, !dbg !44842, !alias.scope !44845, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !44842
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !44849 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !44849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.310.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, i64 16, i1 false), !dbg !44842
  tail call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE7reserveB2E_(ptr noundef nonnull align 16 %0, i64 noundef 0), !dbg !44851
  store ptr %.sroa.0.0.copyload4, ptr %i.f, align 8, !dbg !44849
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !44849 ; 2 uses
  store ptr %.sroa.5.0.copyload6, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !44849
  %2 = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44852
  store ptr %2, ptr %i.b, align 8, !noalias !44867
  store ptr %.sroa.310.0..sroa_idx, ptr %i.g, align 8, !noalias !44867
  %i.h = icmp eq ptr %.sroa.0.0.copyload4, %.sroa.5.0.copyload6, !dbg !44873
  br i1 %i.h, label %.loopexit16, label %.lr.ph.i.i.i.i.i.preheader.lr.ph, !dbg !44897

.lr.ph.i.i.i.i.i.preheader.lr.ph:                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.preheader, !dbg !44897

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i.i.i.preheader.lr.ph, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE4pushB2E_.exit
  %.promoted.i.i.i.i.i19 = phi ptr [ %.sroa.0.0.copyload4, %.lr.ph.i.i.i.i.i.preheader.lr.ph ], [ %.promoted.i.i.i.i.i, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE4pushB2E_.exit ]
  %i.m = phi ptr [ %.sroa.5.0.copyload6, %.lr.ph.i.i.i.i.i.preheader.lr.ph ], [ %i.as, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE4pushB2E_.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !44898), !dbg !44900
  call void @llvm.experimental.noalias.scope.decl(metadata !44901), !dbg !44903
  call void @llvm.experimental.noalias.scope.decl(metadata !44904), !dbg !44906
  call void @llvm.experimental.noalias.scope.decl(metadata !44907), !dbg !44909
  call void @llvm.experimental.noalias.scope.decl(metadata !44910), !dbg !44912
  br label %.lr.ph.i.i.i.i.i, !dbg !44913

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.b
  %i.n = phi ptr [ %i.o, %bb.b ], [ %.promoted.i.i.i.i.i19, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160, !dbg !44922 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44925), !dbg !44928
  %i.p = load ptr, ptr %i.g, align 8, !dbg !44929, !alias.scope !44925, !noalias !44930, !nonnull !14, !align !13118, !noundef !14
  %i.q = load i64, ptr %i.p, align 8, !dbg !44929, !noalias !44933, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44934, !noalias !44935
  call void @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par00INtB7_5FnMutTTjQNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE8call_mutB12_(ptr noalias noundef nonnull sret([192 x i8]) align 16 captures(address) dereferenceable(192) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.q, ptr noalias noundef nonnull align 16 dereferenceable(160) %i.n), !dbg !44934, !noalias !44940
  %i.r = load i128, ptr %i.a, align 16, !dbg !44934, !range !44941, !noalias !44935, !noundef !14
  %i.s = trunc nuw i128 %i.r to i1, !dbg !44913
  br i1 %i.s, label %bb.c, label %bb.b, !dbg !44913

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44942, !noalias !44935
  %i.t = load ptr, ptr %i.g, align 8, !dbg !44943, !alias.scope !44925, !noalias !44930, !nonnull !14, !align !13118, !noundef !14 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !44943, !noalias !44945, !noundef !14
  %i.v = add i64 %i.u, 1, !dbg !44943
  store i64 %i.v, ptr %i.t, align 8, !dbg !44943, !noalias !44945
  %i.w = icmp eq ptr %i.o, %i.m, !dbg !44873
  br i1 %i.w, label %.loopexit16, label %.lr.ph.i.i.i.i.i, !dbg !44897

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.o, ptr %i.f, align 8, !dbg !44946, !alias.scope !44947, !noalias !44950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !44951, !noalias !44955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.c, ptr noundef nonnull align 16 dereferenceable(176) %i.i, i64 176, i1 false), !dbg !44956, !noalias !44955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44942, !noalias !44935
  %i.x = load ptr, ptr %i.g, align 8, !dbg !44943, !alias.scope !44925, !noalias !44930, !nonnull !14, !align !13118, !noundef !14 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !dbg !44943, !noalias !44945, !noundef !14
  %i.z = add i64 %i.y, 1, !dbg !44943
  store i64 %i.z, ptr %i.x, align 8, !dbg !44943, !noalias !44945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !44957, !noalias !44958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !44951, !noalias !44955
  %.val.i = load ptr, ptr %2, align 8, !dbg !44959, !alias.scope !44898, !noalias !44962, !nonnull !14, !noundef !14
  %i.aa = load i8, ptr %.val.i, align 1, !dbg !44963, !range !44648, !noalias !44966, !noundef !14
  %i.ab = trunc nuw i8 %i.aa to i1, !dbg !44963
  %i.ac = call { ptr, ptr } @_RINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000EB13_(i1 noundef zeroext %i.ab, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51), !dbg !44970, !noalias !44973 ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0, !dbg !44970
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1, !dbg !44970
  call void @_RNvMs2_NtCsidoPH4Qgqxm_12polars_async8executorINtB5_17AbortOnDropHandleTjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ae), !dbg !44974, !noalias !44975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !44976, !noalias !44955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %i.j, i64 184, i1 false), !dbg !44977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !44978, !noalias !44955
  store i64 1, ptr %i.e, align 16, !dbg !44979
  %i.af = load i32, ptr %i.k, align 16, !dbg !44980, !noalias !44983, !noundef !14
  %i.ag = load i32, ptr %i.l, align 4, !dbg !44986, !range !22598, !noalias !44983, !noundef !14 ; 2 uses
  %i.ah = icmp eq i32 %i.af, %i.ag, !dbg !44980
  br i1 %i.ah, label %bb.d, label %bb.e, !dbg !44980, !prof !103

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE7reserveB2E_(ptr noundef nonnull align 16 %0, i64 noundef 1)
          to label %thread-pre-split unwind label %bb.f, !dbg !44987, !noalias !44983

thread-pre-split:                                 ; preds = %bb.d
  %.pr = load i32, ptr %i.l, align 4, !dbg !44988, !noalias !44983
  br label %bb.e, !dbg !44992

bb.e:                                             ; preds = %thread-pre-split, %bb.c
  %i.ai = phi i32 [ %.pr, %thread-pre-split ], [ %i.ag, %bb.c ], !dbg !44988
  %i.aj = icmp eq i32 %i.ai, 1, !dbg !44993
  br i1 %i.aj, label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE4pushB2E_.exit, label %bb.g, !dbg !44993

bb.f:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEEB2p_(ptr noundef nonnull align 16 dereferenceable(192) %i.e) #54
          to label %bb.i unwind label %bb.h, !dbg !44994

bb.g:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %0, align 16, !dbg !44995, !noalias !44983, !noundef !14
  br label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE4pushB2E_.exit, !dbg !44996

bb.h:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !44997
  unreachable, !dbg !44997

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ak, !dbg !44997

_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE4pushB2E_.exit: ; preds = %bb.e, %bb.g
  %.sroa.0.0.i = phi ptr [ %i.al, %bb.g ], [ %0, %bb.e ], !dbg !44998
  %i.an = load i32, ptr %i.k, align 16, !dbg !44999, !noalias !44983, !noundef !14
  %i.ao = zext i32 %i.an to i64, !dbg !44999
  %i.ap = getelementptr inbounds nuw [192 x i8], ptr %.sroa.0.0.i, i64 %i.ao, !dbg !45000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.ap, ptr noundef nonnull align 16 dereferenceable(192) %i.e, i64 192, i1 false), !dbg !45002
  %i.aq = load i32, ptr %i.k, align 16, !dbg !45005, !noalias !44983, !noundef !14
  %i.ar = add i32 %i.aq, 1, !dbg !45005
  store i32 %i.ar, ptr %i.k, align 16, !dbg !45005, !noalias !44983
  call void @llvm.experimental.noalias.scope.decl(metadata !45006), !dbg !44900
  call void @llvm.experimental.noalias.scope.decl(metadata !45008), !dbg !44903
  call void @llvm.experimental.noalias.scope.decl(metadata !45010), !dbg !44906
  call void @llvm.experimental.noalias.scope.decl(metadata !45012), !dbg !44909
  call void @llvm.experimental.noalias.scope.decl(metadata !45014), !dbg !44912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45016
  store ptr %2, ptr %i.b, align 8, !noalias !45017
  store ptr %.sroa.310.0..sroa_idx, ptr %i.g, align 8, !noalias !45017
  %i.as = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !45018, !noalias !44950, !nonnull !14, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !45018, !noalias !44950 ; 2 uses
  %i.at = icmp eq ptr %.promoted.i.i.i.i.i, %i.as, !dbg !44873
  br i1 %i.at, label %.loopexit16, label %.lr.ph.i.i.i.i.i.preheader, !dbg !44897

.loopexit16:                                      ; preds = %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNCNvNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components9par_utils11rechunk_par0000TjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEEE4pushB2E_.exit, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !44957, !noalias !44958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !45019
  ret void, !dbg !45020
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2w_15RowGroupDecoder24decode_projected_columns0s0_00INtNtCscgRAwXFJnXP_4core6result6ResultIBJ_TNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEINtNtNtNtB4N_4iter6traits7collect6ExtendBW_E6extendABW_j2_EB2E_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(272) %1) unnamed_addr #16 personality ptr @rust_eh_personality !dbg !45021 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [288 x i8], align 8               ; 11 uses
  %i.c = alloca [288 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !45022
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45023), !dbg !45026
  store i64 0, ptr %i.c, align 8, !dbg !45027, !alias.scope !45032, !noalias !45023
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !45027
  store i64 2, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !45027, !alias.scope !45032, !noalias !45023
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !45027 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.54.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(272) %1, i64 272, i1 false), !dbg !45027, !alias.scope !45034
  invoke void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2v_15RowGroupDecoder24decode_projected_columns0s0_00INtNtCscgRAwXFJnXP_4core6result6ResultIBI_TNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE7reserveB2D_(ptr noundef nonnull align 8 %0, i64 noundef 2)
          to label %bb.b unwind label %bb.j, !dbg !45035

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !45037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.b, ptr noundef nonnull align 8 dereferenceable(288) %i.c, i64 288, i1 false), !dbg !45037
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !45038, !noalias !45052, !noundef !14 ; 4 uses
  %i.f = load i64, ptr %i.b, align 8, !dbg !45057, !noalias !45052, !noundef !14 ; 4 uses
  %.not.i.i19 = icmp eq i64 %i.e, %i.f, !dbg !45058
  br i1 %.not.i.i19, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.thread, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.lr.ph, !dbg !45058

_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.lr.ph: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.j = add nuw nsw i64 %i.f, 1, !dbg !45059     ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !dbg !45065, !noalias !45052
  %i.k = getelementptr inbounds nuw [136 x i8], ptr %i.g, i64 %i.f, !dbg !45066
  %.sroa.06.0.copyload726 = load i64, ptr %i.k, align 8, !dbg !45076 ; 2 uses
  %.not27 = icmp eq i64 %.sroa.06.0.copyload726, 2, !dbg !45083
  br i1 %.not27, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.thread, label %.lr.ph, !dbg !45083

.body:                                            ; preds = %bb.e
  %i.l = load i64, ptr %i.b, align 8, !dbg !45084, !noundef !14
  %i.m = load i64, ptr %i.d, align 8, !dbg !45084, !noundef !14
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB36_15RowGroupDecoder24decode_projected_columns0s0_00INtNtBa_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEj2_NtB4_11PartialDrop12partial_dropB3e_(ptr noundef nonnull align 8 %i.g, i64 noundef %i.l, i64 noundef %i.m)
          to label %.thread unwind label %bb.i, !dbg !45097

_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit: ; preds = %bb.h
  %i.n = add nuw nsw i64 %i.ah, 1, !dbg !45059    ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !dbg !45065, !noalias !45052
  %i.o = getelementptr inbounds nuw [136 x i8], ptr %i.g, i64 %i.ah, !dbg !45066
  %.sroa.06.0.copyload7 = load i64, ptr %i.o, align 8, !dbg !45076 ; 2 uses
  %.not = icmp eq i64 %.sroa.06.0.copyload7, 2, !dbg !45083
  br i1 %.not, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.thread, label %.lr.ph, !dbg !45083

.lr.ph:                                           ; preds = %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.lr.ph, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit
  %.sroa.06.0.copyload728 = phi i64 [ %.sroa.06.0.copyload7, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit ], [ %.sroa.06.0.copyload726, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.lr.ph ]
  %i.p = phi i64 [ %i.ah, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit ], [ %i.f, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.lr.ph ]
  %i.q = getelementptr inbounds nuw [136 x i8], ptr %i.g, i64 %i.p, !dbg !45066
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !45076
  store i64 %.sroa.06.0.copyload728, ptr %i.a, align 8, !dbg !45098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.7.0..sroa_idx8, i64 128, i1 false), !dbg !45098
  %i.r = load i32, ptr %i.h, align 8, !dbg !45099, !noalias !45103, !noundef !14
  %i.s = load i32, ptr %i.i, align 4, !dbg !45106, !range !22598, !noalias !45103, !noundef !14 ; 2 uses
  %i.t = icmp eq i32 %i.r, %i.s, !dbg !45099
  br i1 %i.t, label %bb.c, label %bb.d, !dbg !45099, !prof !103

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2v_15RowGroupDecoder24decode_projected_columns0s0_00INtNtCscgRAwXFJnXP_4core6result6ResultIBI_TNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE7reserveB2D_(ptr noundef nonnull align 8 %0, i64 noundef 1)
          to label %thread-pre-split unwind label %bb.e, !dbg !45107, !noalias !45103

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i32, ptr %i.i, align 4, !dbg !45108, !noalias !45103
  br label %bb.d, !dbg !45115

bb.d:                                             ; preds = %thread-pre-split, %.lr.ph
  %i.u = phi i32 [ %.pr, %thread-pre-split ], [ %i.s, %.lr.ph ], !dbg !45108
  %i.v = icmp eq i32 %i.u, 1, !dbg !45116
  br i1 %i.v, label %bb.h, label %bb.f, !dbg !45116

bb.e:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2g_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB4_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB2o_(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #54
          to label %.body unwind label %bb.g, !dbg !45117

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %0, align 8, !dbg !45118, !noalias !45103, !noundef !14
  br label %bb.h, !dbg !45119

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !45120
  unreachable, !dbg !45120

_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.thread: ; preds = %bb.h, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.lr.ph, %bb.b
  %i.z = phi i64 [ %i.e, %bb.b ], [ %i.j, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.lr.ph ], [ %i.n, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit ], [ %i.ag, %bb.h ], !dbg !45121
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.e, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.lr.ph ], [ %i.ag, %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit ], [ %i.ag, %bb.h ], !dbg !45038
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !45128
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB36_15RowGroupDecoder24decode_projected_columns0s0_00INtNtBa_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEj2_NtB4_11PartialDrop12partial_dropB3e_(ptr noundef nonnull align 8 %i.aa, i64 noundef %i.z, i64 noundef %.lcssa), !dbg !45129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !45130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !45131
  ret void, !dbg !45132

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.x, %bb.f ], [ %0, %bb.d ], !dbg !45133
  %i.ab = load i32, ptr %i.h, align 8, !dbg !45134, !noalias !45103, !noundef !14
  %i.ac = zext i32 %i.ab to i64, !dbg !45134
  %i.ad = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.i, i64 %i.ac, !dbg !45135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ad, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !dbg !45138
  %i.ae = load i32, ptr %i.h, align 8, !dbg !45143, !noalias !45103, !noundef !14
  %i.af = add i32 %i.ae, 1, !dbg !45143
  store i32 %i.af, ptr %i.h, align 8, !dbg !45143, !noalias !45103
  %i.ag = load i64, ptr %i.d, align 8, !dbg !45038, !noalias !45052, !noundef !14 ; 4 uses
  %i.ah = load i64, ptr %i.b, align 8, !dbg !45057, !noalias !45052, !noundef !14 ; 4 uses
  %.not.i.i = icmp eq i64 %i.ag, %i.ah, !dbg !45058
  br i1 %.not.i.i, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit.thread, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2s_15RowGroupDecoder24decode_projected_columns0s0_00INtNtB9_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB2A_.exit, !dbg !45058

bb.i:                                             ; preds = %bb.j, %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !45144
  unreachable, !dbg !45144

.thread:                                          ; preds = %bb.j, %.body
  %.pn11 = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.w, %.body ]
  resume { ptr, i32 } %.pn11, !dbg !45144

bb.j:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB36_15RowGroupDecoder24decode_projected_columns0s0_00INtNtBa_6result6ResultINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEj2_NtB4_11PartialDrop12partial_dropB3e_(ptr noundef nonnull align 8 %.sroa.54.0..sroa_idx.i, i64 noundef 0, i64 noundef 2)
          to label %.thread unwind label %bb.i, !dbg !45145
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2w_15RowGroupDecoder24decode_projected_columns0s0_00INtNtCscgRAwXFJnXP_4core6result6ResultIBJ_TNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEINtNtNtNtB4N_4iter6traits7collect6ExtendBW_E6extendINtNtNtB85_8adapters3map3MapIB8O_INtNtB8S_7step_by6StepByINtNtNtB4N_3ops5range5RangejEENCB2r_s0_0ENCINvBZ_31parallelize_first_to_local_implB9f_B2n_B4I_E0EEB2E_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(152) %1) unnamed_addr #16 personality ptr @rust_eh_personality !dbg !45151 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 18 uses
  %i.b = alloca [136 x i8], align 8               ; 3 uses
  %i.c = alloca [136 x i8], align 8               ; 4 uses
  %i.d = alloca [152 x i8], align 8               ; 22 uses
  %i.e = alloca [152 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !45152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(152) %1, i64 152, i1 false), !dbg !45153, !alias.scope !45156
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120, !dbg !45160
  %.val = load i64, ptr %i.f, align 8, !dbg !45160, !noundef !14
  invoke void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtNtCsidoPH4Qgqxm_12polars_async10primitives18opt_spawned_future20LocalOrSpawnedFutureNCNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB2v_15RowGroupDecoder24decode_projected_columns0s0_00INtNtCscgRAwXFJnXP_4core6result6ResultIBI_TNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE7reserveB2D_(ptr noundef nonnull align 8 %0, i64 noundef %.val)
          to label %bb.b unwind label %bb.aa, !dbg !45162

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !45163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false), !dbg !45163
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 3 uses
  %i.i = load i64, ptr %i.g, align 8, !dbg !45164, !alias.scope !45176, !noalias !45185, !noundef !14 ; 2 uses
  %i.j = icmp ne i64 %i.i, -1, !dbg !45188
  tail call void @llvm.assume(i1 %i.j), !dbg !45188
  %i.k = load i64, ptr %i.h, align 8, !dbg !45191, !alias.scope !45176, !noalias !45185, !noundef !14 ; 2 uses
  %.not.i.i.i.i14 = icmp eq i64 %i.k, 0, !dbg !45193
  br i1 %.not.i.i.i.i14, label %._crit_edge, label %.lr.ph, !dbg !45193

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.74.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.85.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.96.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.1310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.1411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.1512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.1613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.1815.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
end_hunk_0
