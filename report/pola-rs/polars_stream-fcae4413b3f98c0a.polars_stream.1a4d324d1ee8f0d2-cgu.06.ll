Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.06?download=true
inline.NumInlined: 10066
inline.NumDeleted: 5164
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterxENCNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchNtNtCsh8eZTKRCwoO_3std2fs4FileEs1_00EE9from_iterCs2g09Ig8GZd6_13polars_stream:bb.a
  br i1 %i.ai, label %.loopexit18.i, label %bb.f, !dbg !66046

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !66031, !noalias !66002
  store i64 0, ptr %0, align 8, !dbg !66067, !alias.scope !65996, !noalias !65997
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !66067
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8, !dbg !66067, !alias.scope !65996, !noalias !65997
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !66067
  store i64 0, ptr %i.ak, align 8, !dbg !66067, !alias.scope !65996, !noalias !65997
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterxENCNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchNtNtCsh8eZTKRCwoO_3std2fs4FileEs1_00EE9from_iterCs2g09Ig8GZd6_13polars_stream.exit, !dbg !66068

.loopexit.i:                                      ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.k, !dbg !66069, !noalias !65998

.loopexit18.i:                                    ; preds = %.noexc9.i, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !66055, !noalias !66014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !66070, !noalias !65997
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterxENCNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchNtNtCsh8eZTKRCwoO_3std2fs4FileEs1_00EE9from_iterCs2g09Ig8GZd6_13polars_stream.exit, !dbg !66068

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !66071, !noalias !65998
  unreachable, !dbg !66071

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.j
  resume { ptr, i32 } %lpad.phi.i, !dbg !66071

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsfyRUffk9zcp_6planus7vectors9iterators4IterxENCNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchNtNtCsh8eZTKRCwoO_3std2fs4FileEs1_00EE9from_iterCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.i, %.loopexit18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !66068, !noalias !65998
  ret void, !dbg !66072
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4scan4ScanINtNtNtB1q_5slice4iter4IterTNtNtNtCs1LHh8CLbVkQ_11polars_core6series12arrow_export16ToArrowConverterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEEjNCINvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers3ipc14initialization26dictionary_id_offsets_iterB3J_E0EE9from_iterB4V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !66073 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66161), !dbg !66175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66162), !dbg !66175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !66176, !noalias !66163
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66164), !dbg !66177
  %i.c = load ptr, ptr %1, align 8, !dbg !66178, !alias.scope !66165, !noalias !66161, !nonnull !2876, !noundef !2876 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !66179
  %i.e = load ptr, ptr %i.d, align 8, !dbg !66179, !alias.scope !66165, !noalias !66161, !nonnull !2876, !noundef !2876 ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e, !dbg !66180
  br i1 %i.f, label %bb.d, label %bb.b, !dbg !66181

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !66182
  %i.h = getelementptr i8, ptr %i.c, i64 48, !dbg !66183
  %.val.i.i = load i64, ptr %i.h, align 8, !dbg !66183, !noalias !66169, !noundef !2876
  %i.i = load i64, ptr %i.g, align 8, !dbg !66184, !alias.scope !66170, !noalias !66161, !noundef !2876 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !66185, !noalias !66163
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !66185, !noalias !66163
  %i.j = load i64, ptr %i.a, align 8, !dbg !66185, !range !2959, !noalias !66163, !noundef !2876
  %i.k = trunc nuw i64 %i.j to i1, !dbg !66186
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !66187
  %i.m = load i64, ptr %i.l, align 8, !dbg !66187, !range !3013, !noalias !66163, !noundef !2876 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !66187 ; 2 uses
  br i1 %i.k, label %bb.c, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !66186, !prof !2900

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !dbg !66188, !noalias !66163
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #34, !dbg !66189, !noalias !66163
  unreachable, !dbg !66189

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 152, !dbg !66190 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !dbg !66191, !noalias !66163, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.r = icmp ugt i64 %i.m, 3, !dbg !66192
  tail call void @llvm.assume(i1 %i.r), !dbg !66193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !66194, !noalias !66163
  store i64 %i.i, ptr %i.q, align 8, !dbg !66195, !noalias !66163
  store i64 %i.m, ptr %i.b, align 8, !dbg !66196, !noalias !66163
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !66196 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !66196, !noalias !66163
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !66196 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !66196, !noalias !66163
  %i.s = icmp eq ptr %i.p, %i.e, !dbg !66197
  br i1 %i.s, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4scan4ScanINtNtNtB1l_5slice4iter4IterTNtNtNtCs1LHh8CLbVkQ_11polars_core6series12arrow_export16ToArrowConverterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEEjNCINvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers3ipc14initialization26dictionary_id_offsets_iterB3E_E0EE11spec_extendB4Q_.exit.i, label %.lr.ph.i.i.i.preheader, !dbg !66198

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.t = add i64 %i.i, %.val.i.i, !dbg !66199
  br label %.lr.ph.i.i.i, !dbg !66200

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.noexc.i
  %i.u = phi i64 [ %i.af, %.noexc.i ], [ 1, %.lr.ph.i.i.i.preheader ], !dbg !66201 ; 5 uses
  %i.v = phi i64 [ %i.z, %.noexc.i ], [ %i.t, %.lr.ph.i.i.i.preheader ], !dbg !66202 ; 2 uses
  %i.w = phi ptr [ %i.x, %.noexc.i ], [ %i.p, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152, !dbg !66203 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 48, !dbg !66204
  %.val.i.i.i.i = load i64, ptr %i.y, align 8, !dbg !66204, !noalias !66172, !noundef !2876
  %i.z = add i64 %.val.i.i.i.i, %i.v, !dbg !66205
  %i.aa = icmp samesign ult i64 %i.u, 1152921504606846976, !dbg !66206
  call void @llvm.assume(i1 %i.aa), !dbg !66207
  %i.ab = load i64, ptr %i.b, align 8, !dbg !66208, !range !2896, !alias.scope !66173, !noalias !66174, !noundef !2876
  %i.ac = icmp eq i64 %i.u, %i.ab, !dbg !66200
  br i1 %i.ac, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i.i.i, label %.noexc.i, !dbg !66200

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.u, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i unwind label %bb.e, !dbg !66209, !noalias !66163

.noexc.i:                                         ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %.lr.ph.i.i.i
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !66210, !alias.scope !66173, !noalias !66174, !nonnull !2876, !noundef !2876
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.u, !dbg !66211
  store i64 %i.v, ptr %i.ae, align 8, !dbg !66212, !noalias !66174
  %i.af = add nuw nsw i64 %i.u, 1, !dbg !66213    ; 2 uses
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !66214, !alias.scope !66173, !noalias !66174
  %i.ag = icmp eq ptr %i.x, %i.e, !dbg !66197
  br i1 %i.ag, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4scan4ScanINtNtNtB1l_5slice4iter4IterTNtNtNtCs1LHh8CLbVkQ_11polars_core6series12arrow_export16ToArrowConverterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEEjNCINvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers3ipc14initialization26dictionary_id_offsets_iterB3E_E0EE11spec_extendB4Q_.exit.i, label %.lr.ph.i.i.i, !dbg !66198

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !66215, !alias.scope !66161, !noalias !66162
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !66215
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8, !dbg !66215, !alias.scope !66161, !noalias !66162
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !66215
  store i64 0, ptr %i.ai, align 8, !dbg !66215, !alias.scope !66161, !noalias !66162
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4scan4ScanINtNtNtB1D_5slice4iter4IterTNtNtNtCs1LHh8CLbVkQ_11polars_core6series12arrow_export16ToArrowConverterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEEjNCINvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers3ipc14initialization26dictionary_id_offsets_iterB3W_E0EE9from_iterB58_.exit, !dbg !66216

bb.e:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.f, !dbg !66217, !noalias !66163

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4scan4ScanINtNtNtB1l_5slice4iter4IterTNtNtNtCs1LHh8CLbVkQ_11polars_core6series12arrow_export16ToArrowConverterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEEjNCINvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers3ipc14initialization26dictionary_id_offsets_iterB3E_E0EE11spec_extendB4Q_.exit.i: ; preds = %.noexc.i, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !66218, !noalias !66162
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4scan4ScanINtNtNtB1D_5slice4iter4IterTNtNtNtCs1LHh8CLbVkQ_11polars_core6series12arrow_export16ToArrowConverterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEEjNCINvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers3ipc14initialization26dictionary_id_offsets_iterB3W_E0EE9from_iterB58_.exit, !dbg !66216

bb.f:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !66219, !noalias !66163
  unreachable, !dbg !66219

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.aj, !dbg !66219

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4scan4ScanINtNtNtB1D_5slice4iter4IterTNtNtNtCs1LHh8CLbVkQ_11polars_core6series12arrow_export16ToArrowConverterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEEjNCINvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers3ipc14initialization26dictionary_id_offsets_iterB3W_E0EE9from_iterB58_.exit: ; preds = %bb.d, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4scan4ScanINtNtNtB1l_5slice4iter4IterTNtNtNtCs1LHh8CLbVkQ_11polars_core6series12arrow_export16ToArrowConverterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEEjNCINvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks7writers3ipc14initialization26dictionary_id_offsets_iterB3E_E0EE11spec_extendB4Q_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !66216, !noalias !66163
  ret void, !dbg !66220
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtNtB1q_3ops5range5RangejEINtNtB1m_10filter_map9FilterMapB29_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB3i_13IpcFileReaderNtNtNtB3k_10multi_scan16reader_interface10FileReader10begin_reads0_0EEE9from_iterB3o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !66221 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %.sroa.11.i.i.i = alloca i64, align 8           ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.7.i = alloca i64, align 8                ; 5 uses
  %.sroa.11.i = alloca i64, align 8               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66446), !dbg !66519
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66447), !dbg !66519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !66520, !noalias !66448
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66449), !dbg !66521
  %i.f = load i64, ptr %1, align 8, !dbg !66522, !range !2959, !alias.scope !66450, !noalias !66446, !noundef !2876
  %i.g = trunc nuw i64 %i.f to i1, !dbg !66523
  br i1 %i.g, label %bb.b, label %bb.d, !dbg !66523

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !66524 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !66525
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66451), !dbg !66526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66452), !dbg !66526
  %i.j = load i64, ptr %i.h, align 8, !dbg !66527, !alias.scope !66453, !noalias !66454, !noundef !2876 ; 4 uses
  %i.k = load i64, ptr %i.i, align 8, !dbg !66528, !alias.scope !66455, !noalias !66456, !noundef !2876 ; 2 uses
  %i.l = icmp ult i64 %i.j, %i.k, !dbg !66527
  br i1 %i.l, label %.thread.i, label %bb.c, !dbg !66526

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !dbg !66529, !alias.scope !66450, !noalias !66446
  br label %bb.d, !dbg !66530

.thread.i:                                        ; preds = %bb.b
  %i.m = add nuw i64 %i.j, 1, !dbg !66531         ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !dbg !66532, !alias.scope !66457, !noalias !66446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66458), !dbg !66533
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !66534
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i), !dbg !66534
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !66535
  %i.o = load ptr, ptr %i.n, align 8, !dbg !66535, !alias.scope !66459, !noalias !66460, !noundef !2876
  %.not7.i35.i = icmp eq ptr %i.o, null, !dbg !66535
  %spec.select.i17.i41.i = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.m), !dbg !66536 ; 2 uses
  br i1 %.not7.i35.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i, label %bb.k, !dbg !66537

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !66538 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66461), !dbg !66539
  %i.q = load ptr, ptr %i.p, align 8, !dbg !66540, !alias.scope !66462, !noalias !66446, !noundef !2876
  %.not.i.i.i.i = icmp eq ptr %i.q, null, !dbg !66540
  br i1 %.not.i.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread17.i, label %bb.e, !dbg !66541

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66463), !dbg !66542
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !66543 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66464), !dbg !66544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66465), !dbg !66545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !66466
  store ptr %i.p, ptr %i.c, align 8, !noalias !66467
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !66468, !noalias !66469, !noundef !2876 ; 2 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !66470, !noalias !66471 ; 3 uses
  %umax.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %.promoted.i.i.i.i.i.i.i), !dbg !66546
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i10.not = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %i.t, !dbg !66547
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i10.not, label %.lr.ph, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.i, !dbg !66548

bb.f:                                             ; preds = %.lr.ph
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i = icmp eq i64 %i.v, %umax.i.i.i.i.i.i.i, !dbg !66547
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.i, label %.lr.ph, !dbg !66548

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.u = phi i64 [ %i.v, %bb.f ], [ %.promoted.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.v = add i64 %i.u, 1, !dbg !66549             ; 3 uses
  store i64 %i.v, ptr %i.r, align 8, !dbg !66550, !alias.scope !66470, !noalias !66471
  %i.w = call { i64, i64 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtBV_13IpcFileReaderNtNtNtBX_10multi_scan16reader_interface10FileReader10begin_reads0_0INtB7_5FnMutTjEE8call_mutB11_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.u), !dbg !66551, !noalias !66472 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0, !dbg !66552
  %i.y = trunc nuw i64 %i.x to i1, !dbg !66552
  br i1 %i.y, label %bb.g, label %bb.f, !dbg !66552

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !66553, !noalias !66466
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread17.i, !dbg !66554

bb.g:                                             ; preds = %.lr.ph
  %i.z = extractvalue { i64, i64 } %i.w, 1, !dbg !66555 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !66553, !noalias !66466
  %.pre.i = load i64, ptr %1, align 8, !dbg !66535, !range !2959, !alias.scope !66473, !noalias !66474
  %i.aa = trunc nuw i64 %.pre.i to i1, !dbg !66537
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !66534
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i), !dbg !66534
  call void @llvm.experimental.noalias.scope.decl(metadata !66475), !dbg !66556
  call void @llvm.experimental.noalias.scope.decl(metadata !66476), !dbg !66556
  %i.ab = load ptr, ptr %i.p, align 8, !dbg !66535, !alias.scope !66473, !noalias !66474, !noundef !2876
  %.not7.i.i = icmp eq ptr %i.ab, null, !dbg !66535 ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.i, !dbg !66537

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !66557
  %.val.i.i = load i64, ptr %i.ac, align 8, !dbg !66557, !alias.scope !66477, !noalias !66478, !noundef !2876
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !66557
  %.val9.i.i = load i64, ptr %i.ad, align 8, !dbg !66557, !alias.scope !66479, !noalias !66480, !noundef !2876
  %spec.select.i17.i.i = call i64 @llvm.usub.sat.i64(i64 %.val9.i.i, i64 %.val.i.i), !dbg !66536 ; 2 uses
  br i1 %.not7.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i, label %bb.k, !dbg !66537

bb.i:                                             ; preds = %bb.g
  br i1 %.not7.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i, label %bb.j, !dbg !66537

bb.j:                                             ; preds = %bb.i
  %.val14.i.i = load i64, ptr %i.r, align 8, !dbg !66558, !alias.scope !66477, !noalias !66478, !noundef !2876
  %.val15.i.i = load i64, ptr %i.s, align 8, !dbg !66558, !alias.scope !66479, !noalias !66480, !noundef !2876
  %spec.select.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val15.i.i, i64 %.val14.i.i), !dbg !66559
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i, !dbg !66558

bb.k:                                             ; preds = %bb.h, %.thread.i
  %spec.select.i17.i44.i = phi i64 [ %spec.select.i17.i41.i, %.thread.i ], [ %spec.select.i17.i.i, %bb.h ] ; 2 uses
  %.pn3.i.i163743.i = phi i64 [ %i.j, %.thread.i ], [ %i.z, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !66560
  %.val12.i.i = load i64, ptr %i.ae, align 8, !dbg !66560, !alias.scope !66477, !noalias !66478, !noundef !2876
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !66560
  %.val13.i.i = load i64, ptr %i.af, align 8, !dbg !66560, !alias.scope !66479, !noalias !66480, !noundef !2876
  %spec.select.i.i16.i.i = call i64 @llvm.usub.sat.i64(i64 %.val13.i.i, i64 %.val12.i.i), !dbg !66561
  %i.ag = add i64 %spec.select.i.i16.i.i, %spec.select.i17.i44.i, !dbg !66562
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i, !dbg !66563

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %.thread.i
  %.pn3.i.i1636.i = phi i64 [ %i.z, %bb.i ], [ %.pn3.i.i163743.i, %bb.k ], [ %i.z, %bb.j ], [ %i.j, %.thread.i ], [ %i.z, %bb.h ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.i ], [ %spec.select.i17.i44.i, %bb.k ], [ 0, %bb.j ], [ %spec.select.i17.i41.i, %.thread.i ], [ %spec.select.i17.i.i, %bb.h ], !dbg !66557
  %.sink22.i.sroa.phi.i = phi ptr [ %.sroa.11.i, %bb.i ], [ %.sroa.11.i, %bb.k ], [ %.sroa.11.i, %bb.j ], [ %.sroa.7.i, %.thread.i ], [ %.sroa.7.i, %bb.h ]
  %.sink.i.i = phi i64 [ 0, %bb.i ], [ %i.ag, %bb.k ], [ %spec.select.i.i.i.i, %bb.j ], [ 1, %.thread.i ], [ 1, %bb.h ]
  store i64 %.sink.i.i, ptr %.sink22.i.sroa.phi.i, align 8, !dbg !66557, !alias.scope !66475, !noalias !66481
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i), !dbg !66564
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i), !dbg !66564
  %i.ah = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i, i64 1), !dbg !66565
  %.sroa.0.0.i.i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.ah, i64 4), !dbg !66566 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !66567, !noalias !66448
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !66567, !noalias !66446
  %i.ai = load i64, ptr %i.b, align 8, !dbg !66567, !range !2959, !noalias !66448, !noundef !2876
  %i.aj = trunc nuw i64 %i.ai to i1, !dbg !66568
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !66569
  %i.al = load i64, ptr %i.ak, align 8, !dbg !66569, !range !3013, !noalias !66448, !noundef !2876 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !66569 ; 2 uses
  br i1 %i.aj, label %bb.l, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !66568, !prof !2900

bb.l:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i
  %i.an = load i64, ptr %i.am, align 8, !dbg !66570, !noalias !66448
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #34, !dbg !66571, !noalias !66446
  unreachable, !dbg !66571

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i
  %i.ao = load ptr, ptr %i.am, align 8, !dbg !66572, !noalias !66448, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.al, !dbg !66573
  call void @llvm.assume(i1 %i.ap), !dbg !66574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !66575, !noalias !66448
  store i64 %.pn3.i.i1636.i, ptr %i.ao, align 8, !dbg !66576, !noalias !66446
  store i64 %i.al, ptr %i.e, align 8, !dbg !66577, !noalias !66448
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !66577 ; 2 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !66577, !noalias !66448
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !66577 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !66577, !noalias !66448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !66578, !noalias !66448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !dbg !66578, !noalias !66446
  call void @llvm.experimental.noalias.scope.decl(metadata !66482), !dbg !66579
  call void @llvm.experimental.noalias.scope.decl(metadata !66483), !dbg !66579
  call void @llvm.experimental.noalias.scope.decl(metadata !66484), !dbg !66580
  call void @llvm.experimental.noalias.scope.decl(metadata !66485), !dbg !66580
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  br label %bb.m, !dbg !66581

bb.m:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.av = phi i64 [ %i.bv, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ 1, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !66486), !dbg !66582
  %i.aw = load i64, ptr %i.d, align 8, !dbg !66583, !range !2959, !alias.scope !66487, !noalias !66488, !noundef !2876
  %i.ax = trunc nuw i64 %i.aw to i1, !dbg !66584
  br i1 %i.ax, label %bb.n, label %bb.p, !dbg !66584

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !66489), !dbg !66585
  call void @llvm.experimental.noalias.scope.decl(metadata !66490), !dbg !66585
  %i.ay = load i64, ptr %i.aq, align 8, !dbg !66586, !alias.scope !66491, !noalias !66492, !noundef !2876 ; 3 uses
  %i.az = load i64, ptr %i.ar, align 8, !dbg !66587, !alias.scope !66493, !noalias !66494, !noundef !2876
  %i.ba = icmp ult i64 %i.ay, %i.az, !dbg !66586
  br i1 %i.ba, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread.i.i.i, label %bb.o, !dbg !66585

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.d, align 8, !dbg !66588, !alias.scope !66487, !noalias !66488
  br label %bb.p, !dbg !66589

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread.i.i.i: ; preds = %bb.n
  %i.bb = add nuw i64 %i.ay, 1, !dbg !66590
  store i64 %i.bb, ptr %i.aq, align 8, !dbg !66591, !alias.scope !66495, !noalias !66488
  call void @llvm.experimental.noalias.scope.decl(metadata !66496), !dbg !66592
  br label %bb.s, !dbg !66593

bb.p:                                             ; preds = %bb.o, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !66497), !dbg !66594
  %i.bc = load ptr, ptr %i.as, align 8, !dbg !66595, !alias.scope !66498, !noalias !66488, !noundef !2876
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null, !dbg !66595
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtNtB1l_3ops5range5RangejEINtNtB1h_10filter_map9FilterMapB24_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB3d_13IpcFileReaderNtNtNtB3f_10multi_scan16reader_interface10FileReader10begin_reads0_0EEE11spec_extendB3j_.exit.i, label %bb.q, !dbg !66596

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !66499), !dbg !66597
  call void @llvm.experimental.noalias.scope.decl(metadata !66500), !dbg !66598
  call void @llvm.experimental.noalias.scope.decl(metadata !66501), !dbg !66599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66502
  store ptr %i.as, ptr %i.a, align 8, !noalias !66503
  %i.bd = load i64, ptr %i.au, align 8, !alias.scope !66504, !noalias !66505, !noundef !2876 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !66506, !noalias !66507 ; 3 uses
  %umax.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 %.promoted.i.i.i.i.i.i.i.i.i), !dbg !66600
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i11.not = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i, %i.bd, !dbg !66601
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i11.not, label %.lr.ph12, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.i.i.i, !dbg !66602

bb.r:                                             ; preds = %.noexc.i
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i = icmp eq i64 %i.bf, %umax.i.i.i.i.i.i.i.i.i, !dbg !66601
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.i.i.i, label %.lr.ph12, !dbg !66602

.lr.ph12:                                         ; preds = %bb.q, %bb.r
  %i.be = phi i64 [ %i.bf, %bb.r ], [ %.promoted.i.i.i.i.i.i.i.i.i, %bb.q ] ; 2 uses
  %i.bf = add i64 %i.be, 1, !dbg !66603           ; 3 uses
  store i64 %i.bf, ptr %i.at, align 8, !dbg !66604, !alias.scope !66506, !noalias !66507
  %i.bg = invoke { i64, i64 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtBV_13IpcFileReaderNtNtNtBX_10multi_scan16reader_interface10FileReader10begin_reads0_0INtB7_5FnMutTjEE8call_mutB11_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.be)
          to label %.noexc.i unwind label %.loopexit.i, !dbg !66605, !noalias !66446 ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph12
  %i.bh = extractvalue { i64, i64 } %i.bg, 0, !dbg !66606
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !66606
  br i1 %i.bi, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread19.i.i.i, label %bb.r, !dbg !66606

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread19.i.i.i: ; preds = %.noexc.i
  %i.bj = extractvalue { i64, i64 } %i.bg, 1, !dbg !66607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !66608, !noalias !66502
  %.pre29.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !66609, !alias.scope !66508, !noalias !66509
  br label %bb.s, !dbg !66593

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.i.i.i: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !66608, !noalias !66502
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtNtB1l_3ops5range5RangejEINtNtB1h_10filter_map9FilterMapB24_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB3d_13IpcFileReaderNtNtNtB3f_10multi_scan16reader_interface10FileReader10begin_reads0_0EEE11spec_extendB3j_.exit.i, !dbg !66593

bb.s:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread19.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread.i.i.i
  %i.bk = phi i64 [ %i.av, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread.i.i.i ], [ %.pre29.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread19.i.i.i ], !dbg !66609 ; 5 uses
  %.pn3.i.i13.i.i.i = phi i64 [ %i.ay, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread.i.i.i ], [ %i.bj, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread19.i.i.i ]
  %i.bl = icmp ult i64 %i.bk, 1152921504606846976, !dbg !66610
  call void @llvm.assume(i1 %i.bl), !dbg !66611
  %i.bm = load i64, ptr %i.e, align 8, !dbg !66612, !range !2896, !alias.scope !66508, !noalias !66509, !noundef !2876
  %i.bn = icmp eq i64 %i.bk, %i.bm, !dbg !66613
  br i1 %i.bn, label %bb.t, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !66613

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !66614
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i), !dbg !66614
  call void @llvm.experimental.noalias.scope.decl(metadata !66510), !dbg !66615
  call void @llvm.experimental.noalias.scope.decl(metadata !66511), !dbg !66615
  %i.bo = load i64, ptr %i.d, align 8, !dbg !66616, !range !2959, !alias.scope !66512, !noalias !66513, !noundef !2876
  %i.bp = trunc nuw i64 %i.bo to i1, !dbg !66617
  %i.bq = load ptr, ptr %i.as, align 8, !dbg !66616, !alias.scope !66512, !noalias !66513, !noundef !2876
  %.not7.i.i.i.i = icmp eq ptr %i.bq, null, !dbg !66616 ; 2 uses
  br i1 %i.bp, label %bb.u, label %bb.v, !dbg !66617

bb.u:                                             ; preds = %bb.t
  %.val.i.i.i.i = load i64, ptr %i.aq, align 8, !dbg !66618, !alias.scope !66514, !noalias !66515, !noundef !2876
  %.val9.i.i.i.i = load i64, ptr %i.ar, align 8, !dbg !66618, !alias.scope !66516, !noalias !66517, !noundef !2876
  %spec.select.i17.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val9.i.i.i.i, i64 %.val.i.i.i.i), !dbg !66619 ; 3 uses
  br i1 %.not7.i.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i.i.i, label %bb.x, !dbg !66617

bb.v:                                             ; preds = %bb.t
  br i1 %.not7.i.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i.i.i, label %bb.w, !dbg !66617

bb.w:                                             ; preds = %bb.v
  %.val14.i.i.i.i = load i64, ptr %i.at, align 8, !dbg !66620, !alias.scope !66514, !noalias !66515, !noundef !2876
  %.val15.i.i.i.i = load i64, ptr %i.au, align 8, !dbg !66620, !alias.scope !66516, !noalias !66517, !noundef !2876
  %spec.select.i.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val15.i.i.i.i, i64 %.val14.i.i.i.i), !dbg !66621
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i.i.i, !dbg !66620

bb.x:                                             ; preds = %bb.u
  %.val12.i.i.i.i = load i64, ptr %i.at, align 8, !dbg !66622, !alias.scope !66514, !noalias !66515, !noundef !2876
  %.val13.i.i.i.i = load i64, ptr %i.au, align 8, !dbg !66622, !alias.scope !66516, !noalias !66517, !noundef !2876
  %spec.select.i.i16.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val13.i.i.i.i, i64 %.val12.i.i.i.i), !dbg !66623
  %i.br = add i64 %spec.select.i.i16.i.i.i.i, %spec.select.i17.i.i.i.i, !dbg !66624
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i.i.i, !dbg !66625

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.v ], [ %spec.select.i17.i.i.i.i, %bb.x ], [ 0, %bb.w ], [ %spec.select.i17.i.i.i.i, %bb.u ], !dbg !66618
  %.sink22.i.sroa.phi.i.i.i = phi ptr [ %.sroa.11.i.i.i, %bb.v ], [ %.sroa.11.i.i.i, %bb.x ], [ %.sroa.11.i.i.i, %bb.w ], [ %.sroa.7.i.i.i, %bb.u ]
  %.sink.i.i.i.i = phi i64 [ 0, %bb.v ], [ %i.br, %bb.x ], [ %spec.select.i.i.i.i.i.i, %bb.w ], [ 1, %bb.u ]
  store i64 %.sink.i.i.i.i, ptr %.sink22.i.sroa.phi.i.i.i, align 8, !dbg !66618, !alias.scope !66510, !noalias !66518
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i), !dbg !66626
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i), !dbg !66626
  %i.bs = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i.i, i64 1), !dbg !66627
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bk, i64 noundef %i.bs, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i.i.i unwind label %.loopexit.split-lp.i, !dbg !66628, !noalias !66446

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7reserveCs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i.i.i, %bb.s
  %i.bt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !66629, !alias.scope !66508, !noalias !66509, !nonnull !2876, !noundef !2876
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bk, !dbg !66630
  store i64 %.pn3.i.i13.i.i.i, ptr %i.bu, align 8, !dbg !66631, !noalias !66446
  %i.bv = add nuw nsw i64 %i.bk, 1, !dbg !66632   ; 2 uses
  store i64 %i.bv, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !66633, !alias.scope !66508, !noalias !66509
  br label %bb.m, !dbg !66581

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.thread17.i: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.i, %bb.d
  store i64 0, ptr %0, align 8, !dbg !66634, !alias.scope !66446, !noalias !66447
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !66634
  store ptr inttoptr (i64 8 to ptr), ptr %i.bw, align 8, !dbg !66634, !alias.scope !66446, !noalias !66447
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !66634
  store i64 0, ptr %i.bx, align 8, !dbg !66634, !alias.scope !66446, !noalias !66447
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtNtB1D_3ops5range5RangejEINtNtB1z_10filter_map9FilterMapB2m_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB3v_13IpcFileReaderNtNtNtB3x_10multi_scan16reader_interface10FileReader10begin_reads0_0EEE9from_iterB3B_.exit, !dbg !66635

.loopexit.i:                                      ; preds = %.lr.ph12
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2b_.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.z, !dbg !66636, !noalias !66446

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters5chain5ChainINtNtNtB1l_3ops5range5RangejEINtNtB1h_10filter_map9FilterMapB24_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB3d_13IpcFileReaderNtNtNtB3f_10multi_scan16reader_interface10FileReader10begin_reads0_0EEE11spec_extendB3j_.exit.i: ; preds = %bb.p, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_3ops5range5RangejEINtNtB6_10filter_map9FilterMapBZ_NCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB25_13IpcFileReaderNtNtNtB27_10multi_scan16reader_interface10FileReader10begin_reads0_0EENtNtNtB8_6traits8iterator8Iterator4nextB2b_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !66637, !noalias !66448
end_hunk_0
